import React from 'react';

// Helper function to get the correct asset path regardless of environment
export const getAssetPath = (assetName) => {
  // In development, use relative path
  if (import.meta.env.DEV) {
    return `/${assetName}`;
  }
  
  // In production, use the correct base path
  const basePath = import.meta.env.BASE_URL || '/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/';
  return `${basePath}${assetName}`;
};

// Simple function to get full asset URL
export const getAssetUrl = (assetName) => {
  return getAssetPath(assetName);
};

// Hook for image loading with fallback
export function useImage(primarySrc, fallbackText = 'RF') {
  const [error, setError] = React.useState(false);
  
  const handleError = () => {
    setError(true);
  };
  
  const fullSrc = getAssetPath(primarySrc);
  
  return {
    error,
    src: fullSrc,
    handleError,
    component: error ? (
      React.createElement('div', {
        style: {
          width: '100%',
          height: '100%',
          backgroundColor: '#64ffda',
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'center',
          fontSize: '4rem',
          fontWeight: 'bold',
          color: '#0a192f'
        }
      }, fallbackText)
    ) : (
      React.createElement('img', {
        src: fullSrc,
        alt: fallbackText,
        onError: handleError,
        style: {
          width: '100%',
          height: '100%',
          objectFit: 'cover'
        }
      })
    )
  };
}

export default {
  getAssetPath,
  getAssetUrl,
  useImage
};
