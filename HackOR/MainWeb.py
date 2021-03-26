from flask import Flask, render_template #Jinja2 Framework HTML's Python
import bs4
app = Flask(__name__)

@app.route('/hello/<int:num>')
# @app.route(rule =, options =)
# @app.route('/name/<type:variable_name>')
# if you want str, leave type blank
# /<int:variable_name>/<float:variable_name>/<variable_name>
def hello_world(num):
    return render_template("%d.html" % num)

@app.route('/')
# @app.route(rule =, options =)
def main():
    return "Hello World"

if __name__ == "__main__":
    app.run(debug=True)

# app.run(host =, port =, debug =, options =)