from flask import Flask, jsonify
import base64

app = Flask(__name__)

@app.route('/5c80e64b_6ca9_4735_b159_ab8c5322bcf6', methods=['GET'])
def peer_data():
    try:
        # Paths to the image and configuration files
        peer1_image_path = './config/peer1/peer1.png'
        peer1_config_path = './config/peer1/peer1.conf'
        peer2_image_path = './config/peer2/peer2.png'
        peer2_config_path = './config/peer2/peer2.conf'
        peer3_image_path = './config/peer3/peer3.png'
        peer3_config_path = './config/peer3/peer3.conf'

        # Read the images and convert to base64
        with open(peer1_image_path, 'rb') as peer1_image_file:
            peer1_base64_image = base64.b64encode(peer1_image_file.read()).decode('utf-8')
        with open(peer2_image_path, 'rb') as peer2_image_file:
            peer2_base64_image = base64.b64encode(peer2_image_file.read()).decode('utf-8')
        with open(peer3_image_path, 'rb') as peer3_image_file:
            peer3_base64_image = base64.b64encode(peer3_image_file.read()).decode('utf-8')

        # Read the configuration files
        with open(peer1_config_path, 'r') as peer1_config_file:
            peer1_config_data = peer1_config_file.read()
        with open(peer2_config_path, 'r') as peer2_config_file:
            peer2_config_data = peer2_config_file.read()
        with open(peer3_config_path, 'r') as peer3_config_file:
            peer3_config_data = peer3_config_file.read()

        # Create JSON response
        response_data = {
            'payloads': {
                'peer1': {
                    'image_base64': peer1_base64_image,
                    'config_data': peer1_config_data
                },
                'peer2': {
                    'image_base64': peer2_base64_image,
                    'config_data': peer2_config_data
                },
                'peer3': {
                    'image_base64': peer3_base64_image,
                    'config_data': peer3_config_data
                }
            }
        }

        return jsonify(response_data)

    except Exception as e:
        return jsonify({'error': str(e)})

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')