
# Build may fail with CMAKE 4.0
export CMAKE_POLICY_VERSION_MINIMUM=3.5

# Requirements: Python>=3.10,<3.12
python3 -m pip install torch --index-url https://download.pytorch.org/whl/cu124
python3 -m pip install -e .

# Install dependencies if you want to use the example scripts
python3 -m pip install datasets transformers datatrove[io,processing] numba # wandb
# Fused kernels
python3 -m pip install ninja triton "flash-attn>=2.5.0" --no-build-isolation --no-cache-dir