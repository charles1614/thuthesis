# Mermaid Diagram Files for Thesis (Updated - Overview + Details Approach)

The following Mermaid diagram files have been created for the thesis chapters with a focus on system overview first, then implementation details. All diagrams use English text and academic blue/white color schemes. Please use your script to convert them to PDF format and then provide instructions for insertion into the thesis.

## Generated Mermaid Files

### 1. System Architecture Overview
- **File**: `figures/system_architecture.mmd`
- **Description**: Complete system architecture showing 5 layers (Data Processing, Diffusion Model, 4D Gaussian Splatting, Rendering Engine, Knowledge Distillation)
- **Usage**: Chapter 4, Section 4.1 (Overall System Architecture)
- **Academic Colors**: Blue/white academic color scheme

### 2. Training Pipeline Sequence
- **File**: `figures/training_pipeline.mmd`
- **Description**: Sequence diagram showing the training loop with diffusion distillation
- **Usage**: Chapter 3, Section 3.3 (Knowledge Distillation Framework)
- **Academic Colors**: Professional blue/white color scheme

### 3. Diffusion Model Architecture
- **File**: `figures/diffusion_architecture.mmd`
- **Description**: Video diffusion model architecture with input/encoding/core/output layers
- **Usage**: Chapter 3, Section 3.2 (Controllable Video Diffusion Model)
- **Academic Colors**: Academic blue/white color scheme

### 4. Rendering Modes Architecture
- **File**: `figures/rendering_modes.mmd`
- **Description**: Multi-modal rendering architecture showing different rendering modes
- **Usage**: Chapter 4, Section 4.4 (Differentiable Rendering Engine)
- **Academic Colors**: Professional color scheme

### 5. Data Processing Flow
- **File**: `figures/data_processing_flow.mmd`
- **Description**: Complete data processing pipeline from Waymo dataset to training-ready format
- **Usage**: Chapter 4, Section 4.2 (High-performance Data Processing Pipeline)
- **Academic Colors**: Academic blue/white color scheme

### 6. Knowledge Distillation Process
- **File**: `figures/knowledge_distillation.mmd`
- **Description**: Detailed knowledge distillation mechanism between teacher and student models
- **Usage**: Chapter 3, Section 3.3 (Knowledge Distillation Framework)
- **Academic Colors**: Professional academic color scheme

### 7. Gaussian Densification Algorithm
- **File**: `figures/gaussian_densification.mmd`
- **Description**: Adaptive Gaussian densification and pruning algorithm flow
- **Usage**: Chapter 3, Section 3.4 (Adaptive Densification & Geometric Optimization)
- **Academic Colors**: Academic blue/white color scheme

## Notes for PDF Generation

1. All diagrams use English text and professional academic color schemes (blue/white theme)
2. Mathematical notation is included where appropriate (e.g., 𝒢_bkgd, SE(3), etc.)
3. Code references are accurate and based on actual implementation
4. Diagrams are designed for academic publication standards (CVPR/AAAI level)

## Next Steps

1. Run your script to convert all .mmd files to PDF format
2. Place the generated PDF files in the `figures/` directory
3. I will then insert the appropriate `\includegraphics` commands in the thesis chapters
4. Update figure captions and labels for proper cross-referencing
