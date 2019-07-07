import firebase from 'firebase'

if (!firebase.apps.length) {
	firebase.initializeApp({
		apiKey: process.env.FIREBASE_API_KEY,
		authDomain: process.env.FIREBASE_AUTH_DOMAIN,
		databaseURL: process.env.FIREBASE_DATABASEURL,
		projectId: process.env.FIREBASE_PROJECTID,
		storageBucket: process.env.FIREBASE_STORAGEBUCKET,
		messagingSenderId: process.env.FIREBASE_MESSAGINGSENDERID
	})
}

export default firebase