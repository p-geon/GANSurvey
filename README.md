<!--
- できるだけ日付順に並べる
-->
# GAN Survey

- [高解像度系](#HighReso)
- [異常検知](#AnomalyDetection)
- [少量データによる学習](#LowData)
- [画像変換](#Image2Image)
- 理論寄り
    - [学習安定性](#Stability)
- ドメイン別
  - 音声合成
  - 声質変換
  - 言語
  - 強化学習
  - ポーズ系
  - 超解像
  - 脳
  - その他

<a id="HighReso"></a>
## 高解像度系

- SAGAN
- BigGAN
- [StyleGANv2](https://arxiv.org/abs/2006.06676), ([GitHub](https://github.com/NVlabs/stylegan2-ada))

<a id="Stability"></a>
## 学習安定性

- [Smoothness and Stability in GANs](https://openreview.net/forum?id=HJeOekHKwr), 19.09

<a id="AnomalyDetection"></a>
## 異常検知

- [AnoGAN](https://arxiv.org/abs/1703.05921)
- [Dual Auto-Encoders GAN]()
- [Anomaly Detection by One Class Latent Regularized Networks](https://arxiv.org/abs/2002.01607)

<a id="LowData"></a>
## 少量データによる学習

- SinGAN

**データ拡張**

- [Image Augmentations for GAN Training](https://arxiv.org/abs/2006.02595)

<a id="Image2Image"></a>

## 画像変換

- pix2pix
- CycleGAN
- UNIT
- MUNIT
- [UGATIT](https://arxiv.org/abs/1907.10830)
  - [メルアイコン変換器を作った話](https://qiita.com/zassou65535/items/4bc42fa36203c13fe2d3)
- [AnimeGAN](https://link.springer.com/chapter/10.1007/978-981-15-5577-0_18)
  - https://tachibanayoshino.github.io/AnimeGANv2/
  - https://www.itmedia.co.jp/news/articles/2008/11/news096.html

## 声質変換

- MelGAN
- MBMelGAN

## 音声合成

- GANTTS

## 強化学習

- [Generative Adversarial Imitation Learning](https://arxiv.org/abs/1606.03476)
- [Task-Relevant Adversarial Imitation Learning](https://arxiv.org/abs/1910.01077)

## ポーズ系

- [Liquid Warping GAN](https://openaccess.thecvf.com/content_ICCV_2019/papers/Liu_Liquid_Warping_GAN_A_Unified_Framework_for_Human_Motion_Imitation_ICCV_2019_paper.pdf), ICCV2019

## 超解像

- [SRGAN](https://arxiv.org/abs/1609.04802)

## 脳

- [CS-GAN](https://arxiv.org/abs/2102.04456v1)

## その他

- None