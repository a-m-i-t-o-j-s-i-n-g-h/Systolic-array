**SYSTOLIC ARRAY**

This repository implements systolic array architectures — a class of parallel computing systems where data flows rhythmically through an array of interconnected processing elements (PEs). Systolic arrays are highly effective for tasks like matrix multiplication, convolution, and other compute‑intensive operations.

**OVERVIEW**

-Architecture: A mesh of PEs that perform computations and pass results downstream.

-Data Flow: Inputs are injected into the array edges, and partial results propagate through adjacent PEs.

Use Cases:
-High-performance linear algebra (e.g., GEMM)

-Signal/image processing (e.g., convolution)

-AI accelerators and pattern recognition

**REPOSITORY CONTENTS**

Systolic‑Array/

├── src/                   # Core implementation (e.g., PE logic, dataflow)

├── tests/                 # Unit/integration tests for validation

├── docs/                  # Architecture diagrams and usage notes

└── examples/              # Sample workloads (e.g., matrix multiply)

**GETTING STARTED**

1. Clone the repo
2. Build and test
3. Run the testbenches

**FEATURES**

Scalable topology: Easily configure the number of rows/columns.

PE synchronization: Rhythmic, lock-step execution across elements.

Verifiable outputs: Compare results against standard CPU/matrix code.



