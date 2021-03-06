# GAN Survey


## データセット / Dataset

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

## 評価指標 / Metrics

- [Inception Score](https://arxiv.org/abs/1606.03498.pdf)
- [Frechet Inception Distance](https://arxiv.org/abs/1706.08500.pdf)
- [Sliced Wasserstein distance](https://arxiv.org/abs/1803.11188.pdf)
- [LPIPS distance](https://arxiv.org/abs/1801.03924.pdf)
- Perceptual Path Length -> StyleGANv2
- Human Study (どっちのほうがよく生成できているか判定)


## サーベイ論文 / Survey Paper

- [Generative Adversarial Networks in Computer Vision: A Survey and Taxonomy](https://arxiv.org/abs/1906.01529), ([GitHub](https://github.com/sheqi/GAN_Review))
- [A Survey on Generative Adversarial Networks: Variants, Applications, and Training](https://arxiv.org/abs/2006.05132)
- [A Mathematical Introduction to Generative Adversarial Nets (GAN)](https://arxiv.org/abs/2009.00169)


<a id="Basis"></a>

## 基礎GAN

- [GAN](https://arxiv.org/abs/1406.2661)
- [DCGAN](https://arxiv.org/abs/1511.06434)
- [cGAN](https://arxiv.org/abs/1411.1784)
- [Adversarial Autoencoders](https://arxiv.org/abs/1511.05644)

**GAN-variant**

- [Adversarially Learned Inference](https://arxiv.org/abs/1606.00704)
- [BiGAN](https://arxiv.org/abs/1605.09782v7)
- [InfoGAN](https://arxiv.org/abs/1606.03657), NIPS2016
    - [ss-InfoGAN](https://arxiv.org/abs/1707.04487), CVPR201?
- [f-GAN](https://arxiv.org/abs/1606.00709)
- [UnrolledGAN](https://arxiv.org/abs/1611.02163), ICLR2017
- [DRAGAN](https://arxiv.org/abs/1705.07215)
- [Dirac-GAN](https://arxiv.org/abs/1801.04406)

**energy-base**

- [EBGAN](https://arxiv.org/abs/1609.03126)
- [Generative Adversarial Networks as Variational Training of Energy Based Models](https://arxiv.org/abs/1611.01799)

**ロス設計**

- [LSGAN](https://arxiv.org/abs/1611.04076)
    - pros/cons
- [LSGAN-gp](https://arxiv.org/abs/1712.06391)
- [WGAN](https://arxiv.org/abs/1701.07875)
- [WGAN-gp](https://arxiv.org/pdf/1704.00028.pdf)

**出力構造**

- [ACGAN](https://arxiv.org/abs/1610.09585)
- [cGANs with Projection Discriminator](https://arxiv.org/abs/1802.05637)

**Discriminator**

- [Relativistic Discriminator](https://arxiv.org/abs/1807.00734)
- [U-Net GAN](https://arxiv.org/pdf/2002.12655.pdf), CVPR2020



## 理論寄りの論文 / GAN Logic, Convergence...

- [Localized GAN](https://arxiv.org/abs/1711.06020)
- [Are GANs Created Equal? A Large-Scale Study](https://arxiv.org/abs/1711.10337)
- [Discriminator Rejection Sampling](https://arxiv.org/abs/1810.06758)
- [How good is my GAN?](https://arxiv.org/abs/1807.09499)
- [GANs May Have No Nash Equilibria](https://arxiv.org/abs/2002.09124)


<a id="Normalization"></a>

## 正規化 / Normalization

- [Batch Normalization](https://arxiv.org/abs/1502.03167)
- [Instance Normalization](https://arxiv.org/abs/1607.08022)
- [Layer Normalization](https://arxiv.org/abs/1607.06450)
- [Spectral Normalization](https://arxiv.org/abs/1802.05957)
- [AdaIN](https://arxiv.org/abs/1703.06868.pdf)
- [SPADE](https://arxiv.org/abs/1903.07291)


<a id="Stability"></a>

## 学習安定性 / Training Stability

- [Stabilizing Training of Generative Adversarial Networks through Regularization](https://arxiv.org/abs/1705.09367)
- [Improving the Adversarial Robustness and Interpretability of Deep Neural Networks by Regularizing their Input Gradients](https://arxiv.org/abs/1711.09404)
- [Mode Seeking Generative Adversarial Networks for Diverse Image Synthes](https://arxiv.org/abs/1903.05628)
- [Smoothness and Stability in GANs](https://openreview.net/forum?id=HJeOekHKwr), 19.09

##### ロバストなGAN / Robustness

- [RoCGAN](https://arxiv.org/pdf/1805.08657.pdf), ICLR2019
- [RcGAN](https://arxiv.org/pdf/1811.03205.pdf), NeurIPS2018


<a id="Augmentation"></a>

## データ拡張 / Data Augmentation

**GANで使うデータ拡張 / DA for GAN**

- [Data Augmentation Generative Adversarial Networks](https://arxiv.org/abs/1711.04340)
- [Image Augmentations for GAN Training](https://arxiv.org/abs/2006.02595)

**GANをデータ拡張に使う / GAN for NNs**

- [Data Augmentation Using GANs](https://arxiv.org/abs/1904.09135)


<a id="LowData"></a>

## 少量データによるGANの学習

- [SinGAN](https://arxiv.org/abs/1905.01164), ICCV2019**bestpaper**
- [Differentiable Augmentation for Data-Efficient GAN Training](https://arxiv.org/abs/2006.10738)
- [Towards Faster and Stabilized GAN Training for High-fidelity Few-shot Image Synthesis](https://arxiv.org/abs/2101.04775.pdf), ICLR2021(poster)
- [Training Generative Adversarial Networks with Limited Data](https://arxiv.org/abs/2006.06676.pdf), NeurIPS2020


<a id="HighReso"></a>

## 高解像度系 / High-Resolution Image Synthesis

- [LAPGAN](https://arxiv.org/abs/1506.05751), CVPR
- PGGAN
- BigGAN
  - [BigBiGAN](https://arxiv.org/abs/1907.02544), [TFHub](https://tfhub.dev/s?publisher=deepmind&q=bigbigan)
- StyleGAN
- [StyleGANv2](https://arxiv.org/abs/2006.06676), ([GitHub](https://github.com/NVlabs/stylegan2-ada))

TGAN系列

- [TGAN](https://arxiv.org/abs/1901.09953)


<a id="Image2Image"></a>

## 画像変換 / Image2Image Translation

- pix2pix
  - pix2pix HD
- CycleGAN
  - BiCycleGAN, [paper](https://arxiv.org/abs/1711.11586)/[poster](https://junyanz.github.io/BicycleGAN/index_files/poster_nips_v3.pdf)
- [UGATIT](https://arxiv.org/abs/1907.10830), [メルアイコン変換器を作った話](https://qiita.com/zassou65535/items/4bc42fa36203c13fe2d3)
- [AnimeGAN](https://link.springer.com/chapter/10.1007/978-981-15-5577-0_18), [git](https://tachibanayoshino.github.io/AnimeGANv2/), [press](https://www.itmedia.co.jp/news/articles/2008/11/news096.html)
- [CountRGAN](https://arxiv.org/abs/2009.05199)

**AdaIN系**

- InstaGAN
- GauGAN(Spade)
- High-DT, [paper](https://arxiv.org/abs/2003.08791)/[git](https://github.com/saic-mdal/HiDT)

**UNIT系列**

- [UNIT](https://arxiv.org/abs/1703.00848)
- [MUNIT](https://arxiv.org/abs/1804.04732)
- [FUNIT](https://arxiv.org/abs/1905.01723)

**穴埋めタスク / Filling**

- [Context Encoders](https://arxiv.org/abs/1604.07379)

**クロスドメイン / Cross Domain**

- [DiscoGAN](https://arxiv.org/pdf/1703.05192.pdf)
- [StarGAN](https://arxiv.org/abs/1711.09020)
  - [StarGAN v2](https://arxiv.org/abs/1912.01865)
- [XFork](https://arxiv.org/abs/1803.03396)
- [SelectionGAN](https://arxiv.org/abs/1904.06807)

**超解像 / Single Image Super-Resolution(SISR)**

- [SRGAN](https://arxiv.org/abs/1609.04802)
- [ESRGAN](https://arxiv.org/abs/1809.00219), ECCV2018workshop
- [SFTGAN](https://arxiv.org/abs/1804.02815), CVPR2018

**色付け・色塗り / Colarization**

- [Style2Paints](https://github.com/lllyasviel/style2paints/blob/master/papers/sa.pdf)
- [SketchyGAN](https://openaccess.thecvf.com/content_cvpr_2018/papers/Chen_SketchyGAN_Towards_Diverse_CVPR_2018_paper.pdf), CVPR2018

**動画生成 / Video Generation**

- ReCycleGAN, [paper](https://www.cs.cmu.edu/~aayushb/Recycle-GAN/recycle_gan.pdf)
- Vid2Vid
- few-shot Vid2Vid


## テキスト生成系 / Text Generation

- [Text Generation Based on Generative Adversarial Nets with Latent Variable](https://arxiv.org/abs/1712.00170)



## Text2Image

- [GAN-GLS](https://arxiv.org/abs/1605.05396)
- [StackGAN](https://arxiv.org/abs/1612.03242)
- [StackGAN++](https://arxiv.org/abs/1710.10916)
- [Obj-GANs](https://arxiv.org/abs/1902.10740)


<a id="Voice"></a>

## 声質変換 / Voice Conversion

- MelGAN
- MBMelGAN
- StyleMelGAN
- [HiFi-GAN](https://arxiv.org/abs/2010.05646)


- [CycleGAN-VC](https://arxiv.org/abs/1711.11293)
  - [CycleGAN-VC2](https://arxiv.org/abs/1904.04631)
  - [CycleGAN-VC3](https://isca-speech.org/archive/Interspeech_2020/pdfs/2280.pdf)
- [StarGAN-VC](https://arxiv.org/abs/1806.02169)
  - [StarGAN-VC2](https://www.isca-speech.org/archive/Interspeech_2019/pdfs/2236.pdf)


- [Parallel Wave-GAN](https://arxiv.org/abs/1910.11480)

## 音声合成 / Text-to-Speech(TTS)

- GANTTS


## 3D

- [3DGAN](https://arxiv.org/abs/1610.07584)


<a id="Anomaly"></a>

## 異常検知 / Anomaly Detection

- [AnoGAN](https://arxiv.org/abs/1703.05921)
- [Dual Auto-Encoders GAN]()
- [Anomaly Detection by One Class Latent Regularized Networks](https://arxiv.org/abs/2002.01607)


<a id="Brain"></a>

## デコーディング / Brain-Decoding

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

## マテリアル系 / Materials Engineering

- [https://arxiv.org/pdf/1805.07615.pdf](https://arxiv.org/abs/1805.07615)
- [Generative Adversarial Networks for Crystal Structure Prediction](https://pubs.acs.org/doi/10.1021/acscentsci.0c00426)
- [Designing complex architectured materials with generative adversarial networks](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7182413/pdf/aaz4169.pdf)



<a id="NAS"></a>

## Neural Architecture Search (NAS)

- [AutoGAN](https://arxiv.org/abs/1908.03835)


<a id="Pose"></a>

## ポーズ系 / Pose Estimation, Pose Generation

- [MoCoGAN](https://arxiv.org/abs/1707.04993)
- [Liquid Warping GAN](https://openaccess.thecvf.com/content_ICCV_2019/papers/Liu_Liquid_Warping_GAN_A_Unified_Framework_for_Human_Motion_Imitation_ICCV_2019_paper.pdf), ICCV2019

**music2dance**

- [Dancing to Music](https://papers.nips.cc/paper/2019/file/7ca57a9f85a19a6e4b9a248c1daca185-Paper.pdf)
- [DeepDance](http://zju-capg.org/research_en_music_deepdance.html)
- [Learning to dance: A graph convolutional adversarial network to generate realistic dance motions from audio](https://arxiv.org/abs/2011.12999)


## Privacy & Fairness

- [VGAN-Based Image Representation Learning for Privacy-Preserving Facial Expression Recognition](https://arxiv.org/abs/1803.07100)


<a id="Reinforcement"></a>

## 強化学習 / Reinforcement Learning

- [Generative Adversarial Imitation Learning](https://arxiv.org/abs/1606.03476)
- [Task-Relevant Adversarial Imitation Learning](https://arxiv.org/abs/1910.01077)
- [Triple-GAIL](https://arxiv.org/abs/2005.10622)


<a id="VAE"></a>

## VAE

- VAE-GAN
- [cVAE-GAN](https://arxiv.org/abs/1703.10155)

## Flow

- [Flow-GAN](https://arxiv.org/abs/1705.08868)



----


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

**saliency map**

- [SalGAN](https://arxiv.org/abs/1701.01081)

**バイオ系/Bioligy**

- [Gene Expression Imputation with Generative Adversarial Imputation Nets](https://www.biorxiv.org/content/10.1101/2020.06.09.141689v1)


## 資料 / Appendix

- KL-Divergence
- JS-Divergence
- Checker Board Archifact
  - [Deconvolution and Checkerboard Artifacts (medium)](https://distill.pub/2016/deconv-checkerboard/)


