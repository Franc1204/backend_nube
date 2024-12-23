from flask import Flask, jsonify

app = Flask(__name__)

# Ruta para el endpoint GET
@app.route('/saludo', methods=['GET'])
def saludo():
    return jsonify({'mensaje': 'Hola Mundo, gracias por ver mi video.'}), 200

# Ejecución de la app
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)