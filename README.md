# GAN Survey


## Dataset

GANでよく使われるデータセットまとめ

- noise -> image
    - MNIST
    - cifar-10
    - ImageNet
- image -> image
    - apple2orange
    - facade
- text
- audio
- textures
    - [DTD](https://www.robots.ox.ac.uk/~vgg/data/dtd/)


<a id="Metrics"></a>

## Metrics

- [Inception Score](https://arxiv.org/abs/1606.03498.pdf)
- [Frechet Inception Distance](https://arxiv.org/abs/1706.08500.pdf)
- [Sliced Wasserstein distance](https://arxiv.org/abs/1803.11188.pdf)
- [LPIPS distance](https://arxiv.org/abs/1801.03924.pdf)
- Perceptual Path Length -> StyleGANv2


## サーベイ論文

- [Generative Adversarial Networks in Computer Vision: A Survey and Taxonomy](https://arxiv.org/abs/1906.01529), ([GitHub](https://github.com/sheqi/GAN_Review))
- [A Survey on Generative Adversarial Networks: Variants, Applications, and Training](https://arxiv.org/abs/2006.05132)
- [A Mathematical Introduction to Generative Adversarial Nets (GAN)](https://arxiv.org/abs/2009.00169)


<a id="Basis"></a>

## 基礎GAN

- [GAN](https://arxiv.org/abs/1406.2661)
- [DCGAN](https://arxiv.org/abs/1511.06434)
- [cGAN](https://arxiv.org/abs/1411.1784)

##### GAN-variant

- [Adversarially Learned Inference](https://arxiv.org/abs/1606.00704)
- [BiGAN](https://arxiv.org/abs/1605.09782v7)
- [InfoGAN](https://arxiv.org/abs/1606.03657), NIPS2016
    - [ss-InfoGAN](https://arxiv.org/abs/1707.04487), CVPR201?
- [f-GAN](https://arxiv.org/abs/1606.00709)
- [EBGAN](https://arxiv.org/abs/1609.03126)
- [UnrolledGAN](https://arxiv.org/abs/1611.02163), ICLR2017
- [DRAGAN](https://arxiv.org/abs/1705.07215)
- [Dirac-GAN](https://arxiv.org/abs/1801.04406)

##### ロス設計

- [LSGAN](https://arxiv.org/abs/1611.04076)
    - pros/cons
- [LSGAN-gp](https://arxiv.org/abs/1712.06391)
- [WGAN](https://arxiv.org/abs/1701.07875)
- [WGAN-gp](https://arxiv.org/pdf/1704.00028.pdf)

##### 出力構造

- [ACGAN](https://arxiv.org/abs/1610.09585)
- [cGANs with Projection Discriminator](https://arxiv.org/abs/1802.05637)

##### Discriminator

- [Relativistic Discriminator](https://arxiv.org/abs/1807.00734)
- [U-Net GAN](https://arxiv.org/pdf/2002.12655.pdf), CVPR2020



## 理論寄りの論文

- [Localized GAN](https://arxiv.org/abs/1711.06020)
- [Are GANs Created Equal? A Large-Scale Study](https://arxiv.org/abs/1711.10337)


<a id="Normalization"></a>

## Normalization

- [Batch Normalization](https://arxiv.org/abs/1502.03167)
- [Instance Normalization](https://arxiv.org/abs/1607.08022)
- [Layer Normalization](https://arxiv.org/abs/1607.06450)
- [Spectral Normalization](https://arxiv.org/abs/1802.05957)
- [AdaIN](https://arxiv.org/abs/1703.06868.pdf)
- [SPADE](https://arxiv.org/abs/1903.07291)


<a id="Stability"></a>

## 学習安定性

- [Smoothness and Stability in GANs](https://openreview.net/forum?id=HJeOekHKwr), 19.09

<a id="AnomalyDetection"></a>


##### ロバストなGAN

- [RoCGAN](https://arxiv.org/pdf/1805.08657.pdf), ICLR2019
- [RcGAN](https://arxiv.org/pdf/1811.03205.pdf), NeurIPS2018


<a id="Augmentation"></a>

## GAN+データ拡張

- [Data Augmentation Generative Adversarial Networks](https://arxiv.org/abs/1711.04340)
- [Image Augmentations for GAN Training](https://arxiv.org/abs/2006.02595)


<a id="LowData"></a>

## 少量データによるGANの学習

- [SinGAN](https://arxiv.org/abs/1905.01164), ICCV2019**bestpaper**
- [Differentiable Augmentation for Data-Efficient GAN Training](https://arxiv.org/abs/2006.10738)
- [Towards Faster and Stabilized GAN Training for High-fidelity Few-shot Image Synthesis](https://arxiv.org/abs/2101.04775.pdf), ICLR2021(poster)
- [Training Generative Adversarial Networks with Limited Data](https://arxiv.org/abs/2006.06676.pdf), NeurIPS2020


<a id="HighReso"></a>

## 高解像度系

- [LAPGAN](https://arxiv.org/abs/1506.05751), CVPR
- SAGAN
- PGGAN
- BigGAN
  - [BigBiGAN](https://arxiv.org/abs/1907.02544), [TFHub](https://tfhub.dev/s?publisher=deepmind&q=bigbigan)
- StyleGAN
- [StyleGANv2](https://arxiv.org/abs/2006.06676), ([GitHub](https://github.com/NVlabs/stylegan2-ada))



<a id="Image2Image"></a>

## 画像変換

- pix2pix
- CycleGAN
- [UNIT](https://arxiv.org/abs/1703.00848)
- [MUNIT](https://arxiv.org/abs/1804.04732)
- [UGATIT](https://arxiv.org/abs/1907.10830)
  - [メルアイコン変換器を作った話](https://qiita.com/zassou65535/items/4bc42fa36203c13fe2d3)
- [AnimeGAN](https://link.springer.com/chapter/10.1007/978-981-15-5577-0_18)
  - https://tachibanayoshino.github.io/AnimeGANv2/
  - https://www.itmedia.co.jp/news/articles/2008/11/news096.html

- [CountRGAN](https://arxiv.org/abs/2009.05199)


<a id="SuperResolution"></a>

## 超解像

- [SRGAN](https://arxiv.org/abs/1609.04802)



<a id="Voice"></a>

## 声質変換

- MelGAN
- MBMelGAN
- StyleMelGAN

## 音声合成

- GANTTS


## 3D系

- [3DGAN](https://arxiv.org/abs/1610.07584)


<a id="Anomaly"></a>

## 異常検知

- [AnoGAN](https://arxiv.org/abs/1703.05921)
- [Dual Auto-Encoders GAN]()
- [Anomaly Detection by One Class Latent Regularized Networks](https://arxiv.org/abs/2002.01607)


<a id="Brain"></a>

## Brain-Decoding

EEG

- [CS-GAN](https://arxiv.org/abs/2102.04456v1)

fMRI

- [Generative adversarial networks for reconstructing natural images from brain activity](https://www.biorxiv.org/content/10.1101/226688v3.full)
- [End-to-End Deep Image Reconstruction From Human Brain Activity](https://www.frontiersin.org/articles/10.3389/fncom.2019.00021/full)
- [DCNN-GAN: Reconstructing Realistic Image from fMRI](https://arxiv.org/abs/1901.07368)
- [Reconstructing faces from fMRI patterns using deep generative neural networks](https://www.nature.com/articles/s42003-019-0438-y)
- [Reconstructing Natural Scenes from fMRI Patterns using BigBiGAN](https://arxiv.org/abs/2001.11761)
- [BigGAN-based Bayesian reconstruction of natural images from human brain activity](https://arxiv.org/abs/2003.06105)



<a id="Material"></a>

## 物性

- [Generative Adversarial Networks for Crystal Structure Prediction](https://pubs.acs.org/doi/10.1021/acscentsci.0c00426)



<a id="NAS"></a>

## NAS

- [AutoGAN](https://arxiv.org/abs/1908.03835)


<a id="Pose"></a>

## ポーズ系

- [Liquid Warping GAN](https://openaccess.thecvf.com/content_ICCV_2019/papers/Liu_Liquid_Warping_GAN_A_Unified_Framework_for_Human_Motion_Imitation_ICCV_2019_paper.pdf), ICCV2019



<a id="Reinforcement"></a>

## 強化学習

- [Generative Adversarial Imitation Learning](https://arxiv.org/abs/1606.03476)
- [Task-Relevant Adversarial Imitation Learning](https://arxiv.org/abs/1910.01077)
- [Triple-GAIL](https://arxiv.org/abs/2005.10622)


<a id="VAE"></a>

## VAE

- VAE-GAN

## Flow

- [Flow-GAN](https://arxiv.org/abs/1705.08868)


----

# Reading List

- Semi-Supervised GAN, [paper](https://arxiv.org/pdf/1606.01583.pdf)
- Efficient Conditional GAN Transfer with Knowledge Propagation across Classes, [paper](https://arxiv.org/abs/2102.06696)
- Few-Shot Adversarial Learning of Realistic Neural Talking Head Models, [paper](https://arxiv.org/abs/1905.08233)
- Dual-Agent GAN, [paper](https://proceedings.neurips.cc/paper/2017/file/7cbbc409ec990f19c78c75bd1e06f215-Paper.pdf)/[poster](https://zhaoj9014.github.io/pub/ZHAOJIAN_ID70.pdf)
- Triple Generative Adversarial Nets, [paper](https://arxiv.org/pdf/1703.02291.pdf)
- GraphGAN, [paper](https://ojs.aaai.org/index.php/AAAI/article/view/11872), (AAAI2018)
- PriorGAN, [paper](https://arxiv.org/abs/2006.16990)

**Quantum**

- Quantum GAN, [paper](https://arxiv.org/abs/1804.08641)
- Quantum generative adversarial learning in a superconducting quantum circuit, [paper](https://advances.sciencemag.org/content/5/1/eaav2761/tab-pdf)

**軽量化**

- GAN Slimming: All-in-One GAN Compression by A Unified Optimization Framework, [paper](https://arxiv.org/abs/2008.11062)

**Transformer**

- [TransGAN](https://arxiv.org/abs/2102.07074)

**OCR**

- [TLGAN](https://arxiv.org/pdf/2010.11547.pdf)

**bio**

- [Gene Expression Imputation with Generative Adversarial Imputation Nets](https://www.biorxiv.org/content/10.1101/2020.06.09.141689v1)


## 資料

- KL-Divergence
- JS-Divergence
- Checker Board Archifact
  - [Deconvolution and Checkerboard Artifacts (medium)](https://distill.pub/2016/deconv-checkerboard/)


