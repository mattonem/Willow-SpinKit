"
I'm a WALibary serving the files in source form
"
Class {
	#name : #SpinKitDevelopmentMetadataLibrary,
	#superclass : #SpinKitMetadataLibrary,
	#category : #'Willow-SpinKit'
}

{ #category : #accessing }
SpinKitDevelopmentMetadataLibrary >> selectorsToInclude [

	^ #(spinkitCss)
]

{ #category : #'uploaded metadata' }
SpinKitDevelopmentMetadataLibrary >> spinkitCss [

	^ WAFileLibraryResource
		filepath: 'spinkit.css'
		mimeType: ( WAMimeType main: 'text' sub: 'css' )
		cacheDuration: self class defaultCacheDuration
		contents: ( GRDelayedSend receiver: self selector: #spinkitCssContent )
]

{ #category : #uploaded }
SpinKitDevelopmentMetadataLibrary >> spinkitCssContent [
	^ '/* Config */
:root {
  --sk-size: 40px;
  --sk-color: #333;
}


/* Utility class for centering */
.sk-center { margin: auto; }


/*  Plane

      <div class="sk-plane"></div>
 */
.sk-plane {
  width: var(--sk-size);
  height: var(--sk-size);
  background-color: var(--sk-color);
  animation: sk-plane 1.2s infinite ease-in-out; 
}

@keyframes sk-plane {
  0% {
    transform: perspective(120px) rotateX(0deg) rotateY(0deg); 
  } 50% {
    transform: perspective(120px) rotateX(-180.1deg) rotateY(0deg); 
  } 100% {
    transform: perspective(120px) rotateX(-180deg) rotateY(-179.9deg); 
  } 
}


/*  Chase

      <div class="sk-chase">
        <div class="sk-chase-dot"></div>
        <div class="sk-chase-dot"></div>
        <div class="sk-chase-dot"></div>
        <div class="sk-chase-dot"></div>
        <div class="sk-chase-dot"></div>
        <div class="sk-chase-dot"></div>
      </div>
 */
.sk-chase {
  width: var(--sk-size);
  height: var(--sk-size);
  position: relative;
  animation: sk-chase 2.5s infinite linear both; 
}

.sk-chase-dot {
  width: 100%;
  height: 100%;
  position: absolute;
  left: 0;
  top: 0; 
  animation: sk-chase-dot 2.0s infinite ease-in-out both; 
}

.sk-chase-dot:before {
  content: '''';
  display: block;
  width: 25%;
  height: 25%;
  background-color: var(--sk-color);
  border-radius: 100%;
  animation: sk-chase-dot-before 2.0s infinite ease-in-out both; 
}

.sk-chase-dot:nth-child(1) { animation-delay: -1.1s; }
.sk-chase-dot:nth-child(2) { animation-delay: -1.0s; }
.sk-chase-dot:nth-child(3) { animation-delay: -0.9s; }
.sk-chase-dot:nth-child(4) { animation-delay: -0.8s; }
.sk-chase-dot:nth-child(5) { animation-delay: -0.7s; }
.sk-chase-dot:nth-child(6) { animation-delay: -0.6s; }
.sk-chase-dot:nth-child(1):before { animation-delay: -1.1s; }
.sk-chase-dot:nth-child(2):before { animation-delay: -1.0s; }
.sk-chase-dot:nth-child(3):before { animation-delay: -0.9s; }
.sk-chase-dot:nth-child(4):before { animation-delay: -0.8s; }
.sk-chase-dot:nth-child(5):before { animation-delay: -0.7s; }
.sk-chase-dot:nth-child(6):before { animation-delay: -0.6s; }

@keyframes sk-chase {
  100% { transform: rotate(360deg); } 
}

@keyframes sk-chase-dot {
  80%, 100% { transform: rotate(360deg); } 
}

@keyframes sk-chase-dot-before {
  50% {
    transform: scale(0.4); 
  } 100%, 0% {
    transform: scale(1.0); 
  } 
}


/*  Bounce

      <div class="sk-bounce">
        <div class="sk-bounce-dot"></div>
        <div class="sk-bounce-dot"></div>
      </div>
  */
.sk-bounce {
  width: var(--sk-size);
  height: var(--sk-size);
  position: relative;
}

.sk-bounce-dot {
  width: 100%;
  height: 100%;
  border-radius: 50%;
  background-color: var(--sk-color);
  opacity: 0.6;
  position: absolute;
  top: 0;
  left: 0;
  animation: sk-bounce 2s infinite cubic-bezier(0.455, 0.03, 0.515, 0.955); 
}

.sk-bounce-dot:nth-child(2) { animation-delay: -1.0s; }

@keyframes sk-bounce {
  0%, 100% {
    transform: scale(0);
  } 45%, 55% {
    transform: scale(1); 
  } 
}


/*  Wave

      <div class="sk-wave">
        <div class="sk-wave-rect"></div>
        <div class="sk-wave-rect"></div>
        <div class="sk-wave-rect"></div>
        <div class="sk-wave-rect"></div>
        <div class="sk-wave-rect"></div>
      </div>
 */
.sk-wave {
  width: var(--sk-size);
  height: var(--sk-size);
  display: flex;
  justify-content: space-between;
}

.sk-wave-rect {
  background-color: var(--sk-color);
  height: 100%;
  width: 15%;
  animation: sk-wave 1.2s infinite ease-in-out; 
}

.sk-wave-rect:nth-child(1) { animation-delay: -1.2s; }
.sk-wave-rect:nth-child(2) { animation-delay: -1.1s; }
.sk-wave-rect:nth-child(3) { animation-delay: -1.0s; }
.sk-wave-rect:nth-child(4) { animation-delay: -0.9s; }
.sk-wave-rect:nth-child(5) { animation-delay: -0.8s; }

@keyframes sk-wave {
  0%, 40%, 100% {
    transform: scaleY(0.4); 
  } 20% {
    transform: scaleY(1); 
  } 
}


/*  Pulse

      <div class="sk-pulse"></div>
 */
.sk-pulse {
  width: var(--sk-size);
  height: var(--sk-size);
  background-color: var(--sk-color);
  border-radius: 100%;
  animation: sk-pulse 1.2s infinite cubic-bezier(0.455, 0.03, 0.515, 0.955); 
}

@keyframes sk-pulse {
  0% {
    transform: scale(0); 
  } 100% {
    transform: scale(1);
    opacity: 0; 
  }
}


/*  Flow

      <div class="sk-flow">
        <div class="sk-flow-dot"></div>
        <div class="sk-flow-dot"></div>
        <div class="sk-flow-dot"></div>
      </div>
 */
.sk-flow {
  width: calc(var(--sk-size) * 1.3);
  height: calc(var(--sk-size) * 1.3);
  display: flex;
  justify-content: space-between;
}

.sk-flow-dot {
  width: 25%;
  height: 25%;
  background-color: var(--sk-color);
  border-radius: 50%;
  animation: sk-flow 1.4s cubic-bezier(0.455, 0.03, 0.515, 0.955) 0s infinite both;
}

.sk-flow-dot:nth-child(1) { animation-delay: -0.30s; }
.sk-flow-dot:nth-child(2) { animation-delay: -0.15s; }

@keyframes sk-flow {
  0%, 80%, 100% {
    transform: scale(0.3); }
  40% {
    transform: scale(1); 
  }
}


/*  Swing

      <div class="sk-swing">
        <div class="sk-swing-dot"></div>
        <div class="sk-swing-dot"></div>
      </div>
 */
.sk-swing {
  width: var(--sk-size);
  height: var(--sk-size);
  position: relative;
  animation: sk-swing 1.8s infinite linear; 
}
  
.sk-swing-dot {
  width: 45%;
  height: 45%;
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  margin: auto;
  background-color: var(--sk-color);
  border-radius: 100%;
  animation: sk-swing-dot 2s infinite ease-in-out; 
}

.sk-swing-dot:nth-child(2) {
  top: auto;
  bottom: 0;
  animation-delay: -1s; 
}

@keyframes sk-swing {
  100% {
    transform: rotate(360deg); 
  } 
}

@keyframes sk-swing-dot {
  0%, 100% {
    transform: scale(0.2); }
  50% {
    transform: scale(1); 
  } 
}


/*  Circle

      <div class="sk-circle">
        <div class="sk-circle-dot"></div>
        <div class="sk-circle-dot"></div>
        <div class="sk-circle-dot"></div>
        <div class="sk-circle-dot"></div>
        <div class="sk-circle-dot"></div>
        <div class="sk-circle-dot"></div>
        <div class="sk-circle-dot"></div>
        <div class="sk-circle-dot"></div>
        <div class="sk-circle-dot"></div>
        <div class="sk-circle-dot"></div>
        <div class="sk-circle-dot"></div>
        <div class="sk-circle-dot"></div>
      </div>
 */
.sk-circle {
  width: var(--sk-size);
  height: var(--sk-size);
  position: relative; 
}

.sk-circle-dot {
  width: 100%;
  height: 100%;
  position: absolute;
  left: 0;
  top: 0;
}

.sk-circle-dot:before {
    content: '''';
    display: block;
    width: 15%;
    height: 15%;
    background-color: var(--sk-color);
    border-radius: 100%;
    animation: sk-circle 1.2s infinite ease-in-out both; 
}

.sk-circle-dot:nth-child(1) { transform: rotate(30deg); }
.sk-circle-dot:nth-child(2) { transform: rotate(60deg); }
.sk-circle-dot:nth-child(3) { transform: rotate(90deg); }
.sk-circle-dot:nth-child(4) { transform: rotate(120deg); }
.sk-circle-dot:nth-child(5) { transform: rotate(150deg); }
.sk-circle-dot:nth-child(6) { transform: rotate(180deg); }
.sk-circle-dot:nth-child(7) { transform: rotate(210deg); }
.sk-circle-dot:nth-child(8) { transform: rotate(240deg); }
.sk-circle-dot:nth-child(9) { transform: rotate(270deg); }
.sk-circle-dot:nth-child(10) { transform: rotate(300deg); }
.sk-circle-dot:nth-child(11) { transform: rotate(330deg); }
.sk-circle-dot:nth-child(1):before { animation-delay: -1.1s; }
.sk-circle-dot:nth-child(2):before { animation-delay: -1s; }
.sk-circle-dot:nth-child(3):before { animation-delay: -0.9s; }
.sk-circle-dot:nth-child(4):before { animation-delay: -0.8s; }
.sk-circle-dot:nth-child(5):before { animation-delay: -0.7s; }
.sk-circle-dot:nth-child(6):before { animation-delay: -0.6s; }
.sk-circle-dot:nth-child(7):before { animation-delay: -0.5s; }
.sk-circle-dot:nth-child(8):before { animation-delay: -0.4s; }
.sk-circle-dot:nth-child(9):before { animation-delay: -0.3s; }
.sk-circle-dot:nth-child(10):before { animation-delay: -0.2s; }
.sk-circle-dot:nth-child(11):before { animation-delay: -0.1s; }

@keyframes sk-circle {
  0%, 80%, 100% {
    transform: scale(0); }
  40% {
    transform: scale(1); 
  } 
}


/*  Circle Fade

      <div class="sk-circle-fade">
        <div class="sk-circle-fade-dot"></div>
        <div class="sk-circle-fade-dot"></div>
        <div class="sk-circle-fade-dot"></div>
        <div class="sk-circle-fade-dot"></div>
        <div class="sk-circle-fade-dot"></div>
        <div class="sk-circle-fade-dot"></div>
        <div class="sk-circle-fade-dot"></div>
        <div class="sk-circle-fade-dot"></div>
        <div class="sk-circle-fade-dot"></div>
        <div class="sk-circle-fade-dot"></div>
        <div class="sk-circle-fade-dot"></div>
        <div class="sk-circle-fade-dot"></div>
      </div>
 */
.sk-circle-fade {
  width: var(--sk-size);
  height: var(--sk-size);
  position: relative; 
}

.sk-circle-fade-dot {
  width: 100%;
  height: 100%;
  position: absolute;
  left: 0;
  top: 0; 
}

.sk-circle-fade-dot:before {
  content: '''';
  display: block;
  width: 15%;
  height: 15%;
  background-color: var(--sk-color);
  border-radius: 100%;
  animation: sk-circle-fade 1.2s infinite ease-in-out both; 
}

.sk-circle-fade-dot:nth-child(1)  { transform: rotate(30deg);  }
.sk-circle-fade-dot:nth-child(2)  { transform: rotate(60deg);  }
.sk-circle-fade-dot:nth-child(3)  { transform: rotate(90deg);  }
.sk-circle-fade-dot:nth-child(4)  { transform: rotate(120deg); }
.sk-circle-fade-dot:nth-child(5)  { transform: rotate(150deg); }
.sk-circle-fade-dot:nth-child(6)  { transform: rotate(180deg); }
.sk-circle-fade-dot:nth-child(7)  { transform: rotate(210deg); }
.sk-circle-fade-dot:nth-child(8)  { transform: rotate(240deg); }
.sk-circle-fade-dot:nth-child(9)  { transform: rotate(270deg); }
.sk-circle-fade-dot:nth-child(10) { transform: rotate(300deg); }
.sk-circle-fade-dot:nth-child(11) { transform: rotate(330deg); }
.sk-circle-fade-dot:nth-child(1):before  { animation-delay: -1.1s; }
.sk-circle-fade-dot:nth-child(2):before  { animation-delay: -1.0s; }
.sk-circle-fade-dot:nth-child(3):before  { animation-delay: -0.9s; }
.sk-circle-fade-dot:nth-child(4):before  { animation-delay: -0.8s; }
.sk-circle-fade-dot:nth-child(5):before  { animation-delay: -0.7s; }
.sk-circle-fade-dot:nth-child(6):before  { animation-delay: -0.6s; }
.sk-circle-fade-dot:nth-child(7):before  { animation-delay: -0.5s; }
.sk-circle-fade-dot:nth-child(8):before  { animation-delay: -0.4s; }
.sk-circle-fade-dot:nth-child(9):before  { animation-delay: -0.3s; }
.sk-circle-fade-dot:nth-child(10):before { animation-delay: -0.2s; }
.sk-circle-fade-dot:nth-child(11):before { animation-delay: -0.1s; }

@keyframes sk-circle-fade {
  0%, 39%, 100% {
    opacity: 0;
    transform: scale(0.6);
  } 40% {
    opacity: 1; 
    transform: scale(1);
  }
}


/*  Grid

    <div class="sk-grid">
      <div class="sk-grid-cube"></div>
      <div class="sk-grid-cube"></div>
      <div class="sk-grid-cube"></div>
      <div class="sk-grid-cube"></div>
      <div class="sk-grid-cube"></div>
      <div class="sk-grid-cube"></div>
      <div class="sk-grid-cube"></div>
      <div class="sk-grid-cube"></div>
      <div class="sk-grid-cube"></div>
    </div>
 */
.sk-grid {
  width: var(--sk-size);
  height: var(--sk-size);
  /* Cube positions
   * 1 2 3
   * 4 5 6
   * 7 8 9
   */ 
 }
.sk-grid-cube {
    width: 33.33%;
    height: 33.33%;
    background-color: var(--sk-color);
    float: left;
    animation: sk-grid 1.3s infinite ease-in-out; 
}
.sk-grid-cube:nth-child(1) { animation-delay: 0.2s; }
.sk-grid-cube:nth-child(2) { animation-delay: 0.3s; }
.sk-grid-cube:nth-child(3) { animation-delay: 0.4s; }
.sk-grid-cube:nth-child(4) { animation-delay: 0.1s; }
.sk-grid-cube:nth-child(5) { animation-delay: 0.2s; }
.sk-grid-cube:nth-child(6) { animation-delay: 0.3s; }
.sk-grid-cube:nth-child(7) { animation-delay: 0.0s; }
.sk-grid-cube:nth-child(8) { animation-delay: 0.1s; }
.sk-grid-cube:nth-child(9) { animation-delay: 0.2s; }

@keyframes sk-grid {
  0%, 70%, 100% {
    transform: scale3D(1, 1, 1); 
  } 35% {
    transform: scale3D(0, 0, 1); 
  } 
}


/*  Fold

      <div class="sk-fold">
        <div class="sk-fold-cube"></div>
        <div class="sk-fold-cube"></div>
        <div class="sk-fold-cube"></div>
        <div class="sk-fold-cube"></div>
      </div>
 */
.sk-fold {
  width: var(--sk-size);
  height: var(--sk-size);
  position: relative;
  transform: rotateZ(45deg); 
}
.sk-fold-cube {
  float: left;
  width: 50%;
  height: 50%;
  position: relative;
  transform: scale(1.1); 
}

.sk-fold-cube:before {
  content: '''';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: var(--sk-color);
  animation: sk-fold 2.4s infinite linear both;
  transform-origin: 100% 100%; 
}
.sk-fold-cube:nth-child(2) { transform: scale(1.1) rotateZ(90deg); }
.sk-fold-cube:nth-child(4) { transform: scale(1.1) rotateZ(180deg); }
.sk-fold-cube:nth-child(3) { transform: scale(1.1) rotateZ(270deg); }
.sk-fold-cube:nth-child(2):before { animation-delay: 0.3s; }
.sk-fold-cube:nth-child(4):before { animation-delay: 0.6s; }
.sk-fold-cube:nth-child(3):before { animation-delay: 0.9s; }

@keyframes sk-fold {
  0%, 10% {
    transform: perspective(140px) rotateX(-180deg);
    opacity: 0; 
  } 25%, 75% {
    transform: perspective(140px) rotateX(0deg);
    opacity: 1; 
  } 90%, 100% {
    transform: perspective(140px) rotateY(180deg);
    opacity: 0;
  } 
}


/*  Wander

      <div class="sk-wander">
        <div class="sk-wander-cube"></div>
        <div class="sk-wander-cube"></div>
        <div class="sk-wander-cube"></div>
        <div class="sk-wander-cube"></div>
      </div>
 */
.sk-wander {
  width: var(--sk-size);
  height: var(--sk-size);
  position: relative; 
}

.sk-wander-cube {
  background-color: var(--sk-color);
  width: 20%;
  height: 20%;
  position: absolute;
  top: 0;
  left: 0;
  --sk-wander-distance: calc(var(--sk-size) * 0.75);
  animation: sk-wander 2.0s ease-in-out -2.0s infinite both;
}
.sk-wander-cube:nth-child(2) { animation-delay: -0.5s; }
.sk-wander-cube:nth-child(3) { animation-delay: -1.0s; }

@keyframes sk-wander {
  0% {
    transform: rotate(0deg); 
  } 25% {
    transform: translateX(var(--sk-wander-distance)) rotate(-90deg) scale(0.6); 
  } 50% { /* Make FF rotate in the right direction */
    transform: translateX(var(--sk-wander-distance)) translateY(var(--sk-wander-distance)) rotate(-179deg); 
  } 50.1% {
    transform: translateX(var(--sk-wander-distance)) translateY(var(--sk-wander-distance)) rotate(-180deg); 
  } 75% {
    transform: translateX(0) translateY(var(--sk-wander-distance)) rotate(-270deg) scale(0.6);
  } 100% {
    transform: rotate(-360deg); 
  }
}'
]