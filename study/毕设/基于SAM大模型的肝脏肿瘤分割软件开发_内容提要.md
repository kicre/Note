# 摘 要

随着医学影像技术的快速发展，精准的肝脏肿瘤分割在肝癌的诊断与治疗中扮演着至关重要的角色。传统的分割方法存在效率低、精度不足等问题，而基于深度学习的方法能够实现自动化、高精度的分割。本文旨在开发一款基于Segment Anything Model（SAM）的大模型，用于肝脏肿瘤的CT图像分割软件。

首先，本文介绍了SAM模型在自然图像分割中的卓越性能，并指出其在医学图像分割上的应用潜力。针对SAM在医学图像上的局限性，本文提出了一种改进策略，通过在大规模医学图像数据集上进行微调，以适应医学图像的特点。具体而言，采用了冻结SAM编码器权重并添加轻量级任务特定预测头的方法，同时探索了无需提示的预测头，包括ViT、CNN和线性层，以提高模型在医学图像分割任务上的表现在实验部分，本文使用了公开的医学图像分割数据集，通过少量标记数据进行微调，验证了所提方法的标签效率。实验结果表明，与零样本提示驱动的SAM相比，微调后的SAM在医学图像数据集上的性能显著提升。此外，AutoSAM和CNN预测头在注释不足的情况下，相比从头训练和自监督学习方法也展现出更好的分割精度。最后，本文总结了研究成果，并对未来工作进行了展望。考虑到项目仍在进行中，未来的工作将包括在更多医学图像数据集上评估方法的泛化能力，尝试更复杂的预测头架构，并增加更多的基线模型进行比较。此外，还提出了肝脏肿瘤分割软件的前端界面开发方式。

**关键词**：肝脏肿瘤分割，深度学习，医学图像处理，Segment Anything Model（SAM），微调策略

# Abstract

With the rapid development of medical imaging technology, accurate liver tumor segmentation plays a crucial role in the diagnosis and treatment of liver cancer. Traditional segmentation methods suffer from low efficiency and insufficient accuracy, while deep learning-based methods can achieve automated and high-precision segmentation. This paper aims to develop a liver tumor segmentation software for CT images based on the Segment Anything Model (SAM), a large-scale model.

Firstly, this paper introduces the impressive performance of the SAM model in natural image segmentation and its potential for application in medical image segmentation. To address the limitations of SAM in medical images, an improvement strategy is proposed. This involves fine-tuning on a large-scale medical image dataset to adapt to the characteristics of medical images. Specifically, the method freezes the weights of the SAM encoder and adds a lightweight task-specific prediction head, exploring prompt-free prediction heads, including ViT, CNN, and linear layers, to enhance the model's performance on medical image segmentation tasks.

In the experimental section, a public medical image segmentation dataset is used to fine-tune the model with a small amount of labeled data, verifying the label efficiency of the proposed method. The results demonstrate that the fine-tuned SAM significantly outperforms the zero-shot prompt-driven SAM on the medical image dataset. Moreover, AutoSAM and the CNN prediction head also show better segmentation accuracy than training from scratch and self-supervised learning approaches when there is a shortage of annotations.

Finally, the paper summarizes the research findings and provides an outlook for future work. Considering the project is still ongoing, future work will include evaluating the generalization of the method on more medical image datasets, trying more complex prediction head architectures, and including more baseline models for comparison. In addition, a front-end interface development method for liver tumor segmentation software was also proposed.

**Keywords**: Liver Tumor Segmentation, Deep Learning, Medical Image Processing, Segment Anything Model (SAM), Fine-tuning Strategy
