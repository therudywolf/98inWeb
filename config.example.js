// Forest OS 98 Configuration Template
// Copy this file to config.js and fill in your actual values
// config.js is in .gitignore and will not be committed

window.FOREST_CONFIG = {
    // AI API Configuration (OpenAI-compatible chat completions endpoint)
    API_BASE_URL: 'https://your-api-url-here.example',
    MODEL_NAME: 'your-model-name',

    // Optional bearer token for the chat endpoint. Leave '' if the endpoint
    // needs no auth. NEVER commit a real key — config.js is gitignored.
    API_KEY: 'your-api-key-here',

    // Optional: Override default settings
    // DEFAULT_USERNAME: 'Guest',
    // ENABLE_SOUNDS: true,
    // DEBUG_MODE: false
};
