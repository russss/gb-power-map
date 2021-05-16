from mapproxy.wsgiapp import make_wsgi_app
from werkzeug.middleware.dispatcher import DispatcherMiddleware
from flask import render_template
from flask import Flask

flask_app = Flask(__name__)


@flask_app.route("/")
def index():
    return render_template('index.html')


class AddPrefixMiddleware(object):
    def __init__(self, app, prefix):
        self.app = app
        self.prefix = prefix

    def __call__(self, e, h):
        e["PATH_INFO"] = self.prefix + e["PATH_INFO"]
        return self.app(e, h)


mapproxy_app = make_wsgi_app(r"/app/mapproxy.yaml")

application = DispatcherMiddleware(
    flask_app, {"/tiles": AddPrefixMiddleware(mapproxy_app, "/tiles")}
)
