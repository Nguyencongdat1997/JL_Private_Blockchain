import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import registerServiceWorker from './registerServiceWorker';

import  CreateRecordPage from './controllers/CreateRecordPage';

ReactDOM.render(<CreateRecordPage />, document.getElementById('root'));
registerServiceWorker();
