from numpy import *

def pca(x):
    x = (x - x.mean(axis=0))

    num_observations, num_dimensions = x.shape

    if num_dimensions > 100:
        eigenvalues, eigenvectors = linalg.eigh(dot(x, x.T))
        v = (dot(x.T, eigenvectors).T)[::-1]
        s = sqrt(eigenvalues)[::-1]
    else:
        u, s, v = linalg.svd(x, full_matrices=False)

    return v, s

