lbl_8016E4F4:
/* 8016E4F4  94 21 EA 70 */	stwu r1, -0x1590(r1)
/* 8016E4F8  7C 08 02 A6 */	mflr r0
/* 8016E4FC  90 01 15 94 */	stw r0, 0x1594(r1)
/* 8016E500  38 00 15 88 */	li r0, 0x1588
/* 8016E504  DB E1 15 80 */	stfd f31, 0x1580(r1)
/* 8016E508  13 E1 00 0E */	psq_stx f31, r1, r0, 0, 0 /* qr0 */
/* 8016E50C  38 00 15 78 */	li r0, 0x1578
/* 8016E510  DB C1 15 70 */	stfd f30, 0x1570(r1)
/* 8016E514  13 C1 00 0E */	psq_stx f30, r1, r0, 0, 0 /* qr0 */
/* 8016E518  38 00 15 68 */	li r0, 0x1568
/* 8016E51C  DB A1 15 60 */	stfd f29, 0x1560(r1)
/* 8016E520  13 A1 00 0E */	psq_stx f29, r1, r0, 0, 0 /* qr0 */
/* 8016E524  38 00 15 58 */	li r0, 0x1558
/* 8016E528  DB 81 15 50 */	stfd f28, 0x1550(r1)
/* 8016E52C  13 81 00 0E */	psq_stx f28, r1, r0, 0, 0 /* qr0 */
/* 8016E530  38 00 15 48 */	li r0, 0x1548
/* 8016E534  DB 61 15 40 */	stfd f27, 0x1540(r1)
/* 8016E538  13 61 00 0E */	psq_stx f27, r1, r0, 0, 0 /* qr0 */
/* 8016E53C  38 00 15 38 */	li r0, 0x1538
/* 8016E540  DB 41 15 30 */	stfd f26, 0x1530(r1)
/* 8016E544  13 41 00 0E */	psq_stx f26, r1, r0, 0, 0 /* qr0 */
/* 8016E548  38 00 15 28 */	li r0, 0x1528
/* 8016E54C  DB 21 15 20 */	stfd f25, 0x1520(r1)
/* 8016E550  13 21 00 0E */	psq_stx f25, r1, r0, 0, 0 /* qr0 */
/* 8016E554  38 00 15 18 */	li r0, 0x1518
/* 8016E558  DB 01 15 10 */	stfd f24, 0x1510(r1)
/* 8016E55C  13 01 00 0E */	psq_stx f24, r1, r0, 0, 0 /* qr0 */
/* 8016E560  38 00 15 08 */	li r0, 0x1508
/* 8016E564  DA E1 15 00 */	stfd f23, 0x1500(r1)
/* 8016E568  12 E1 00 0E */	psq_stx f23, r1, r0, 0, 0 /* qr0 */
/* 8016E56C  38 00 14 F8 */	li r0, 0x14f8
/* 8016E570  DA C1 14 F0 */	stfd f22, 0x14f0(r1)
/* 8016E574  12 C1 00 0E */	psq_stx f22, r1, r0, 0, 0 /* qr0 */
/* 8016E578  38 00 14 E8 */	li r0, 0x14e8
/* 8016E57C  DA A1 14 E0 */	stfd f21, 0x14e0(r1)
/* 8016E580  12 A1 00 0E */	psq_stx f21, r1, r0, 0, 0 /* qr0 */
/* 8016E584  38 00 14 D8 */	li r0, 0x14d8
/* 8016E588  DA 81 14 D0 */	stfd f20, 0x14d0(r1)
/* 8016E58C  12 81 00 0E */	psq_stx f20, r1, r0, 0, 0 /* qr0 */
/* 8016E590  38 00 14 C8 */	li r0, 0x14c8
/* 8016E594  DA 61 14 C0 */	stfd f19, 0x14c0(r1)
/* 8016E598  12 61 00 0E */	psq_stx f19, r1, r0, 0, 0 /* qr0 */
/* 8016E59C  38 00 14 B8 */	li r0, 0x14b8
/* 8016E5A0  DA 41 14 B0 */	stfd f18, 0x14b0(r1)
/* 8016E5A4  12 41 00 0E */	psq_stx f18, r1, r0, 0, 0 /* qr0 */
/* 8016E5A8  38 00 14 A8 */	li r0, 0x14a8
/* 8016E5AC  DA 21 14 A0 */	stfd f17, 0x14a0(r1)
/* 8016E5B0  12 21 00 0E */	psq_stx f17, r1, r0, 0, 0 /* qr0 */
/* 8016E5B4  39 61 14 A0 */	addi r11, r1, 0x14a0
/* 8016E5B8  48 1F 3C 09 */	bl _savegpr_22
/* 8016E5BC  7C 7F 1B 78 */	mr r31, r3
/* 8016E5C0  7C 9C 23 78 */	mr r28, r4
/* 8016E5C4  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016E5C8  38 A0 00 00 */	li r5, 0
/* 8016E5CC  48 01 47 05 */	bl Val__11dCamParam_cFli
/* 8016E5D0  FF 60 08 90 */	fmr f27, f1
/* 8016E5D4  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016E5D8  7F 84 E3 78 */	mr r4, r28
/* 8016E5DC  38 A0 00 02 */	li r5, 2
/* 8016E5E0  48 01 46 F1 */	bl Val__11dCamParam_cFli
/* 8016E5E4  FF 80 08 90 */	fmr f28, f1
/* 8016E5E8  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016E5EC  7F 84 E3 78 */	mr r4, r28
/* 8016E5F0  38 A0 00 01 */	li r5, 1
/* 8016E5F4  48 01 46 DD */	bl Val__11dCamParam_cFli
/* 8016E5F8  FF 40 08 90 */	fmr f26, f1
/* 8016E5FC  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016E600  7F 84 E3 78 */	mr r4, r28
/* 8016E604  38 A0 00 03 */	li r5, 3
/* 8016E608  48 01 46 C9 */	bl Val__11dCamParam_cFli
/* 8016E60C  FF A0 08 90 */	fmr f29, f1
/* 8016E610  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016E614  7F 84 E3 78 */	mr r4, r28
/* 8016E618  38 A0 00 07 */	li r5, 7
/* 8016E61C  48 01 46 B5 */	bl Val__11dCamParam_cFli
/* 8016E620  FF 20 08 90 */	fmr f25, f1
/* 8016E624  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016E628  7F 84 E3 78 */	mr r4, r28
/* 8016E62C  38 A0 00 08 */	li r5, 8
/* 8016E630  48 01 46 A1 */	bl Val__11dCamParam_cFli
/* 8016E634  FF 00 08 90 */	fmr f24, f1
/* 8016E638  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016E63C  7F 84 E3 78 */	mr r4, r28
/* 8016E640  38 A0 00 10 */	li r5, 0x10
/* 8016E644  48 01 46 8D */	bl Val__11dCamParam_cFli
/* 8016E648  FE E0 08 90 */	fmr f23, f1
/* 8016E64C  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016E650  7F 84 E3 78 */	mr r4, r28
/* 8016E654  38 A0 00 0F */	li r5, 0xf
/* 8016E658  48 01 46 79 */	bl Val__11dCamParam_cFli
/* 8016E65C  FE C0 08 90 */	fmr f22, f1
/* 8016E660  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016E664  7F 84 E3 78 */	mr r4, r28
/* 8016E668  38 A0 00 0C */	li r5, 0xc
/* 8016E66C  48 01 46 65 */	bl Val__11dCamParam_cFli
/* 8016E670  FF E0 08 90 */	fmr f31, f1
/* 8016E674  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016E678  7F 84 E3 78 */	mr r4, r28
/* 8016E67C  38 A0 00 06 */	li r5, 6
/* 8016E680  48 01 46 51 */	bl Val__11dCamParam_cFli
/* 8016E684  FF C0 08 90 */	fmr f30, f1
/* 8016E688  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016E68C  7F 84 E3 78 */	mr r4, r28
/* 8016E690  38 A0 00 17 */	li r5, 0x17
/* 8016E694  48 01 46 3D */	bl Val__11dCamParam_cFli
/* 8016E698  FE 80 08 90 */	fmr f20, f1
/* 8016E69C  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016E6A0  7F 84 E3 78 */	mr r4, r28
/* 8016E6A4  38 A0 00 18 */	li r5, 0x18
/* 8016E6A8  48 01 46 29 */	bl Val__11dCamParam_cFli
/* 8016E6AC  FE 60 08 90 */	fmr f19, f1
/* 8016E6B0  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016E6B4  7F 84 E3 78 */	mr r4, r28
/* 8016E6B8  38 A0 00 11 */	li r5, 0x11
/* 8016E6BC  48 01 46 15 */	bl Val__11dCamParam_cFli
/* 8016E6C0  FE 40 08 90 */	fmr f18, f1
/* 8016E6C4  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016E6C8  7F 84 E3 78 */	mr r4, r28
/* 8016E6CC  38 A0 00 12 */	li r5, 0x12
/* 8016E6D0  48 01 46 01 */	bl Val__11dCamParam_cFli
/* 8016E6D4  FE 20 08 90 */	fmr f17, f1
/* 8016E6D8  C2 A2 9C B4 */	lfs f21, lit_5661(r2)
/* 8016E6DC  3B 20 00 00 */	li r25, 0
/* 8016E6E0  3B 00 00 01 */	li r24, 1
/* 8016E6E4  83 5F 01 80 */	lwz r26, 0x180(r31)
/* 8016E6E8  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8016E6EC  28 00 00 00 */	cmplwi r0, 0
/* 8016E6F0  40 82 02 40 */	bne lbl_8016E930
/* 8016E6F4  3C 60 54 41 */	lis r3, 0x5441 /* 0x54414C4B@ha */
/* 8016E6F8  38 03 4C 4B */	addi r0, r3, 0x4C4B /* 0x54414C4B@l */
/* 8016E6FC  90 1F 03 E8 */	stw r0, 0x3e8(r31)
/* 8016E700  38 80 00 00 */	li r4, 0
/* 8016E704  90 9F 04 2C */	stw r4, 0x42c(r31)
/* 8016E708  38 60 FF FF */	li r3, -1
/* 8016E70C  90 7F 04 20 */	stw r3, 0x420(r31)
/* 8016E710  38 00 00 14 */	li r0, 0x14
/* 8016E714  90 1F 04 30 */	stw r0, 0x430(r31)
/* 8016E718  90 9F 04 24 */	stw r4, 0x424(r31)
/* 8016E71C  90 7F 04 28 */	stw r3, 0x428(r31)
/* 8016E720  C0 02 9E 14 */	lfs f0, lit_12268(r2)
/* 8016E724  D0 1F 04 44 */	stfs f0, 0x444(r31)
/* 8016E728  D0 1F 04 48 */	stfs f0, 0x448(r31)
/* 8016E72C  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016E730  D0 1F 04 64 */	stfs f0, 0x464(r31)
/* 8016E734  38 7F 04 9C */	addi r3, r31, 0x49c
/* 8016E738  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8016E73C  38 84 0C F4 */	addi r4, r4, Zero__4cXyz@l /* 0x80430CF4@l */
/* 8016E740  4B F2 90 99 */	bl __as__4cXyzFRC4cXyz
/* 8016E744  38 00 00 00 */	li r0, 0
/* 8016E748  98 1F 04 71 */	stb r0, 0x471(r31)
/* 8016E74C  98 1F 04 70 */	stb r0, 0x470(r31)
/* 8016E750  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 8016E754  90 1F 04 74 */	stw r0, 0x474(r31)
/* 8016E758  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 8016E75C  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8016E760  90 1F 00 88 */	stw r0, 0x88(r31)
/* 8016E764  48 01 42 F1 */	bl dComIfGp_evmng_cameraPlay__Fv
/* 8016E768  2C 03 00 00 */	cmpwi r3, 0
/* 8016E76C  40 82 00 38 */	bne lbl_8016E7A4
/* 8016E770  38 00 00 00 */	li r0, 0
/* 8016E774  B0 1F 04 6C */	sth r0, 0x46c(r31)
/* 8016E778  B0 1F 04 6E */	sth r0, 0x46e(r31)
/* 8016E77C  D3 3F 04 3C */	stfs f25, 0x43c(r31)
/* 8016E780  D3 1F 04 4C */	stfs f24, 0x44c(r31)
/* 8016E784  D2 5F 04 50 */	stfs f18, 0x450(r31)
/* 8016E788  D2 5F 04 40 */	stfs f18, 0x440(r31)
/* 8016E78C  D2 3F 04 54 */	stfs f17, 0x454(r31)
/* 8016E790  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 8016E794  90 1F 04 58 */	stw r0, 0x458(r31)
/* 8016E798  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 8016E79C  90 1F 04 5C */	stw r0, 0x45c(r31)
/* 8016E7A0  48 00 01 84 */	b lbl_8016E924
lbl_8016E7A4:
/* 8016E7A4  7F E3 FB 78 */	mr r3, r31
/* 8016E7A8  38 81 02 4C */	addi r4, r1, 0x24c
/* 8016E7AC  3C A0 80 39 */	lis r5, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8016E7B0  38 A5 3F 68 */	addi r5, r5, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 8016E7B4  38 A5 01 AD */	addi r5, r5, 0x1ad
/* 8016E7B8  38 C0 00 00 */	li r6, 0
/* 8016E7BC  4B F1 A8 D1 */	bl getEvIntData__9dCamera_cFPiPci
/* 8016E7C0  80 01 02 4C */	lwz r0, 0x24c(r1)
/* 8016E7C4  B0 1F 04 6C */	sth r0, 0x46c(r31)
/* 8016E7C8  7F E3 FB 78 */	mr r3, r31
/* 8016E7CC  38 81 02 4C */	addi r4, r1, 0x24c
/* 8016E7D0  3C A0 80 39 */	lis r5, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8016E7D4  38 A5 3F 68 */	addi r5, r5, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 8016E7D8  38 A5 01 B8 */	addi r5, r5, 0x1b8
/* 8016E7DC  38 C0 00 00 */	li r6, 0
/* 8016E7E0  4B F1 A8 AD */	bl getEvIntData__9dCamera_cFPiPci
/* 8016E7E4  80 01 02 4C */	lwz r0, 0x24c(r1)
/* 8016E7E8  B0 1F 04 6E */	sth r0, 0x46e(r31)
/* 8016E7EC  7F E3 FB 78 */	mr r3, r31
/* 8016E7F0  38 9F 04 3C */	addi r4, r31, 0x43c
/* 8016E7F4  3C A0 80 39 */	lis r5, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8016E7F8  38 A5 3F 68 */	addi r5, r5, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 8016E7FC  38 A5 01 BD */	addi r5, r5, 0x1bd
/* 8016E800  FC 20 C8 90 */	fmr f1, f25
/* 8016E804  4B F1 A9 51 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8016E808  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016E80C  41 82 00 24 */	beq lbl_8016E830
/* 8016E810  7F E3 FB 78 */	mr r3, r31
/* 8016E814  38 9F 04 4C */	addi r4, r31, 0x44c
/* 8016E818  3C A0 80 39 */	lis r5, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8016E81C  38 A5 3F 68 */	addi r5, r5, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 8016E820  38 A5 01 C4 */	addi r5, r5, 0x1c4
/* 8016E824  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 8016E828  4B F1 A9 2D */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8016E82C  48 00 00 20 */	b lbl_8016E84C
lbl_8016E830:
/* 8016E830  7F E3 FB 78 */	mr r3, r31
/* 8016E834  38 9F 04 4C */	addi r4, r31, 0x44c
/* 8016E838  3C A0 80 39 */	lis r5, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8016E83C  38 A5 3F 68 */	addi r5, r5, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 8016E840  38 A5 01 C4 */	addi r5, r5, 0x1c4
/* 8016E844  FC 20 C0 90 */	fmr f1, f24
/* 8016E848  4B F1 A9 0D */	bl getEvFloatData__9dCamera_cFPfPcf
lbl_8016E84C:
/* 8016E84C  7F E3 FB 78 */	mr r3, r31
/* 8016E850  38 9F 04 44 */	addi r4, r31, 0x444
/* 8016E854  3C A0 80 39 */	lis r5, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8016E858  38 A5 3F 68 */	addi r5, r5, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 8016E85C  38 A5 01 CF */	addi r5, r5, 0x1cf
/* 8016E860  C0 22 9E 14 */	lfs f1, lit_12268(r2)
/* 8016E864  4B F1 A8 F1 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8016E868  7F E3 FB 78 */	mr r3, r31
/* 8016E86C  38 9F 04 50 */	addi r4, r31, 0x450
/* 8016E870  3C A0 80 39 */	lis r5, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8016E874  38 A5 3F 68 */	addi r5, r5, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 8016E878  38 A5 01 D9 */	addi r5, r5, 0x1d9
/* 8016E87C  FC 20 90 90 */	fmr f1, f18
/* 8016E880  4B F1 A8 D5 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8016E884  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016E888  41 82 00 24 */	beq lbl_8016E8AC
/* 8016E88C  7F E3 FB 78 */	mr r3, r31
/* 8016E890  38 9F 04 54 */	addi r4, r31, 0x454
/* 8016E894  3C A0 80 39 */	lis r5, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8016E898  38 A5 3F 68 */	addi r5, r5, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 8016E89C  38 A5 01 DE */	addi r5, r5, 0x1de
/* 8016E8A0  C0 3F 04 50 */	lfs f1, 0x450(r31)
/* 8016E8A4  4B F1 A8 B1 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8016E8A8  48 00 00 20 */	b lbl_8016E8C8
lbl_8016E8AC:
/* 8016E8AC  7F E3 FB 78 */	mr r3, r31
/* 8016E8B0  38 9F 04 54 */	addi r4, r31, 0x454
/* 8016E8B4  3C A0 80 39 */	lis r5, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8016E8B8  38 A5 3F 68 */	addi r5, r5, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 8016E8BC  38 A5 01 DE */	addi r5, r5, 0x1de
/* 8016E8C0  FC 20 88 90 */	fmr f1, f17
/* 8016E8C4  4B F1 A8 91 */	bl getEvFloatData__9dCamera_cFPfPcf
lbl_8016E8C8:
/* 8016E8C8  C0 1F 04 50 */	lfs f0, 0x450(r31)
/* 8016E8CC  D0 1F 04 40 */	stfs f0, 0x440(r31)
/* 8016E8D0  7F E3 FB 78 */	mr r3, r31
/* 8016E8D4  38 9F 04 48 */	addi r4, r31, 0x448
/* 8016E8D8  3C A0 80 39 */	lis r5, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8016E8DC  38 A5 3F 68 */	addi r5, r5, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 8016E8E0  38 A5 01 E7 */	addi r5, r5, 0x1e7
/* 8016E8E4  C0 22 9E 14 */	lfs f1, lit_12268(r2)
/* 8016E8E8  4B F1 A8 6D */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8016E8EC  7F E3 FB 78 */	mr r3, r31
/* 8016E8F0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8016E8F4  38 A4 3F 68 */	addi r5, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 8016E8F8  38 85 01 F0 */	addi r4, r5, 0x1f0
/* 8016E8FC  38 A5 01 F9 */	addi r5, r5, 0x1f9
/* 8016E900  4B F1 AC F5 */	bl getEvActor__9dCamera_cFPcPc
/* 8016E904  90 7F 04 58 */	stw r3, 0x458(r31)
/* 8016E908  7F E3 FB 78 */	mr r3, r31
/* 8016E90C  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8016E910  38 A4 3F 68 */	addi r5, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 8016E914  38 85 02 02 */	addi r4, r5, 0x202
/* 8016E918  38 A5 02 0A */	addi r5, r5, 0x20a
/* 8016E91C  4B F1 AC D9 */	bl getEvActor__9dCamera_cFPcPc
/* 8016E920  90 7F 04 5C */	stw r3, 0x45c(r31)
lbl_8016E924:
/* 8016E924  80 1F 04 5C */	lwz r0, 0x45c(r31)
/* 8016E928  90 1F 04 60 */	stw r0, 0x460(r31)
/* 8016E92C  D3 9F 04 68 */	stfs f28, 0x468(r31)
lbl_8016E930:
/* 8016E930  7F E3 FB 78 */	mr r3, r31
/* 8016E934  4B FF FB 15 */	bl getMsgCmdSpeaker__9dCamera_cFv
/* 8016E938  28 03 00 00 */	cmplwi r3, 0
/* 8016E93C  41 82 00 10 */	beq lbl_8016E94C
/* 8016E940  83 BF 04 58 */	lwz r29, 0x458(r31)
/* 8016E944  7C 7E 1B 78 */	mr r30, r3
/* 8016E948  48 00 00 24 */	b lbl_8016E96C
lbl_8016E94C:
/* 8016E94C  48 01 41 09 */	bl dComIfGp_evmng_cameraPlay__Fv
/* 8016E950  2C 03 00 00 */	cmpwi r3, 0
/* 8016E954  41 82 00 10 */	beq lbl_8016E964
/* 8016E958  83 BF 04 58 */	lwz r29, 0x458(r31)
/* 8016E95C  83 DF 04 5C */	lwz r30, 0x45c(r31)
/* 8016E960  48 00 00 0C */	b lbl_8016E96C
lbl_8016E964:
/* 8016E964  83 BF 01 80 */	lwz r29, 0x180(r31)
/* 8016E968  83 DF 01 84 */	lwz r30, 0x184(r31)
lbl_8016E96C:
/* 8016E96C  7C 1D F0 40 */	cmplw r29, r30
/* 8016E970  40 82 00 08 */	bne lbl_8016E978
/* 8016E974  3B C0 00 00 */	li r30, 0
lbl_8016E978:
/* 8016E978  28 1D 00 00 */	cmplwi r29, 0
/* 8016E97C  41 82 00 0C */	beq lbl_8016E988
/* 8016E980  28 1E 00 00 */	cmplwi r30, 0
/* 8016E984  40 82 00 14 */	bne lbl_8016E998
lbl_8016E988:
/* 8016E988  38 00 00 01 */	li r0, 1
/* 8016E98C  98 1F 01 58 */	stb r0, 0x158(r31)
/* 8016E990  38 60 00 00 */	li r3, 0
/* 8016E994  48 00 63 B8 */	b lbl_80174D4C
lbl_8016E998:
/* 8016E998  80 1F 04 60 */	lwz r0, 0x460(r31)
/* 8016E99C  7C 00 F0 40 */	cmplw r0, r30
/* 8016E9A0  41 82 00 18 */	beq lbl_8016E9B8
/* 8016E9A4  38 00 00 00 */	li r0, 0
/* 8016E9A8  90 1F 01 74 */	stw r0, 0x174(r31)
/* 8016E9AC  98 1F 01 58 */	stb r0, 0x158(r31)
/* 8016E9B0  90 1F 04 2C */	stw r0, 0x42c(r31)
/* 8016E9B4  93 DF 04 60 */	stw r30, 0x460(r31)
lbl_8016E9B8:
/* 8016E9B8  3B 60 00 00 */	li r27, 0
/* 8016E9BC  7F C3 F3 78 */	mr r3, r30
/* 8016E9C0  4B FD 28 FD */	bl fopAcM_GetName__FPv
/* 8016E9C4  7C 60 07 34 */	extsh r0, r3
/* 8016E9C8  2C 00 01 08 */	cmpwi r0, 0x108
/* 8016E9CC  41 82 00 68 */	beq lbl_8016EA34
/* 8016E9D0  7F C3 F3 78 */	mr r3, r30
/* 8016E9D4  4B FD 28 E9 */	bl fopAcM_GetName__FPv
/* 8016E9D8  7C 60 07 34 */	extsh r0, r3
/* 8016E9DC  2C 00 03 00 */	cmpwi r0, 0x300
/* 8016E9E0  41 82 00 54 */	beq lbl_8016EA34
/* 8016E9E4  7F C3 F3 78 */	mr r3, r30
/* 8016E9E8  4B FD 28 D5 */	bl fopAcM_GetName__FPv
/* 8016E9EC  7C 60 07 34 */	extsh r0, r3
/* 8016E9F0  2C 00 01 0A */	cmpwi r0, 0x10a
/* 8016E9F4  41 82 00 40 */	beq lbl_8016EA34
/* 8016E9F8  7F C3 F3 78 */	mr r3, r30
/* 8016E9FC  4B FD 28 C1 */	bl fopAcM_GetName__FPv
/* 8016EA00  7C 60 07 34 */	extsh r0, r3
/* 8016EA04  2C 00 02 E2 */	cmpwi r0, 0x2e2
/* 8016EA08  41 82 00 2C */	beq lbl_8016EA34
/* 8016EA0C  7F C3 F3 78 */	mr r3, r30
/* 8016EA10  4B FD 28 AD */	bl fopAcM_GetName__FPv
/* 8016EA14  7C 60 07 34 */	extsh r0, r3
/* 8016EA18  2C 00 01 0C */	cmpwi r0, 0x10c
/* 8016EA1C  41 82 00 18 */	beq lbl_8016EA34
/* 8016EA20  7F C3 F3 78 */	mr r3, r30
/* 8016EA24  4B FD 28 99 */	bl fopAcM_GetName__FPv
/* 8016EA28  7C 60 07 34 */	extsh r0, r3
/* 8016EA2C  2C 00 01 0D */	cmpwi r0, 0x10d
/* 8016EA30  40 82 00 34 */	bne lbl_8016EA64
lbl_8016EA34:
/* 8016EA34  3B 60 00 01 */	li r27, 1
/* 8016EA38  C0 02 9E 18 */	lfs f0, lit_12269(r2)
/* 8016EA3C  D0 1F 04 3C */	stfs f0, 0x43c(r31)
/* 8016EA40  C0 02 9E 1C */	lfs f0, lit_12270(r2)
/* 8016EA44  D0 1F 04 4C */	stfs f0, 0x44c(r31)
/* 8016EA48  C0 02 9D A8 */	lfs f0, lit_10565(r2)
/* 8016EA4C  D0 1F 04 50 */	stfs f0, 0x450(r31)
/* 8016EA50  D0 1F 04 40 */	stfs f0, 0x440(r31)
/* 8016EA54  C0 02 9E 20 */	lfs f0, lit_12271(r2)
/* 8016EA58  D0 1F 04 54 */	stfs f0, 0x454(r31)
/* 8016EA5C  C2 62 9D 54 */	lfs f19, lit_9406(r2)
/* 8016EA60  C2 82 9D 34 */	lfs f20, lit_9398(r2)
lbl_8016EA64:
/* 8016EA64  7F C3 F3 78 */	mr r3, r30
/* 8016EA68  4B FD 28 55 */	bl fopAcM_GetName__FPv
/* 8016EA6C  7C 60 07 34 */	extsh r0, r3
/* 8016EA70  2C 00 02 C3 */	cmpwi r0, 0x2c3
/* 8016EA74  40 82 00 24 */	bne lbl_8016EA98
/* 8016EA78  7F C3 F3 78 */	mr r3, r30
/* 8016EA7C  48 01 43 21 */	bl checkEndMessage__12daTagMwait_cFv
/* 8016EA80  2C 03 00 00 */	cmpwi r3, 0
/* 8016EA84  41 82 00 14 */	beq lbl_8016EA98
/* 8016EA88  38 00 00 23 */	li r0, 0x23
/* 8016EA8C  90 1F 04 24 */	stw r0, 0x424(r31)
/* 8016EA90  48 01 40 2D */	bl getMidnaActor__9daPy_py_cFv
/* 8016EA94  7C 7E 1B 78 */	mr r30, r3
lbl_8016EA98:
/* 8016EA98  A8 7F 04 6E */	lha r3, 0x46e(r31)
/* 8016EA9C  7C 60 07 35 */	extsh. r0, r3
/* 8016EAA0  41 82 00 08 */	beq lbl_8016EAA8
/* 8016EAA4  90 7F 04 24 */	stw r3, 0x424(r31)
lbl_8016EAA8:
/* 8016EAA8  7F E3 FB 78 */	mr r3, r31
/* 8016EAAC  80 9F 04 24 */	lwz r4, 0x424(r31)
/* 8016EAB0  4B FF F9 F5 */	bl getMsgCmdCut__9dCamera_cFl
/* 8016EAB4  90 7F 04 24 */	stw r3, 0x424(r31)
/* 8016EAB8  80 7F 04 24 */	lwz r3, 0x424(r31)
/* 8016EABC  80 1F 04 28 */	lwz r0, 0x428(r31)
/* 8016EAC0  7C 03 00 00 */	cmpw r3, r0
/* 8016EAC4  41 82 00 14 */	beq lbl_8016EAD8
/* 8016EAC8  38 00 00 00 */	li r0, 0
/* 8016EACC  90 1F 04 2C */	stw r0, 0x42c(r31)
/* 8016EAD0  80 1F 04 24 */	lwz r0, 0x424(r31)
/* 8016EAD4  90 1F 04 28 */	stw r0, 0x428(r31)
lbl_8016EAD8:
/* 8016EAD8  38 61 02 44 */	addi r3, r1, 0x244
/* 8016EADC  FC 20 B8 90 */	fmr f1, f23
/* 8016EAE0  48 10 24 E9 */	bl __ct__7cSAngleFf
/* 8016EAE4  38 61 02 40 */	addi r3, r1, 0x240
/* 8016EAE8  FC 20 B0 90 */	fmr f1, f22
/* 8016EAEC  48 10 24 DD */	bl __ct__7cSAngleFf
/* 8016EAF0  38 61 02 3C */	addi r3, r1, 0x23c
/* 8016EAF4  FC 20 98 90 */	fmr f1, f19
/* 8016EAF8  48 10 24 D1 */	bl __ct__7cSAngleFf
/* 8016EAFC  38 61 02 38 */	addi r3, r1, 0x238
/* 8016EB00  FC 20 A0 90 */	fmr f1, f20
/* 8016EB04  48 10 24 C5 */	bl __ct__7cSAngleFf
/* 8016EB08  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8016EB0C  28 00 00 00 */	cmplwi r0, 0
/* 8016EB10  40 82 17 C4 */	bne lbl_801702D4
/* 8016EB14  38 61 02 34 */	addi r3, r1, 0x234
/* 8016EB18  48 01 3F 31 */	bl __ct__7cSAngleFv
/* 8016EB1C  38 61 14 54 */	addi r3, r1, 0x1454
/* 8016EB20  4B EA 3A BD */	bl __ct__4cXyzFv
/* 8016EB24  38 61 11 B4 */	addi r3, r1, 0x11b4
/* 8016EB28  7F E4 FB 78 */	mr r4, r31
/* 8016EB2C  7F C5 F3 78 */	mr r5, r30
/* 8016EB30  4B F2 8C 2D */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8016EB34  38 61 11 A8 */	addi r3, r1, 0x11a8
/* 8016EB38  7F E4 FB 78 */	mr r4, r31
/* 8016EB3C  7F A5 EB 78 */	mr r5, r29
/* 8016EB40  4B F2 8C 1D */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8016EB44  38 61 11 9C */	addi r3, r1, 0x119c
/* 8016EB48  38 81 11 B4 */	addi r4, r1, 0x11b4
/* 8016EB4C  38 A1 11 A8 */	addi r5, r1, 0x11a8
/* 8016EB50  48 0F 7F E5 */	bl __mi__4cXyzCFRC3Vec
/* 8016EB54  38 61 02 D0 */	addi r3, r1, 0x2d0
/* 8016EB58  38 81 11 9C */	addi r4, r1, 0x119c
/* 8016EB5C  48 10 2D 25 */	bl __ct__7cSGlobeFRC4cXyz
/* 8016EB60  38 61 11 9C */	addi r3, r1, 0x119c
/* 8016EB64  38 80 FF FF */	li r4, -1
/* 8016EB68  4B E9 A6 1D */	bl __dt__4cXyzFv
/* 8016EB6C  38 61 11 A8 */	addi r3, r1, 0x11a8
/* 8016EB70  38 80 FF FF */	li r4, -1
/* 8016EB74  4B E9 A6 11 */	bl __dt__4cXyzFv
/* 8016EB78  38 61 11 B4 */	addi r3, r1, 0x11b4
/* 8016EB7C  38 80 FF FF */	li r4, -1
/* 8016EB80  4B E9 A6 05 */	bl __dt__4cXyzFv
/* 8016EB84  38 61 14 48 */	addi r3, r1, 0x1448
/* 8016EB88  4B EA 3A 55 */	bl __ct__4cXyzFv
/* 8016EB8C  38 61 14 3C */	addi r3, r1, 0x143c
/* 8016EB90  4B EA 3A 4D */	bl __ct__4cXyzFv
/* 8016EB94  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016EB98  7F 84 E3 78 */	mr r4, r28
/* 8016EB9C  38 A0 04 00 */	li r5, 0x400
/* 8016EBA0  48 01 40 ED */	bl Flag__11dCamParam_cFlUs
/* 8016EBA4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8016EBA8  40 82 00 50 */	bne lbl_8016EBF8
/* 8016EBAC  7F 43 D3 78 */	mr r3, r26
/* 8016EBB0  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 8016EBB4  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8016EBB8  7D 89 03 A6 */	mtctr r12
/* 8016EBBC  4E 80 04 21 */	bctrl 
/* 8016EBC0  28 03 00 00 */	cmplwi r3, 0
/* 8016EBC4  40 82 00 34 */	bne lbl_8016EBF8
/* 8016EBC8  7F 43 D3 78 */	mr r3, r26
/* 8016EBCC  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 8016EBD0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8016EBD4  7D 89 03 A6 */	mtctr r12
/* 8016EBD8  4E 80 04 21 */	bctrl 
/* 8016EBDC  28 03 00 00 */	cmplwi r3, 0
/* 8016EBE0  40 82 00 18 */	bne lbl_8016EBF8
/* 8016EBE4  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016EBE8  3C 80 00 10 */	lis r4, 0x10
/* 8016EBEC  4B FF D7 7D */	bl func_8016C368
/* 8016EBF0  28 03 00 00 */	cmplwi r3, 0
/* 8016EBF4  41 82 00 90 */	beq lbl_8016EC84
lbl_8016EBF8:
/* 8016EBF8  38 61 11 90 */	addi r3, r1, 0x1190
/* 8016EBFC  7F E4 FB 78 */	mr r4, r31
/* 8016EC00  7F A5 EB 78 */	mr r5, r29
/* 8016EC04  4B F2 8B 19 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016EC08  38 61 14 48 */	addi r3, r1, 0x1448
/* 8016EC0C  38 81 11 90 */	addi r4, r1, 0x1190
/* 8016EC10  4B F2 8B C9 */	bl __as__4cXyzFRC4cXyz
/* 8016EC14  38 61 11 90 */	addi r3, r1, 0x1190
/* 8016EC18  38 80 FF FF */	li r4, -1
/* 8016EC1C  4B E9 A5 69 */	bl __dt__4cXyzFv
/* 8016EC20  38 61 11 84 */	addi r3, r1, 0x1184
/* 8016EC24  7F E4 FB 78 */	mr r4, r31
/* 8016EC28  7F C5 F3 78 */	mr r5, r30
/* 8016EC2C  4B F2 8A F1 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016EC30  38 61 14 3C */	addi r3, r1, 0x143c
/* 8016EC34  38 81 11 84 */	addi r4, r1, 0x1184
/* 8016EC38  4B F2 8B A1 */	bl __as__4cXyzFRC4cXyz
/* 8016EC3C  38 61 11 84 */	addi r3, r1, 0x1184
/* 8016EC40  38 80 FF FF */	li r4, -1
/* 8016EC44  4B E9 A5 41 */	bl __dt__4cXyzFv
/* 8016EC48  7F 43 D3 78 */	mr r3, r26
/* 8016EC4C  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 8016EC50  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8016EC54  7D 89 03 A6 */	mtctr r12
/* 8016EC58  4E 80 04 21 */	bctrl 
/* 8016EC5C  28 03 00 00 */	cmplwi r3, 0
/* 8016EC60  41 82 02 70 */	beq lbl_8016EED0
/* 8016EC64  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 8016EC68  7C 1D 00 40 */	cmplw r29, r0
/* 8016EC6C  40 82 02 64 */	bne lbl_8016EED0
/* 8016EC70  C0 21 14 4C */	lfs f1, 0x144c(r1)
/* 8016EC74  C0 02 9D 34 */	lfs f0, lit_9398(r2)
/* 8016EC78  EC 01 00 2A */	fadds f0, f1, f0
/* 8016EC7C  D0 01 14 4C */	stfs f0, 0x144c(r1)
/* 8016EC80  48 00 02 50 */	b lbl_8016EED0
lbl_8016EC84:
/* 8016EC84  38 61 11 78 */	addi r3, r1, 0x1178
/* 8016EC88  7F E4 FB 78 */	mr r4, r31
/* 8016EC8C  7F A5 EB 78 */	mr r5, r29
/* 8016EC90  4B F2 8A 8D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016EC94  38 61 11 6C */	addi r3, r1, 0x116c
/* 8016EC98  7F E4 FB 78 */	mr r4, r31
/* 8016EC9C  7F A5 EB 78 */	mr r5, r29
/* 8016ECA0  4B F2 8A BD */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8016ECA4  38 61 11 60 */	addi r3, r1, 0x1160
/* 8016ECA8  38 81 11 78 */	addi r4, r1, 0x1178
/* 8016ECAC  38 A1 11 6C */	addi r5, r1, 0x116c
/* 8016ECB0  48 0F 7E 85 */	bl __mi__4cXyzCFRC3Vec
/* 8016ECB4  38 61 14 54 */	addi r3, r1, 0x1454
/* 8016ECB8  38 81 11 60 */	addi r4, r1, 0x1160
/* 8016ECBC  4B F2 8B 1D */	bl __as__4cXyzFRC4cXyz
/* 8016ECC0  38 61 11 60 */	addi r3, r1, 0x1160
/* 8016ECC4  38 80 FF FF */	li r4, -1
/* 8016ECC8  4B E9 A4 BD */	bl __dt__4cXyzFv
/* 8016ECCC  38 61 11 6C */	addi r3, r1, 0x116c
/* 8016ECD0  38 80 FF FF */	li r4, -1
/* 8016ECD4  4B E9 A4 B1 */	bl __dt__4cXyzFv
/* 8016ECD8  38 61 11 78 */	addi r3, r1, 0x1178
/* 8016ECDC  38 80 FF FF */	li r4, -1
/* 8016ECE0  4B E9 A4 A5 */	bl __dt__4cXyzFv
/* 8016ECE4  38 61 01 EC */	addi r3, r1, 0x1ec
/* 8016ECE8  7F E4 FB 78 */	mr r4, r31
/* 8016ECEC  7F A5 EB 78 */	mr r5, r29
/* 8016ECF0  4B F2 8A 49 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8016ECF4  38 61 02 D0 */	addi r3, r1, 0x2d0
/* 8016ECF8  48 01 3F 8D */	bl U__7cSGlobeCFv
/* 8016ECFC  7C 64 1B 78 */	mr r4, r3
/* 8016ED00  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 8016ED04  38 A1 01 EC */	addi r5, r1, 0x1ec
/* 8016ED08  48 10 24 9D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016ED0C  38 61 02 34 */	addi r3, r1, 0x234
/* 8016ED10  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 8016ED14  48 10 22 E5 */	bl Val__7cSAngleFRC7cSAngle
/* 8016ED18  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 8016ED1C  38 80 FF FF */	li r4, -1
/* 8016ED20  4B EC 17 F1 */	bl __dt__7cSAngleFv
/* 8016ED24  38 61 01 EC */	addi r3, r1, 0x1ec
/* 8016ED28  38 80 FF FF */	li r4, -1
/* 8016ED2C  4B EC 17 E5 */	bl __dt__7cSAngleFv
/* 8016ED30  38 61 11 54 */	addi r3, r1, 0x1154
/* 8016ED34  7F E4 FB 78 */	mr r4, r31
/* 8016ED38  7F A5 EB 78 */	mr r5, r29
/* 8016ED3C  4B F2 8A 21 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8016ED40  38 61 01 E4 */	addi r3, r1, 0x1e4
/* 8016ED44  38 81 02 34 */	addi r4, r1, 0x234
/* 8016ED48  48 10 22 21 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016ED4C  38 61 11 48 */	addi r3, r1, 0x1148
/* 8016ED50  38 81 14 54 */	addi r4, r1, 0x1454
/* 8016ED54  38 A1 01 E4 */	addi r5, r1, 0x1e4
/* 8016ED58  4B F1 96 2D */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8016ED5C  38 61 11 3C */	addi r3, r1, 0x113c
/* 8016ED60  38 81 11 54 */	addi r4, r1, 0x1154
/* 8016ED64  38 A1 11 48 */	addi r5, r1, 0x1148
/* 8016ED68  48 0F 7D 7D */	bl __pl__4cXyzCFRC3Vec
/* 8016ED6C  38 61 14 48 */	addi r3, r1, 0x1448
/* 8016ED70  38 81 11 3C */	addi r4, r1, 0x113c
/* 8016ED74  4B F2 8A 65 */	bl __as__4cXyzFRC4cXyz
/* 8016ED78  38 61 11 3C */	addi r3, r1, 0x113c
/* 8016ED7C  38 80 FF FF */	li r4, -1
/* 8016ED80  4B E9 A4 05 */	bl __dt__4cXyzFv
/* 8016ED84  38 61 11 48 */	addi r3, r1, 0x1148
/* 8016ED88  38 80 FF FF */	li r4, -1
/* 8016ED8C  4B E9 A3 F9 */	bl __dt__4cXyzFv
/* 8016ED90  38 61 01 E4 */	addi r3, r1, 0x1e4
/* 8016ED94  38 80 FF FF */	li r4, -1
/* 8016ED98  4B EC 17 79 */	bl __dt__7cSAngleFv
/* 8016ED9C  38 61 11 54 */	addi r3, r1, 0x1154
/* 8016EDA0  38 80 FF FF */	li r4, -1
/* 8016EDA4  4B E9 A3 E1 */	bl __dt__4cXyzFv
/* 8016EDA8  38 61 11 30 */	addi r3, r1, 0x1130
/* 8016EDAC  7F E4 FB 78 */	mr r4, r31
/* 8016EDB0  7F C5 F3 78 */	mr r5, r30
/* 8016EDB4  4B F2 89 69 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016EDB8  38 61 11 24 */	addi r3, r1, 0x1124
/* 8016EDBC  7F E4 FB 78 */	mr r4, r31
/* 8016EDC0  7F C5 F3 78 */	mr r5, r30
/* 8016EDC4  4B F2 89 99 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8016EDC8  38 61 11 18 */	addi r3, r1, 0x1118
/* 8016EDCC  38 81 11 30 */	addi r4, r1, 0x1130
/* 8016EDD0  38 A1 11 24 */	addi r5, r1, 0x1124
/* 8016EDD4  48 0F 7D 61 */	bl __mi__4cXyzCFRC3Vec
/* 8016EDD8  38 61 14 54 */	addi r3, r1, 0x1454
/* 8016EDDC  38 81 11 18 */	addi r4, r1, 0x1118
/* 8016EDE0  4B F2 89 F9 */	bl __as__4cXyzFRC4cXyz
/* 8016EDE4  38 61 11 18 */	addi r3, r1, 0x1118
/* 8016EDE8  38 80 FF FF */	li r4, -1
/* 8016EDEC  4B E9 A3 99 */	bl __dt__4cXyzFv
/* 8016EDF0  38 61 11 24 */	addi r3, r1, 0x1124
/* 8016EDF4  38 80 FF FF */	li r4, -1
/* 8016EDF8  4B E9 A3 8D */	bl __dt__4cXyzFv
/* 8016EDFC  38 61 11 30 */	addi r3, r1, 0x1130
/* 8016EE00  38 80 FF FF */	li r4, -1
/* 8016EE04  4B E9 A3 81 */	bl __dt__4cXyzFv
/* 8016EE08  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 8016EE0C  7F E4 FB 78 */	mr r4, r31
/* 8016EE10  7F C5 F3 78 */	mr r5, r30
/* 8016EE14  4B F2 89 25 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8016EE18  38 61 02 D0 */	addi r3, r1, 0x2d0
/* 8016EE1C  48 01 3E 69 */	bl U__7cSGlobeCFv
/* 8016EE20  48 10 22 C9 */	bl Inv__7cSAngleCFv
/* 8016EE24  7C 64 1B 78 */	mr r4, r3
/* 8016EE28  38 61 01 DC */	addi r3, r1, 0x1dc
/* 8016EE2C  38 A1 01 E0 */	addi r5, r1, 0x1e0
/* 8016EE30  48 10 24 F1 */	bl __mi__FsRC7cSAngle
/* 8016EE34  38 61 02 34 */	addi r3, r1, 0x234
/* 8016EE38  38 81 01 DC */	addi r4, r1, 0x1dc
/* 8016EE3C  48 10 21 BD */	bl Val__7cSAngleFRC7cSAngle
/* 8016EE40  38 61 01 DC */	addi r3, r1, 0x1dc
/* 8016EE44  38 80 FF FF */	li r4, -1
/* 8016EE48  4B EC 16 C9 */	bl __dt__7cSAngleFv
/* 8016EE4C  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 8016EE50  38 80 FF FF */	li r4, -1
/* 8016EE54  4B EC 16 BD */	bl __dt__7cSAngleFv
/* 8016EE58  38 61 11 0C */	addi r3, r1, 0x110c
/* 8016EE5C  7F E4 FB 78 */	mr r4, r31
/* 8016EE60  7F C5 F3 78 */	mr r5, r30
/* 8016EE64  4B F2 88 F9 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8016EE68  38 61 01 D8 */	addi r3, r1, 0x1d8
/* 8016EE6C  38 81 02 34 */	addi r4, r1, 0x234
/* 8016EE70  48 10 20 F9 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016EE74  38 61 11 00 */	addi r3, r1, 0x1100
/* 8016EE78  38 81 14 54 */	addi r4, r1, 0x1454
/* 8016EE7C  38 A1 01 D8 */	addi r5, r1, 0x1d8
/* 8016EE80  4B F1 95 05 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8016EE84  38 61 10 F4 */	addi r3, r1, 0x10f4
/* 8016EE88  38 81 11 0C */	addi r4, r1, 0x110c
/* 8016EE8C  38 A1 11 00 */	addi r5, r1, 0x1100
/* 8016EE90  48 0F 7C 55 */	bl __pl__4cXyzCFRC3Vec
/* 8016EE94  38 61 14 3C */	addi r3, r1, 0x143c
/* 8016EE98  38 81 10 F4 */	addi r4, r1, 0x10f4
/* 8016EE9C  4B F2 89 3D */	bl __as__4cXyzFRC4cXyz
/* 8016EEA0  38 61 10 F4 */	addi r3, r1, 0x10f4
/* 8016EEA4  38 80 FF FF */	li r4, -1
/* 8016EEA8  4B E9 A2 DD */	bl __dt__4cXyzFv
/* 8016EEAC  38 61 11 00 */	addi r3, r1, 0x1100
/* 8016EEB0  38 80 FF FF */	li r4, -1
/* 8016EEB4  4B E9 A2 D1 */	bl __dt__4cXyzFv
/* 8016EEB8  38 61 01 D8 */	addi r3, r1, 0x1d8
/* 8016EEBC  38 80 FF FF */	li r4, -1
/* 8016EEC0  4B EC 16 51 */	bl __dt__7cSAngleFv
/* 8016EEC4  38 61 11 0C */	addi r3, r1, 0x110c
/* 8016EEC8  38 80 FF FF */	li r4, -1
/* 8016EECC  4B E9 A2 B9 */	bl __dt__4cXyzFv
lbl_8016EED0:
/* 8016EED0  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 8016EED4  2C 00 00 01 */	cmpwi r0, 1
/* 8016EED8  40 82 00 3C */	bne lbl_8016EF14
/* 8016EEDC  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 8016EEE0  7C 1D 00 40 */	cmplw r29, r0
/* 8016EEE4  40 82 00 14 */	bne lbl_8016EEF8
/* 8016EEE8  C0 21 14 4C */	lfs f1, 0x144c(r1)
/* 8016EEEC  C0 02 9D 54 */	lfs f0, lit_9406(r2)
/* 8016EEF0  EC 01 00 2A */	fadds f0, f1, f0
/* 8016EEF4  D0 01 14 4C */	stfs f0, 0x144c(r1)
lbl_8016EEF8:
/* 8016EEF8  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 8016EEFC  7C 1E 00 40 */	cmplw r30, r0
/* 8016EF00  40 82 00 14 */	bne lbl_8016EF14
/* 8016EF04  C0 21 14 40 */	lfs f1, 0x1440(r1)
/* 8016EF08  C0 02 9D 54 */	lfs f0, lit_9406(r2)
/* 8016EF0C  EC 01 00 2A */	fadds f0, f1, f0
/* 8016EF10  D0 01 14 40 */	stfs f0, 0x1440(r1)
lbl_8016EF14:
/* 8016EF14  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016EF18  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8016EF1C  4B F1 F8 59 */	bl __as__7cSGlobeFRC7cSGlobe
/* 8016EF20  38 61 10 E8 */	addi r3, r1, 0x10e8
/* 8016EF24  38 81 14 48 */	addi r4, r1, 0x1448
/* 8016EF28  38 A1 14 3C */	addi r5, r1, 0x143c
/* 8016EF2C  48 0F 7C 09 */	bl __mi__4cXyzCFRC3Vec
/* 8016EF30  38 7F 04 9C */	addi r3, r31, 0x49c
/* 8016EF34  38 81 10 E8 */	addi r4, r1, 0x10e8
/* 8016EF38  4B F2 88 A1 */	bl __as__4cXyzFRC4cXyz
/* 8016EF3C  38 61 10 E8 */	addi r3, r1, 0x10e8
/* 8016EF40  38 80 FF FF */	li r4, -1
/* 8016EF44  4B E9 A2 41 */	bl __dt__4cXyzFv
/* 8016EF48  38 7F 04 18 */	addi r3, r31, 0x418
/* 8016EF4C  38 9F 04 9C */	addi r4, r31, 0x49c
/* 8016EF50  48 10 2B 21 */	bl Val__7cSGlobeFRC4cXyz
/* 8016EF54  38 61 10 DC */	addi r3, r1, 0x10dc
/* 8016EF58  38 9F 04 9C */	addi r4, r31, 0x49c
/* 8016EF5C  48 0F 7F 99 */	bl normalize__4cXyzFv
/* 8016EF60  38 61 10 DC */	addi r3, r1, 0x10dc
/* 8016EF64  38 80 FF FF */	li r4, -1
/* 8016EF68  4B E9 A2 1D */	bl __dt__4cXyzFv
/* 8016EF6C  38 61 10 D0 */	addi r3, r1, 0x10d0
/* 8016EF70  38 9F 04 9C */	addi r4, r31, 0x49c
/* 8016EF74  A8 1D 05 4E */	lha r0, 0x54e(r29)
/* 8016EF78  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016EF7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016EF80  90 01 14 64 */	stw r0, 0x1464(r1)
/* 8016EF84  3C 00 43 30 */	lis r0, 0x4330
/* 8016EF88  90 01 14 60 */	stw r0, 0x1460(r1)
/* 8016EF8C  C8 01 14 60 */	lfd f0, 0x1460(r1)
/* 8016EF90  EC 20 08 28 */	fsubs f1, f0, f1
/* 8016EF94  48 0F 7B F1 */	bl __ml__4cXyzCFf
/* 8016EF98  38 61 14 48 */	addi r3, r1, 0x1448
/* 8016EF9C  38 81 10 D0 */	addi r4, r1, 0x10d0
/* 8016EFA0  4B F1 F9 65 */	bl __apl__4cXyzFRC3Vec
/* 8016EFA4  38 61 10 D0 */	addi r3, r1, 0x10d0
/* 8016EFA8  38 80 FF FF */	li r4, -1
/* 8016EFAC  4B E9 A1 D9 */	bl __dt__4cXyzFv
/* 8016EFB0  38 61 10 C4 */	addi r3, r1, 0x10c4
/* 8016EFB4  38 9F 04 9C */	addi r4, r31, 0x49c
/* 8016EFB8  A8 1E 05 4E */	lha r0, 0x54e(r30)
/* 8016EFBC  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016EFC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016EFC4  90 01 14 6C */	stw r0, 0x146c(r1)
/* 8016EFC8  3C 00 43 30 */	lis r0, 0x4330
/* 8016EFCC  90 01 14 68 */	stw r0, 0x1468(r1)
/* 8016EFD0  C8 01 14 68 */	lfd f0, 0x1468(r1)
/* 8016EFD4  EC 20 08 28 */	fsubs f1, f0, f1
/* 8016EFD8  48 0F 7B AD */	bl __ml__4cXyzCFf
/* 8016EFDC  38 61 14 3C */	addi r3, r1, 0x143c
/* 8016EFE0  38 81 10 C4 */	addi r4, r1, 0x10c4
/* 8016EFE4  4B F1 F8 ED */	bl __ami__4cXyzFRC3Vec
/* 8016EFE8  38 61 10 C4 */	addi r3, r1, 0x10c4
/* 8016EFEC  38 80 FF FF */	li r4, -1
/* 8016EFF0  4B E9 A1 95 */	bl __dt__4cXyzFv
/* 8016EFF4  38 7F 04 18 */	addi r3, r31, 0x418
/* 8016EFF8  48 01 3A 6D */	bl R__7cSGlobeCFv
/* 8016EFFC  C0 02 9E 24 */	lfs f0, lit_12272(r2)
/* 8016F000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016F004  40 80 00 10 */	bge lbl_8016F014
/* 8016F008  38 7F 04 18 */	addi r3, r31, 0x418
/* 8016F00C  FC 20 00 90 */	fmr f1, f0
/* 8016F010  48 01 3A 3D */	bl R__7cSGlobeFf
lbl_8016F014:
/* 8016F014  38 61 14 48 */	addi r3, r1, 0x1448
/* 8016F018  38 81 14 3C */	addi r4, r1, 0x143c
/* 8016F01C  4B F1 93 D1 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 8016F020  FE C0 08 90 */	fmr f22, f1
/* 8016F024  C0 02 9E 24 */	lfs f0, lit_12272(r2)
/* 8016F028  EC 36 00 28 */	fsubs f1, f22, f0
/* 8016F02C  EE B5 00 28 */	fsubs f21, f21, f0
/* 8016F030  FC 01 A8 40 */	fcmpo cr0, f1, f21
/* 8016F034  40 81 00 0C */	ble lbl_8016F040
/* 8016F038  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016F03C  48 00 00 08 */	b lbl_8016F044
lbl_8016F040:
/* 8016F040  EC 01 A8 24 */	fdivs f0, f1, f21
lbl_8016F044:
/* 8016F044  D0 1F 04 64 */	stfs f0, 0x464(r31)
/* 8016F048  C0 3F 04 64 */	lfs f1, 0x464(r31)
/* 8016F04C  EC 1C E8 28 */	fsubs f0, f28, f29
/* 8016F050  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016F054  EC 1D 00 2A */	fadds f0, f29, f0
/* 8016F058  D0 1F 04 68 */	stfs f0, 0x468(r31)
/* 8016F05C  38 61 14 30 */	addi r3, r1, 0x1430
/* 8016F060  FC 20 D8 90 */	fmr f1, f27
/* 8016F064  C0 5F 04 68 */	lfs f2, 0x468(r31)
/* 8016F068  FC 60 D0 90 */	fmr f3, f26
/* 8016F06C  4B FD 28 F1 */	bl __ct__4cXyzFfff
/* 8016F070  C0 5F 04 4C */	lfs f2, 0x44c(r31)
/* 8016F074  C0 3F 04 64 */	lfs f1, 0x464(r31)
/* 8016F078  C0 1F 04 3C */	lfs f0, 0x43c(r31)
/* 8016F07C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016F080  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016F084  EC 22 00 2A */	fadds f1, f2, f0
/* 8016F088  FC 01 B0 40 */	fcmpo cr0, f1, f22
/* 8016F08C  40 80 00 08 */	bge lbl_8016F094
/* 8016F090  FC 20 B0 90 */	fmr f1, f22
lbl_8016F094:
/* 8016F094  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016F098  48 01 39 B5 */	bl R__7cSGlobeFf
/* 8016F09C  A8 1F 04 6C */	lha r0, 0x46c(r31)
/* 8016F0A0  2C 00 00 00 */	cmpwi r0, 0
/* 8016F0A4  41 82 00 10 */	beq lbl_8016F0B4
/* 8016F0A8  38 00 00 01 */	li r0, 1
/* 8016F0AC  90 1F 04 30 */	stw r0, 0x430(r31)
/* 8016F0B0  48 00 00 70 */	b lbl_8016F120
lbl_8016F0B4:
/* 8016F0B4  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016F0B8  48 01 39 AD */	bl R__7cSGlobeCFv
/* 8016F0BC  FE A0 08 90 */	fmr f21, f1
/* 8016F0C0  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016F0C4  48 01 39 A1 */	bl R__7cSGlobeCFv
/* 8016F0C8  EC 21 A8 28 */	fsubs f1, f1, f21
/* 8016F0CC  48 01 39 71 */	bl fabsf__3stdFf
/* 8016F0D0  48 01 39 55 */	bl JMAFastSqrt__Ff
/* 8016F0D4  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 8016F0D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016F0DC  FC 00 00 1E */	fctiwz f0, f0
/* 8016F0E0  D8 01 14 68 */	stfd f0, 0x1468(r1)
/* 8016F0E4  80 01 14 6C */	lwz r0, 0x146c(r1)
/* 8016F0E8  90 1F 04 30 */	stw r0, 0x430(r31)
/* 8016F0EC  80 1F 04 30 */	lwz r0, 0x430(r31)
/* 8016F0F0  2C 00 00 02 */	cmpwi r0, 2
/* 8016F0F4  40 80 00 0C */	bge lbl_8016F100
/* 8016F0F8  38 00 00 02 */	li r0, 2
/* 8016F0FC  90 1F 04 30 */	stw r0, 0x430(r31)
lbl_8016F100:
/* 8016F100  80 1F 04 30 */	lwz r0, 0x430(r31)
/* 8016F104  2C 00 00 16 */	cmpwi r0, 0x16
/* 8016F108  40 81 00 0C */	ble lbl_8016F114
/* 8016F10C  38 00 00 16 */	li r0, 0x16
/* 8016F110  90 1F 04 30 */	stw r0, 0x430(r31)
lbl_8016F114:
/* 8016F114  80 7F 04 30 */	lwz r3, 0x430(r31)
/* 8016F118  38 03 00 08 */	addi r0, r3, 8
/* 8016F11C  90 1F 04 30 */	stw r0, 0x430(r31)
lbl_8016F120:
/* 8016F120  38 61 02 30 */	addi r3, r1, 0x230
/* 8016F124  48 01 39 25 */	bl __ct__7cSAngleFv
/* 8016F128  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F12C  48 01 39 1D */	bl __ct__7cSAngleFv
/* 8016F130  C0 3F 04 44 */	lfs f1, 0x444(r31)
/* 8016F134  C0 02 9E 28 */	lfs f0, lit_12273(r2)
/* 8016F138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016F13C  4C 41 13 82 */	cror 2, 1, 2
/* 8016F140  40 82 00 5C */	bne lbl_8016F19C
/* 8016F144  C0 02 9E 2C */	lfs f0, lit_12274(r2)
/* 8016F148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016F14C  4C 40 13 82 */	cror 2, 0, 2
/* 8016F150  40 82 00 4C */	bne lbl_8016F19C
/* 8016F154  38 61 02 30 */	addi r3, r1, 0x230
/* 8016F158  48 10 1E B5 */	bl Val__7cSAngleFf
/* 8016F15C  38 7F 04 18 */	addi r3, r31, 0x418
/* 8016F160  48 01 3B 25 */	bl U__7cSGlobeCFv
/* 8016F164  7C 65 1B 78 */	mr r5, r3
/* 8016F168  38 61 01 D4 */	addi r3, r1, 0x1d4
/* 8016F16C  38 81 02 30 */	addi r4, r1, 0x230
/* 8016F170  48 10 20 35 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016F174  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F178  38 81 01 D4 */	addi r4, r1, 0x1d4
/* 8016F17C  48 01 3B 2D */	bl __as__7cSAngleFRC7cSAngle
/* 8016F180  38 61 01 D4 */	addi r3, r1, 0x1d4
/* 8016F184  38 80 FF FF */	li r4, -1
/* 8016F188  4B EC 13 89 */	bl __dt__7cSAngleFv
/* 8016F18C  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016F190  38 81 02 30 */	addi r4, r1, 0x230
/* 8016F194  4B F1 F7 01 */	bl U__7cSGlobeFRC7cSAngle
/* 8016F198  48 00 02 F0 */	b lbl_8016F488
lbl_8016F19C:
/* 8016F19C  7F C3 F3 78 */	mr r3, r30
/* 8016F1A0  4B FD 21 1D */	bl fopAcM_GetName__FPv
/* 8016F1A4  7C 60 07 34 */	extsh r0, r3
/* 8016F1A8  2C 00 01 1B */	cmpwi r0, 0x11b
/* 8016F1AC  41 82 00 40 */	beq lbl_8016F1EC
/* 8016F1B0  7F C3 F3 78 */	mr r3, r30
/* 8016F1B4  4B FD 21 09 */	bl fopAcM_GetName__FPv
/* 8016F1B8  7C 60 07 34 */	extsh r0, r3
/* 8016F1BC  2C 00 02 EB */	cmpwi r0, 0x2eb
/* 8016F1C0  41 82 00 2C */	beq lbl_8016F1EC
/* 8016F1C4  7F C3 F3 78 */	mr r3, r30
/* 8016F1C8  4B FD 20 F5 */	bl fopAcM_GetName__FPv
/* 8016F1CC  7C 60 07 34 */	extsh r0, r3
/* 8016F1D0  2C 00 02 26 */	cmpwi r0, 0x226
/* 8016F1D4  41 82 00 18 */	beq lbl_8016F1EC
/* 8016F1D8  7F C3 F3 78 */	mr r3, r30
/* 8016F1DC  4B FD 20 E1 */	bl fopAcM_GetName__FPv
/* 8016F1E0  7C 60 07 34 */	extsh r0, r3
/* 8016F1E4  2C 00 01 50 */	cmpwi r0, 0x150
/* 8016F1E8  40 82 00 6C */	bne lbl_8016F254
lbl_8016F1EC:
/* 8016F1EC  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 8016F1F0  7F E4 FB 78 */	mr r4, r31
/* 8016F1F4  7F C5 F3 78 */	mr r5, r30
/* 8016F1F8  4B F2 85 41 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8016F1FC  38 61 02 30 */	addi r3, r1, 0x230
/* 8016F200  38 81 01 D0 */	addi r4, r1, 0x1d0
/* 8016F204  48 10 1D F5 */	bl Val__7cSAngleFRC7cSAngle
/* 8016F208  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 8016F20C  38 80 FF FF */	li r4, -1
/* 8016F210  4B EC 13 01 */	bl __dt__7cSAngleFv
/* 8016F214  38 7F 04 18 */	addi r3, r31, 0x418
/* 8016F218  48 01 3A 6D */	bl U__7cSGlobeCFv
/* 8016F21C  7C 65 1B 78 */	mr r5, r3
/* 8016F220  38 61 01 CC */	addi r3, r1, 0x1cc
/* 8016F224  38 81 02 30 */	addi r4, r1, 0x230
/* 8016F228  48 10 1F 7D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016F22C  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F230  38 81 01 CC */	addi r4, r1, 0x1cc
/* 8016F234  48 01 3A 75 */	bl __as__7cSAngleFRC7cSAngle
/* 8016F238  38 61 01 CC */	addi r3, r1, 0x1cc
/* 8016F23C  38 80 FF FF */	li r4, -1
/* 8016F240  4B EC 12 D1 */	bl __dt__7cSAngleFv
/* 8016F244  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016F248  38 81 02 30 */	addi r4, r1, 0x230
/* 8016F24C  4B F1 F6 49 */	bl U__7cSGlobeFRC7cSAngle
/* 8016F250  48 00 02 38 */	b lbl_8016F488
lbl_8016F254:
/* 8016F254  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016F258  48 01 3A 2D */	bl U__7cSGlobeCFv
/* 8016F25C  7C 64 1B 78 */	mr r4, r3
/* 8016F260  38 61 02 30 */	addi r3, r1, 0x230
/* 8016F264  48 10 1D 95 */	bl Val__7cSAngleFRC7cSAngle
/* 8016F268  38 7F 04 18 */	addi r3, r31, 0x418
/* 8016F26C  48 01 3A 19 */	bl U__7cSGlobeCFv
/* 8016F270  7C 65 1B 78 */	mr r5, r3
/* 8016F274  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 8016F278  38 81 02 30 */	addi r4, r1, 0x230
/* 8016F27C  48 10 1F 29 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016F280  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F284  38 81 01 C8 */	addi r4, r1, 0x1c8
/* 8016F288  48 01 3A 21 */	bl __as__7cSAngleFRC7cSAngle
/* 8016F28C  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 8016F290  38 80 FF FF */	li r4, -1
/* 8016F294  4B EC 12 7D */	bl __dt__7cSAngleFv
/* 8016F298  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F29C  38 8D 8C 10 */	la r4, _90__7cSAngle(r13) /* 80451190-_SDA_BASE_ */
/* 8016F2A0  48 01 37 ED */	bl __gt__7cSAngleCFRC7cSAngle
/* 8016F2A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F2A8  41 82 00 48 */	beq lbl_8016F2F0
/* 8016F2AC  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 8016F2B0  38 81 02 2C */	addi r4, r1, 0x22c
/* 8016F2B4  38 AD 8C 10 */	la r5, _90__7cSAngle(r13) /* 80451190-_SDA_BASE_ */
/* 8016F2B8  48 10 1E ED */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016F2BC  38 61 01 C0 */	addi r3, r1, 0x1c0
/* 8016F2C0  38 8D 8C 10 */	la r4, _90__7cSAngle(r13) /* 80451190-_SDA_BASE_ */
/* 8016F2C4  38 A1 01 C4 */	addi r5, r1, 0x1c4
/* 8016F2C8  48 10 1E DD */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016F2CC  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F2D0  38 81 01 C0 */	addi r4, r1, 0x1c0
/* 8016F2D4  48 01 39 D5 */	bl __as__7cSAngleFRC7cSAngle
/* 8016F2D8  38 61 01 C0 */	addi r3, r1, 0x1c0
/* 8016F2DC  38 80 FF FF */	li r4, -1
/* 8016F2E0  4B EC 12 31 */	bl __dt__7cSAngleFv
/* 8016F2E4  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 8016F2E8  38 80 FF FF */	li r4, -1
/* 8016F2EC  4B EC 12 25 */	bl __dt__7cSAngleFv
lbl_8016F2F0:
/* 8016F2F0  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F2F4  38 8D 8C 18 */	la r4, _270__7cSAngle(r13) /* 80451198-_SDA_BASE_ */
/* 8016F2F8  48 01 37 75 */	bl __lt__7cSAngleCFRC7cSAngle
/* 8016F2FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F300  41 82 00 48 */	beq lbl_8016F348
/* 8016F304  38 61 01 BC */	addi r3, r1, 0x1bc
/* 8016F308  38 81 02 2C */	addi r4, r1, 0x22c
/* 8016F30C  38 AD 8C 18 */	la r5, _270__7cSAngle(r13) /* 80451198-_SDA_BASE_ */
/* 8016F310  48 10 1E 95 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016F314  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 8016F318  38 8D 8C 18 */	la r4, _270__7cSAngle(r13) /* 80451198-_SDA_BASE_ */
/* 8016F31C  38 A1 01 BC */	addi r5, r1, 0x1bc
/* 8016F320  48 10 1E 85 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016F324  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F328  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 8016F32C  48 01 39 7D */	bl __as__7cSAngleFRC7cSAngle
/* 8016F330  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 8016F334  38 80 FF FF */	li r4, -1
/* 8016F338  4B EC 11 D9 */	bl __dt__7cSAngleFv
/* 8016F33C  38 61 01 BC */	addi r3, r1, 0x1bc
/* 8016F340  38 80 FF FF */	li r4, -1
/* 8016F344  4B EC 11 CD */	bl __dt__7cSAngleFv
lbl_8016F348:
/* 8016F348  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F34C  38 81 02 3C */	addi r4, r1, 0x23c
/* 8016F350  48 01 37 3D */	bl __gt__7cSAngleCFRC7cSAngle
/* 8016F354  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F358  41 82 00 10 */	beq lbl_8016F368
/* 8016F35C  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F360  38 81 02 3C */	addi r4, r1, 0x23c
/* 8016F364  48 01 39 45 */	bl __as__7cSAngleFRC7cSAngle
lbl_8016F368:
/* 8016F368  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F36C  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 8016F370  48 01 37 1D */	bl __gt__7cSAngleCFRC7cSAngle
/* 8016F374  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F378  41 82 00 24 */	beq lbl_8016F39C
/* 8016F37C  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F380  38 81 02 38 */	addi r4, r1, 0x238
/* 8016F384  48 01 36 E9 */	bl __lt__7cSAngleCFRC7cSAngle
/* 8016F388  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F38C  41 82 00 10 */	beq lbl_8016F39C
/* 8016F390  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F394  38 81 02 38 */	addi r4, r1, 0x238
/* 8016F398  48 01 39 11 */	bl __as__7cSAngleFRC7cSAngle
lbl_8016F39C:
/* 8016F39C  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 8016F3A0  38 81 02 3C */	addi r4, r1, 0x23c
/* 8016F3A4  48 10 1D A5 */	bl __mi__7cSAngleCFv
/* 8016F3A8  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F3AC  38 81 01 B4 */	addi r4, r1, 0x1b4
/* 8016F3B0  48 01 36 BD */	bl __lt__7cSAngleCFRC7cSAngle
/* 8016F3B4  7C 76 1B 78 */	mr r22, r3
/* 8016F3B8  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 8016F3BC  38 80 FF FF */	li r4, -1
/* 8016F3C0  4B EC 11 51 */	bl __dt__7cSAngleFv
/* 8016F3C4  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8016F3C8  41 82 00 28 */	beq lbl_8016F3F0
/* 8016F3CC  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 8016F3D0  38 81 02 3C */	addi r4, r1, 0x23c
/* 8016F3D4  48 10 1D 75 */	bl __mi__7cSAngleCFv
/* 8016F3D8  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F3DC  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 8016F3E0  48 01 38 C9 */	bl __as__7cSAngleFRC7cSAngle
/* 8016F3E4  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 8016F3E8  38 80 FF FF */	li r4, -1
/* 8016F3EC  4B EC 11 25 */	bl __dt__7cSAngleFv
lbl_8016F3F0:
/* 8016F3F0  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F3F4  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 8016F3F8  48 01 36 75 */	bl __lt__7cSAngleCFRC7cSAngle
/* 8016F3FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F400  41 82 00 58 */	beq lbl_8016F458
/* 8016F404  38 61 01 AC */	addi r3, r1, 0x1ac
/* 8016F408  38 81 02 38 */	addi r4, r1, 0x238
/* 8016F40C  48 10 1D 3D */	bl __mi__7cSAngleCFv
/* 8016F410  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F414  38 81 01 AC */	addi r4, r1, 0x1ac
/* 8016F418  48 01 36 75 */	bl __gt__7cSAngleCFRC7cSAngle
/* 8016F41C  7C 76 1B 78 */	mr r22, r3
/* 8016F420  38 61 01 AC */	addi r3, r1, 0x1ac
/* 8016F424  38 80 FF FF */	li r4, -1
/* 8016F428  4B EC 10 E9 */	bl __dt__7cSAngleFv
/* 8016F42C  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8016F430  41 82 00 28 */	beq lbl_8016F458
/* 8016F434  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 8016F438  38 81 02 38 */	addi r4, r1, 0x238
/* 8016F43C  48 10 1D 0D */	bl __mi__7cSAngleCFv
/* 8016F440  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F444  38 81 01 A8 */	addi r4, r1, 0x1a8
/* 8016F448  48 01 38 61 */	bl __as__7cSAngleFRC7cSAngle
/* 8016F44C  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 8016F450  38 80 FF FF */	li r4, -1
/* 8016F454  4B EC 10 BD */	bl __dt__7cSAngleFv
lbl_8016F458:
/* 8016F458  38 7F 04 18 */	addi r3, r31, 0x418
/* 8016F45C  48 01 38 29 */	bl U__7cSGlobeCFv
/* 8016F460  7C 64 1B 78 */	mr r4, r3
/* 8016F464  38 61 01 A4 */	addi r3, r1, 0x1a4
/* 8016F468  38 A1 02 2C */	addi r5, r1, 0x22c
/* 8016F46C  48 10 1D 09 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016F470  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016F474  38 81 01 A4 */	addi r4, r1, 0x1a4
/* 8016F478  4B F1 F4 1D */	bl U__7cSGlobeFRC7cSAngle
/* 8016F47C  38 61 01 A4 */	addi r3, r1, 0x1a4
/* 8016F480  38 80 FF FF */	li r4, -1
/* 8016F484  4B EC 10 8D */	bl __dt__7cSAngleFv
lbl_8016F488:
/* 8016F488  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016F48C  48 01 37 F9 */	bl U__7cSGlobeCFv
/* 8016F490  7C 64 1B 78 */	mr r4, r3
/* 8016F494  38 61 02 28 */	addi r3, r1, 0x228
/* 8016F498  48 10 1A D1 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016F49C  38 61 14 24 */	addi r3, r1, 0x1424
/* 8016F4A0  38 81 14 48 */	addi r4, r1, 0x1448
/* 8016F4A4  4B F2 83 51 */	bl __ct__4cXyzFRC4cXyz
/* 8016F4A8  38 61 14 18 */	addi r3, r1, 0x1418
/* 8016F4AC  38 81 14 3C */	addi r4, r1, 0x143c
/* 8016F4B0  4B F2 83 45 */	bl __ct__4cXyzFRC4cXyz
/* 8016F4B4  38 61 10 B8 */	addi r3, r1, 0x10b8
/* 8016F4B8  38 81 14 18 */	addi r4, r1, 0x1418
/* 8016F4BC  38 A1 14 24 */	addi r5, r1, 0x1424
/* 8016F4C0  48 0F 76 75 */	bl __mi__4cXyzCFRC3Vec
/* 8016F4C4  38 61 14 0C */	addi r3, r1, 0x140c
/* 8016F4C8  38 81 10 B8 */	addi r4, r1, 0x10b8
/* 8016F4CC  4B F2 83 29 */	bl __ct__4cXyzFRC4cXyz
/* 8016F4D0  38 61 10 B8 */	addi r3, r1, 0x10b8
/* 8016F4D4  38 80 FF FF */	li r4, -1
/* 8016F4D8  4B E9 9C AD */	bl __dt__4cXyzFv
/* 8016F4DC  38 61 02 C8 */	addi r3, r1, 0x2c8
/* 8016F4E0  38 81 14 0C */	addi r4, r1, 0x140c
/* 8016F4E4  48 10 23 9D */	bl __ct__7cSGlobeFRC4cXyz
/* 8016F4E8  38 61 10 AC */	addi r3, r1, 0x10ac
/* 8016F4EC  38 81 14 0C */	addi r4, r1, 0x140c
/* 8016F4F0  48 0F 7A 05 */	bl normalize__4cXyzFv
/* 8016F4F4  38 61 10 AC */	addi r3, r1, 0x10ac
/* 8016F4F8  38 80 FF FF */	li r4, -1
/* 8016F4FC  4B E9 9C 89 */	bl __dt__4cXyzFv
/* 8016F500  38 61 10 A0 */	addi r3, r1, 0x10a0
/* 8016F504  38 81 14 0C */	addi r4, r1, 0x140c
/* 8016F508  A8 1D 05 4E */	lha r0, 0x54e(r29)
/* 8016F50C  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016F510  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016F514  90 01 14 6C */	stw r0, 0x146c(r1)
/* 8016F518  3C 00 43 30 */	lis r0, 0x4330
/* 8016F51C  90 01 14 68 */	stw r0, 0x1468(r1)
/* 8016F520  C8 01 14 68 */	lfd f0, 0x1468(r1)
/* 8016F524  EC 20 08 28 */	fsubs f1, f0, f1
/* 8016F528  48 0F 76 5D */	bl __ml__4cXyzCFf
/* 8016F52C  38 61 14 24 */	addi r3, r1, 0x1424
/* 8016F530  38 81 10 A0 */	addi r4, r1, 0x10a0
/* 8016F534  4B F1 F3 9D */	bl __ami__4cXyzFRC3Vec
/* 8016F538  38 61 10 A0 */	addi r3, r1, 0x10a0
/* 8016F53C  38 80 FF FF */	li r4, -1
/* 8016F540  4B E9 9C 45 */	bl __dt__4cXyzFv
/* 8016F544  38 61 10 94 */	addi r3, r1, 0x1094
/* 8016F548  38 81 14 0C */	addi r4, r1, 0x140c
/* 8016F54C  A8 1E 05 4E */	lha r0, 0x54e(r30)
/* 8016F550  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016F554  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016F558  90 01 14 64 */	stw r0, 0x1464(r1)
/* 8016F55C  3C 00 43 30 */	lis r0, 0x4330
/* 8016F560  90 01 14 60 */	stw r0, 0x1460(r1)
/* 8016F564  C8 01 14 60 */	lfd f0, 0x1460(r1)
/* 8016F568  EC 20 08 28 */	fsubs f1, f0, f1
/* 8016F56C  48 0F 76 19 */	bl __ml__4cXyzCFf
/* 8016F570  38 61 14 18 */	addi r3, r1, 0x1418
/* 8016F574  38 81 10 94 */	addi r4, r1, 0x1094
/* 8016F578  4B F1 F3 8D */	bl __apl__4cXyzFRC3Vec
/* 8016F57C  38 61 10 94 */	addi r3, r1, 0x1094
/* 8016F580  38 80 FF FF */	li r4, -1
/* 8016F584  4B E9 9C 01 */	bl __dt__4cXyzFv
/* 8016F588  38 61 14 00 */	addi r3, r1, 0x1400
/* 8016F58C  4B EA 30 51 */	bl __ct__4cXyzFv
/* 8016F590  38 61 10 88 */	addi r3, r1, 0x1088
/* 8016F594  38 81 14 18 */	addi r4, r1, 0x1418
/* 8016F598  38 A1 14 24 */	addi r5, r1, 0x1424
/* 8016F59C  48 0F 75 99 */	bl __mi__4cXyzCFRC3Vec
/* 8016F5A0  38 61 13 F4 */	addi r3, r1, 0x13f4
/* 8016F5A4  38 81 10 88 */	addi r4, r1, 0x1088
/* 8016F5A8  4B F2 82 4D */	bl __ct__4cXyzFRC4cXyz
/* 8016F5AC  38 61 10 88 */	addi r3, r1, 0x1088
/* 8016F5B0  38 80 FF FF */	li r4, -1
/* 8016F5B4  4B E9 9B D1 */	bl __dt__4cXyzFv
/* 8016F5B8  7F E3 FB 78 */	mr r3, r31
/* 8016F5BC  38 81 14 24 */	addi r4, r1, 0x1424
/* 8016F5C0  38 A1 14 18 */	addi r5, r1, 0x1418
/* 8016F5C4  38 C1 14 00 */	addi r6, r1, 0x1400
/* 8016F5C8  38 E0 40 B7 */	li r7, 0x40b7
/* 8016F5CC  4B FF 64 29 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP4cXyzUl
/* 8016F5D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F5D4  41 82 00 88 */	beq lbl_8016F65C
/* 8016F5D8  38 61 10 7C */	addi r3, r1, 0x107c
/* 8016F5DC  38 81 13 F4 */	addi r4, r1, 0x13f4
/* 8016F5E0  48 0F 77 05 */	bl norm__4cXyzCFv
/* 8016F5E4  38 61 10 70 */	addi r3, r1, 0x1070
/* 8016F5E8  38 81 10 7C */	addi r4, r1, 0x107c
/* 8016F5EC  C0 22 9C E4 */	lfs f1, lit_6629(r2)
/* 8016F5F0  48 0F 75 95 */	bl __ml__4cXyzCFf
/* 8016F5F4  38 61 10 64 */	addi r3, r1, 0x1064
/* 8016F5F8  38 81 14 00 */	addi r4, r1, 0x1400
/* 8016F5FC  38 A1 10 70 */	addi r5, r1, 0x1070
/* 8016F600  48 0F 75 35 */	bl __mi__4cXyzCFRC3Vec
/* 8016F604  38 61 14 18 */	addi r3, r1, 0x1418
/* 8016F608  38 81 10 64 */	addi r4, r1, 0x1064
/* 8016F60C  4B F2 81 CD */	bl __as__4cXyzFRC4cXyz
/* 8016F610  38 61 10 64 */	addi r3, r1, 0x1064
/* 8016F614  38 80 FF FF */	li r4, -1
/* 8016F618  4B E9 9B 6D */	bl __dt__4cXyzFv
/* 8016F61C  38 61 10 70 */	addi r3, r1, 0x1070
/* 8016F620  38 80 FF FF */	li r4, -1
/* 8016F624  4B E9 9B 61 */	bl __dt__4cXyzFv
/* 8016F628  38 61 10 7C */	addi r3, r1, 0x107c
/* 8016F62C  38 80 FF FF */	li r4, -1
/* 8016F630  4B E9 9B 55 */	bl __dt__4cXyzFv
/* 8016F634  38 61 10 58 */	addi r3, r1, 0x1058
/* 8016F638  38 81 14 18 */	addi r4, r1, 0x1418
/* 8016F63C  38 A1 14 24 */	addi r5, r1, 0x1424
/* 8016F640  48 0F 74 F5 */	bl __mi__4cXyzCFRC3Vec
/* 8016F644  38 61 13 F4 */	addi r3, r1, 0x13f4
/* 8016F648  38 81 10 58 */	addi r4, r1, 0x1058
/* 8016F64C  4B F2 81 8D */	bl __as__4cXyzFRC4cXyz
/* 8016F650  38 61 10 58 */	addi r3, r1, 0x1058
/* 8016F654  38 80 FF FF */	li r4, -1
/* 8016F658  4B E9 9B 2D */	bl __dt__4cXyzFv
lbl_8016F65C:
/* 8016F65C  38 61 10 4C */	addi r3, r1, 0x104c
/* 8016F660  38 81 13 F4 */	addi r4, r1, 0x13f4
/* 8016F664  C0 22 9C 90 */	lfs f1, lit_4445(r2)
/* 8016F668  48 0F 75 1D */	bl __ml__4cXyzCFf
/* 8016F66C  38 61 10 40 */	addi r3, r1, 0x1040
/* 8016F670  38 81 14 24 */	addi r4, r1, 0x1424
/* 8016F674  38 A1 10 4C */	addi r5, r1, 0x104c
/* 8016F678  48 0F 74 6D */	bl __pl__4cXyzCFRC3Vec
/* 8016F67C  38 61 13 E8 */	addi r3, r1, 0x13e8
/* 8016F680  38 81 10 40 */	addi r4, r1, 0x1040
/* 8016F684  4B F2 81 71 */	bl __ct__4cXyzFRC4cXyz
/* 8016F688  38 61 10 40 */	addi r3, r1, 0x1040
/* 8016F68C  38 80 FF FF */	li r4, -1
/* 8016F690  4B E9 9A F5 */	bl __dt__4cXyzFv
/* 8016F694  38 61 10 4C */	addi r3, r1, 0x104c
/* 8016F698  38 80 FF FF */	li r4, -1
/* 8016F69C  4B E9 9A E9 */	bl __dt__4cXyzFv
/* 8016F6A0  38 61 13 DC */	addi r3, r1, 0x13dc
/* 8016F6A4  38 81 14 30 */	addi r4, r1, 0x1430
/* 8016F6A8  4B F2 81 4D */	bl __ct__4cXyzFRC4cXyz
/* 8016F6AC  38 61 02 C8 */	addi r3, r1, 0x2c8
/* 8016F6B0  48 01 35 D5 */	bl U__7cSGlobeCFv
/* 8016F6B4  7C 65 1B 78 */	mr r5, r3
/* 8016F6B8  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 8016F6BC  38 81 02 28 */	addi r4, r1, 0x228
/* 8016F6C0  48 10 1A E5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016F6C4  38 61 02 24 */	addi r3, r1, 0x224
/* 8016F6C8  38 81 01 A0 */	addi r4, r1, 0x1a0
/* 8016F6CC  48 10 18 9D */	bl __ct__7cSAngleFRC7cSAngle
/* 8016F6D0  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 8016F6D4  38 80 FF FF */	li r4, -1
/* 8016F6D8  4B EC 0E 39 */	bl __dt__7cSAngleFv
/* 8016F6DC  38 61 02 24 */	addi r3, r1, 0x224
/* 8016F6E0  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 8016F6E4  48 01 33 89 */	bl __lt__7cSAngleCFRC7cSAngle
/* 8016F6E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F6EC  41 82 00 10 */	beq lbl_8016F6FC
/* 8016F6F0  C0 01 13 DC */	lfs f0, 0x13dc(r1)
/* 8016F6F4  FC 00 00 50 */	fneg f0, f0
/* 8016F6F8  D0 01 13 DC */	stfs f0, 0x13dc(r1)
lbl_8016F6FC:
/* 8016F6FC  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 8016F700  38 81 13 DC */	addi r4, r1, 0x13dc
/* 8016F704  48 10 21 7D */	bl __ct__7cSGlobeFRC4cXyz
/* 8016F708  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 8016F70C  48 01 35 79 */	bl U__7cSGlobeCFv
/* 8016F710  7C 76 1B 78 */	mr r22, r3
/* 8016F714  38 61 02 C8 */	addi r3, r1, 0x2c8
/* 8016F718  48 01 35 6D */	bl U__7cSGlobeCFv
/* 8016F71C  7C 64 1B 78 */	mr r4, r3
/* 8016F720  38 61 01 9C */	addi r3, r1, 0x19c
/* 8016F724  7E C5 B3 78 */	mr r5, r22
/* 8016F728  48 10 1A 4D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016F72C  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 8016F730  38 81 01 9C */	addi r4, r1, 0x19c
/* 8016F734  4B F1 F1 61 */	bl U__7cSGlobeFRC7cSAngle
/* 8016F738  38 61 01 9C */	addi r3, r1, 0x19c
/* 8016F73C  38 80 FF FF */	li r4, -1
/* 8016F740  4B EC 0D D1 */	bl __dt__7cSAngleFv
/* 8016F744  38 61 02 24 */	addi r3, r1, 0x224
/* 8016F748  48 10 19 D9 */	bl Cos__7cSAngleCFv
/* 8016F74C  FE A0 08 90 */	fmr f21, f1
/* 8016F750  38 61 02 C8 */	addi r3, r1, 0x2c8
/* 8016F754  48 01 33 11 */	bl R__7cSGlobeCFv
/* 8016F758  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 8016F75C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016F760  EC 20 05 72 */	fmuls f1, f0, f21
/* 8016F764  C0 02 9C EC */	lfs f0, lit_6766(r2)
/* 8016F768  EC 20 00 72 */	fmuls f1, f0, f1
/* 8016F76C  38 61 02 C8 */	addi r3, r1, 0x2c8
/* 8016F770  48 01 32 DD */	bl R__7cSGlobeFf
/* 8016F774  38 61 10 34 */	addi r3, r1, 0x1034
/* 8016F778  38 81 02 C8 */	addi r4, r1, 0x2c8
/* 8016F77C  48 10 23 39 */	bl Xyz__7cSGlobeCFv
/* 8016F780  38 61 10 28 */	addi r3, r1, 0x1028
/* 8016F784  38 81 13 E8 */	addi r4, r1, 0x13e8
/* 8016F788  38 A1 10 34 */	addi r5, r1, 0x1034
/* 8016F78C  48 0F 73 59 */	bl __pl__4cXyzCFRC3Vec
/* 8016F790  38 61 10 1C */	addi r3, r1, 0x101c
/* 8016F794  38 81 02 C0 */	addi r4, r1, 0x2c0
/* 8016F798  48 10 23 1D */	bl Xyz__7cSGlobeCFv
/* 8016F79C  38 61 10 10 */	addi r3, r1, 0x1010
/* 8016F7A0  38 81 10 28 */	addi r4, r1, 0x1028
/* 8016F7A4  38 A1 10 1C */	addi r5, r1, 0x101c
/* 8016F7A8  48 0F 73 3D */	bl __pl__4cXyzCFRC3Vec
/* 8016F7AC  38 7F 03 EC */	addi r3, r31, 0x3ec
/* 8016F7B0  38 81 10 10 */	addi r4, r1, 0x1010
/* 8016F7B4  4B F2 80 25 */	bl __as__4cXyzFRC4cXyz
/* 8016F7B8  38 61 10 10 */	addi r3, r1, 0x1010
/* 8016F7BC  38 80 FF FF */	li r4, -1
/* 8016F7C0  4B E9 99 C5 */	bl __dt__4cXyzFv
/* 8016F7C4  38 61 10 1C */	addi r3, r1, 0x101c
/* 8016F7C8  38 80 FF FF */	li r4, -1
/* 8016F7CC  4B E9 99 B9 */	bl __dt__4cXyzFv
/* 8016F7D0  38 61 10 28 */	addi r3, r1, 0x1028
/* 8016F7D4  38 80 FF FF */	li r4, -1
/* 8016F7D8  4B E9 99 AD */	bl __dt__4cXyzFv
/* 8016F7DC  38 61 10 34 */	addi r3, r1, 0x1034
/* 8016F7E0  38 80 FF FF */	li r4, -1
/* 8016F7E4  4B E9 99 A1 */	bl __dt__4cXyzFv
/* 8016F7E8  38 7F 04 A8 */	addi r3, r31, 0x4a8
/* 8016F7EC  38 81 14 18 */	addi r4, r1, 0x1418
/* 8016F7F0  4B F2 7F E9 */	bl __as__4cXyzFRC4cXyz
/* 8016F7F4  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 8016F7F8  38 80 FF FF */	li r4, -1
/* 8016F7FC  4B F0 1E 81 */	bl __dt__7cSGlobeFv
/* 8016F800  38 61 02 24 */	addi r3, r1, 0x224
/* 8016F804  38 80 FF FF */	li r4, -1
/* 8016F808  4B EC 0D 09 */	bl __dt__7cSAngleFv
/* 8016F80C  38 61 13 DC */	addi r3, r1, 0x13dc
/* 8016F810  38 80 FF FF */	li r4, -1
/* 8016F814  4B E9 99 71 */	bl __dt__4cXyzFv
/* 8016F818  38 61 13 E8 */	addi r3, r1, 0x13e8
/* 8016F81C  38 80 FF FF */	li r4, -1
/* 8016F820  4B E9 99 65 */	bl __dt__4cXyzFv
/* 8016F824  38 61 13 F4 */	addi r3, r1, 0x13f4
/* 8016F828  38 80 FF FF */	li r4, -1
/* 8016F82C  4B E9 99 59 */	bl __dt__4cXyzFv
/* 8016F830  38 61 14 00 */	addi r3, r1, 0x1400
/* 8016F834  38 80 FF FF */	li r4, -1
/* 8016F838  4B E9 99 4D */	bl __dt__4cXyzFv
/* 8016F83C  38 61 02 C8 */	addi r3, r1, 0x2c8
/* 8016F840  38 80 FF FF */	li r4, -1
/* 8016F844  4B F0 1E 39 */	bl __dt__7cSGlobeFv
/* 8016F848  38 61 14 0C */	addi r3, r1, 0x140c
/* 8016F84C  38 80 FF FF */	li r4, -1
/* 8016F850  4B E9 99 35 */	bl __dt__4cXyzFv
/* 8016F854  38 61 14 18 */	addi r3, r1, 0x1418
/* 8016F858  38 80 FF FF */	li r4, -1
/* 8016F85C  4B E9 99 29 */	bl __dt__4cXyzFv
/* 8016F860  38 61 14 24 */	addi r3, r1, 0x1424
/* 8016F864  38 80 FF FF */	li r4, -1
/* 8016F868  4B E9 99 1D */	bl __dt__4cXyzFv
/* 8016F86C  38 61 02 28 */	addi r3, r1, 0x228
/* 8016F870  38 80 FF FF */	li r4, -1
/* 8016F874  4B EC 0C 9D */	bl __dt__7cSAngleFv
/* 8016F878  38 61 02 20 */	addi r3, r1, 0x220
/* 8016F87C  48 01 31 CD */	bl __ct__7cSAngleFv
/* 8016F880  C0 02 9E 14 */	lfs f0, lit_12268(r2)
/* 8016F884  C0 3F 04 48 */	lfs f1, 0x448(r31)
/* 8016F888  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8016F88C  41 82 00 10 */	beq lbl_8016F89C
/* 8016F890  38 61 02 20 */	addi r3, r1, 0x220
/* 8016F894  48 10 17 79 */	bl Val__7cSAngleFf
/* 8016F898  48 00 00 D4 */	b lbl_8016F96C
lbl_8016F89C:
/* 8016F89C  38 61 02 2C */	addi r3, r1, 0x22c
/* 8016F8A0  48 10 18 81 */	bl Cos__7cSAngleCFv
/* 8016F8A4  C0 02 9D 0C */	lfs f0, lit_8021(r2)
/* 8016F8A8  EE A0 08 2A */	fadds f21, f0, f1
/* 8016F8AC  38 7F 04 18 */	addi r3, r31, 0x418
/* 8016F8B0  48 01 31 59 */	bl V__7cSGlobeCFv
/* 8016F8B4  7C 64 1B 78 */	mr r4, r3
/* 8016F8B8  38 61 01 98 */	addi r3, r1, 0x198
/* 8016F8BC  FC 20 A8 90 */	fmr f1, f21
/* 8016F8C0  48 10 19 A5 */	bl __ml__7cSAngleCFf
/* 8016F8C4  38 61 01 94 */	addi r3, r1, 0x194
/* 8016F8C8  38 81 01 98 */	addi r4, r1, 0x198
/* 8016F8CC  FC 20 F0 90 */	fmr f1, f30
/* 8016F8D0  48 10 19 95 */	bl __ml__7cSAngleCFf
/* 8016F8D4  38 61 01 90 */	addi r3, r1, 0x190
/* 8016F8D8  FC 20 F8 90 */	fmr f1, f31
/* 8016F8DC  48 10 16 ED */	bl __ct__7cSAngleFf
/* 8016F8E0  38 61 01 8C */	addi r3, r1, 0x18c
/* 8016F8E4  38 81 01 94 */	addi r4, r1, 0x194
/* 8016F8E8  38 A1 01 90 */	addi r5, r1, 0x190
/* 8016F8EC  48 10 18 89 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016F8F0  38 61 02 20 */	addi r3, r1, 0x220
/* 8016F8F4  38 81 01 8C */	addi r4, r1, 0x18c
/* 8016F8F8  48 01 33 B1 */	bl __as__7cSAngleFRC7cSAngle
/* 8016F8FC  38 61 01 8C */	addi r3, r1, 0x18c
/* 8016F900  38 80 FF FF */	li r4, -1
/* 8016F904  4B EC 0C 0D */	bl __dt__7cSAngleFv
/* 8016F908  38 61 01 90 */	addi r3, r1, 0x190
/* 8016F90C  38 80 FF FF */	li r4, -1
/* 8016F910  4B EC 0C 01 */	bl __dt__7cSAngleFv
/* 8016F914  38 61 01 94 */	addi r3, r1, 0x194
/* 8016F918  38 80 FF FF */	li r4, -1
/* 8016F91C  4B EC 0B F5 */	bl __dt__7cSAngleFv
/* 8016F920  38 61 01 98 */	addi r3, r1, 0x198
/* 8016F924  38 80 FF FF */	li r4, -1
/* 8016F928  4B EC 0B E9 */	bl __dt__7cSAngleFv
/* 8016F92C  38 61 02 20 */	addi r3, r1, 0x220
/* 8016F930  38 81 02 44 */	addi r4, r1, 0x244
/* 8016F934  48 01 31 59 */	bl __gt__7cSAngleCFRC7cSAngle
/* 8016F938  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F93C  41 82 00 10 */	beq lbl_8016F94C
/* 8016F940  38 61 02 20 */	addi r3, r1, 0x220
/* 8016F944  38 81 02 44 */	addi r4, r1, 0x244
/* 8016F948  48 01 33 61 */	bl __as__7cSAngleFRC7cSAngle
lbl_8016F94C:
/* 8016F94C  38 61 02 20 */	addi r3, r1, 0x220
/* 8016F950  38 81 02 40 */	addi r4, r1, 0x240
/* 8016F954  48 01 31 19 */	bl __lt__7cSAngleCFRC7cSAngle
/* 8016F958  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016F95C  41 82 00 10 */	beq lbl_8016F96C
/* 8016F960  38 61 02 20 */	addi r3, r1, 0x220
/* 8016F964  38 81 02 40 */	addi r4, r1, 0x240
/* 8016F968  48 01 33 41 */	bl __as__7cSAngleFRC7cSAngle
lbl_8016F96C:
/* 8016F96C  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016F970  38 81 02 20 */	addi r4, r1, 0x220
/* 8016F974  4B F2 00 E5 */	bl V__7cSGlobeFRC7cSAngle
/* 8016F978  38 61 02 1C */	addi r3, r1, 0x21c
/* 8016F97C  48 01 30 CD */	bl __ct__7cSAngleFv
/* 8016F980  7F 43 D3 78 */	mr r3, r26
/* 8016F984  48 01 31 55 */	bl checkRide__9daPy_py_cCFv
/* 8016F988  28 03 00 00 */	cmplwi r3, 0
/* 8016F98C  41 82 00 10 */	beq lbl_8016F99C
/* 8016F990  7F 43 D3 78 */	mr r3, r26
/* 8016F994  48 01 2F 09 */	bl getRideActor__9daAlink_cFv
/* 8016F998  7C 79 1B 78 */	mr r25, r3
lbl_8016F99C:
/* 8016F99C  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016F9A0  48 01 32 E5 */	bl U__7cSGlobeCFv
/* 8016F9A4  7C 76 1B 78 */	mr r22, r3
/* 8016F9A8  38 7F 04 18 */	addi r3, r31, 0x418
/* 8016F9AC  48 01 32 D9 */	bl U__7cSGlobeCFv
/* 8016F9B0  7C 64 1B 78 */	mr r4, r3
/* 8016F9B4  38 61 01 88 */	addi r3, r1, 0x188
/* 8016F9B8  7E C5 B3 78 */	mr r5, r22
/* 8016F9BC  48 10 17 E9 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016F9C0  38 61 01 88 */	addi r3, r1, 0x188
/* 8016F9C4  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 8016F9C8  48 01 30 C5 */	bl __gt__7cSAngleCFRC7cSAngle
/* 8016F9CC  7C 76 1B 78 */	mr r22, r3
/* 8016F9D0  38 61 01 88 */	addi r3, r1, 0x188
/* 8016F9D4  38 80 FF FF */	li r4, -1
/* 8016F9D8  4B EC 0B 39 */	bl __dt__7cSAngleFv
/* 8016F9DC  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8016F9E0  41 82 00 2C */	beq lbl_8016FA0C
/* 8016F9E4  38 61 01 84 */	addi r3, r1, 0x184
/* 8016F9E8  C0 22 9C E4 */	lfs f1, lit_6629(r2)
/* 8016F9EC  48 10 15 DD */	bl __ct__7cSAngleFf
/* 8016F9F0  38 61 02 1C */	addi r3, r1, 0x21c
/* 8016F9F4  38 81 01 84 */	addi r4, r1, 0x184
/* 8016F9F8  48 01 32 B1 */	bl __as__7cSAngleFRC7cSAngle
/* 8016F9FC  38 61 01 84 */	addi r3, r1, 0x184
/* 8016FA00  38 80 FF FF */	li r4, -1
/* 8016FA04  4B EC 0B 0D */	bl __dt__7cSAngleFv
/* 8016FA08  48 00 00 28 */	b lbl_8016FA30
lbl_8016FA0C:
/* 8016FA0C  38 61 01 80 */	addi r3, r1, 0x180
/* 8016FA10  C0 22 9D F0 */	lfs f1, lit_11167(r2)
/* 8016FA14  48 10 15 B5 */	bl __ct__7cSAngleFf
/* 8016FA18  38 61 02 1C */	addi r3, r1, 0x21c
/* 8016FA1C  38 81 01 80 */	addi r4, r1, 0x180
/* 8016FA20  48 01 32 89 */	bl __as__7cSAngleFRC7cSAngle
/* 8016FA24  38 61 01 80 */	addi r3, r1, 0x180
/* 8016FA28  38 80 FF FF */	li r4, -1
/* 8016FA2C  4B EC 0A E5 */	bl __dt__7cSAngleFv
lbl_8016FA30:
/* 8016FA30  38 61 10 04 */	addi r3, r1, 0x1004
/* 8016FA34  38 9F 04 10 */	addi r4, r31, 0x410
/* 8016FA38  48 10 20 7D */	bl Xyz__7cSGlobeCFv
/* 8016FA3C  38 61 0F F8 */	addi r3, r1, 0xff8
/* 8016FA40  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 8016FA44  38 A1 10 04 */	addi r5, r1, 0x1004
/* 8016FA48  48 0F 70 9D */	bl __pl__4cXyzCFRC3Vec
/* 8016FA4C  38 7F 03 F8 */	addi r3, r31, 0x3f8
/* 8016FA50  38 81 0F F8 */	addi r4, r1, 0xff8
/* 8016FA54  4B F2 7D 85 */	bl __as__4cXyzFRC4cXyz
/* 8016FA58  38 61 0F F8 */	addi r3, r1, 0xff8
/* 8016FA5C  38 80 FF FF */	li r4, -1
/* 8016FA60  4B E9 97 25 */	bl __dt__4cXyzFv
/* 8016FA64  38 61 10 04 */	addi r3, r1, 0x1004
/* 8016FA68  38 80 FF FF */	li r4, -1
/* 8016FA6C  4B E9 97 19 */	bl __dt__4cXyzFv
/* 8016FA70  C0 5F 04 54 */	lfs f2, 0x454(r31)
/* 8016FA74  C0 3F 04 64 */	lfs f1, 0x464(r31)
/* 8016FA78  C0 1F 04 50 */	lfs f0, 0x450(r31)
/* 8016FA7C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016FA80  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016FA84  EC 02 00 2A */	fadds f0, f2, f0
/* 8016FA88  D0 1F 04 40 */	stfs f0, 0x440(r31)
/* 8016FA8C  3B 40 00 00 */	li r26, 0
/* 8016FA90  7F C3 F3 78 */	mr r3, r30
/* 8016FA94  4B FD 18 29 */	bl fopAcM_GetName__FPv
/* 8016FA98  7C 60 07 34 */	extsh r0, r3
/* 8016FA9C  2C 00 00 FF */	cmpwi r0, 0xff
/* 8016FAA0  40 82 01 80 */	bne lbl_8016FC20
/* 8016FAA4  88 1F 01 94 */	lbz r0, 0x194(r31)
/* 8016FAA8  28 00 00 00 */	cmplwi r0, 0
/* 8016FAAC  41 82 01 74 */	beq lbl_8016FC20
/* 8016FAB0  38 61 0F EC */	addi r3, r1, 0xfec
/* 8016FAB4  7F E4 FB 78 */	mr r4, r31
/* 8016FAB8  7F C5 F3 78 */	mr r5, r30
/* 8016FABC  4B F2 7C 61 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016FAC0  38 7F 03 EC */	addi r3, r31, 0x3ec
/* 8016FAC4  38 81 0F EC */	addi r4, r1, 0xfec
/* 8016FAC8  4B F2 7D 11 */	bl __as__4cXyzFRC4cXyz
/* 8016FACC  38 61 0F EC */	addi r3, r1, 0xfec
/* 8016FAD0  38 80 FF FF */	li r4, -1
/* 8016FAD4  4B E9 96 B1 */	bl __dt__4cXyzFv
/* 8016FAD8  C0 3F 03 F0 */	lfs f1, 0x3f0(r31)
/* 8016FADC  C0 02 9E 30 */	lfs f0, lit_12275(r2)
/* 8016FAE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016FAE4  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 8016FAE8  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016FAEC  48 01 31 99 */	bl U__7cSGlobeCFv
/* 8016FAF0  7C 76 1B 78 */	mr r22, r3
/* 8016FAF4  38 7F 04 18 */	addi r3, r31, 0x418
/* 8016FAF8  48 01 31 8D */	bl U__7cSGlobeCFv
/* 8016FAFC  7C 64 1B 78 */	mr r4, r3
/* 8016FB00  38 61 01 7C */	addi r3, r1, 0x17c
/* 8016FB04  7E C5 B3 78 */	mr r5, r22
/* 8016FB08  48 10 16 9D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016FB0C  38 61 01 7C */	addi r3, r1, 0x17c
/* 8016FB10  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 8016FB14  48 01 2F 79 */	bl __gt__7cSAngleCFRC7cSAngle
/* 8016FB18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016FB1C  41 82 00 0C */	beq lbl_8016FB28
/* 8016FB20  C2 A2 9E 34 */	lfs f21, lit_12276(r2)
/* 8016FB24  48 00 00 08 */	b lbl_8016FB2C
lbl_8016FB28:
/* 8016FB28  C2 A2 9D 34 */	lfs f21, lit_9398(r2)
lbl_8016FB2C:
/* 8016FB2C  38 61 01 7C */	addi r3, r1, 0x17c
/* 8016FB30  38 80 FF FF */	li r4, -1
/* 8016FB34  4B EC 09 DD */	bl __dt__7cSAngleFv
/* 8016FB38  38 61 01 78 */	addi r3, r1, 0x178
/* 8016FB3C  FC 20 A8 90 */	fmr f1, f21
/* 8016FB40  48 10 14 89 */	bl __ct__7cSAngleFf
/* 8016FB44  38 61 01 74 */	addi r3, r1, 0x174
/* 8016FB48  7F E4 FB 78 */	mr r4, r31
/* 8016FB4C  7F A5 EB 78 */	mr r5, r29
/* 8016FB50  4B F2 7B E9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8016FB54  38 61 01 70 */	addi r3, r1, 0x170
/* 8016FB58  38 81 01 78 */	addi r4, r1, 0x178
/* 8016FB5C  38 A1 01 74 */	addi r5, r1, 0x174
/* 8016FB60  48 10 16 15 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016FB64  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016FB68  38 81 01 70 */	addi r4, r1, 0x170
/* 8016FB6C  4B F1 ED 29 */	bl U__7cSGlobeFRC7cSAngle
/* 8016FB70  38 61 01 70 */	addi r3, r1, 0x170
/* 8016FB74  38 80 FF FF */	li r4, -1
/* 8016FB78  4B EC 09 99 */	bl __dt__7cSAngleFv
/* 8016FB7C  38 61 01 74 */	addi r3, r1, 0x174
/* 8016FB80  38 80 FF FF */	li r4, -1
/* 8016FB84  4B EC 09 8D */	bl __dt__7cSAngleFv
/* 8016FB88  38 61 01 78 */	addi r3, r1, 0x178
/* 8016FB8C  38 80 FF FF */	li r4, -1
/* 8016FB90  4B EC 09 81 */	bl __dt__7cSAngleFv
/* 8016FB94  38 61 01 6C */	addi r3, r1, 0x16c
/* 8016FB98  C0 22 9C E4 */	lfs f1, lit_6629(r2)
/* 8016FB9C  48 10 14 2D */	bl __ct__7cSAngleFf
/* 8016FBA0  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016FBA4  38 81 01 6C */	addi r4, r1, 0x16c
/* 8016FBA8  4B F1 FE B1 */	bl V__7cSGlobeFRC7cSAngle
/* 8016FBAC  38 61 01 6C */	addi r3, r1, 0x16c
/* 8016FBB0  38 80 FF FF */	li r4, -1
/* 8016FBB4  4B EC 09 5D */	bl __dt__7cSAngleFv
/* 8016FBB8  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016FBBC  C0 22 9D 10 */	lfs f1, lit_8022(r2)
/* 8016FBC0  48 01 2E 8D */	bl R__7cSGlobeFf
/* 8016FBC4  38 61 0F E0 */	addi r3, r1, 0xfe0
/* 8016FBC8  38 9F 04 10 */	addi r4, r31, 0x410
/* 8016FBCC  48 10 1E E9 */	bl Xyz__7cSGlobeCFv
/* 8016FBD0  38 61 0F D4 */	addi r3, r1, 0xfd4
/* 8016FBD4  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 8016FBD8  38 A1 0F E0 */	addi r5, r1, 0xfe0
/* 8016FBDC  48 0F 6F 09 */	bl __pl__4cXyzCFRC3Vec
/* 8016FBE0  38 7F 03 F8 */	addi r3, r31, 0x3f8
/* 8016FBE4  38 81 0F D4 */	addi r4, r1, 0xfd4
/* 8016FBE8  4B F2 7B F1 */	bl __as__4cXyzFRC4cXyz
/* 8016FBEC  38 61 0F D4 */	addi r3, r1, 0xfd4
/* 8016FBF0  38 80 FF FF */	li r4, -1
/* 8016FBF4  4B E9 95 91 */	bl __dt__4cXyzFv
/* 8016FBF8  38 61 0F E0 */	addi r3, r1, 0xfe0
/* 8016FBFC  38 80 FF FF */	li r4, -1
/* 8016FC00  4B E9 95 85 */	bl __dt__4cXyzFv
/* 8016FC04  38 00 00 10 */	li r0, 0x10
/* 8016FC08  90 1F 04 30 */	stw r0, 0x430(r31)
/* 8016FC0C  C0 02 9E 38 */	lfs f0, lit_12277(r2)
/* 8016FC10  D0 1F 04 40 */	stfs f0, 0x440(r31)
/* 8016FC14  38 00 00 01 */	li r0, 1
/* 8016FC18  98 1F 04 70 */	stb r0, 0x470(r31)
/* 8016FC1C  3B 40 00 01 */	li r26, 1
lbl_8016FC20:
/* 8016FC20  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8016FC24  41 82 00 30 */	beq lbl_8016FC54
/* 8016FC28  38 61 0F C8 */	addi r3, r1, 0xfc8
/* 8016FC2C  7F E4 FB 78 */	mr r4, r31
/* 8016FC30  7F C5 F3 78 */	mr r5, r30
/* 8016FC34  4B F2 7A E9 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016FC38  C0 21 0F CC */	lfs f1, 0xfcc(r1)
/* 8016FC3C  C0 02 9C E4 */	lfs f0, lit_6629(r2)
/* 8016FC40  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016FC44  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 8016FC48  38 61 0F C8 */	addi r3, r1, 0xfc8
/* 8016FC4C  38 80 FF FF */	li r4, -1
/* 8016FC50  4B E9 95 35 */	bl __dt__4cXyzFv
lbl_8016FC54:
/* 8016FC54  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016FC58  7F 84 E3 78 */	mr r4, r28
/* 8016FC5C  38 A0 01 00 */	li r5, 0x100
/* 8016FC60  48 01 30 2D */	bl Flag__11dCamParam_cFlUs
/* 8016FC64  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8016FC68  41 82 00 18 */	beq lbl_8016FC80
/* 8016FC6C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016FC70  48 01 30 15 */	bl U__7cSGlobeCFv
/* 8016FC74  7C 64 1B 78 */	mr r4, r3
/* 8016FC78  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016FC7C  4B F1 EC 19 */	bl U__7cSGlobeFRC7cSAngle
lbl_8016FC80:
/* 8016FC80  38 61 02 18 */	addi r3, r1, 0x218
/* 8016FC84  48 01 2D C5 */	bl __ct__7cSAngleFv
/* 8016FC88  3A E0 00 00 */	li r23, 0
/* 8016FC8C  38 61 13 D0 */	addi r3, r1, 0x13d0
/* 8016FC90  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8016FC94  38 84 0C F4 */	addi r4, r4, Zero__4cXyz@l /* 0x80430CF4@l */
/* 8016FC98  4B F2 7B 5D */	bl __ct__4cXyzFRC4cXyz
/* 8016FC9C  3B 80 00 00 */	li r28, 0
/* 8016FCA0  C2 C2 9C E4 */	lfs f22, lit_6629(r2)
lbl_8016FCA4:
/* 8016FCA4  38 7F 04 18 */	addi r3, r31, 0x418
/* 8016FCA8  48 01 2F DD */	bl U__7cSGlobeCFv
/* 8016FCAC  7C 76 1B 78 */	mr r22, r3
/* 8016FCB0  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016FCB4  48 01 2F D1 */	bl U__7cSGlobeCFv
/* 8016FCB8  7C 64 1B 78 */	mr r4, r3
/* 8016FCBC  38 61 01 68 */	addi r3, r1, 0x168
/* 8016FCC0  7E C5 B3 78 */	mr r5, r22
/* 8016FCC4  48 10 14 E1 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016FCC8  38 61 02 18 */	addi r3, r1, 0x218
/* 8016FCCC  38 81 01 68 */	addi r4, r1, 0x168
/* 8016FCD0  48 01 2F D9 */	bl __as__7cSAngleFRC7cSAngle
/* 8016FCD4  38 61 01 68 */	addi r3, r1, 0x168
/* 8016FCD8  38 80 FF FF */	li r4, -1
/* 8016FCDC  4B EC 08 35 */	bl __dt__7cSAngleFv
/* 8016FCE0  38 61 02 18 */	addi r3, r1, 0x218
/* 8016FCE4  48 10 13 4D */	bl Degree__7cSAngleCFv
/* 8016FCE8  48 01 2D 55 */	bl fabsf__3stdFf
/* 8016FCEC  FC 01 B0 40 */	fcmpo cr0, f1, f22
/* 8016FCF0  40 80 00 38 */	bge lbl_8016FD28
/* 8016FCF4  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016FCF8  48 01 2F 8D */	bl U__7cSGlobeCFv
/* 8016FCFC  7C 64 1B 78 */	mr r4, r3
/* 8016FD00  38 61 01 64 */	addi r3, r1, 0x164
/* 8016FD04  38 A1 02 1C */	addi r5, r1, 0x21c
/* 8016FD08  48 10 14 6D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016FD0C  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016FD10  38 81 01 64 */	addi r4, r1, 0x164
/* 8016FD14  4B F1 EB 81 */	bl U__7cSGlobeFRC7cSAngle
/* 8016FD18  38 61 01 64 */	addi r3, r1, 0x164
/* 8016FD1C  38 80 FF FF */	li r4, -1
/* 8016FD20  4B EC 07 F1 */	bl __dt__7cSAngleFv
/* 8016FD24  48 00 03 B4 */	b lbl_801700D8
lbl_8016FD28:
/* 8016FD28  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8016FD2C  40 82 00 8C */	bne lbl_8016FDB8
/* 8016FD30  7F E3 FB 78 */	mr r3, r31
/* 8016FD34  7F A4 EB 78 */	mr r4, r29
/* 8016FD38  7F C5 F3 78 */	mr r5, r30
/* 8016FD3C  38 DF 03 EC */	addi r6, r31, 0x3ec
/* 8016FD40  38 FF 03 F8 */	addi r7, r31, 0x3f8
/* 8016FD44  C0 3F 04 40 */	lfs f1, 0x440(r31)
/* 8016FD48  39 00 00 00 */	li r8, 0
/* 8016FD4C  C0 42 9D 0C */	lfs f2, lit_8021(r2)
/* 8016FD50  4B FF 54 E9 */	bl radiusActorInSight__9dCamera_cFP10fopAc_ac_cP10fopAc_ac_cP4cXyzP4cXyzfsf
/* 8016FD54  FE A0 08 90 */	fmr f21, f1
/* 8016FD58  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8016FD5C  FC 15 00 40 */	fcmpo cr0, f21, f0
/* 8016FD60  40 81 00 58 */	ble lbl_8016FDB8
/* 8016FD64  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016FD68  48 01 2C FD */	bl R__7cSGlobeCFv
/* 8016FD6C  EC 35 08 2A */	fadds f1, f21, f1
/* 8016FD70  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016FD74  48 01 2C D9 */	bl R__7cSGlobeFf
/* 8016FD78  38 61 0F BC */	addi r3, r1, 0xfbc
/* 8016FD7C  38 9F 04 10 */	addi r4, r31, 0x410
/* 8016FD80  48 10 1D 35 */	bl Xyz__7cSGlobeCFv
/* 8016FD84  38 61 0F B0 */	addi r3, r1, 0xfb0
/* 8016FD88  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 8016FD8C  38 A1 0F BC */	addi r5, r1, 0xfbc
/* 8016FD90  48 0F 6D 55 */	bl __pl__4cXyzCFRC3Vec
/* 8016FD94  38 7F 03 F8 */	addi r3, r31, 0x3f8
/* 8016FD98  38 81 0F B0 */	addi r4, r1, 0xfb0
/* 8016FD9C  4B F2 7A 3D */	bl __as__4cXyzFRC4cXyz
/* 8016FDA0  38 61 0F B0 */	addi r3, r1, 0xfb0
/* 8016FDA4  38 80 FF FF */	li r4, -1
/* 8016FDA8  4B E9 93 DD */	bl __dt__4cXyzFv
/* 8016FDAC  38 61 0F BC */	addi r3, r1, 0xfbc
/* 8016FDB0  38 80 FF FF */	li r4, -1
/* 8016FDB4  4B E9 93 D1 */	bl __dt__4cXyzFv
lbl_8016FDB8:
/* 8016FDB8  7F E3 FB 78 */	mr r3, r31
/* 8016FDBC  38 81 14 48 */	addi r4, r1, 0x1448
/* 8016FDC0  38 BF 03 F8 */	addi r5, r31, 0x3f8
/* 8016FDC4  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 8016FDC8  4B FF 5D 29 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8016FDCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016FDD0  40 82 00 F8 */	bne lbl_8016FEC8
/* 8016FDD4  7F E3 FB 78 */	mr r3, r31
/* 8016FDD8  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 8016FDDC  38 BF 03 F8 */	addi r5, r31, 0x3f8
/* 8016FDE0  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 8016FDE4  4B FF 5D 0D */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8016FDE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016FDEC  40 82 00 DC */	bne lbl_8016FEC8
/* 8016FDF0  38 61 0F A4 */	addi r3, r1, 0xfa4
/* 8016FDF4  38 81 14 48 */	addi r4, r1, 0x1448
/* 8016FDF8  4B F2 79 FD */	bl __ct__4cXyzFRC4cXyz
/* 8016FDFC  38 61 0F 98 */	addi r3, r1, 0xf98
/* 8016FE00  38 9F 03 F8 */	addi r4, r31, 0x3f8
/* 8016FE04  4B F2 79 F1 */	bl __ct__4cXyzFRC4cXyz
/* 8016FE08  38 61 0F A4 */	addi r3, r1, 0xfa4
/* 8016FE0C  38 81 0F 98 */	addi r4, r1, 0xf98
/* 8016FE10  7F A5 EB 78 */	mr r5, r29
/* 8016FE14  7F C6 F3 78 */	mr r6, r30
/* 8016FE18  7F 27 CB 78 */	mr r7, r25
/* 8016FE1C  48 00 50 35 */	bl func_80174E50
/* 8016FE20  7C 76 1B 78 */	mr r22, r3
/* 8016FE24  38 61 0F 98 */	addi r3, r1, 0xf98
/* 8016FE28  38 80 FF FF */	li r4, -1
/* 8016FE2C  4B E9 93 59 */	bl __dt__4cXyzFv
/* 8016FE30  38 61 0F A4 */	addi r3, r1, 0xfa4
/* 8016FE34  38 80 FF FF */	li r4, -1
/* 8016FE38  4B E9 93 4D */	bl __dt__4cXyzFv
/* 8016FE3C  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8016FE40  40 82 00 88 */	bne lbl_8016FEC8
/* 8016FE44  7F E3 FB 78 */	mr r3, r31
/* 8016FE48  38 81 14 3C */	addi r4, r1, 0x143c
/* 8016FE4C  38 BF 03 F8 */	addi r5, r31, 0x3f8
/* 8016FE50  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 8016FE54  4B FF 5C 9D */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8016FE58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016FE5C  40 82 00 60 */	bne lbl_8016FEBC
/* 8016FE60  38 61 0F 8C */	addi r3, r1, 0xf8c
/* 8016FE64  38 81 14 3C */	addi r4, r1, 0x143c
/* 8016FE68  4B F2 79 8D */	bl __ct__4cXyzFRC4cXyz
/* 8016FE6C  38 61 0F 80 */	addi r3, r1, 0xf80
/* 8016FE70  38 9F 03 F8 */	addi r4, r31, 0x3f8
/* 8016FE74  4B F2 79 81 */	bl __ct__4cXyzFRC4cXyz
/* 8016FE78  38 61 0F 8C */	addi r3, r1, 0xf8c
/* 8016FE7C  38 81 0F 80 */	addi r4, r1, 0xf80
/* 8016FE80  7F A5 EB 78 */	mr r5, r29
/* 8016FE84  7F C6 F3 78 */	mr r6, r30
/* 8016FE88  7F 27 CB 78 */	mr r7, r25
/* 8016FE8C  48 00 4F C5 */	bl func_80174E50
/* 8016FE90  7C 76 1B 78 */	mr r22, r3
/* 8016FE94  38 61 0F 80 */	addi r3, r1, 0xf80
/* 8016FE98  38 80 FF FF */	li r4, -1
/* 8016FE9C  4B E9 92 E9 */	bl __dt__4cXyzFv
/* 8016FEA0  38 61 0F 8C */	addi r3, r1, 0xf8c
/* 8016FEA4  38 80 FF FF */	li r4, -1
/* 8016FEA8  4B E9 92 DD */	bl __dt__4cXyzFv
/* 8016FEAC  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8016FEB0  40 82 00 0C */	bne lbl_8016FEBC
/* 8016FEB4  3A E0 00 01 */	li r23, 1
/* 8016FEB8  48 00 02 2C */	b lbl_801700E4
lbl_8016FEBC:
/* 8016FEBC  38 61 13 D0 */	addi r3, r1, 0x13d0
/* 8016FEC0  38 9F 03 F8 */	addi r4, r31, 0x3f8
/* 8016FEC4  4B F2 79 15 */	bl __as__4cXyzFRC4cXyz
lbl_8016FEC8:
/* 8016FEC8  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016FECC  48 01 2D B9 */	bl U__7cSGlobeCFv
/* 8016FED0  7C 64 1B 78 */	mr r4, r3
/* 8016FED4  38 61 01 60 */	addi r3, r1, 0x160
/* 8016FED8  38 A1 02 1C */	addi r5, r1, 0x21c
/* 8016FEDC  48 10 12 99 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016FEE0  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016FEE4  38 81 01 60 */	addi r4, r1, 0x160
/* 8016FEE8  4B F1 E9 AD */	bl U__7cSGlobeFRC7cSAngle
/* 8016FEEC  38 61 01 60 */	addi r3, r1, 0x160
/* 8016FEF0  38 80 FF FF */	li r4, -1
/* 8016FEF4  4B EC 06 1D */	bl __dt__7cSAngleFv
/* 8016FEF8  C0 02 9E 14 */	lfs f0, lit_12268(r2)
/* 8016FEFC  C0 3F 04 48 */	lfs f1, 0x448(r31)
/* 8016FF00  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8016FF04  41 82 00 10 */	beq lbl_8016FF14
/* 8016FF08  38 61 02 20 */	addi r3, r1, 0x220
/* 8016FF0C  48 10 11 01 */	bl Val__7cSAngleFf
/* 8016FF10  48 00 01 1C */	b lbl_8017002C
lbl_8016FF14:
/* 8016FF14  38 7F 04 10 */	addi r3, r31, 0x410
/* 8016FF18  48 01 2D 6D */	bl U__7cSGlobeCFv
/* 8016FF1C  7C 76 1B 78 */	mr r22, r3
/* 8016FF20  38 7F 04 18 */	addi r3, r31, 0x418
/* 8016FF24  48 01 2D 61 */	bl U__7cSGlobeCFv
/* 8016FF28  7C 64 1B 78 */	mr r4, r3
/* 8016FF2C  38 61 01 5C */	addi r3, r1, 0x15c
/* 8016FF30  7E C5 B3 78 */	mr r5, r22
/* 8016FF34  48 10 12 71 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016FF38  38 61 01 58 */	addi r3, r1, 0x158
/* 8016FF3C  38 81 01 5C */	addi r4, r1, 0x15c
/* 8016FF40  48 10 10 29 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016FF44  38 61 01 58 */	addi r3, r1, 0x158
/* 8016FF48  48 10 11 D9 */	bl Cos__7cSAngleCFv
/* 8016FF4C  C0 02 9D 0C */	lfs f0, lit_8021(r2)
/* 8016FF50  EE A0 08 2A */	fadds f21, f0, f1
/* 8016FF54  38 7F 04 18 */	addi r3, r31, 0x418
/* 8016FF58  48 01 2A B1 */	bl V__7cSGlobeCFv
/* 8016FF5C  7C 64 1B 78 */	mr r4, r3
/* 8016FF60  38 61 01 54 */	addi r3, r1, 0x154
/* 8016FF64  FC 20 A8 90 */	fmr f1, f21
/* 8016FF68  48 10 12 FD */	bl __ml__7cSAngleCFf
/* 8016FF6C  38 61 01 50 */	addi r3, r1, 0x150
/* 8016FF70  38 81 01 54 */	addi r4, r1, 0x154
/* 8016FF74  FC 20 F0 90 */	fmr f1, f30
/* 8016FF78  48 10 12 ED */	bl __ml__7cSAngleCFf
/* 8016FF7C  38 61 01 4C */	addi r3, r1, 0x14c
/* 8016FF80  FC 20 F8 90 */	fmr f1, f31
/* 8016FF84  48 10 10 45 */	bl __ct__7cSAngleFf
/* 8016FF88  38 61 01 48 */	addi r3, r1, 0x148
/* 8016FF8C  38 81 01 50 */	addi r4, r1, 0x150
/* 8016FF90  38 A1 01 4C */	addi r5, r1, 0x14c
/* 8016FF94  48 10 11 E1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016FF98  38 61 02 20 */	addi r3, r1, 0x220
/* 8016FF9C  38 81 01 48 */	addi r4, r1, 0x148
/* 8016FFA0  48 01 2D 09 */	bl __as__7cSAngleFRC7cSAngle
/* 8016FFA4  38 61 01 48 */	addi r3, r1, 0x148
/* 8016FFA8  38 80 FF FF */	li r4, -1
/* 8016FFAC  4B EC 05 65 */	bl __dt__7cSAngleFv
/* 8016FFB0  38 61 01 4C */	addi r3, r1, 0x14c
/* 8016FFB4  38 80 FF FF */	li r4, -1
/* 8016FFB8  4B EC 05 59 */	bl __dt__7cSAngleFv
/* 8016FFBC  38 61 01 50 */	addi r3, r1, 0x150
/* 8016FFC0  38 80 FF FF */	li r4, -1
/* 8016FFC4  4B EC 05 4D */	bl __dt__7cSAngleFv
/* 8016FFC8  38 61 01 54 */	addi r3, r1, 0x154
/* 8016FFCC  38 80 FF FF */	li r4, -1
/* 8016FFD0  4B EC 05 41 */	bl __dt__7cSAngleFv
/* 8016FFD4  38 61 01 58 */	addi r3, r1, 0x158
/* 8016FFD8  38 80 FF FF */	li r4, -1
/* 8016FFDC  4B EC 05 35 */	bl __dt__7cSAngleFv
/* 8016FFE0  38 61 01 5C */	addi r3, r1, 0x15c
/* 8016FFE4  38 80 FF FF */	li r4, -1
/* 8016FFE8  4B EC 05 29 */	bl __dt__7cSAngleFv
/* 8016FFEC  38 61 02 20 */	addi r3, r1, 0x220
/* 8016FFF0  38 81 02 44 */	addi r4, r1, 0x244
/* 8016FFF4  48 01 2A 99 */	bl __gt__7cSAngleCFRC7cSAngle
/* 8016FFF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016FFFC  41 82 00 10 */	beq lbl_8017000C
/* 80170000  38 61 02 20 */	addi r3, r1, 0x220
/* 80170004  38 81 02 44 */	addi r4, r1, 0x244
/* 80170008  48 01 2C A1 */	bl __as__7cSAngleFRC7cSAngle
lbl_8017000C:
/* 8017000C  38 61 02 20 */	addi r3, r1, 0x220
/* 80170010  38 81 02 40 */	addi r4, r1, 0x240
/* 80170014  48 01 2A 59 */	bl __lt__7cSAngleCFRC7cSAngle
/* 80170018  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017001C  41 82 00 10 */	beq lbl_8017002C
/* 80170020  38 61 02 20 */	addi r3, r1, 0x220
/* 80170024  38 81 02 40 */	addi r4, r1, 0x240
/* 80170028  48 01 2C 81 */	bl __as__7cSAngleFRC7cSAngle
lbl_8017002C:
/* 8017002C  38 7F 04 10 */	addi r3, r31, 0x410
/* 80170030  38 81 02 20 */	addi r4, r1, 0x220
/* 80170034  4B F1 FA 25 */	bl V__7cSGlobeFRC7cSAngle
/* 80170038  88 1F 04 70 */	lbz r0, 0x470(r31)
/* 8017003C  28 00 00 00 */	cmplwi r0, 0
/* 80170040  40 82 00 58 */	bne lbl_80170098
/* 80170044  38 7F 04 10 */	addi r3, r31, 0x410
/* 80170048  48 01 2C 3D */	bl U__7cSGlobeCFv
/* 8017004C  7C 64 1B 78 */	mr r4, r3
/* 80170050  38 61 01 44 */	addi r3, r1, 0x144
/* 80170054  48 10 0F 15 */	bl __ct__7cSAngleFRC7cSAngle
/* 80170058  38 61 0F 74 */	addi r3, r1, 0xf74
/* 8017005C  7F A4 EB 78 */	mr r4, r29
/* 80170060  7F C5 F3 78 */	mr r5, r30
/* 80170064  38 C1 14 30 */	addi r6, r1, 0x1430
/* 80170068  C0 22 9C EC */	lfs f1, lit_6766(r2)
/* 8017006C  38 E1 01 44 */	addi r7, r1, 0x144
/* 80170070  4B FE FB 89 */	bl func_8015FBF8
/* 80170074  38 7F 03 EC */	addi r3, r31, 0x3ec
/* 80170078  38 81 0F 74 */	addi r4, r1, 0xf74
/* 8017007C  4B F2 77 5D */	bl __as__4cXyzFRC4cXyz
/* 80170080  38 61 0F 74 */	addi r3, r1, 0xf74
/* 80170084  38 80 FF FF */	li r4, -1
/* 80170088  4B E9 90 FD */	bl __dt__4cXyzFv
/* 8017008C  38 61 01 44 */	addi r3, r1, 0x144
/* 80170090  38 80 FF FF */	li r4, -1
/* 80170094  4B EC 04 7D */	bl __dt__7cSAngleFv
lbl_80170098:
/* 80170098  38 61 0F 68 */	addi r3, r1, 0xf68
/* 8017009C  38 9F 04 10 */	addi r4, r31, 0x410
/* 801700A0  48 10 1A 15 */	bl Xyz__7cSGlobeCFv
/* 801700A4  38 61 0F 5C */	addi r3, r1, 0xf5c
/* 801700A8  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 801700AC  38 A1 0F 68 */	addi r5, r1, 0xf68
/* 801700B0  48 0F 6A 35 */	bl __pl__4cXyzCFRC3Vec
/* 801700B4  38 7F 03 F8 */	addi r3, r31, 0x3f8
/* 801700B8  38 81 0F 5C */	addi r4, r1, 0xf5c
/* 801700BC  4B F2 77 1D */	bl __as__4cXyzFRC4cXyz
/* 801700C0  38 61 0F 5C */	addi r3, r1, 0xf5c
/* 801700C4  38 80 FF FF */	li r4, -1
/* 801700C8  4B E9 90 BD */	bl __dt__4cXyzFv
/* 801700CC  38 61 0F 68 */	addi r3, r1, 0xf68
/* 801700D0  38 80 FF FF */	li r4, -1
/* 801700D4  4B E9 90 B1 */	bl __dt__4cXyzFv
lbl_801700D8:
/* 801700D8  3B 9C 00 01 */	addi r28, r28, 1
/* 801700DC  2C 1C 00 24 */	cmpwi r28, 0x24
/* 801700E0  41 80 FB C4 */	blt lbl_8016FCA4
lbl_801700E4:
/* 801700E4  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 801700E8  40 82 00 AC */	bne lbl_80170194
/* 801700EC  38 61 13 D0 */	addi r3, r1, 0x13d0
/* 801700F0  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 801700F4  C0 42 9D CC */	lfs f2, lit_10574(r2)
/* 801700F8  C0 62 9C B0 */	lfs f3, lit_5660(r2)
/* 801700FC  48 01 2C 91 */	bl set__4cXyzFfff
/* 80170100  38 61 0F 50 */	addi r3, r1, 0xf50
/* 80170104  7F E4 FB 78 */	mr r4, r31
/* 80170108  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8017010C  38 C1 13 D0 */	addi r6, r1, 0x13d0
/* 80170110  4B FF 4C 5D */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80170114  38 7F 03 EC */	addi r3, r31, 0x3ec
/* 80170118  38 81 0F 50 */	addi r4, r1, 0xf50
/* 8017011C  4B F2 76 BD */	bl __as__4cXyzFRC4cXyz
/* 80170120  38 61 0F 50 */	addi r3, r1, 0xf50
/* 80170124  38 80 FF FF */	li r4, -1
/* 80170128  4B E9 90 5D */	bl __dt__4cXyzFv
/* 8017012C  38 61 13 D0 */	addi r3, r1, 0x13d0
/* 80170130  C0 22 9C B8 */	lfs f1, lit_5662(r2)
/* 80170134  C0 42 9E 3C */	lfs f2, lit_12278(r2)
/* 80170138  C0 62 9E 40 */	lfs f3, lit_12279(r2)
/* 8017013C  48 01 2C 51 */	bl set__4cXyzFfff
/* 80170140  38 61 0F 44 */	addi r3, r1, 0xf44
/* 80170144  7F E4 FB 78 */	mr r4, r31
/* 80170148  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8017014C  38 C1 13 D0 */	addi r6, r1, 0x13d0
/* 80170150  4B FF 4C 1D */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80170154  38 7F 03 F8 */	addi r3, r31, 0x3f8
/* 80170158  38 81 0F 44 */	addi r4, r1, 0xf44
/* 8017015C  4B F2 76 7D */	bl __as__4cXyzFRC4cXyz
/* 80170160  38 61 0F 44 */	addi r3, r1, 0xf44
/* 80170164  38 80 FF FF */	li r4, -1
/* 80170168  4B E9 90 1D */	bl __dt__4cXyzFv
/* 8017016C  38 61 0F 38 */	addi r3, r1, 0xf38
/* 80170170  38 9F 03 F8 */	addi r4, r31, 0x3f8
/* 80170174  38 BF 03 EC */	addi r5, r31, 0x3ec
/* 80170178  48 0F 69 BD */	bl __mi__4cXyzCFRC3Vec
/* 8017017C  38 7F 04 10 */	addi r3, r31, 0x410
/* 80170180  38 81 0F 38 */	addi r4, r1, 0xf38
/* 80170184  48 10 18 ED */	bl Val__7cSGlobeFRC4cXyz
/* 80170188  38 61 0F 38 */	addi r3, r1, 0xf38
/* 8017018C  38 80 FF FF */	li r4, -1
/* 80170190  4B E9 8F F5 */	bl __dt__4cXyzFv
lbl_80170194:
/* 80170194  38 7F 04 B4 */	addi r3, r31, 0x4b4
/* 80170198  38 81 14 48 */	addi r4, r1, 0x1448
/* 8017019C  4B F2 76 3D */	bl __as__4cXyzFRC4cXyz
/* 801701A0  38 7F 04 C0 */	addi r3, r31, 0x4c0
/* 801701A4  38 81 14 3C */	addi r4, r1, 0x143c
/* 801701A8  4B F2 76 31 */	bl __as__4cXyzFRC4cXyz
/* 801701AC  80 7F 04 30 */	lwz r3, 0x430(r31)
/* 801701B0  38 03 00 01 */	addi r0, r3, 1
/* 801701B4  7C 03 01 D6 */	mullw r0, r3, r0
/* 801701B8  7C 00 0E 70 */	srawi r0, r0, 1
/* 801701BC  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 801701C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801701C4  90 01 14 6C */	stw r0, 0x146c(r1)
/* 801701C8  3C 00 43 30 */	lis r0, 0x4330
/* 801701CC  90 01 14 68 */	stw r0, 0x1468(r1)
/* 801701D0  C8 01 14 68 */	lfd f0, 0x1468(r1)
/* 801701D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801701D8  D0 1F 04 34 */	stfs f0, 0x434(r31)
/* 801701DC  80 1F 04 20 */	lwz r0, 0x420(r31)
/* 801701E0  2C 00 FF FF */	cmpwi r0, -1
/* 801701E4  40 82 00 60 */	bne lbl_80170244
/* 801701E8  38 7F 04 10 */	addi r3, r31, 0x410
/* 801701EC  48 01 2A 99 */	bl U__7cSGlobeCFv
/* 801701F0  7C 76 1B 78 */	mr r22, r3
/* 801701F4  38 7F 04 18 */	addi r3, r31, 0x418
/* 801701F8  48 01 2A 8D */	bl U__7cSGlobeCFv
/* 801701FC  7C 64 1B 78 */	mr r4, r3
/* 80170200  38 61 01 40 */	addi r3, r1, 0x140
/* 80170204  7E C5 B3 78 */	mr r5, r22
/* 80170208  48 10 0F 9D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017020C  38 61 01 40 */	addi r3, r1, 0x140
/* 80170210  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 80170214  48 01 28 79 */	bl __gt__7cSAngleCFRC7cSAngle
/* 80170218  7C 76 1B 78 */	mr r22, r3
/* 8017021C  38 61 01 40 */	addi r3, r1, 0x140
/* 80170220  38 80 FF FF */	li r4, -1
/* 80170224  4B EC 02 ED */	bl __dt__7cSAngleFv
/* 80170228  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8017022C  41 82 00 10 */	beq lbl_8017023C
/* 80170230  38 00 00 00 */	li r0, 0
/* 80170234  90 1F 04 20 */	stw r0, 0x420(r31)
/* 80170238  48 00 00 0C */	b lbl_80170244
lbl_8017023C:
/* 8017023C  38 00 00 01 */	li r0, 1
/* 80170240  90 1F 04 20 */	stw r0, 0x420(r31)
lbl_80170244:
/* 80170244  38 61 13 D0 */	addi r3, r1, 0x13d0
/* 80170248  38 80 FF FF */	li r4, -1
/* 8017024C  4B E9 8F 39 */	bl __dt__4cXyzFv
/* 80170250  38 61 02 18 */	addi r3, r1, 0x218
/* 80170254  38 80 FF FF */	li r4, -1
/* 80170258  4B EC 02 B9 */	bl __dt__7cSAngleFv
/* 8017025C  38 61 02 1C */	addi r3, r1, 0x21c
/* 80170260  38 80 FF FF */	li r4, -1
/* 80170264  4B EC 02 AD */	bl __dt__7cSAngleFv
/* 80170268  38 61 02 20 */	addi r3, r1, 0x220
/* 8017026C  38 80 FF FF */	li r4, -1
/* 80170270  4B EC 02 A1 */	bl __dt__7cSAngleFv
/* 80170274  38 61 02 2C */	addi r3, r1, 0x22c
/* 80170278  38 80 FF FF */	li r4, -1
/* 8017027C  4B EC 02 95 */	bl __dt__7cSAngleFv
/* 80170280  38 61 02 30 */	addi r3, r1, 0x230
/* 80170284  38 80 FF FF */	li r4, -1
/* 80170288  4B EC 02 89 */	bl __dt__7cSAngleFv
/* 8017028C  38 61 14 30 */	addi r3, r1, 0x1430
/* 80170290  38 80 FF FF */	li r4, -1
/* 80170294  4B E9 8E F1 */	bl __dt__4cXyzFv
/* 80170298  38 61 14 3C */	addi r3, r1, 0x143c
/* 8017029C  38 80 FF FF */	li r4, -1
/* 801702A0  4B E9 8E E5 */	bl __dt__4cXyzFv
/* 801702A4  38 61 14 48 */	addi r3, r1, 0x1448
/* 801702A8  38 80 FF FF */	li r4, -1
/* 801702AC  4B E9 8E D9 */	bl __dt__4cXyzFv
/* 801702B0  38 61 02 D0 */	addi r3, r1, 0x2d0
/* 801702B4  38 80 FF FF */	li r4, -1
/* 801702B8  4B F0 13 C5 */	bl __dt__7cSGlobeFv
/* 801702BC  38 61 14 54 */	addi r3, r1, 0x1454
/* 801702C0  38 80 FF FF */	li r4, -1
/* 801702C4  4B E9 8E C1 */	bl __dt__4cXyzFv
/* 801702C8  38 61 02 34 */	addi r3, r1, 0x234
/* 801702CC  38 80 FF FF */	li r4, -1
/* 801702D0  4B EC 02 41 */	bl __dt__7cSAngleFv
lbl_801702D4:
/* 801702D4  7F C3 F3 78 */	mr r3, r30
/* 801702D8  4B FD 0F E5 */	bl fopAcM_GetName__FPv
/* 801702DC  7C 60 07 34 */	extsh r0, r3
/* 801702E0  2C 00 02 C1 */	cmpwi r0, 0x2c1
/* 801702E4  40 82 00 14 */	bne lbl_801702F8
/* 801702E8  7F C3 F3 78 */	mr r3, r30
/* 801702EC  48 01 2A 8D */	bl checkNoAttention__12daTagMhint_cCFv
/* 801702F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801702F4  40 82 00 28 */	bne lbl_8017031C
lbl_801702F8:
/* 801702F8  7F C3 F3 78 */	mr r3, r30
/* 801702FC  4B FD 0F C1 */	bl fopAcM_GetName__FPv
/* 80170300  7C 60 07 34 */	extsh r0, r3
/* 80170304  2C 00 02 C4 */	cmpwi r0, 0x2c4
/* 80170308  40 82 02 10 */	bne lbl_80170518
/* 8017030C  7F C3 F3 78 */	mr r3, r30
/* 80170310  48 01 2A 55 */	bl checkNoAttention__12daTagMstop_cCFv
/* 80170314  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80170318  41 82 02 00 */	beq lbl_80170518
lbl_8017031C:
/* 8017031C  3A C0 00 00 */	li r22, 0
/* 80170320  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80170324  2C 00 00 01 */	cmpwi r0, 1
/* 80170328  40 82 00 1C */	bne lbl_80170344
/* 8017032C  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80170330  3C 80 00 10 */	lis r4, 0x10
/* 80170334  4B FF C0 35 */	bl func_8016C368
/* 80170338  28 03 00 00 */	cmplwi r3, 0
/* 8017033C  41 82 00 08 */	beq lbl_80170344
/* 80170340  3A C0 00 01 */	li r22, 1
lbl_80170344:
/* 80170344  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80170348  28 00 00 00 */	cmplwi r0, 0
/* 8017034C  40 82 01 78 */	bne lbl_801704C4
/* 80170350  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80170354  40 82 00 94 */	bne lbl_801703E8
/* 80170358  38 61 01 3C */	addi r3, r1, 0x13c
/* 8017035C  C0 22 9D CC */	lfs f1, lit_10574(r2)
/* 80170360  48 10 0C 69 */	bl __ct__7cSAngleFf
/* 80170364  38 61 01 38 */	addi r3, r1, 0x138
/* 80170368  7F E4 FB 78 */	mr r4, r31
/* 8017036C  7F A5 EB 78 */	mr r5, r29
/* 80170370  4B F2 73 C9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80170374  38 61 01 34 */	addi r3, r1, 0x134
/* 80170378  38 81 01 3C */	addi r4, r1, 0x13c
/* 8017037C  38 A1 01 38 */	addi r5, r1, 0x138
/* 80170380  48 10 0D F5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80170384  38 7F 04 10 */	addi r3, r31, 0x410
/* 80170388  38 81 01 34 */	addi r4, r1, 0x134
/* 8017038C  4B F1 E5 09 */	bl U__7cSGlobeFRC7cSAngle
/* 80170390  38 61 01 34 */	addi r3, r1, 0x134
/* 80170394  38 80 FF FF */	li r4, -1
/* 80170398  4B EC 01 79 */	bl __dt__7cSAngleFv
/* 8017039C  38 61 01 38 */	addi r3, r1, 0x138
/* 801703A0  38 80 FF FF */	li r4, -1
/* 801703A4  4B EC 01 6D */	bl __dt__7cSAngleFv
/* 801703A8  38 61 01 3C */	addi r3, r1, 0x13c
/* 801703AC  38 80 FF FF */	li r4, -1
/* 801703B0  4B EC 01 61 */	bl __dt__7cSAngleFv
/* 801703B4  38 61 01 30 */	addi r3, r1, 0x130
/* 801703B8  C0 22 9D 50 */	lfs f1, lit_9405(r2)
/* 801703BC  48 10 0C 0D */	bl __ct__7cSAngleFf
/* 801703C0  38 7F 04 10 */	addi r3, r31, 0x410
/* 801703C4  38 81 01 30 */	addi r4, r1, 0x130
/* 801703C8  4B F1 F6 91 */	bl V__7cSGlobeFRC7cSAngle
/* 801703CC  38 61 01 30 */	addi r3, r1, 0x130
/* 801703D0  38 80 FF FF */	li r4, -1
/* 801703D4  4B EC 01 3D */	bl __dt__7cSAngleFv
/* 801703D8  38 7F 04 10 */	addi r3, r31, 0x410
/* 801703DC  C0 22 9E 44 */	lfs f1, lit_12280(r2)
/* 801703E0  48 01 26 6D */	bl R__7cSGlobeFf
/* 801703E4  48 00 00 90 */	b lbl_80170474
lbl_801703E8:
/* 801703E8  38 61 01 2C */	addi r3, r1, 0x12c
/* 801703EC  C0 22 9D 18 */	lfs f1, lit_8127(r2)
/* 801703F0  48 10 0B D9 */	bl __ct__7cSAngleFf
/* 801703F4  38 61 01 28 */	addi r3, r1, 0x128
/* 801703F8  7F E4 FB 78 */	mr r4, r31
/* 801703FC  7F A5 EB 78 */	mr r5, r29
/* 80170400  4B F2 73 39 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80170404  38 61 01 24 */	addi r3, r1, 0x124
/* 80170408  38 81 01 2C */	addi r4, r1, 0x12c
/* 8017040C  38 A1 01 28 */	addi r5, r1, 0x128
/* 80170410  48 10 0D 65 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80170414  38 7F 04 10 */	addi r3, r31, 0x410
/* 80170418  38 81 01 24 */	addi r4, r1, 0x124
/* 8017041C  4B F1 E4 79 */	bl U__7cSGlobeFRC7cSAngle
/* 80170420  38 61 01 24 */	addi r3, r1, 0x124
/* 80170424  38 80 FF FF */	li r4, -1
/* 80170428  4B EC 00 E9 */	bl __dt__7cSAngleFv
/* 8017042C  38 61 01 28 */	addi r3, r1, 0x128
/* 80170430  38 80 FF FF */	li r4, -1
/* 80170434  4B EC 00 DD */	bl __dt__7cSAngleFv
/* 80170438  38 61 01 2C */	addi r3, r1, 0x12c
/* 8017043C  38 80 FF FF */	li r4, -1
/* 80170440  4B EC 00 D1 */	bl __dt__7cSAngleFv
/* 80170444  38 61 01 20 */	addi r3, r1, 0x120
/* 80170448  C0 22 9E 00 */	lfs f1, lit_11171(r2)
/* 8017044C  48 10 0B 7D */	bl __ct__7cSAngleFf
/* 80170450  38 7F 04 10 */	addi r3, r31, 0x410
/* 80170454  38 81 01 20 */	addi r4, r1, 0x120
/* 80170458  4B F1 F6 01 */	bl V__7cSGlobeFRC7cSAngle
/* 8017045C  38 61 01 20 */	addi r3, r1, 0x120
/* 80170460  38 80 FF FF */	li r4, -1
/* 80170464  4B EC 00 AD */	bl __dt__7cSAngleFv
/* 80170468  38 7F 04 10 */	addi r3, r31, 0x410
/* 8017046C  C0 22 9D E8 */	lfs f1, lit_10581(r2)
/* 80170470  48 01 25 DD */	bl R__7cSGlobeFf
lbl_80170474:
/* 80170474  38 61 0F 2C */	addi r3, r1, 0xf2c
/* 80170478  38 9F 04 10 */	addi r4, r31, 0x410
/* 8017047C  48 10 16 39 */	bl Xyz__7cSGlobeCFv
/* 80170480  38 61 0F 20 */	addi r3, r1, 0xf20
/* 80170484  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 80170488  38 A1 0F 2C */	addi r5, r1, 0xf2c
/* 8017048C  48 0F 66 59 */	bl __pl__4cXyzCFRC3Vec
/* 80170490  38 7F 03 F8 */	addi r3, r31, 0x3f8
/* 80170494  38 81 0F 20 */	addi r4, r1, 0xf20
/* 80170498  4B F2 73 41 */	bl __as__4cXyzFRC4cXyz
/* 8017049C  38 61 0F 20 */	addi r3, r1, 0xf20
/* 801704A0  38 80 FF FF */	li r4, -1
/* 801704A4  4B E9 8C E1 */	bl __dt__4cXyzFv
/* 801704A8  38 61 0F 2C */	addi r3, r1, 0xf2c
/* 801704AC  38 80 FF FF */	li r4, -1
/* 801704B0  4B E9 8C D5 */	bl __dt__4cXyzFv
/* 801704B4  38 00 00 10 */	li r0, 0x10
/* 801704B8  90 1F 04 30 */	stw r0, 0x430(r31)
/* 801704BC  C0 02 9E 38 */	lfs f0, lit_12277(r2)
/* 801704C0  D0 1F 04 40 */	stfs f0, 0x440(r31)
lbl_801704C4:
/* 801704C4  38 61 0F 14 */	addi r3, r1, 0xf14
/* 801704C8  7F E4 FB 78 */	mr r4, r31
/* 801704CC  7F A5 EB 78 */	mr r5, r29
/* 801704D0  4B F2 72 8D */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 801704D4  38 7F 03 EC */	addi r3, r31, 0x3ec
/* 801704D8  38 81 0F 14 */	addi r4, r1, 0xf14
/* 801704DC  4B F2 72 FD */	bl __as__4cXyzFRC4cXyz
/* 801704E0  38 61 0F 14 */	addi r3, r1, 0xf14
/* 801704E4  38 80 FF FF */	li r4, -1
/* 801704E8  4B E9 8C 9D */	bl __dt__4cXyzFv
/* 801704EC  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 801704F0  40 82 00 18 */	bne lbl_80170508
/* 801704F4  C0 3F 03 F0 */	lfs f1, 0x3f0(r31)
/* 801704F8  C0 02 9E 48 */	lfs f0, lit_12281(r2)
/* 801704FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80170500  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 80170504  48 00 00 14 */	b lbl_80170518
lbl_80170508:
/* 80170508  C0 3F 03 F0 */	lfs f1, 0x3f0(r31)
/* 8017050C  C0 02 9C E4 */	lfs f0, lit_6629(r2)
/* 80170510  EC 01 00 2A */	fadds f0, f1, f0
/* 80170514  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
lbl_80170518:
/* 80170518  38 61 13 C4 */	addi r3, r1, 0x13c4
/* 8017051C  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80170520  38 84 0C F4 */	addi r4, r4, Zero__4cXyz@l /* 0x80430CF4@l */
/* 80170524  4B F2 72 D1 */	bl __ct__4cXyzFRC4cXyz
/* 80170528  3A E0 00 00 */	li r23, 0
/* 8017052C  7F A3 EB 78 */	mr r3, r29
/* 80170530  4B FF 77 89 */	bl func_80167CB8
/* 80170534  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80170538  41 82 00 78 */	beq lbl_801705B0
/* 8017053C  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80170540  2C 00 00 01 */	cmpwi r0, 1
/* 80170544  40 82 00 6C */	bne lbl_801705B0
/* 80170548  38 61 13 B8 */	addi r3, r1, 0x13b8
/* 8017054C  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80170550  FC 40 08 90 */	fmr f2, f1
/* 80170554  C0 62 9D A8 */	lfs f3, lit_10565(r2)
/* 80170558  4B FD 14 05 */	bl __ct__4cXyzFfff
/* 8017055C  38 61 01 1C */	addi r3, r1, 0x11c
/* 80170560  7F E4 FB 78 */	mr r4, r31
/* 80170564  7F A5 EB 78 */	mr r5, r29
/* 80170568  4B F2 71 D1 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8017056C  38 61 0F 08 */	addi r3, r1, 0xf08
/* 80170570  38 81 13 B8 */	addi r4, r1, 0x13b8
/* 80170574  38 A1 01 1C */	addi r5, r1, 0x11c
/* 80170578  4B F1 7E 0D */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8017057C  38 61 13 C4 */	addi r3, r1, 0x13c4
/* 80170580  38 81 0F 08 */	addi r4, r1, 0xf08
/* 80170584  4B F2 72 55 */	bl __as__4cXyzFRC4cXyz
/* 80170588  38 61 0F 08 */	addi r3, r1, 0xf08
/* 8017058C  38 80 FF FF */	li r4, -1
/* 80170590  4B E9 8B F5 */	bl __dt__4cXyzFv
/* 80170594  38 61 01 1C */	addi r3, r1, 0x11c
/* 80170598  38 80 FF FF */	li r4, -1
/* 8017059C  4B EB FF 75 */	bl __dt__7cSAngleFv
/* 801705A0  3A E0 00 01 */	li r23, 1
/* 801705A4  38 61 13 B8 */	addi r3, r1, 0x13b8
/* 801705A8  38 80 FF FF */	li r4, -1
/* 801705AC  4B E9 8B D9 */	bl __dt__4cXyzFv
lbl_801705B0:
/* 801705B0  38 61 13 AC */	addi r3, r1, 0x13ac
/* 801705B4  4B EA 20 29 */	bl __ct__4cXyzFv
/* 801705B8  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 801705BC  4B EA 20 21 */	bl __ct__4cXyzFv
/* 801705C0  38 61 13 94 */	addi r3, r1, 0x1394
/* 801705C4  4B EA 20 19 */	bl __ct__4cXyzFv
/* 801705C8  38 61 13 88 */	addi r3, r1, 0x1388
/* 801705CC  4B EA 20 11 */	bl __ct__4cXyzFv
/* 801705D0  83 9F 04 24 */	lwz r28, 0x424(r31)
/* 801705D4  28 1C 00 41 */	cmplwi r28, 0x41
/* 801705D8  41 81 44 20 */	bgt lbl_801749F8
/* 801705DC  3C 60 80 3C */	lis r3, lit_12300@ha /* 0x803BA39C@ha */
/* 801705E0  38 63 A3 9C */	addi r3, r3, lit_12300@l /* 0x803BA39C@l */
/* 801705E4  57 80 10 3A */	slwi r0, r28, 2
/* 801705E8  7C 03 00 2E */	lwzx r0, r3, r0
/* 801705EC  7C 09 03 A6 */	mtctr r0
/* 801705F0  4E 80 04 20 */	bctr 
/* 801705F4  38 00 00 01 */	li r0, 1
/* 801705F8  90 1F 04 30 */	stw r0, 0x430(r31)
/* 801705FC  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80170600  D0 1F 04 34 */	stfs f0, 0x434(r31)
/* 80170604  3B 80 00 00 */	li r28, 0
/* 80170608  48 00 43 F4 */	b lbl_801749FC
/* 8017060C  2C 1C 00 14 */	cmpwi r28, 0x14
/* 80170610  41 82 01 2C */	beq lbl_8017073C
/* 80170614  7F B6 EB 78 */	mr r22, r29
/* 80170618  38 61 0E FC */	addi r3, r1, 0xefc
/* 8017061C  7F E4 FB 78 */	mr r4, r31
/* 80170620  7F A5 EB 78 */	mr r5, r29
/* 80170624  48 00 48 11 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80170628  38 61 13 AC */	addi r3, r1, 0x13ac
/* 8017062C  38 81 0E FC */	addi r4, r1, 0xefc
/* 80170630  4B F2 71 A9 */	bl __as__4cXyzFRC4cXyz
/* 80170634  38 61 0E FC */	addi r3, r1, 0xefc
/* 80170638  38 80 FF FF */	li r4, -1
/* 8017063C  4B E9 8B 49 */	bl __dt__4cXyzFv
/* 80170640  38 61 0E F0 */	addi r3, r1, 0xef0
/* 80170644  7F E4 FB 78 */	mr r4, r31
/* 80170648  7F C5 F3 78 */	mr r5, r30
/* 8017064C  48 00 47 E9 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80170650  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80170654  38 81 0E F0 */	addi r4, r1, 0xef0
/* 80170658  4B F2 71 81 */	bl __as__4cXyzFRC4cXyz
/* 8017065C  38 61 0E F0 */	addi r3, r1, 0xef0
/* 80170660  38 80 FF FF */	li r4, -1
/* 80170664  4B E9 8B 21 */	bl __dt__4cXyzFv
/* 80170668  38 61 0E E4 */	addi r3, r1, 0xee4
/* 8017066C  7F E4 FB 78 */	mr r4, r31
/* 80170670  7F A5 EB 78 */	mr r5, r29
/* 80170674  48 00 47 A5 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80170678  38 61 13 94 */	addi r3, r1, 0x1394
/* 8017067C  38 81 0E E4 */	addi r4, r1, 0xee4
/* 80170680  4B F2 71 59 */	bl __as__4cXyzFRC4cXyz
/* 80170684  38 61 0E E4 */	addi r3, r1, 0xee4
/* 80170688  38 80 FF FF */	li r4, -1
/* 8017068C  4B E9 8A F9 */	bl __dt__4cXyzFv
/* 80170690  38 61 0E D8 */	addi r3, r1, 0xed8
/* 80170694  7F E4 FB 78 */	mr r4, r31
/* 80170698  7F C5 F3 78 */	mr r5, r30
/* 8017069C  48 00 47 7D */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801706A0  38 61 13 88 */	addi r3, r1, 0x1388
/* 801706A4  38 81 0E D8 */	addi r4, r1, 0xed8
/* 801706A8  4B F2 71 31 */	bl __as__4cXyzFRC4cXyz
/* 801706AC  38 61 0E D8 */	addi r3, r1, 0xed8
/* 801706B0  38 80 FF FF */	li r4, -1
/* 801706B4  4B E9 8A D1 */	bl __dt__4cXyzFv
/* 801706B8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 801706BC  41 82 00 28 */	beq lbl_801706E4
/* 801706C0  38 61 0E CC */	addi r3, r1, 0xecc
/* 801706C4  7F E4 FB 78 */	mr r4, r31
/* 801706C8  7F C5 F3 78 */	mr r5, r30
/* 801706CC  4B F2 70 51 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801706D0  C0 01 0E D0 */	lfs f0, 0xed0(r1)
/* 801706D4  D0 01 13 A4 */	stfs f0, 0x13a4(r1)
/* 801706D8  38 61 0E CC */	addi r3, r1, 0xecc
/* 801706DC  38 80 FF FF */	li r4, -1
/* 801706E0  4B E9 8A A5 */	bl __dt__4cXyzFv
lbl_801706E4:
/* 801706E4  7F C3 F3 78 */	mr r3, r30
/* 801706E8  4B FD 0B D5 */	bl fopAcM_GetName__FPv
/* 801706EC  7C 60 07 34 */	extsh r0, r3
/* 801706F0  2C 00 02 59 */	cmpwi r0, 0x259
/* 801706F4  40 82 00 30 */	bne lbl_80170724
/* 801706F8  38 61 0E C0 */	addi r3, r1, 0xec0
/* 801706FC  7F E4 FB 78 */	mr r4, r31
/* 80170700  7F C5 F3 78 */	mr r5, r30
/* 80170704  4B F2 70 19 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80170708  C0 21 0E C4 */	lfs f1, 0xec4(r1)
/* 8017070C  C0 02 9D 34 */	lfs f0, lit_9398(r2)
/* 80170710  EC 01 00 28 */	fsubs f0, f1, f0
/* 80170714  D0 01 13 A4 */	stfs f0, 0x13a4(r1)
/* 80170718  38 61 0E C0 */	addi r3, r1, 0xec0
/* 8017071C  38 80 FF FF */	li r4, -1
/* 80170720  4B E9 8A 65 */	bl __dt__4cXyzFv
lbl_80170724:
/* 80170724  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80170728  41 82 00 F8 */	beq lbl_80170820
/* 8017072C  38 61 13 94 */	addi r3, r1, 0x1394
/* 80170730  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80170734  4B F1 E1 D1 */	bl __apl__4cXyzFRC3Vec
/* 80170738  48 00 00 E8 */	b lbl_80170820
lbl_8017073C:
/* 8017073C  7F D6 F3 78 */	mr r22, r30
/* 80170740  38 61 0E B4 */	addi r3, r1, 0xeb4
/* 80170744  7F E4 FB 78 */	mr r4, r31
/* 80170748  7F C5 F3 78 */	mr r5, r30
/* 8017074C  48 00 46 E9 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80170750  38 61 13 AC */	addi r3, r1, 0x13ac
/* 80170754  38 81 0E B4 */	addi r4, r1, 0xeb4
/* 80170758  4B F2 70 81 */	bl __as__4cXyzFRC4cXyz
/* 8017075C  38 61 0E B4 */	addi r3, r1, 0xeb4
/* 80170760  38 80 FF FF */	li r4, -1
/* 80170764  4B E9 8A 21 */	bl __dt__4cXyzFv
/* 80170768  38 61 0E A8 */	addi r3, r1, 0xea8
/* 8017076C  7F E4 FB 78 */	mr r4, r31
/* 80170770  7F A5 EB 78 */	mr r5, r29
/* 80170774  48 00 46 C1 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80170778  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 8017077C  38 81 0E A8 */	addi r4, r1, 0xea8
/* 80170780  4B F2 70 59 */	bl __as__4cXyzFRC4cXyz
/* 80170784  38 61 0E A8 */	addi r3, r1, 0xea8
/* 80170788  38 80 FF FF */	li r4, -1
/* 8017078C  4B E9 89 F9 */	bl __dt__4cXyzFv
/* 80170790  38 61 0E 9C */	addi r3, r1, 0xe9c
/* 80170794  7F E4 FB 78 */	mr r4, r31
/* 80170798  7F C5 F3 78 */	mr r5, r30
/* 8017079C  48 00 46 7D */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801707A0  38 61 13 94 */	addi r3, r1, 0x1394
/* 801707A4  38 81 0E 9C */	addi r4, r1, 0xe9c
/* 801707A8  4B F2 70 31 */	bl __as__4cXyzFRC4cXyz
/* 801707AC  38 61 0E 9C */	addi r3, r1, 0xe9c
/* 801707B0  38 80 FF FF */	li r4, -1
/* 801707B4  4B E9 89 D1 */	bl __dt__4cXyzFv
/* 801707B8  38 61 0E 90 */	addi r3, r1, 0xe90
/* 801707BC  7F E4 FB 78 */	mr r4, r31
/* 801707C0  7F A5 EB 78 */	mr r5, r29
/* 801707C4  48 00 46 55 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801707C8  38 61 13 88 */	addi r3, r1, 0x1388
/* 801707CC  38 81 0E 90 */	addi r4, r1, 0xe90
/* 801707D0  4B F2 70 09 */	bl __as__4cXyzFRC4cXyz
/* 801707D4  38 61 0E 90 */	addi r3, r1, 0xe90
/* 801707D8  38 80 FF FF */	li r4, -1
/* 801707DC  4B E9 89 A9 */	bl __dt__4cXyzFv
/* 801707E0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 801707E4  41 82 00 28 */	beq lbl_8017080C
/* 801707E8  38 61 0E 84 */	addi r3, r1, 0xe84
/* 801707EC  7F E4 FB 78 */	mr r4, r31
/* 801707F0  7F C5 F3 78 */	mr r5, r30
/* 801707F4  4B F2 6F 29 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801707F8  C0 01 0E 88 */	lfs f0, 0xe88(r1)
/* 801707FC  D0 01 13 B0 */	stfs f0, 0x13b0(r1)
/* 80170800  38 61 0E 84 */	addi r3, r1, 0xe84
/* 80170804  38 80 FF FF */	li r4, -1
/* 80170808  4B E9 89 7D */	bl __dt__4cXyzFv
lbl_8017080C:
/* 8017080C  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80170810  41 82 00 10 */	beq lbl_80170820
/* 80170814  38 61 13 88 */	addi r3, r1, 0x1388
/* 80170818  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 8017081C  4B F1 E0 E9 */	bl __apl__4cXyzFRC3Vec
lbl_80170820:
/* 80170820  38 7F 00 64 */	addi r3, r31, 0x64
/* 80170824  38 81 13 88 */	addi r4, r1, 0x1388
/* 80170828  4B F2 6F B1 */	bl __as__4cXyzFRC4cXyz
/* 8017082C  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 80170830  2C 00 00 00 */	cmpwi r0, 0
/* 80170834  40 82 00 C8 */	bne lbl_801708FC
/* 80170838  38 61 13 7C */	addi r3, r1, 0x137c
/* 8017083C  38 81 13 94 */	addi r4, r1, 0x1394
/* 80170840  4B F2 6F B5 */	bl __ct__4cXyzFRC4cXyz
/* 80170844  C0 01 13 B0 */	lfs f0, 0x13b0(r1)
/* 80170848  D0 01 13 80 */	stfs f0, 0x1380(r1)
/* 8017084C  38 61 13 70 */	addi r3, r1, 0x1370
/* 80170850  38 81 13 88 */	addi r4, r1, 0x1388
/* 80170854  4B F2 6F A1 */	bl __ct__4cXyzFRC4cXyz
/* 80170858  C0 01 13 A4 */	lfs f0, 0x13a4(r1)
/* 8017085C  D0 01 13 74 */	stfs f0, 0x1374(r1)
/* 80170860  38 61 0E 78 */	addi r3, r1, 0xe78
/* 80170864  38 81 13 7C */	addi r4, r1, 0x137c
/* 80170868  38 A1 13 70 */	addi r5, r1, 0x1370
/* 8017086C  48 0F 62 C9 */	bl __mi__4cXyzCFRC3Vec
/* 80170870  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80170874  38 81 0E 78 */	addi r4, r1, 0xe78
/* 80170878  48 10 11 F9 */	bl Val__7cSGlobeFRC4cXyz
/* 8017087C  38 61 0E 78 */	addi r3, r1, 0xe78
/* 80170880  38 80 FF FF */	li r4, -1
/* 80170884  4B E9 89 01 */	bl __dt__4cXyzFv
/* 80170888  2C 1C 00 3E */	cmpwi r28, 0x3e
/* 8017088C  40 82 00 2C */	bne lbl_801708B8
/* 80170890  38 61 01 18 */	addi r3, r1, 0x118
/* 80170894  7F E4 FB 78 */	mr r4, r31
/* 80170898  7F C5 F3 78 */	mr r5, r30
/* 8017089C  4B F2 6E 9D */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 801708A0  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801708A4  38 81 01 18 */	addi r4, r1, 0x118
/* 801708A8  4B F1 DF ED */	bl U__7cSGlobeFRC7cSAngle
/* 801708AC  38 61 01 18 */	addi r3, r1, 0x118
/* 801708B0  38 80 FF FF */	li r4, -1
/* 801708B4  4B EB FC 5D */	bl __dt__7cSAngleFv
lbl_801708B8:
/* 801708B8  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801708BC  C0 22 9E 4C */	lfs f1, lit_12282(r2)
/* 801708C0  48 01 21 8D */	bl R__7cSGlobeFf
/* 801708C4  C0 21 13 A4 */	lfs f1, 0x13a4(r1)
/* 801708C8  C0 02 9E 00 */	lfs f0, lit_11171(r2)
/* 801708CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 801708D0  C0 01 13 8C */	lfs f0, 0x138c(r1)
/* 801708D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801708D8  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 801708DC  38 00 00 01 */	li r0, 1
/* 801708E0  98 1F 01 58 */	stb r0, 0x158(r31)
/* 801708E4  38 61 13 70 */	addi r3, r1, 0x1370
/* 801708E8  38 80 FF FF */	li r4, -1
/* 801708EC  4B E9 88 99 */	bl __dt__4cXyzFv
/* 801708F0  38 61 13 7C */	addi r3, r1, 0x137c
/* 801708F4  38 80 FF FF */	li r4, -1
/* 801708F8  4B E9 88 8D */	bl __dt__4cXyzFv
lbl_801708FC:
/* 801708FC  C0 21 13 8C */	lfs f1, 0x138c(r1)
/* 80170900  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 80170904  EC 01 00 2A */	fadds f0, f1, f0
/* 80170908  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 8017090C  38 61 0E 6C */	addi r3, r1, 0xe6c
/* 80170910  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80170914  48 10 11 A1 */	bl Xyz__7cSGlobeCFv
/* 80170918  38 61 0E 60 */	addi r3, r1, 0xe60
/* 8017091C  38 9F 00 64 */	addi r4, r31, 0x64
/* 80170920  38 A1 0E 6C */	addi r5, r1, 0xe6c
/* 80170924  48 0F 61 C1 */	bl __pl__4cXyzCFRC3Vec
/* 80170928  38 7F 00 70 */	addi r3, r31, 0x70
/* 8017092C  38 81 0E 60 */	addi r4, r1, 0xe60
/* 80170930  4B F2 6E A9 */	bl __as__4cXyzFRC4cXyz
/* 80170934  38 61 0E 60 */	addi r3, r1, 0xe60
/* 80170938  38 80 FF FF */	li r4, -1
/* 8017093C  4B E9 88 49 */	bl __dt__4cXyzFv
/* 80170940  38 61 0E 6C */	addi r3, r1, 0xe6c
/* 80170944  38 80 FF FF */	li r4, -1
/* 80170948  4B E9 88 3D */	bl __dt__4cXyzFv
/* 8017094C  C0 02 9C B8 */	lfs f0, lit_5662(r2)
/* 80170950  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80170954  7E C3 B3 78 */	mr r3, r22
/* 80170958  4B FE F0 F5 */	bl func_8015FA4C
/* 8017095C  48 00 40 A0 */	b lbl_801749FC
/* 80170960  2C 1C 00 27 */	cmpwi r28, 0x27
/* 80170964  41 82 00 10 */	beq lbl_80170974
/* 80170968  7F D6 F3 78 */	mr r22, r30
/* 8017096C  7F B9 EB 78 */	mr r25, r29
/* 80170970  48 00 00 0C */	b lbl_8017097C
lbl_80170974:
/* 80170974  7F B6 EB 78 */	mr r22, r29
/* 80170978  7F D9 F3 78 */	mr r25, r30
lbl_8017097C:
/* 8017097C  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 80170980  2C 00 00 00 */	cmpwi r0, 0
/* 80170984  40 82 03 1C */	bne lbl_80170CA0
/* 80170988  2C 1C 00 27 */	cmpwi r28, 0x27
/* 8017098C  41 82 00 E8 */	beq lbl_80170A74
/* 80170990  38 61 0E 54 */	addi r3, r1, 0xe54
/* 80170994  7F E4 FB 78 */	mr r4, r31
/* 80170998  7F 25 CB 78 */	mr r5, r25
/* 8017099C  48 00 44 99 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 801709A0  38 61 13 AC */	addi r3, r1, 0x13ac
/* 801709A4  38 81 0E 54 */	addi r4, r1, 0xe54
/* 801709A8  4B F2 6E 31 */	bl __as__4cXyzFRC4cXyz
/* 801709AC  38 61 0E 54 */	addi r3, r1, 0xe54
/* 801709B0  38 80 FF FF */	li r4, -1
/* 801709B4  4B E9 87 D1 */	bl __dt__4cXyzFv
/* 801709B8  38 61 0E 48 */	addi r3, r1, 0xe48
/* 801709BC  7F E4 FB 78 */	mr r4, r31
/* 801709C0  7E C5 B3 78 */	mr r5, r22
/* 801709C4  48 00 44 71 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 801709C8  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 801709CC  38 81 0E 48 */	addi r4, r1, 0xe48
/* 801709D0  4B F2 6E 09 */	bl __as__4cXyzFRC4cXyz
/* 801709D4  38 61 0E 48 */	addi r3, r1, 0xe48
/* 801709D8  38 80 FF FF */	li r4, -1
/* 801709DC  4B E9 87 A9 */	bl __dt__4cXyzFv
/* 801709E0  38 61 0E 3C */	addi r3, r1, 0xe3c
/* 801709E4  7F E4 FB 78 */	mr r4, r31
/* 801709E8  7F 25 CB 78 */	mr r5, r25
/* 801709EC  48 00 44 2D */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801709F0  38 61 13 94 */	addi r3, r1, 0x1394
/* 801709F4  38 81 0E 3C */	addi r4, r1, 0xe3c
/* 801709F8  4B F2 6D E1 */	bl __as__4cXyzFRC4cXyz
/* 801709FC  38 61 0E 3C */	addi r3, r1, 0xe3c
/* 80170A00  38 80 FF FF */	li r4, -1
/* 80170A04  4B E9 87 81 */	bl __dt__4cXyzFv
/* 80170A08  38 61 0E 30 */	addi r3, r1, 0xe30
/* 80170A0C  7F E4 FB 78 */	mr r4, r31
/* 80170A10  7E C5 B3 78 */	mr r5, r22
/* 80170A14  48 00 44 05 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80170A18  38 61 13 88 */	addi r3, r1, 0x1388
/* 80170A1C  38 81 0E 30 */	addi r4, r1, 0xe30
/* 80170A20  4B F2 6D B9 */	bl __as__4cXyzFRC4cXyz
/* 80170A24  38 61 0E 30 */	addi r3, r1, 0xe30
/* 80170A28  38 80 FF FF */	li r4, -1
/* 80170A2C  4B E9 87 59 */	bl __dt__4cXyzFv
/* 80170A30  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80170A34  41 82 00 28 */	beq lbl_80170A5C
/* 80170A38  38 61 0E 24 */	addi r3, r1, 0xe24
/* 80170A3C  7F E4 FB 78 */	mr r4, r31
/* 80170A40  7F C5 F3 78 */	mr r5, r30
/* 80170A44  4B F2 6C D9 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80170A48  C0 01 0E 28 */	lfs f0, 0xe28(r1)
/* 80170A4C  D0 01 13 A4 */	stfs f0, 0x13a4(r1)
/* 80170A50  38 61 0E 24 */	addi r3, r1, 0xe24
/* 80170A54  38 80 FF FF */	li r4, -1
/* 80170A58  4B E9 87 2D */	bl __dt__4cXyzFv
lbl_80170A5C:
/* 80170A5C  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80170A60  41 82 00 F4 */	beq lbl_80170B54
/* 80170A64  38 61 13 94 */	addi r3, r1, 0x1394
/* 80170A68  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80170A6C  4B F1 DE 99 */	bl __apl__4cXyzFRC3Vec
/* 80170A70  48 00 00 E4 */	b lbl_80170B54
lbl_80170A74:
/* 80170A74  38 61 0E 18 */	addi r3, r1, 0xe18
/* 80170A78  7F E4 FB 78 */	mr r4, r31
/* 80170A7C  7F 25 CB 78 */	mr r5, r25
/* 80170A80  48 00 43 B5 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80170A84  38 61 13 AC */	addi r3, r1, 0x13ac
/* 80170A88  38 81 0E 18 */	addi r4, r1, 0xe18
/* 80170A8C  4B F2 6D 4D */	bl __as__4cXyzFRC4cXyz
/* 80170A90  38 61 0E 18 */	addi r3, r1, 0xe18
/* 80170A94  38 80 FF FF */	li r4, -1
/* 80170A98  4B E9 86 ED */	bl __dt__4cXyzFv
/* 80170A9C  38 61 0E 0C */	addi r3, r1, 0xe0c
/* 80170AA0  7F E4 FB 78 */	mr r4, r31
/* 80170AA4  7E C5 B3 78 */	mr r5, r22
/* 80170AA8  48 00 43 8D */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80170AAC  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80170AB0  38 81 0E 0C */	addi r4, r1, 0xe0c
/* 80170AB4  4B F2 6D 25 */	bl __as__4cXyzFRC4cXyz
/* 80170AB8  38 61 0E 0C */	addi r3, r1, 0xe0c
/* 80170ABC  38 80 FF FF */	li r4, -1
/* 80170AC0  4B E9 86 C5 */	bl __dt__4cXyzFv
/* 80170AC4  38 61 0E 00 */	addi r3, r1, 0xe00
/* 80170AC8  7F E4 FB 78 */	mr r4, r31
/* 80170ACC  7F 25 CB 78 */	mr r5, r25
/* 80170AD0  48 00 43 49 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80170AD4  38 61 13 94 */	addi r3, r1, 0x1394
/* 80170AD8  38 81 0E 00 */	addi r4, r1, 0xe00
/* 80170ADC  4B F2 6C FD */	bl __as__4cXyzFRC4cXyz
/* 80170AE0  38 61 0E 00 */	addi r3, r1, 0xe00
/* 80170AE4  38 80 FF FF */	li r4, -1
/* 80170AE8  4B E9 86 9D */	bl __dt__4cXyzFv
/* 80170AEC  38 61 0D F4 */	addi r3, r1, 0xdf4
/* 80170AF0  7F E4 FB 78 */	mr r4, r31
/* 80170AF4  7E C5 B3 78 */	mr r5, r22
/* 80170AF8  48 00 43 21 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80170AFC  38 61 13 88 */	addi r3, r1, 0x1388
/* 80170B00  38 81 0D F4 */	addi r4, r1, 0xdf4
/* 80170B04  4B F2 6C D5 */	bl __as__4cXyzFRC4cXyz
/* 80170B08  38 61 0D F4 */	addi r3, r1, 0xdf4
/* 80170B0C  38 80 FF FF */	li r4, -1
/* 80170B10  4B E9 86 75 */	bl __dt__4cXyzFv
/* 80170B14  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80170B18  41 82 00 28 */	beq lbl_80170B40
/* 80170B1C  38 61 0D E8 */	addi r3, r1, 0xde8
/* 80170B20  7F E4 FB 78 */	mr r4, r31
/* 80170B24  7F C5 F3 78 */	mr r5, r30
/* 80170B28  4B F2 6B F5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80170B2C  C0 01 0D EC */	lfs f0, 0xdec(r1)
/* 80170B30  D0 01 13 B0 */	stfs f0, 0x13b0(r1)
/* 80170B34  38 61 0D E8 */	addi r3, r1, 0xde8
/* 80170B38  38 80 FF FF */	li r4, -1
/* 80170B3C  4B E9 86 49 */	bl __dt__4cXyzFv
lbl_80170B40:
/* 80170B40  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80170B44  41 82 00 10 */	beq lbl_80170B54
/* 80170B48  38 61 13 88 */	addi r3, r1, 0x1388
/* 80170B4C  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80170B50  4B F1 DD B5 */	bl __apl__4cXyzFRC3Vec
lbl_80170B54:
/* 80170B54  38 7F 00 64 */	addi r3, r31, 0x64
/* 80170B58  38 81 13 88 */	addi r4, r1, 0x1388
/* 80170B5C  4B F2 6C 7D */	bl __as__4cXyzFRC4cXyz
/* 80170B60  38 61 13 64 */	addi r3, r1, 0x1364
/* 80170B64  38 81 13 94 */	addi r4, r1, 0x1394
/* 80170B68  4B F2 6C 8D */	bl __ct__4cXyzFRC4cXyz
/* 80170B6C  C0 01 13 B0 */	lfs f0, 0x13b0(r1)
/* 80170B70  D0 01 13 68 */	stfs f0, 0x1368(r1)
/* 80170B74  38 61 13 58 */	addi r3, r1, 0x1358
/* 80170B78  38 81 13 88 */	addi r4, r1, 0x1388
/* 80170B7C  4B F2 6C 79 */	bl __ct__4cXyzFRC4cXyz
/* 80170B80  C0 01 13 A4 */	lfs f0, 0x13a4(r1)
/* 80170B84  D0 01 13 5C */	stfs f0, 0x135c(r1)
/* 80170B88  38 61 0D DC */	addi r3, r1, 0xddc
/* 80170B8C  38 81 13 64 */	addi r4, r1, 0x1364
/* 80170B90  38 A1 13 58 */	addi r5, r1, 0x1358
/* 80170B94  48 0F 5F A1 */	bl __mi__4cXyzCFRC3Vec
/* 80170B98  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80170B9C  38 81 0D DC */	addi r4, r1, 0xddc
/* 80170BA0  48 10 0E D1 */	bl Val__7cSGlobeFRC4cXyz
/* 80170BA4  38 61 0D DC */	addi r3, r1, 0xddc
/* 80170BA8  38 80 FF FF */	li r4, -1
/* 80170BAC  4B E9 85 D9 */	bl __dt__4cXyzFv
/* 80170BB0  2C 1C 00 40 */	cmpwi r28, 0x40
/* 80170BB4  40 82 00 2C */	bne lbl_80170BE0
/* 80170BB8  38 61 01 14 */	addi r3, r1, 0x114
/* 80170BBC  7F E4 FB 78 */	mr r4, r31
/* 80170BC0  7F C5 F3 78 */	mr r5, r30
/* 80170BC4  4B F2 6B 75 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80170BC8  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80170BCC  38 81 01 14 */	addi r4, r1, 0x114
/* 80170BD0  4B F1 DC C5 */	bl U__7cSGlobeFRC7cSAngle
/* 80170BD4  38 61 01 14 */	addi r3, r1, 0x114
/* 80170BD8  38 80 FF FF */	li r4, -1
/* 80170BDC  4B EB F9 35 */	bl __dt__7cSAngleFv
lbl_80170BE0:
/* 80170BE0  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80170BE4  C0 22 9E 4C */	lfs f1, lit_12282(r2)
/* 80170BE8  48 01 1E 65 */	bl R__7cSGlobeFf
/* 80170BEC  38 61 01 10 */	addi r3, r1, 0x110
/* 80170BF0  C0 22 9E 30 */	lfs f1, lit_12275(r2)
/* 80170BF4  48 10 03 D5 */	bl __ct__7cSAngleFf
/* 80170BF8  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80170BFC  38 81 01 10 */	addi r4, r1, 0x110
/* 80170C00  4B F1 EE 59 */	bl V__7cSGlobeFRC7cSAngle
/* 80170C04  38 61 01 10 */	addi r3, r1, 0x110
/* 80170C08  38 80 FF FF */	li r4, -1
/* 80170C0C  4B EB F9 05 */	bl __dt__7cSAngleFv
/* 80170C10  C0 21 13 A4 */	lfs f1, 0x13a4(r1)
/* 80170C14  C0 02 9E 00 */	lfs f0, lit_11171(r2)
/* 80170C18  EC 21 00 28 */	fsubs f1, f1, f0
/* 80170C1C  C0 01 13 8C */	lfs f0, 0x138c(r1)
/* 80170C20  EC 01 00 28 */	fsubs f0, f1, f0
/* 80170C24  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 80170C28  38 00 00 01 */	li r0, 1
/* 80170C2C  98 1F 01 58 */	stb r0, 0x158(r31)
/* 80170C30  C0 21 13 8C */	lfs f1, 0x138c(r1)
/* 80170C34  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 80170C38  EC 01 00 2A */	fadds f0, f1, f0
/* 80170C3C  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 80170C40  38 61 0D D0 */	addi r3, r1, 0xdd0
/* 80170C44  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80170C48  48 10 0E 6D */	bl Xyz__7cSGlobeCFv
/* 80170C4C  38 61 0D C4 */	addi r3, r1, 0xdc4
/* 80170C50  38 9F 00 64 */	addi r4, r31, 0x64
/* 80170C54  38 A1 0D D0 */	addi r5, r1, 0xdd0
/* 80170C58  48 0F 5E 8D */	bl __pl__4cXyzCFRC3Vec
/* 80170C5C  38 7F 00 70 */	addi r3, r31, 0x70
/* 80170C60  38 81 0D C4 */	addi r4, r1, 0xdc4
/* 80170C64  4B F2 6B 75 */	bl __as__4cXyzFRC4cXyz
/* 80170C68  38 61 0D C4 */	addi r3, r1, 0xdc4
/* 80170C6C  38 80 FF FF */	li r4, -1
/* 80170C70  4B E9 85 15 */	bl __dt__4cXyzFv
/* 80170C74  38 61 0D D0 */	addi r3, r1, 0xdd0
/* 80170C78  38 80 FF FF */	li r4, -1
/* 80170C7C  4B E9 85 09 */	bl __dt__4cXyzFv
/* 80170C80  C0 02 9C B8 */	lfs f0, lit_5662(r2)
/* 80170C84  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80170C88  38 61 13 58 */	addi r3, r1, 0x1358
/* 80170C8C  38 80 FF FF */	li r4, -1
/* 80170C90  4B E9 84 F5 */	bl __dt__4cXyzFv
/* 80170C94  38 61 13 64 */	addi r3, r1, 0x1364
/* 80170C98  38 80 FF FF */	li r4, -1
/* 80170C9C  4B E9 84 E9 */	bl __dt__4cXyzFv
lbl_80170CA0:
/* 80170CA0  7F 23 CB 78 */	mr r3, r25
/* 80170CA4  4B FE ED A9 */	bl func_8015FA4C
/* 80170CA8  48 00 3D 54 */	b lbl_801749FC
/* 80170CAC  2C 1C 00 10 */	cmpwi r28, 0x10
/* 80170CB0  41 82 00 EC */	beq lbl_80170D9C
/* 80170CB4  7F B6 EB 78 */	mr r22, r29
/* 80170CB8  38 61 0D B8 */	addi r3, r1, 0xdb8
/* 80170CBC  7F E4 FB 78 */	mr r4, r31
/* 80170CC0  7F A5 EB 78 */	mr r5, r29
/* 80170CC4  48 00 41 71 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80170CC8  38 61 13 AC */	addi r3, r1, 0x13ac
/* 80170CCC  38 81 0D B8 */	addi r4, r1, 0xdb8
/* 80170CD0  4B F2 6B 09 */	bl __as__4cXyzFRC4cXyz
/* 80170CD4  38 61 0D B8 */	addi r3, r1, 0xdb8
/* 80170CD8  38 80 FF FF */	li r4, -1
/* 80170CDC  4B E9 84 A9 */	bl __dt__4cXyzFv
/* 80170CE0  38 61 0D AC */	addi r3, r1, 0xdac
/* 80170CE4  7F E4 FB 78 */	mr r4, r31
/* 80170CE8  7F C5 F3 78 */	mr r5, r30
/* 80170CEC  48 00 41 49 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80170CF0  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80170CF4  38 81 0D AC */	addi r4, r1, 0xdac
/* 80170CF8  4B F2 6A E1 */	bl __as__4cXyzFRC4cXyz
/* 80170CFC  38 61 0D AC */	addi r3, r1, 0xdac
/* 80170D00  38 80 FF FF */	li r4, -1
/* 80170D04  4B E9 84 81 */	bl __dt__4cXyzFv
/* 80170D08  38 61 0D A0 */	addi r3, r1, 0xda0
/* 80170D0C  7F E4 FB 78 */	mr r4, r31
/* 80170D10  7F A5 EB 78 */	mr r5, r29
/* 80170D14  48 00 41 05 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80170D18  38 61 13 94 */	addi r3, r1, 0x1394
/* 80170D1C  38 81 0D A0 */	addi r4, r1, 0xda0
/* 80170D20  4B F2 6A B9 */	bl __as__4cXyzFRC4cXyz
/* 80170D24  38 61 0D A0 */	addi r3, r1, 0xda0
/* 80170D28  38 80 FF FF */	li r4, -1
/* 80170D2C  4B E9 84 59 */	bl __dt__4cXyzFv
/* 80170D30  38 61 0D 94 */	addi r3, r1, 0xd94
/* 80170D34  7F E4 FB 78 */	mr r4, r31
/* 80170D38  7F C5 F3 78 */	mr r5, r30
/* 80170D3C  48 00 40 DD */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80170D40  38 61 13 88 */	addi r3, r1, 0x1388
/* 80170D44  38 81 0D 94 */	addi r4, r1, 0xd94
/* 80170D48  4B F2 6A 91 */	bl __as__4cXyzFRC4cXyz
/* 80170D4C  38 61 0D 94 */	addi r3, r1, 0xd94
/* 80170D50  38 80 FF FF */	li r4, -1
/* 80170D54  4B E9 84 31 */	bl __dt__4cXyzFv
/* 80170D58  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80170D5C  41 82 00 28 */	beq lbl_80170D84
/* 80170D60  38 61 0D 88 */	addi r3, r1, 0xd88
/* 80170D64  7F E4 FB 78 */	mr r4, r31
/* 80170D68  7F C5 F3 78 */	mr r5, r30
/* 80170D6C  4B F2 69 B1 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80170D70  C0 01 0D 8C */	lfs f0, 0xd8c(r1)
/* 80170D74  D0 01 13 A4 */	stfs f0, 0x13a4(r1)
/* 80170D78  38 61 0D 88 */	addi r3, r1, 0xd88
/* 80170D7C  38 80 FF FF */	li r4, -1
/* 80170D80  4B E9 84 05 */	bl __dt__4cXyzFv
lbl_80170D84:
/* 80170D84  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80170D88  41 82 00 F8 */	beq lbl_80170E80
/* 80170D8C  38 61 13 94 */	addi r3, r1, 0x1394
/* 80170D90  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80170D94  4B F1 DB 71 */	bl __apl__4cXyzFRC3Vec
/* 80170D98  48 00 00 E8 */	b lbl_80170E80
lbl_80170D9C:
/* 80170D9C  7F D6 F3 78 */	mr r22, r30
/* 80170DA0  38 61 0D 7C */	addi r3, r1, 0xd7c
/* 80170DA4  7F E4 FB 78 */	mr r4, r31
/* 80170DA8  7F C5 F3 78 */	mr r5, r30
/* 80170DAC  48 00 40 89 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80170DB0  38 61 13 AC */	addi r3, r1, 0x13ac
/* 80170DB4  38 81 0D 7C */	addi r4, r1, 0xd7c
/* 80170DB8  4B F2 6A 21 */	bl __as__4cXyzFRC4cXyz
/* 80170DBC  38 61 0D 7C */	addi r3, r1, 0xd7c
/* 80170DC0  38 80 FF FF */	li r4, -1
/* 80170DC4  4B E9 83 C1 */	bl __dt__4cXyzFv
/* 80170DC8  38 61 0D 70 */	addi r3, r1, 0xd70
/* 80170DCC  7F E4 FB 78 */	mr r4, r31
/* 80170DD0  7F A5 EB 78 */	mr r5, r29
/* 80170DD4  48 00 40 61 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80170DD8  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80170DDC  38 81 0D 70 */	addi r4, r1, 0xd70
/* 80170DE0  4B F2 69 F9 */	bl __as__4cXyzFRC4cXyz
/* 80170DE4  38 61 0D 70 */	addi r3, r1, 0xd70
/* 80170DE8  38 80 FF FF */	li r4, -1
/* 80170DEC  4B E9 83 99 */	bl __dt__4cXyzFv
/* 80170DF0  38 61 0D 64 */	addi r3, r1, 0xd64
/* 80170DF4  7F E4 FB 78 */	mr r4, r31
/* 80170DF8  7F C5 F3 78 */	mr r5, r30
/* 80170DFC  48 00 40 1D */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80170E00  38 61 13 94 */	addi r3, r1, 0x1394
/* 80170E04  38 81 0D 64 */	addi r4, r1, 0xd64
/* 80170E08  4B F2 69 D1 */	bl __as__4cXyzFRC4cXyz
/* 80170E0C  38 61 0D 64 */	addi r3, r1, 0xd64
/* 80170E10  38 80 FF FF */	li r4, -1
/* 80170E14  4B E9 83 71 */	bl __dt__4cXyzFv
/* 80170E18  38 61 0D 58 */	addi r3, r1, 0xd58
/* 80170E1C  7F E4 FB 78 */	mr r4, r31
/* 80170E20  7F A5 EB 78 */	mr r5, r29
/* 80170E24  48 00 3F F5 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80170E28  38 61 13 88 */	addi r3, r1, 0x1388
/* 80170E2C  38 81 0D 58 */	addi r4, r1, 0xd58
/* 80170E30  4B F2 69 A9 */	bl __as__4cXyzFRC4cXyz
/* 80170E34  38 61 0D 58 */	addi r3, r1, 0xd58
/* 80170E38  38 80 FF FF */	li r4, -1
/* 80170E3C  4B E9 83 49 */	bl __dt__4cXyzFv
/* 80170E40  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80170E44  41 82 00 28 */	beq lbl_80170E6C
/* 80170E48  38 61 0D 4C */	addi r3, r1, 0xd4c
/* 80170E4C  7F E4 FB 78 */	mr r4, r31
/* 80170E50  7F C5 F3 78 */	mr r5, r30
/* 80170E54  4B F2 68 C9 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80170E58  C0 01 0D 50 */	lfs f0, 0xd50(r1)
/* 80170E5C  D0 01 13 B0 */	stfs f0, 0x13b0(r1)
/* 80170E60  38 61 0D 4C */	addi r3, r1, 0xd4c
/* 80170E64  38 80 FF FF */	li r4, -1
/* 80170E68  4B E9 83 1D */	bl __dt__4cXyzFv
lbl_80170E6C:
/* 80170E6C  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80170E70  41 82 00 10 */	beq lbl_80170E80
/* 80170E74  38 61 13 88 */	addi r3, r1, 0x1388
/* 80170E78  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80170E7C  4B F1 DA 89 */	bl __apl__4cXyzFRC3Vec
lbl_80170E80:
/* 80170E80  38 7F 00 64 */	addi r3, r31, 0x64
/* 80170E84  38 81 13 88 */	addi r4, r1, 0x1388
/* 80170E88  4B F2 69 51 */	bl __as__4cXyzFRC4cXyz
/* 80170E8C  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 80170E90  2C 00 00 00 */	cmpwi r0, 0
/* 80170E94  40 82 00 C8 */	bne lbl_80170F5C
/* 80170E98  38 61 13 4C */	addi r3, r1, 0x134c
/* 80170E9C  38 81 13 94 */	addi r4, r1, 0x1394
/* 80170EA0  4B F2 69 55 */	bl __ct__4cXyzFRC4cXyz
/* 80170EA4  C0 01 13 B0 */	lfs f0, 0x13b0(r1)
/* 80170EA8  D0 01 13 50 */	stfs f0, 0x1350(r1)
/* 80170EAC  38 61 13 40 */	addi r3, r1, 0x1340
/* 80170EB0  38 81 13 88 */	addi r4, r1, 0x1388
/* 80170EB4  4B F2 69 41 */	bl __ct__4cXyzFRC4cXyz
/* 80170EB8  C0 01 13 A4 */	lfs f0, 0x13a4(r1)
/* 80170EBC  D0 01 13 44 */	stfs f0, 0x1344(r1)
/* 80170EC0  38 61 0D 40 */	addi r3, r1, 0xd40
/* 80170EC4  38 81 13 4C */	addi r4, r1, 0x134c
/* 80170EC8  38 A1 13 40 */	addi r5, r1, 0x1340
/* 80170ECC  48 0F 5C 69 */	bl __mi__4cXyzCFRC3Vec
/* 80170ED0  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80170ED4  38 81 0D 40 */	addi r4, r1, 0xd40
/* 80170ED8  48 10 0B 99 */	bl Val__7cSGlobeFRC4cXyz
/* 80170EDC  38 61 0D 40 */	addi r3, r1, 0xd40
/* 80170EE0  38 80 FF FF */	li r4, -1
/* 80170EE4  4B E9 82 A1 */	bl __dt__4cXyzFv
/* 80170EE8  2C 1C 00 3D */	cmpwi r28, 0x3d
/* 80170EEC  40 82 00 2C */	bne lbl_80170F18
/* 80170EF0  38 61 01 0C */	addi r3, r1, 0x10c
/* 80170EF4  7F E4 FB 78 */	mr r4, r31
/* 80170EF8  7F C5 F3 78 */	mr r5, r30
/* 80170EFC  4B F2 68 3D */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80170F00  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80170F04  38 81 01 0C */	addi r4, r1, 0x10c
/* 80170F08  4B F1 D9 8D */	bl U__7cSGlobeFRC7cSAngle
/* 80170F0C  38 61 01 0C */	addi r3, r1, 0x10c
/* 80170F10  38 80 FF FF */	li r4, -1
/* 80170F14  4B EB F5 FD */	bl __dt__7cSAngleFv
lbl_80170F18:
/* 80170F18  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80170F1C  C0 22 9E 50 */	lfs f1, lit_12283(r2)
/* 80170F20  48 01 1B 2D */	bl R__7cSGlobeFf
/* 80170F24  C0 21 13 A4 */	lfs f1, 0x13a4(r1)
/* 80170F28  C0 02 9C E4 */	lfs f0, lit_6629(r2)
/* 80170F2C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80170F30  C0 01 13 8C */	lfs f0, 0x138c(r1)
/* 80170F34  EC 01 00 28 */	fsubs f0, f1, f0
/* 80170F38  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 80170F3C  38 00 00 01 */	li r0, 1
/* 80170F40  98 1F 01 58 */	stb r0, 0x158(r31)
/* 80170F44  38 61 13 40 */	addi r3, r1, 0x1340
/* 80170F48  38 80 FF FF */	li r4, -1
/* 80170F4C  4B E9 82 39 */	bl __dt__4cXyzFv
/* 80170F50  38 61 13 4C */	addi r3, r1, 0x134c
/* 80170F54  38 80 FF FF */	li r4, -1
/* 80170F58  4B E9 82 2D */	bl __dt__4cXyzFv
lbl_80170F5C:
/* 80170F5C  C0 21 13 8C */	lfs f1, 0x138c(r1)
/* 80170F60  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 80170F64  EC 01 00 2A */	fadds f0, f1, f0
/* 80170F68  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 80170F6C  38 61 0D 34 */	addi r3, r1, 0xd34
/* 80170F70  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80170F74  48 10 0B 41 */	bl Xyz__7cSGlobeCFv
/* 80170F78  38 61 0D 28 */	addi r3, r1, 0xd28
/* 80170F7C  38 9F 00 64 */	addi r4, r31, 0x64
/* 80170F80  38 A1 0D 34 */	addi r5, r1, 0xd34
/* 80170F84  48 0F 5B 61 */	bl __pl__4cXyzCFRC3Vec
/* 80170F88  38 7F 00 70 */	addi r3, r31, 0x70
/* 80170F8C  38 81 0D 28 */	addi r4, r1, 0xd28
/* 80170F90  4B F2 68 49 */	bl __as__4cXyzFRC4cXyz
/* 80170F94  38 61 0D 28 */	addi r3, r1, 0xd28
/* 80170F98  38 80 FF FF */	li r4, -1
/* 80170F9C  4B E9 81 E9 */	bl __dt__4cXyzFv
/* 80170FA0  38 61 0D 34 */	addi r3, r1, 0xd34
/* 80170FA4  38 80 FF FF */	li r4, -1
/* 80170FA8  4B E9 81 DD */	bl __dt__4cXyzFv
/* 80170FAC  C0 02 9D 88 */	lfs f0, lit_10557(r2)
/* 80170FB0  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80170FB4  7E C3 B3 78 */	mr r3, r22
/* 80170FB8  4B FE EA 95 */	bl func_8015FA4C
/* 80170FBC  48 00 3A 40 */	b lbl_801749FC
/* 80170FC0  2C 1C 00 16 */	cmpwi r28, 0x16
/* 80170FC4  41 82 00 EC */	beq lbl_801710B0
/* 80170FC8  7F B6 EB 78 */	mr r22, r29
/* 80170FCC  38 61 0D 1C */	addi r3, r1, 0xd1c
/* 80170FD0  7F E4 FB 78 */	mr r4, r31
/* 80170FD4  7F A5 EB 78 */	mr r5, r29
/* 80170FD8  48 00 3E 5D */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80170FDC  38 61 13 AC */	addi r3, r1, 0x13ac
/* 80170FE0  38 81 0D 1C */	addi r4, r1, 0xd1c
/* 80170FE4  4B F2 67 F5 */	bl __as__4cXyzFRC4cXyz
/* 80170FE8  38 61 0D 1C */	addi r3, r1, 0xd1c
/* 80170FEC  38 80 FF FF */	li r4, -1
/* 80170FF0  4B E9 81 95 */	bl __dt__4cXyzFv
/* 80170FF4  38 61 0D 10 */	addi r3, r1, 0xd10
/* 80170FF8  7F E4 FB 78 */	mr r4, r31
/* 80170FFC  7F C5 F3 78 */	mr r5, r30
/* 80171000  48 00 3E 35 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80171004  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80171008  38 81 0D 10 */	addi r4, r1, 0xd10
/* 8017100C  4B F2 67 CD */	bl __as__4cXyzFRC4cXyz
/* 80171010  38 61 0D 10 */	addi r3, r1, 0xd10
/* 80171014  38 80 FF FF */	li r4, -1
/* 80171018  4B E9 81 6D */	bl __dt__4cXyzFv
/* 8017101C  38 61 0D 04 */	addi r3, r1, 0xd04
/* 80171020  7F E4 FB 78 */	mr r4, r31
/* 80171024  7F A5 EB 78 */	mr r5, r29
/* 80171028  48 00 3D F1 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 8017102C  38 61 13 94 */	addi r3, r1, 0x1394
/* 80171030  38 81 0D 04 */	addi r4, r1, 0xd04
/* 80171034  4B F2 67 A5 */	bl __as__4cXyzFRC4cXyz
/* 80171038  38 61 0D 04 */	addi r3, r1, 0xd04
/* 8017103C  38 80 FF FF */	li r4, -1
/* 80171040  4B E9 81 45 */	bl __dt__4cXyzFv
/* 80171044  38 61 0C F8 */	addi r3, r1, 0xcf8
/* 80171048  7F E4 FB 78 */	mr r4, r31
/* 8017104C  7F C5 F3 78 */	mr r5, r30
/* 80171050  48 00 3D C9 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80171054  38 61 13 88 */	addi r3, r1, 0x1388
/* 80171058  38 81 0C F8 */	addi r4, r1, 0xcf8
/* 8017105C  4B F2 67 7D */	bl __as__4cXyzFRC4cXyz
/* 80171060  38 61 0C F8 */	addi r3, r1, 0xcf8
/* 80171064  38 80 FF FF */	li r4, -1
/* 80171068  4B E9 81 1D */	bl __dt__4cXyzFv
/* 8017106C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80171070  41 82 00 28 */	beq lbl_80171098
/* 80171074  38 61 0C EC */	addi r3, r1, 0xcec
/* 80171078  7F E4 FB 78 */	mr r4, r31
/* 8017107C  7F C5 F3 78 */	mr r5, r30
/* 80171080  4B F2 66 9D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80171084  C0 01 0C F0 */	lfs f0, 0xcf0(r1)
/* 80171088  D0 01 13 A4 */	stfs f0, 0x13a4(r1)
/* 8017108C  38 61 0C EC */	addi r3, r1, 0xcec
/* 80171090  38 80 FF FF */	li r4, -1
/* 80171094  4B E9 80 F1 */	bl __dt__4cXyzFv
lbl_80171098:
/* 80171098  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 8017109C  41 82 00 F8 */	beq lbl_80171194
/* 801710A0  38 61 13 94 */	addi r3, r1, 0x1394
/* 801710A4  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 801710A8  4B F1 D8 5D */	bl __apl__4cXyzFRC3Vec
/* 801710AC  48 00 00 E8 */	b lbl_80171194
lbl_801710B0:
/* 801710B0  7F D6 F3 78 */	mr r22, r30
/* 801710B4  38 61 0C E0 */	addi r3, r1, 0xce0
/* 801710B8  7F E4 FB 78 */	mr r4, r31
/* 801710BC  7F C5 F3 78 */	mr r5, r30
/* 801710C0  48 00 3D 75 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 801710C4  38 61 13 AC */	addi r3, r1, 0x13ac
/* 801710C8  38 81 0C E0 */	addi r4, r1, 0xce0
/* 801710CC  4B F2 67 0D */	bl __as__4cXyzFRC4cXyz
/* 801710D0  38 61 0C E0 */	addi r3, r1, 0xce0
/* 801710D4  38 80 FF FF */	li r4, -1
/* 801710D8  4B E9 80 AD */	bl __dt__4cXyzFv
/* 801710DC  38 61 0C D4 */	addi r3, r1, 0xcd4
/* 801710E0  7F E4 FB 78 */	mr r4, r31
/* 801710E4  7F A5 EB 78 */	mr r5, r29
/* 801710E8  48 00 3D 4D */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 801710EC  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 801710F0  38 81 0C D4 */	addi r4, r1, 0xcd4
/* 801710F4  4B F2 66 E5 */	bl __as__4cXyzFRC4cXyz
/* 801710F8  38 61 0C D4 */	addi r3, r1, 0xcd4
/* 801710FC  38 80 FF FF */	li r4, -1
/* 80171100  4B E9 80 85 */	bl __dt__4cXyzFv
/* 80171104  38 61 0C C8 */	addi r3, r1, 0xcc8
/* 80171108  7F E4 FB 78 */	mr r4, r31
/* 8017110C  7F C5 F3 78 */	mr r5, r30
/* 80171110  48 00 3D 09 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80171114  38 61 13 94 */	addi r3, r1, 0x1394
/* 80171118  38 81 0C C8 */	addi r4, r1, 0xcc8
/* 8017111C  4B F2 66 BD */	bl __as__4cXyzFRC4cXyz
/* 80171120  38 61 0C C8 */	addi r3, r1, 0xcc8
/* 80171124  38 80 FF FF */	li r4, -1
/* 80171128  4B E9 80 5D */	bl __dt__4cXyzFv
/* 8017112C  38 61 0C BC */	addi r3, r1, 0xcbc
/* 80171130  7F E4 FB 78 */	mr r4, r31
/* 80171134  7F A5 EB 78 */	mr r5, r29
/* 80171138  48 00 3C E1 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 8017113C  38 61 13 88 */	addi r3, r1, 0x1388
/* 80171140  38 81 0C BC */	addi r4, r1, 0xcbc
/* 80171144  4B F2 66 95 */	bl __as__4cXyzFRC4cXyz
/* 80171148  38 61 0C BC */	addi r3, r1, 0xcbc
/* 8017114C  38 80 FF FF */	li r4, -1
/* 80171150  4B E9 80 35 */	bl __dt__4cXyzFv
/* 80171154  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80171158  41 82 00 28 */	beq lbl_80171180
/* 8017115C  38 61 0C B0 */	addi r3, r1, 0xcb0
/* 80171160  7F E4 FB 78 */	mr r4, r31
/* 80171164  7F C5 F3 78 */	mr r5, r30
/* 80171168  4B F2 65 B5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017116C  C0 01 0C B4 */	lfs f0, 0xcb4(r1)
/* 80171170  D0 01 13 B0 */	stfs f0, 0x13b0(r1)
/* 80171174  38 61 0C B0 */	addi r3, r1, 0xcb0
/* 80171178  38 80 FF FF */	li r4, -1
/* 8017117C  4B E9 80 09 */	bl __dt__4cXyzFv
lbl_80171180:
/* 80171180  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80171184  41 82 00 10 */	beq lbl_80171194
/* 80171188  38 61 13 88 */	addi r3, r1, 0x1388
/* 8017118C  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80171190  4B F1 D7 75 */	bl __apl__4cXyzFRC3Vec
lbl_80171194:
/* 80171194  38 7F 00 64 */	addi r3, r31, 0x64
/* 80171198  38 81 13 88 */	addi r4, r1, 0x1388
/* 8017119C  4B F2 66 3D */	bl __as__4cXyzFRC4cXyz
/* 801711A0  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 801711A4  2C 00 00 00 */	cmpwi r0, 0
/* 801711A8  40 82 00 C8 */	bne lbl_80171270
/* 801711AC  38 61 13 34 */	addi r3, r1, 0x1334
/* 801711B0  38 81 13 94 */	addi r4, r1, 0x1394
/* 801711B4  4B F2 66 41 */	bl __ct__4cXyzFRC4cXyz
/* 801711B8  C0 01 13 B0 */	lfs f0, 0x13b0(r1)
/* 801711BC  D0 01 13 38 */	stfs f0, 0x1338(r1)
/* 801711C0  38 61 13 28 */	addi r3, r1, 0x1328
/* 801711C4  38 81 13 A0 */	addi r4, r1, 0x13a0
/* 801711C8  4B F2 66 2D */	bl __ct__4cXyzFRC4cXyz
/* 801711CC  C0 01 13 A4 */	lfs f0, 0x13a4(r1)
/* 801711D0  D0 01 13 2C */	stfs f0, 0x132c(r1)
/* 801711D4  38 61 0C A4 */	addi r3, r1, 0xca4
/* 801711D8  38 81 13 34 */	addi r4, r1, 0x1334
/* 801711DC  38 A1 13 28 */	addi r5, r1, 0x1328
/* 801711E0  48 0F 59 55 */	bl __mi__4cXyzCFRC3Vec
/* 801711E4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801711E8  38 81 0C A4 */	addi r4, r1, 0xca4
/* 801711EC  48 10 08 85 */	bl Val__7cSGlobeFRC4cXyz
/* 801711F0  38 61 0C A4 */	addi r3, r1, 0xca4
/* 801711F4  38 80 FF FF */	li r4, -1
/* 801711F8  4B E9 7F 8D */	bl __dt__4cXyzFv
/* 801711FC  2C 1C 00 3F */	cmpwi r28, 0x3f
/* 80171200  40 82 00 2C */	bne lbl_8017122C
/* 80171204  38 61 01 08 */	addi r3, r1, 0x108
/* 80171208  7F E4 FB 78 */	mr r4, r31
/* 8017120C  7F C5 F3 78 */	mr r5, r30
/* 80171210  4B F2 65 29 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80171214  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80171218  38 81 01 08 */	addi r4, r1, 0x108
/* 8017121C  4B F1 D6 79 */	bl U__7cSGlobeFRC7cSAngle
/* 80171220  38 61 01 08 */	addi r3, r1, 0x108
/* 80171224  38 80 FF FF */	li r4, -1
/* 80171228  4B EB F2 E9 */	bl __dt__7cSAngleFv
lbl_8017122C:
/* 8017122C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80171230  C0 22 9E 4C */	lfs f1, lit_12282(r2)
/* 80171234  48 01 18 19 */	bl R__7cSGlobeFf
/* 80171238  C0 21 13 A4 */	lfs f1, 0x13a4(r1)
/* 8017123C  C0 02 9D CC */	lfs f0, lit_10574(r2)
/* 80171240  EC 21 00 28 */	fsubs f1, f1, f0
/* 80171244  C0 01 13 8C */	lfs f0, 0x138c(r1)
/* 80171248  EC 01 00 28 */	fsubs f0, f1, f0
/* 8017124C  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 80171250  38 00 00 01 */	li r0, 1
/* 80171254  98 1F 01 58 */	stb r0, 0x158(r31)
/* 80171258  38 61 13 28 */	addi r3, r1, 0x1328
/* 8017125C  38 80 FF FF */	li r4, -1
/* 80171260  4B E9 7F 25 */	bl __dt__4cXyzFv
/* 80171264  38 61 13 34 */	addi r3, r1, 0x1334
/* 80171268  38 80 FF FF */	li r4, -1
/* 8017126C  4B E9 7F 19 */	bl __dt__4cXyzFv
lbl_80171270:
/* 80171270  C0 21 13 8C */	lfs f1, 0x138c(r1)
/* 80171274  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 80171278  EC 01 00 2A */	fadds f0, f1, f0
/* 8017127C  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 80171280  38 61 0C 98 */	addi r3, r1, 0xc98
/* 80171284  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80171288  48 10 08 2D */	bl Xyz__7cSGlobeCFv
/* 8017128C  38 61 0C 8C */	addi r3, r1, 0xc8c
/* 80171290  38 9F 00 64 */	addi r4, r31, 0x64
/* 80171294  38 A1 0C 98 */	addi r5, r1, 0xc98
/* 80171298  48 0F 58 4D */	bl __pl__4cXyzCFRC3Vec
/* 8017129C  38 7F 00 70 */	addi r3, r31, 0x70
/* 801712A0  38 81 0C 8C */	addi r4, r1, 0xc8c
/* 801712A4  4B F2 65 35 */	bl __as__4cXyzFRC4cXyz
/* 801712A8  38 61 0C 8C */	addi r3, r1, 0xc8c
/* 801712AC  38 80 FF FF */	li r4, -1
/* 801712B0  4B E9 7E D5 */	bl __dt__4cXyzFv
/* 801712B4  38 61 0C 98 */	addi r3, r1, 0xc98
/* 801712B8  38 80 FF FF */	li r4, -1
/* 801712BC  4B E9 7E C9 */	bl __dt__4cXyzFv
/* 801712C0  C0 02 9D A8 */	lfs f0, lit_10565(r2)
/* 801712C4  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 801712C8  7E C3 B3 78 */	mr r3, r22
/* 801712CC  4B FE E7 81 */	bl func_8015FA4C
/* 801712D0  48 00 37 2C */	b lbl_801749FC
/* 801712D4  2C 1C 00 29 */	cmpwi r28, 0x29
/* 801712D8  41 82 00 F0 */	beq lbl_801713C8
/* 801712DC  7F D6 F3 78 */	mr r22, r30
/* 801712E0  7F B9 EB 78 */	mr r25, r29
/* 801712E4  38 61 0C 80 */	addi r3, r1, 0xc80
/* 801712E8  7F E4 FB 78 */	mr r4, r31
/* 801712EC  7F A5 EB 78 */	mr r5, r29
/* 801712F0  48 00 3B 45 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 801712F4  38 61 13 AC */	addi r3, r1, 0x13ac
/* 801712F8  38 81 0C 80 */	addi r4, r1, 0xc80
/* 801712FC  4B F2 64 DD */	bl __as__4cXyzFRC4cXyz
/* 80171300  38 61 0C 80 */	addi r3, r1, 0xc80
/* 80171304  38 80 FF FF */	li r4, -1
/* 80171308  4B E9 7E 7D */	bl __dt__4cXyzFv
/* 8017130C  38 61 0C 74 */	addi r3, r1, 0xc74
/* 80171310  7F E4 FB 78 */	mr r4, r31
/* 80171314  7F C5 F3 78 */	mr r5, r30
/* 80171318  48 00 3B 1D */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 8017131C  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80171320  38 81 0C 74 */	addi r4, r1, 0xc74
/* 80171324  4B F2 64 B5 */	bl __as__4cXyzFRC4cXyz
/* 80171328  38 61 0C 74 */	addi r3, r1, 0xc74
/* 8017132C  38 80 FF FF */	li r4, -1
/* 80171330  4B E9 7E 55 */	bl __dt__4cXyzFv
/* 80171334  38 61 0C 68 */	addi r3, r1, 0xc68
/* 80171338  7F E4 FB 78 */	mr r4, r31
/* 8017133C  7F A5 EB 78 */	mr r5, r29
/* 80171340  48 00 3A D9 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80171344  38 61 13 94 */	addi r3, r1, 0x1394
/* 80171348  38 81 0C 68 */	addi r4, r1, 0xc68
/* 8017134C  4B F2 64 8D */	bl __as__4cXyzFRC4cXyz
/* 80171350  38 61 0C 68 */	addi r3, r1, 0xc68
/* 80171354  38 80 FF FF */	li r4, -1
/* 80171358  4B E9 7E 2D */	bl __dt__4cXyzFv
/* 8017135C  38 61 0C 5C */	addi r3, r1, 0xc5c
/* 80171360  7F E4 FB 78 */	mr r4, r31
/* 80171364  7F C5 F3 78 */	mr r5, r30
/* 80171368  48 00 3A B1 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 8017136C  38 61 13 88 */	addi r3, r1, 0x1388
/* 80171370  38 81 0C 5C */	addi r4, r1, 0xc5c
/* 80171374  4B F2 64 65 */	bl __as__4cXyzFRC4cXyz
/* 80171378  38 61 0C 5C */	addi r3, r1, 0xc5c
/* 8017137C  38 80 FF FF */	li r4, -1
/* 80171380  4B E9 7E 05 */	bl __dt__4cXyzFv
/* 80171384  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80171388  41 82 00 28 */	beq lbl_801713B0
/* 8017138C  38 61 0C 50 */	addi r3, r1, 0xc50
/* 80171390  7F E4 FB 78 */	mr r4, r31
/* 80171394  7F C5 F3 78 */	mr r5, r30
/* 80171398  4B F2 63 85 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017139C  C0 01 0C 54 */	lfs f0, 0xc54(r1)
/* 801713A0  D0 01 13 A4 */	stfs f0, 0x13a4(r1)
/* 801713A4  38 61 0C 50 */	addi r3, r1, 0xc50
/* 801713A8  38 80 FF FF */	li r4, -1
/* 801713AC  4B E9 7D D9 */	bl __dt__4cXyzFv
lbl_801713B0:
/* 801713B0  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 801713B4  41 82 00 FC */	beq lbl_801714B0
/* 801713B8  38 61 13 94 */	addi r3, r1, 0x1394
/* 801713BC  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 801713C0  4B F1 D5 45 */	bl __apl__4cXyzFRC3Vec
/* 801713C4  48 00 00 EC */	b lbl_801714B0
lbl_801713C8:
/* 801713C8  7F B6 EB 78 */	mr r22, r29
/* 801713CC  7F D9 F3 78 */	mr r25, r30
/* 801713D0  38 61 0C 44 */	addi r3, r1, 0xc44
/* 801713D4  7F E4 FB 78 */	mr r4, r31
/* 801713D8  7F C5 F3 78 */	mr r5, r30
/* 801713DC  48 00 3A 59 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 801713E0  38 61 13 AC */	addi r3, r1, 0x13ac
/* 801713E4  38 81 0C 44 */	addi r4, r1, 0xc44
/* 801713E8  4B F2 63 F1 */	bl __as__4cXyzFRC4cXyz
/* 801713EC  38 61 0C 44 */	addi r3, r1, 0xc44
/* 801713F0  38 80 FF FF */	li r4, -1
/* 801713F4  4B E9 7D 91 */	bl __dt__4cXyzFv
/* 801713F8  38 61 0C 38 */	addi r3, r1, 0xc38
/* 801713FC  7F E4 FB 78 */	mr r4, r31
/* 80171400  7F A5 EB 78 */	mr r5, r29
/* 80171404  48 00 3A 31 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80171408  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 8017140C  38 81 0C 38 */	addi r4, r1, 0xc38
/* 80171410  4B F2 63 C9 */	bl __as__4cXyzFRC4cXyz
/* 80171414  38 61 0C 38 */	addi r3, r1, 0xc38
/* 80171418  38 80 FF FF */	li r4, -1
/* 8017141C  4B E9 7D 69 */	bl __dt__4cXyzFv
/* 80171420  38 61 0C 2C */	addi r3, r1, 0xc2c
/* 80171424  7F E4 FB 78 */	mr r4, r31
/* 80171428  7F C5 F3 78 */	mr r5, r30
/* 8017142C  48 00 39 ED */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80171430  38 61 13 94 */	addi r3, r1, 0x1394
/* 80171434  38 81 0C 2C */	addi r4, r1, 0xc2c
/* 80171438  4B F2 63 A1 */	bl __as__4cXyzFRC4cXyz
/* 8017143C  38 61 0C 2C */	addi r3, r1, 0xc2c
/* 80171440  38 80 FF FF */	li r4, -1
/* 80171444  4B E9 7D 41 */	bl __dt__4cXyzFv
/* 80171448  38 61 0C 20 */	addi r3, r1, 0xc20
/* 8017144C  7F E4 FB 78 */	mr r4, r31
/* 80171450  7F A5 EB 78 */	mr r5, r29
/* 80171454  48 00 39 C5 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80171458  38 61 13 88 */	addi r3, r1, 0x1388
/* 8017145C  38 81 0C 20 */	addi r4, r1, 0xc20
/* 80171460  4B F2 63 79 */	bl __as__4cXyzFRC4cXyz
/* 80171464  38 61 0C 20 */	addi r3, r1, 0xc20
/* 80171468  38 80 FF FF */	li r4, -1
/* 8017146C  4B E9 7D 19 */	bl __dt__4cXyzFv
/* 80171470  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80171474  41 82 00 28 */	beq lbl_8017149C
/* 80171478  38 61 0C 14 */	addi r3, r1, 0xc14
/* 8017147C  7F E4 FB 78 */	mr r4, r31
/* 80171480  7F C5 F3 78 */	mr r5, r30
/* 80171484  4B F2 62 99 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80171488  C0 01 0C 18 */	lfs f0, 0xc18(r1)
/* 8017148C  D0 01 13 B0 */	stfs f0, 0x13b0(r1)
/* 80171490  38 61 0C 14 */	addi r3, r1, 0xc14
/* 80171494  38 80 FF FF */	li r4, -1
/* 80171498  4B E9 7C ED */	bl __dt__4cXyzFv
lbl_8017149C:
/* 8017149C  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 801714A0  41 82 00 10 */	beq lbl_801714B0
/* 801714A4  38 61 13 88 */	addi r3, r1, 0x1388
/* 801714A8  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 801714AC  4B F1 D4 59 */	bl __apl__4cXyzFRC3Vec
lbl_801714B0:
/* 801714B0  38 7F 04 78 */	addi r3, r31, 0x478
/* 801714B4  38 81 13 88 */	addi r4, r1, 0x1388
/* 801714B8  4B F2 63 21 */	bl __as__4cXyzFRC4cXyz
/* 801714BC  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 801714C0  2C 00 00 00 */	cmpwi r0, 0
/* 801714C4  40 82 00 C8 */	bne lbl_8017158C
/* 801714C8  38 61 13 1C */	addi r3, r1, 0x131c
/* 801714CC  38 81 13 94 */	addi r4, r1, 0x1394
/* 801714D0  4B F2 63 25 */	bl __ct__4cXyzFRC4cXyz
/* 801714D4  C0 01 13 B0 */	lfs f0, 0x13b0(r1)
/* 801714D8  D0 01 13 20 */	stfs f0, 0x1320(r1)
/* 801714DC  38 61 13 10 */	addi r3, r1, 0x1310
/* 801714E0  38 81 13 A0 */	addi r4, r1, 0x13a0
/* 801714E4  4B F2 63 11 */	bl __ct__4cXyzFRC4cXyz
/* 801714E8  C0 01 13 A4 */	lfs f0, 0x13a4(r1)
/* 801714EC  D0 01 13 14 */	stfs f0, 0x1314(r1)
/* 801714F0  38 61 0C 08 */	addi r3, r1, 0xc08
/* 801714F4  38 81 13 1C */	addi r4, r1, 0x131c
/* 801714F8  38 A1 13 10 */	addi r5, r1, 0x1310
/* 801714FC  48 0F 56 39 */	bl __mi__4cXyzCFRC3Vec
/* 80171500  38 7F 04 90 */	addi r3, r31, 0x490
/* 80171504  38 81 0C 08 */	addi r4, r1, 0xc08
/* 80171508  48 10 05 69 */	bl Val__7cSGlobeFRC4cXyz
/* 8017150C  38 61 0C 08 */	addi r3, r1, 0xc08
/* 80171510  38 80 FF FF */	li r4, -1
/* 80171514  4B E9 7C 71 */	bl __dt__4cXyzFv
/* 80171518  38 7F 04 90 */	addi r3, r31, 0x490
/* 8017151C  C0 22 9E 54 */	lfs f1, lit_12284(r2)
/* 80171520  48 01 15 2D */	bl R__7cSGlobeFf
/* 80171524  2C 1C 00 41 */	cmpwi r28, 0x41
/* 80171528  40 82 00 2C */	bne lbl_80171554
/* 8017152C  38 61 01 04 */	addi r3, r1, 0x104
/* 80171530  7F E4 FB 78 */	mr r4, r31
/* 80171534  7F C5 F3 78 */	mr r5, r30
/* 80171538  4B F2 62 01 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8017153C  38 7F 04 90 */	addi r3, r31, 0x490
/* 80171540  38 81 01 04 */	addi r4, r1, 0x104
/* 80171544  4B F1 D3 51 */	bl U__7cSGlobeFRC7cSAngle
/* 80171548  38 61 01 04 */	addi r3, r1, 0x104
/* 8017154C  38 80 FF FF */	li r4, -1
/* 80171550  4B EB EF C1 */	bl __dt__7cSAngleFv
lbl_80171554:
/* 80171554  C0 21 13 A4 */	lfs f1, 0x13a4(r1)
/* 80171558  C0 02 9D 34 */	lfs f0, lit_9398(r2)
/* 8017155C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80171560  C0 01 13 8C */	lfs f0, 0x138c(r1)
/* 80171564  EC 01 00 28 */	fsubs f0, f1, f0
/* 80171568  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 8017156C  38 00 00 01 */	li r0, 1
/* 80171570  98 1F 01 58 */	stb r0, 0x158(r31)
/* 80171574  38 61 13 10 */	addi r3, r1, 0x1310
/* 80171578  38 80 FF FF */	li r4, -1
/* 8017157C  4B E9 7C 09 */	bl __dt__4cXyzFv
/* 80171580  38 61 13 1C */	addi r3, r1, 0x131c
/* 80171584  38 80 FF FF */	li r4, -1
/* 80171588  4B E9 7B FD */	bl __dt__4cXyzFv
lbl_8017158C:
/* 8017158C  C0 21 13 8C */	lfs f1, 0x138c(r1)
/* 80171590  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 80171594  EC 01 00 2A */	fadds f0, f1, f0
/* 80171598  D0 1F 04 7C */	stfs f0, 0x47c(r31)
/* 8017159C  38 61 0B FC */	addi r3, r1, 0xbfc
/* 801715A0  38 9F 04 90 */	addi r4, r31, 0x490
/* 801715A4  48 10 05 11 */	bl Xyz__7cSGlobeCFv
/* 801715A8  38 61 0B F0 */	addi r3, r1, 0xbf0
/* 801715AC  38 9F 04 78 */	addi r4, r31, 0x478
/* 801715B0  38 A1 0B FC */	addi r5, r1, 0xbfc
/* 801715B4  48 0F 55 31 */	bl __pl__4cXyzCFRC3Vec
/* 801715B8  38 7F 04 84 */	addi r3, r31, 0x484
/* 801715BC  38 81 0B F0 */	addi r4, r1, 0xbf0
/* 801715C0  4B F2 62 19 */	bl __as__4cXyzFRC4cXyz
/* 801715C4  38 61 0B F0 */	addi r3, r1, 0xbf0
/* 801715C8  38 80 FF FF */	li r4, -1
/* 801715CC  4B E9 7B B9 */	bl __dt__4cXyzFv
/* 801715D0  38 61 0B FC */	addi r3, r1, 0xbfc
/* 801715D4  38 80 FF FF */	li r4, -1
/* 801715D8  4B E9 7B AD */	bl __dt__4cXyzFv
/* 801715DC  C0 02 9D A8 */	lfs f0, lit_10565(r2)
/* 801715E0  D0 1F 04 98 */	stfs f0, 0x498(r31)
/* 801715E4  38 61 0B E4 */	addi r3, r1, 0xbe4
/* 801715E8  7F E4 FB 78 */	mr r4, r31
/* 801715EC  7E C5 B3 78 */	mr r5, r22
/* 801715F0  4B F2 61 2D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801715F4  38 61 13 04 */	addi r3, r1, 0x1304
/* 801715F8  38 81 0B E4 */	addi r4, r1, 0xbe4
/* 801715FC  4B F2 61 F9 */	bl __ct__4cXyzFRC4cXyz
/* 80171600  38 61 0B E4 */	addi r3, r1, 0xbe4
/* 80171604  38 80 FF FF */	li r4, -1
/* 80171608  4B E9 7B 7D */	bl __dt__4cXyzFv
/* 8017160C  7F E3 FB 78 */	mr r3, r31
/* 80171610  38 81 13 04 */	addi r4, r1, 0x1304
/* 80171614  38 BF 04 84 */	addi r5, r31, 0x484
/* 80171618  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 8017161C  4B FF 44 D5 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80171620  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80171624  40 82 00 58 */	bne lbl_8017167C
/* 80171628  38 61 0B D8 */	addi r3, r1, 0xbd8
/* 8017162C  38 81 13 04 */	addi r4, r1, 0x1304
/* 80171630  4B F2 61 C5 */	bl __ct__4cXyzFRC4cXyz
/* 80171634  38 61 0B CC */	addi r3, r1, 0xbcc
/* 80171638  38 9F 04 84 */	addi r4, r31, 0x484
/* 8017163C  4B F2 61 B9 */	bl __ct__4cXyzFRC4cXyz
/* 80171640  38 61 0B D8 */	addi r3, r1, 0xbd8
/* 80171644  38 81 0B CC */	addi r4, r1, 0xbcc
/* 80171648  7F A5 EB 78 */	mr r5, r29
/* 8017164C  7F C6 F3 78 */	mr r6, r30
/* 80171650  38 E0 00 00 */	li r7, 0
/* 80171654  48 00 37 FD */	bl func_80174E50
/* 80171658  7C 76 1B 78 */	mr r22, r3
/* 8017165C  38 61 0B CC */	addi r3, r1, 0xbcc
/* 80171660  38 80 FF FF */	li r4, -1
/* 80171664  4B E9 7B 21 */	bl __dt__4cXyzFv
/* 80171668  38 61 0B D8 */	addi r3, r1, 0xbd8
/* 8017166C  38 80 FF FF */	li r4, -1
/* 80171670  4B E9 7B 15 */	bl __dt__4cXyzFv
/* 80171674  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80171678  41 82 00 0C */	beq lbl_80171684
lbl_8017167C:
/* 8017167C  3B 80 00 00 */	li r28, 0
/* 80171680  48 00 00 38 */	b lbl_801716B8
lbl_80171684:
/* 80171684  38 7F 00 64 */	addi r3, r31, 0x64
/* 80171688  38 9F 04 78 */	addi r4, r31, 0x478
/* 8017168C  4B F2 61 4D */	bl __as__4cXyzFRC4cXyz
/* 80171690  38 7F 00 70 */	addi r3, r31, 0x70
/* 80171694  38 9F 04 84 */	addi r4, r31, 0x484
/* 80171698  4B F2 61 41 */	bl __as__4cXyzFRC4cXyz
/* 8017169C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801716A0  38 9F 04 90 */	addi r4, r31, 0x490
/* 801716A4  4B F1 D0 D1 */	bl __as__7cSGlobeFRC7cSGlobe
/* 801716A8  C0 1F 04 98 */	lfs f0, 0x498(r31)
/* 801716AC  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 801716B0  7F 23 CB 78 */	mr r3, r25
/* 801716B4  4B FE E3 99 */	bl func_8015FA4C
lbl_801716B8:
/* 801716B8  38 61 13 04 */	addi r3, r1, 0x1304
/* 801716BC  38 80 FF FF */	li r4, -1
/* 801716C0  4B E9 7A C5 */	bl __dt__4cXyzFv
/* 801716C4  48 00 33 38 */	b lbl_801749FC
/* 801716C8  2C 1C 00 0E */	cmpwi r28, 0xe
/* 801716CC  40 82 01 08 */	bne lbl_801717D4
/* 801716D0  7F D6 F3 78 */	mr r22, r30
/* 801716D4  7F B9 EB 78 */	mr r25, r29
/* 801716D8  38 61 0B C0 */	addi r3, r1, 0xbc0
/* 801716DC  7F E4 FB 78 */	mr r4, r31
/* 801716E0  7F A5 EB 78 */	mr r5, r29
/* 801716E4  48 00 37 51 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 801716E8  38 61 13 AC */	addi r3, r1, 0x13ac
/* 801716EC  38 81 0B C0 */	addi r4, r1, 0xbc0
/* 801716F0  4B F2 60 E9 */	bl __as__4cXyzFRC4cXyz
/* 801716F4  38 61 0B C0 */	addi r3, r1, 0xbc0
/* 801716F8  38 80 FF FF */	li r4, -1
/* 801716FC  4B E9 7A 89 */	bl __dt__4cXyzFv
/* 80171700  38 61 0B B4 */	addi r3, r1, 0xbb4
/* 80171704  7F E4 FB 78 */	mr r4, r31
/* 80171708  7F C5 F3 78 */	mr r5, r30
/* 8017170C  48 00 37 29 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80171710  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80171714  38 81 0B B4 */	addi r4, r1, 0xbb4
/* 80171718  4B F2 60 C1 */	bl __as__4cXyzFRC4cXyz
/* 8017171C  38 61 0B B4 */	addi r3, r1, 0xbb4
/* 80171720  38 80 FF FF */	li r4, -1
/* 80171724  4B E9 7A 61 */	bl __dt__4cXyzFv
/* 80171728  38 61 02 B8 */	addi r3, r1, 0x2b8
/* 8017172C  38 9F 04 18 */	addi r4, r31, 0x418
/* 80171730  48 10 00 C1 */	bl __ct__7cSGlobeFRC7cSGlobe
/* 80171734  38 61 0B A8 */	addi r3, r1, 0xba8
/* 80171738  7F E4 FB 78 */	mr r4, r31
/* 8017173C  7F A5 EB 78 */	mr r5, r29
/* 80171740  48 00 36 D9 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80171744  38 61 13 94 */	addi r3, r1, 0x1394
/* 80171748  38 81 0B A8 */	addi r4, r1, 0xba8
/* 8017174C  4B F2 60 8D */	bl __as__4cXyzFRC4cXyz
/* 80171750  38 61 0B A8 */	addi r3, r1, 0xba8
/* 80171754  38 80 FF FF */	li r4, -1
/* 80171758  4B E9 7A 2D */	bl __dt__4cXyzFv
/* 8017175C  38 61 0B 9C */	addi r3, r1, 0xb9c
/* 80171760  7F E4 FB 78 */	mr r4, r31
/* 80171764  7F C5 F3 78 */	mr r5, r30
/* 80171768  48 00 36 B1 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 8017176C  38 61 13 88 */	addi r3, r1, 0x1388
/* 80171770  38 81 0B 9C */	addi r4, r1, 0xb9c
/* 80171774  4B F2 60 65 */	bl __as__4cXyzFRC4cXyz
/* 80171778  38 61 0B 9C */	addi r3, r1, 0xb9c
/* 8017177C  38 80 FF FF */	li r4, -1
/* 80171780  4B E9 7A 05 */	bl __dt__4cXyzFv
/* 80171784  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80171788  41 82 00 28 */	beq lbl_801717B0
/* 8017178C  38 61 0B 90 */	addi r3, r1, 0xb90
/* 80171790  7F E4 FB 78 */	mr r4, r31
/* 80171794  7F C5 F3 78 */	mr r5, r30
/* 80171798  4B F2 5F 85 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017179C  C0 01 0B 94 */	lfs f0, 0xb94(r1)
/* 801717A0  D0 01 13 A4 */	stfs f0, 0x13a4(r1)
/* 801717A4  38 61 0B 90 */	addi r3, r1, 0xb90
/* 801717A8  38 80 FF FF */	li r4, -1
/* 801717AC  4B E9 79 D9 */	bl __dt__4cXyzFv
lbl_801717B0:
/* 801717B0  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 801717B4  41 82 00 10 */	beq lbl_801717C4
/* 801717B8  38 61 13 94 */	addi r3, r1, 0x1394
/* 801717BC  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 801717C0  4B F1 D1 45 */	bl __apl__4cXyzFRC3Vec
lbl_801717C4:
/* 801717C4  38 61 02 B8 */	addi r3, r1, 0x2b8
/* 801717C8  38 80 FF FF */	li r4, -1
/* 801717CC  4B EF FE B1 */	bl __dt__7cSGlobeFv
/* 801717D0  48 00 00 EC */	b lbl_801718BC
lbl_801717D4:
/* 801717D4  7F B6 EB 78 */	mr r22, r29
/* 801717D8  7F D9 F3 78 */	mr r25, r30
/* 801717DC  38 61 0B 84 */	addi r3, r1, 0xb84
/* 801717E0  7F E4 FB 78 */	mr r4, r31
/* 801717E4  7F C5 F3 78 */	mr r5, r30
/* 801717E8  48 00 36 4D */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 801717EC  38 61 13 AC */	addi r3, r1, 0x13ac
/* 801717F0  38 81 0B 84 */	addi r4, r1, 0xb84
/* 801717F4  4B F2 5F E5 */	bl __as__4cXyzFRC4cXyz
/* 801717F8  38 61 0B 84 */	addi r3, r1, 0xb84
/* 801717FC  38 80 FF FF */	li r4, -1
/* 80171800  4B E9 79 85 */	bl __dt__4cXyzFv
/* 80171804  38 61 0B 78 */	addi r3, r1, 0xb78
/* 80171808  7F E4 FB 78 */	mr r4, r31
/* 8017180C  7F A5 EB 78 */	mr r5, r29
/* 80171810  48 00 36 25 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80171814  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80171818  38 81 0B 78 */	addi r4, r1, 0xb78
/* 8017181C  4B F2 5F BD */	bl __as__4cXyzFRC4cXyz
/* 80171820  38 61 0B 78 */	addi r3, r1, 0xb78
/* 80171824  38 80 FF FF */	li r4, -1
/* 80171828  4B E9 79 5D */	bl __dt__4cXyzFv
/* 8017182C  38 61 0B 6C */	addi r3, r1, 0xb6c
/* 80171830  7F E4 FB 78 */	mr r4, r31
/* 80171834  7F C5 F3 78 */	mr r5, r30
/* 80171838  48 00 35 E1 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 8017183C  38 61 13 94 */	addi r3, r1, 0x1394
/* 80171840  38 81 0B 6C */	addi r4, r1, 0xb6c
/* 80171844  4B F2 5F 95 */	bl __as__4cXyzFRC4cXyz
/* 80171848  38 61 0B 6C */	addi r3, r1, 0xb6c
/* 8017184C  38 80 FF FF */	li r4, -1
/* 80171850  4B E9 79 35 */	bl __dt__4cXyzFv
/* 80171854  38 61 0B 60 */	addi r3, r1, 0xb60
/* 80171858  7F E4 FB 78 */	mr r4, r31
/* 8017185C  7F A5 EB 78 */	mr r5, r29
/* 80171860  48 00 35 B9 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80171864  38 61 13 88 */	addi r3, r1, 0x1388
/* 80171868  38 81 0B 60 */	addi r4, r1, 0xb60
/* 8017186C  4B F2 5F 6D */	bl __as__4cXyzFRC4cXyz
/* 80171870  38 61 0B 60 */	addi r3, r1, 0xb60
/* 80171874  38 80 FF FF */	li r4, -1
/* 80171878  4B E9 79 0D */	bl __dt__4cXyzFv
/* 8017187C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80171880  41 82 00 28 */	beq lbl_801718A8
/* 80171884  38 61 0B 54 */	addi r3, r1, 0xb54
/* 80171888  7F E4 FB 78 */	mr r4, r31
/* 8017188C  7F C5 F3 78 */	mr r5, r30
/* 80171890  4B F2 5E 8D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80171894  C0 01 0B 58 */	lfs f0, 0xb58(r1)
/* 80171898  D0 01 13 B0 */	stfs f0, 0x13b0(r1)
/* 8017189C  38 61 0B 54 */	addi r3, r1, 0xb54
/* 801718A0  38 80 FF FF */	li r4, -1
/* 801718A4  4B E9 78 E1 */	bl __dt__4cXyzFv
lbl_801718A8:
/* 801718A8  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 801718AC  41 82 00 10 */	beq lbl_801718BC
/* 801718B0  38 61 13 88 */	addi r3, r1, 0x1388
/* 801718B4  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 801718B8  4B F1 D0 4D */	bl __apl__4cXyzFRC3Vec
lbl_801718BC:
/* 801718BC  38 7F 00 64 */	addi r3, r31, 0x64
/* 801718C0  38 81 13 88 */	addi r4, r1, 0x1388
/* 801718C4  4B F2 5F 15 */	bl __as__4cXyzFRC4cXyz
/* 801718C8  C0 01 13 A4 */	lfs f0, 0x13a4(r1)
/* 801718CC  C0 42 9C E4 */	lfs f2, lit_6629(r2)
/* 801718D0  EC 20 10 28 */	fsubs f1, f0, f2
/* 801718D4  C0 1F 04 64 */	lfs f0, 0x464(r31)
/* 801718D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 801718DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801718E0  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 801718E4  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 801718E8  2C 00 00 00 */	cmpwi r0, 0
/* 801718EC  40 82 00 4C */	bne lbl_80171938
/* 801718F0  38 61 0B 48 */	addi r3, r1, 0xb48
/* 801718F4  38 81 13 AC */	addi r4, r1, 0x13ac
/* 801718F8  38 A1 13 A0 */	addi r5, r1, 0x13a0
/* 801718FC  48 0F 52 39 */	bl __mi__4cXyzCFRC3Vec
/* 80171900  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80171904  38 81 0B 48 */	addi r4, r1, 0xb48
/* 80171908  48 10 01 69 */	bl Val__7cSGlobeFRC4cXyz
/* 8017190C  38 61 0B 48 */	addi r3, r1, 0xb48
/* 80171910  38 80 FF FF */	li r4, -1
/* 80171914  4B E9 78 71 */	bl __dt__4cXyzFv
/* 80171918  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017191C  48 01 11 49 */	bl R__7cSGlobeCFv
/* 80171920  C0 02 9D 50 */	lfs f0, lit_9405(r2)
/* 80171924  EC 21 00 28 */	fsubs f1, f1, f0
/* 80171928  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017192C  48 01 11 21 */	bl R__7cSGlobeFf
/* 80171930  38 00 00 01 */	li r0, 1
/* 80171934  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_80171938:
/* 80171938  38 61 0B 3C */	addi r3, r1, 0xb3c
/* 8017193C  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80171940  48 10 01 75 */	bl Xyz__7cSGlobeCFv
/* 80171944  38 61 0B 30 */	addi r3, r1, 0xb30
/* 80171948  38 9F 00 64 */	addi r4, r31, 0x64
/* 8017194C  38 A1 0B 3C */	addi r5, r1, 0xb3c
/* 80171950  48 0F 51 95 */	bl __pl__4cXyzCFRC3Vec
/* 80171954  38 7F 00 70 */	addi r3, r31, 0x70
/* 80171958  38 81 0B 30 */	addi r4, r1, 0xb30
/* 8017195C  4B F2 5E 7D */	bl __as__4cXyzFRC4cXyz
/* 80171960  38 61 0B 30 */	addi r3, r1, 0xb30
/* 80171964  38 80 FF FF */	li r4, -1
/* 80171968  4B E9 78 1D */	bl __dt__4cXyzFv
/* 8017196C  38 61 0B 3C */	addi r3, r1, 0xb3c
/* 80171970  38 80 FF FF */	li r4, -1
/* 80171974  4B E9 78 11 */	bl __dt__4cXyzFv
/* 80171978  C0 42 9C BC */	lfs f2, lit_5663(r2)
/* 8017197C  C0 3F 04 64 */	lfs f1, 0x464(r31)
/* 80171980  C0 02 9D EC */	lfs f0, lit_10582(r2)
/* 80171984  EC 01 00 32 */	fmuls f0, f1, f0
/* 80171988  EC 02 00 2A */	fadds f0, f2, f0
/* 8017198C  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80171990  38 61 0B 24 */	addi r3, r1, 0xb24
/* 80171994  7F E4 FB 78 */	mr r4, r31
/* 80171998  7E C5 B3 78 */	mr r5, r22
/* 8017199C  4B F2 5D 81 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801719A0  38 61 12 F8 */	addi r3, r1, 0x12f8
/* 801719A4  38 81 0B 24 */	addi r4, r1, 0xb24
/* 801719A8  4B F2 5E 4D */	bl __ct__4cXyzFRC4cXyz
/* 801719AC  38 61 0B 24 */	addi r3, r1, 0xb24
/* 801719B0  38 80 FF FF */	li r4, -1
/* 801719B4  4B E9 77 D1 */	bl __dt__4cXyzFv
/* 801719B8  7F 23 CB 78 */	mr r3, r25
/* 801719BC  4B FE E0 91 */	bl func_8015FA4C
/* 801719C0  38 61 12 F8 */	addi r3, r1, 0x12f8
/* 801719C4  38 80 FF FF */	li r4, -1
/* 801719C8  4B E9 77 BD */	bl __dt__4cXyzFv
/* 801719CC  48 00 30 30 */	b lbl_801749FC
/* 801719D0  2C 1C 00 12 */	cmpwi r28, 0x12
/* 801719D4  40 82 00 F0 */	bne lbl_80171AC4
/* 801719D8  7F B9 EB 78 */	mr r25, r29
/* 801719DC  83 5F 04 20 */	lwz r26, 0x420(r31)
/* 801719E0  38 61 0B 18 */	addi r3, r1, 0xb18
/* 801719E4  7F E4 FB 78 */	mr r4, r31
/* 801719E8  7F C5 F3 78 */	mr r5, r30
/* 801719EC  48 00 34 49 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 801719F0  38 61 13 AC */	addi r3, r1, 0x13ac
/* 801719F4  38 81 0B 18 */	addi r4, r1, 0xb18
/* 801719F8  4B F2 5D E1 */	bl __as__4cXyzFRC4cXyz
/* 801719FC  38 61 0B 18 */	addi r3, r1, 0xb18
/* 80171A00  38 80 FF FF */	li r4, -1
/* 80171A04  4B E9 77 81 */	bl __dt__4cXyzFv
/* 80171A08  38 61 0B 0C */	addi r3, r1, 0xb0c
/* 80171A0C  7F E4 FB 78 */	mr r4, r31
/* 80171A10  7F A5 EB 78 */	mr r5, r29
/* 80171A14  48 00 34 21 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80171A18  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80171A1C  38 81 0B 0C */	addi r4, r1, 0xb0c
/* 80171A20  4B F2 5D B9 */	bl __as__4cXyzFRC4cXyz
/* 80171A24  38 61 0B 0C */	addi r3, r1, 0xb0c
/* 80171A28  38 80 FF FF */	li r4, -1
/* 80171A2C  4B E9 77 59 */	bl __dt__4cXyzFv
/* 80171A30  38 61 0B 00 */	addi r3, r1, 0xb00
/* 80171A34  7F E4 FB 78 */	mr r4, r31
/* 80171A38  7F C5 F3 78 */	mr r5, r30
/* 80171A3C  48 00 33 DD */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80171A40  38 61 13 94 */	addi r3, r1, 0x1394
/* 80171A44  38 81 0B 00 */	addi r4, r1, 0xb00
/* 80171A48  4B F2 5D 91 */	bl __as__4cXyzFRC4cXyz
/* 80171A4C  38 61 0B 00 */	addi r3, r1, 0xb00
/* 80171A50  38 80 FF FF */	li r4, -1
/* 80171A54  4B E9 77 31 */	bl __dt__4cXyzFv
/* 80171A58  38 61 0A F4 */	addi r3, r1, 0xaf4
/* 80171A5C  7F E4 FB 78 */	mr r4, r31
/* 80171A60  7F A5 EB 78 */	mr r5, r29
/* 80171A64  48 00 33 B5 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80171A68  38 61 13 88 */	addi r3, r1, 0x1388
/* 80171A6C  38 81 0A F4 */	addi r4, r1, 0xaf4
/* 80171A70  4B F2 5D 69 */	bl __as__4cXyzFRC4cXyz
/* 80171A74  38 61 0A F4 */	addi r3, r1, 0xaf4
/* 80171A78  38 80 FF FF */	li r4, -1
/* 80171A7C  4B E9 77 09 */	bl __dt__4cXyzFv
/* 80171A80  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80171A84  41 82 00 28 */	beq lbl_80171AAC
/* 80171A88  38 61 0A E8 */	addi r3, r1, 0xae8
/* 80171A8C  7F E4 FB 78 */	mr r4, r31
/* 80171A90  7F C5 F3 78 */	mr r5, r30
/* 80171A94  4B F2 5C 89 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80171A98  C0 01 0A EC */	lfs f0, 0xaec(r1)
/* 80171A9C  D0 01 13 B0 */	stfs f0, 0x13b0(r1)
/* 80171AA0  38 61 0A E8 */	addi r3, r1, 0xae8
/* 80171AA4  38 80 FF FF */	li r4, -1
/* 80171AA8  4B E9 76 DD */	bl __dt__4cXyzFv
lbl_80171AAC:
/* 80171AAC  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80171AB0  41 82 01 04 */	beq lbl_80171BB4
/* 80171AB4  38 61 13 88 */	addi r3, r1, 0x1388
/* 80171AB8  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80171ABC  4B F1 CE 49 */	bl __apl__4cXyzFRC3Vec
/* 80171AC0  48 00 00 F4 */	b lbl_80171BB4
lbl_80171AC4:
/* 80171AC4  7F D9 F3 78 */	mr r25, r30
/* 80171AC8  80 1F 04 20 */	lwz r0, 0x420(r31)
/* 80171ACC  7C 00 00 34 */	cntlzw r0, r0
/* 80171AD0  54 1A D9 7E */	srwi r26, r0, 5
/* 80171AD4  38 61 0A DC */	addi r3, r1, 0xadc
/* 80171AD8  7F E4 FB 78 */	mr r4, r31
/* 80171ADC  7F A5 EB 78 */	mr r5, r29
/* 80171AE0  48 00 33 55 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80171AE4  38 61 13 AC */	addi r3, r1, 0x13ac
/* 80171AE8  38 81 0A DC */	addi r4, r1, 0xadc
/* 80171AEC  4B F2 5C ED */	bl __as__4cXyzFRC4cXyz
/* 80171AF0  38 61 0A DC */	addi r3, r1, 0xadc
/* 80171AF4  38 80 FF FF */	li r4, -1
/* 80171AF8  4B E9 76 8D */	bl __dt__4cXyzFv
/* 80171AFC  38 61 0A D0 */	addi r3, r1, 0xad0
/* 80171B00  7F E4 FB 78 */	mr r4, r31
/* 80171B04  7F C5 F3 78 */	mr r5, r30
/* 80171B08  48 00 33 2D */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80171B0C  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80171B10  38 81 0A D0 */	addi r4, r1, 0xad0
/* 80171B14  4B F2 5C C5 */	bl __as__4cXyzFRC4cXyz
/* 80171B18  38 61 0A D0 */	addi r3, r1, 0xad0
/* 80171B1C  38 80 FF FF */	li r4, -1
/* 80171B20  4B E9 76 65 */	bl __dt__4cXyzFv
/* 80171B24  38 61 0A C4 */	addi r3, r1, 0xac4
/* 80171B28  7F E4 FB 78 */	mr r4, r31
/* 80171B2C  7F A5 EB 78 */	mr r5, r29
/* 80171B30  48 00 32 E9 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80171B34  38 61 13 94 */	addi r3, r1, 0x1394
/* 80171B38  38 81 0A C4 */	addi r4, r1, 0xac4
/* 80171B3C  4B F2 5C 9D */	bl __as__4cXyzFRC4cXyz
/* 80171B40  38 61 0A C4 */	addi r3, r1, 0xac4
/* 80171B44  38 80 FF FF */	li r4, -1
/* 80171B48  4B E9 76 3D */	bl __dt__4cXyzFv
/* 80171B4C  38 61 0A B8 */	addi r3, r1, 0xab8
/* 80171B50  7F E4 FB 78 */	mr r4, r31
/* 80171B54  7F C5 F3 78 */	mr r5, r30
/* 80171B58  48 00 32 C1 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80171B5C  38 61 13 88 */	addi r3, r1, 0x1388
/* 80171B60  38 81 0A B8 */	addi r4, r1, 0xab8
/* 80171B64  4B F2 5C 75 */	bl __as__4cXyzFRC4cXyz
/* 80171B68  38 61 0A B8 */	addi r3, r1, 0xab8
/* 80171B6C  38 80 FF FF */	li r4, -1
/* 80171B70  4B E9 76 15 */	bl __dt__4cXyzFv
/* 80171B74  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80171B78  41 82 00 28 */	beq lbl_80171BA0
/* 80171B7C  38 61 0A AC */	addi r3, r1, 0xaac
/* 80171B80  7F E4 FB 78 */	mr r4, r31
/* 80171B84  7F C5 F3 78 */	mr r5, r30
/* 80171B88  4B F2 5B 95 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80171B8C  C0 01 0A B0 */	lfs f0, 0xab0(r1)
/* 80171B90  D0 01 13 A4 */	stfs f0, 0x13a4(r1)
/* 80171B94  38 61 0A AC */	addi r3, r1, 0xaac
/* 80171B98  38 80 FF FF */	li r4, -1
/* 80171B9C  4B E9 75 E9 */	bl __dt__4cXyzFv
lbl_80171BA0:
/* 80171BA0  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80171BA4  41 82 00 10 */	beq lbl_80171BB4
/* 80171BA8  38 61 13 94 */	addi r3, r1, 0x1394
/* 80171BAC  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80171BB0  4B F1 CD 55 */	bl __apl__4cXyzFRC3Vec
lbl_80171BB4:
/* 80171BB4  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 80171BB8  2C 00 00 00 */	cmpwi r0, 0
/* 80171BBC  40 82 01 A8 */	bne lbl_80171D64
/* 80171BC0  38 00 00 01 */	li r0, 1
/* 80171BC4  98 1F 01 58 */	stb r0, 0x158(r31)
/* 80171BC8  38 61 12 EC */	addi r3, r1, 0x12ec
/* 80171BCC  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80171BD0  C0 42 9E 08 */	lfs f2, lit_11173(r2)
/* 80171BD4  C0 62 9D CC */	lfs f3, lit_10574(r2)
/* 80171BD8  4B FC FD 85 */	bl __ct__4cXyzFfff
/* 80171BDC  38 61 0A A0 */	addi r3, r1, 0xaa0
/* 80171BE0  7F E4 FB 78 */	mr r4, r31
/* 80171BE4  7F 25 CB 78 */	mr r5, r25
/* 80171BE8  4B F2 5B 35 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80171BEC  38 61 0A 94 */	addi r3, r1, 0xa94
/* 80171BF0  38 81 13 AC */	addi r4, r1, 0x13ac
/* 80171BF4  38 A1 0A A0 */	addi r5, r1, 0xaa0
/* 80171BF8  48 0F 4F 3D */	bl __mi__4cXyzCFRC3Vec
/* 80171BFC  38 61 02 B0 */	addi r3, r1, 0x2b0
/* 80171C00  38 81 0A 94 */	addi r4, r1, 0xa94
/* 80171C04  48 0F FC 7D */	bl __ct__7cSGlobeFRC4cXyz
/* 80171C08  38 61 0A 94 */	addi r3, r1, 0xa94
/* 80171C0C  38 80 FF FF */	li r4, -1
/* 80171C10  4B E9 75 75 */	bl __dt__4cXyzFv
/* 80171C14  38 61 0A A0 */	addi r3, r1, 0xaa0
/* 80171C18  38 80 FF FF */	li r4, -1
/* 80171C1C  4B E9 75 69 */	bl __dt__4cXyzFv
/* 80171C20  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 80171C24  38 81 12 EC */	addi r4, r1, 0x12ec
/* 80171C28  48 0F FC 59 */	bl __ct__7cSGlobeFRC4cXyz
/* 80171C2C  38 61 02 B0 */	addi r3, r1, 0x2b0
/* 80171C30  48 01 10 55 */	bl U__7cSGlobeCFv
/* 80171C34  7C 76 1B 78 */	mr r22, r3
/* 80171C38  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 80171C3C  48 01 10 49 */	bl U__7cSGlobeCFv
/* 80171C40  7C 64 1B 78 */	mr r4, r3
/* 80171C44  38 61 01 00 */	addi r3, r1, 0x100
/* 80171C48  7E C5 B3 78 */	mr r5, r22
/* 80171C4C  48 0F F5 29 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80171C50  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 80171C54  38 81 01 00 */	addi r4, r1, 0x100
/* 80171C58  4B F1 CC 3D */	bl U__7cSGlobeFRC7cSAngle
/* 80171C5C  38 61 01 00 */	addi r3, r1, 0x100
/* 80171C60  38 80 FF FF */	li r4, -1
/* 80171C64  4B EB E8 AD */	bl __dt__7cSAngleFv
/* 80171C68  38 61 0A 88 */	addi r3, r1, 0xa88
/* 80171C6C  38 81 02 A8 */	addi r4, r1, 0x2a8
/* 80171C70  48 0F FE 45 */	bl Xyz__7cSGlobeCFv
/* 80171C74  38 61 0A 7C */	addi r3, r1, 0xa7c
/* 80171C78  38 81 13 88 */	addi r4, r1, 0x1388
/* 80171C7C  38 A1 0A 88 */	addi r5, r1, 0xa88
/* 80171C80  48 0F 4E 65 */	bl __pl__4cXyzCFRC3Vec
/* 80171C84  38 7F 04 04 */	addi r3, r31, 0x404
/* 80171C88  38 81 0A 7C */	addi r4, r1, 0xa7c
/* 80171C8C  4B F2 5B 4D */	bl __as__4cXyzFRC4cXyz
/* 80171C90  38 61 0A 7C */	addi r3, r1, 0xa7c
/* 80171C94  38 80 FF FF */	li r4, -1
/* 80171C98  4B E9 74 ED */	bl __dt__4cXyzFv
/* 80171C9C  38 61 0A 88 */	addi r3, r1, 0xa88
/* 80171CA0  38 80 FF FF */	li r4, -1
/* 80171CA4  4B E9 74 E1 */	bl __dt__4cXyzFv
/* 80171CA8  C0 5F 04 08 */	lfs f2, 0x408(r31)
/* 80171CAC  C0 21 13 A4 */	lfs f1, 0x13a4(r1)
/* 80171CB0  C0 01 13 8C */	lfs f0, 0x138c(r1)
/* 80171CB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80171CB8  EC 02 00 2A */	fadds f0, f2, f0
/* 80171CBC  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 80171CC0  38 61 02 14 */	addi r3, r1, 0x214
/* 80171CC4  2C 1A 00 00 */	cmpwi r26, 0
/* 80171CC8  41 82 00 0C */	beq lbl_80171CD4
/* 80171CCC  C0 22 9D 90 */	lfs f1, lit_10559(r2)
/* 80171CD0  48 00 00 08 */	b lbl_80171CD8
lbl_80171CD4:
/* 80171CD4  C0 22 9D 74 */	lfs f1, lit_10552(r2)
lbl_80171CD8:
/* 80171CD8  48 0F F2 F1 */	bl __ct__7cSAngleFf
/* 80171CDC  38 7F 04 78 */	addi r3, r31, 0x478
/* 80171CE0  38 9F 04 04 */	addi r4, r31, 0x404
/* 80171CE4  4B F2 5A F5 */	bl __as__4cXyzFRC4cXyz
/* 80171CE8  38 61 00 FC */	addi r3, r1, 0xfc
/* 80171CEC  7F E4 FB 78 */	mr r4, r31
/* 80171CF0  7F 25 CB 78 */	mr r5, r25
/* 80171CF4  4B F2 5A 45 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80171CF8  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80171CFC  38 81 02 14 */	addi r4, r1, 0x214
/* 80171D00  38 A1 00 FC */	addi r5, r1, 0xfc
/* 80171D04  48 0F F4 71 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80171D08  38 7F 04 90 */	addi r3, r31, 0x490
/* 80171D0C  C0 22 9E 58 */	lfs f1, lit_12285(r2)
/* 80171D10  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 80171D14  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 80171D18  48 0F FC F1 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 80171D1C  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80171D20  38 80 FF FF */	li r4, -1
/* 80171D24  4B EB E7 ED */	bl __dt__7cSAngleFv
/* 80171D28  38 61 00 FC */	addi r3, r1, 0xfc
/* 80171D2C  38 80 FF FF */	li r4, -1
/* 80171D30  4B EB E7 E1 */	bl __dt__7cSAngleFv
/* 80171D34  38 61 02 14 */	addi r3, r1, 0x214
/* 80171D38  38 80 FF FF */	li r4, -1
/* 80171D3C  4B EB E7 D5 */	bl __dt__7cSAngleFv
/* 80171D40  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 80171D44  38 80 FF FF */	li r4, -1
/* 80171D48  4B EF F9 35 */	bl __dt__7cSGlobeFv
/* 80171D4C  38 61 02 B0 */	addi r3, r1, 0x2b0
/* 80171D50  38 80 FF FF */	li r4, -1
/* 80171D54  4B EF F9 29 */	bl __dt__7cSGlobeFv
/* 80171D58  38 61 12 EC */	addi r3, r1, 0x12ec
/* 80171D5C  38 80 FF FF */	li r4, -1
/* 80171D60  4B E9 74 25 */	bl __dt__4cXyzFv
lbl_80171D64:
/* 80171D64  38 61 0A 70 */	addi r3, r1, 0xa70
/* 80171D68  38 9F 04 90 */	addi r4, r31, 0x490
/* 80171D6C  48 0F FD 49 */	bl Xyz__7cSGlobeCFv
/* 80171D70  38 61 0A 64 */	addi r3, r1, 0xa64
/* 80171D74  38 9F 04 78 */	addi r4, r31, 0x478
/* 80171D78  38 A1 0A 70 */	addi r5, r1, 0xa70
/* 80171D7C  48 0F 4D 69 */	bl __pl__4cXyzCFRC3Vec
/* 80171D80  38 7F 04 84 */	addi r3, r31, 0x484
/* 80171D84  38 81 0A 64 */	addi r4, r1, 0xa64
/* 80171D88  4B F2 5A 51 */	bl __as__4cXyzFRC4cXyz
/* 80171D8C  38 61 0A 64 */	addi r3, r1, 0xa64
/* 80171D90  38 80 FF FF */	li r4, -1
/* 80171D94  4B E9 73 F1 */	bl __dt__4cXyzFv
/* 80171D98  38 61 0A 70 */	addi r3, r1, 0xa70
/* 80171D9C  38 80 FF FF */	li r4, -1
/* 80171DA0  4B E9 73 E5 */	bl __dt__4cXyzFv
/* 80171DA4  C0 02 9D 88 */	lfs f0, lit_10557(r2)
/* 80171DA8  D0 1F 04 98 */	stfs f0, 0x498(r31)
/* 80171DAC  38 61 0A 58 */	addi r3, r1, 0xa58
/* 80171DB0  7F E4 FB 78 */	mr r4, r31
/* 80171DB4  7F 25 CB 78 */	mr r5, r25
/* 80171DB8  4B F2 59 65 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80171DBC  38 61 12 E0 */	addi r3, r1, 0x12e0
/* 80171DC0  38 81 0A 58 */	addi r4, r1, 0xa58
/* 80171DC4  4B F2 5A 31 */	bl __ct__4cXyzFRC4cXyz
/* 80171DC8  38 61 0A 58 */	addi r3, r1, 0xa58
/* 80171DCC  38 80 FF FF */	li r4, -1
/* 80171DD0  4B E9 73 B5 */	bl __dt__4cXyzFv
/* 80171DD4  7F E3 FB 78 */	mr r3, r31
/* 80171DD8  38 81 12 E0 */	addi r4, r1, 0x12e0
/* 80171DDC  38 BF 04 84 */	addi r5, r31, 0x484
/* 80171DE0  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 80171DE4  4B FF 3D 0D */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80171DE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80171DEC  40 82 00 58 */	bne lbl_80171E44
/* 80171DF0  38 61 0A 4C */	addi r3, r1, 0xa4c
/* 80171DF4  38 81 12 E0 */	addi r4, r1, 0x12e0
/* 80171DF8  4B F2 59 FD */	bl __ct__4cXyzFRC4cXyz
/* 80171DFC  38 61 0A 40 */	addi r3, r1, 0xa40
/* 80171E00  38 9F 04 84 */	addi r4, r31, 0x484
/* 80171E04  4B F2 59 F1 */	bl __ct__4cXyzFRC4cXyz
/* 80171E08  38 61 0A 4C */	addi r3, r1, 0xa4c
/* 80171E0C  38 81 0A 40 */	addi r4, r1, 0xa40
/* 80171E10  7F A5 EB 78 */	mr r5, r29
/* 80171E14  7F C6 F3 78 */	mr r6, r30
/* 80171E18  38 E0 00 00 */	li r7, 0
/* 80171E1C  48 00 30 35 */	bl func_80174E50
/* 80171E20  7C 76 1B 78 */	mr r22, r3
/* 80171E24  38 61 0A 40 */	addi r3, r1, 0xa40
/* 80171E28  38 80 FF FF */	li r4, -1
/* 80171E2C  4B E9 73 59 */	bl __dt__4cXyzFv
/* 80171E30  38 61 0A 4C */	addi r3, r1, 0xa4c
/* 80171E34  38 80 FF FF */	li r4, -1
/* 80171E38  4B E9 73 4D */	bl __dt__4cXyzFv
/* 80171E3C  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80171E40  41 82 00 0C */	beq lbl_80171E4C
lbl_80171E44:
/* 80171E44  3B 80 00 00 */	li r28, 0
/* 80171E48  48 00 00 30 */	b lbl_80171E78
lbl_80171E4C:
/* 80171E4C  38 7F 00 64 */	addi r3, r31, 0x64
/* 80171E50  38 9F 04 78 */	addi r4, r31, 0x478
/* 80171E54  4B F2 59 85 */	bl __as__4cXyzFRC4cXyz
/* 80171E58  38 7F 00 70 */	addi r3, r31, 0x70
/* 80171E5C  38 9F 04 84 */	addi r4, r31, 0x484
/* 80171E60  4B F2 59 79 */	bl __as__4cXyzFRC4cXyz
/* 80171E64  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80171E68  38 9F 04 90 */	addi r4, r31, 0x490
/* 80171E6C  4B F1 C9 09 */	bl __as__7cSGlobeFRC7cSGlobe
/* 80171E70  C0 1F 04 98 */	lfs f0, 0x498(r31)
/* 80171E74  D0 1F 00 80 */	stfs f0, 0x80(r31)
lbl_80171E78:
/* 80171E78  38 61 12 E0 */	addi r3, r1, 0x12e0
/* 80171E7C  38 80 FF FF */	li r4, -1
/* 80171E80  4B E9 73 05 */	bl __dt__4cXyzFv
/* 80171E84  48 00 2B 78 */	b lbl_801749FC
/* 80171E88  2C 1C 00 18 */	cmpwi r28, 0x18
/* 80171E8C  40 82 00 F0 */	bne lbl_80171F7C
/* 80171E90  7F B9 EB 78 */	mr r25, r29
/* 80171E94  83 5F 04 20 */	lwz r26, 0x420(r31)
/* 80171E98  38 61 0A 34 */	addi r3, r1, 0xa34
/* 80171E9C  7F E4 FB 78 */	mr r4, r31
/* 80171EA0  7F C5 F3 78 */	mr r5, r30
/* 80171EA4  48 00 2F 91 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80171EA8  38 61 13 AC */	addi r3, r1, 0x13ac
/* 80171EAC  38 81 0A 34 */	addi r4, r1, 0xa34
/* 80171EB0  4B F2 59 29 */	bl __as__4cXyzFRC4cXyz
/* 80171EB4  38 61 0A 34 */	addi r3, r1, 0xa34
/* 80171EB8  38 80 FF FF */	li r4, -1
/* 80171EBC  4B E9 72 C9 */	bl __dt__4cXyzFv
/* 80171EC0  38 61 0A 28 */	addi r3, r1, 0xa28
/* 80171EC4  7F E4 FB 78 */	mr r4, r31
/* 80171EC8  7F A5 EB 78 */	mr r5, r29
/* 80171ECC  48 00 2F 69 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80171ED0  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80171ED4  38 81 0A 28 */	addi r4, r1, 0xa28
/* 80171ED8  4B F2 59 01 */	bl __as__4cXyzFRC4cXyz
/* 80171EDC  38 61 0A 28 */	addi r3, r1, 0xa28
/* 80171EE0  38 80 FF FF */	li r4, -1
/* 80171EE4  4B E9 72 A1 */	bl __dt__4cXyzFv
/* 80171EE8  38 61 0A 1C */	addi r3, r1, 0xa1c
/* 80171EEC  7F E4 FB 78 */	mr r4, r31
/* 80171EF0  7F C5 F3 78 */	mr r5, r30
/* 80171EF4  48 00 2F 25 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80171EF8  38 61 13 94 */	addi r3, r1, 0x1394
/* 80171EFC  38 81 0A 1C */	addi r4, r1, 0xa1c
/* 80171F00  4B F2 58 D9 */	bl __as__4cXyzFRC4cXyz
/* 80171F04  38 61 0A 1C */	addi r3, r1, 0xa1c
/* 80171F08  38 80 FF FF */	li r4, -1
/* 80171F0C  4B E9 72 79 */	bl __dt__4cXyzFv
/* 80171F10  38 61 0A 10 */	addi r3, r1, 0xa10
/* 80171F14  7F E4 FB 78 */	mr r4, r31
/* 80171F18  7F A5 EB 78 */	mr r5, r29
/* 80171F1C  48 00 2E FD */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80171F20  38 61 13 88 */	addi r3, r1, 0x1388
/* 80171F24  38 81 0A 10 */	addi r4, r1, 0xa10
/* 80171F28  4B F2 58 B1 */	bl __as__4cXyzFRC4cXyz
/* 80171F2C  38 61 0A 10 */	addi r3, r1, 0xa10
/* 80171F30  38 80 FF FF */	li r4, -1
/* 80171F34  4B E9 72 51 */	bl __dt__4cXyzFv
/* 80171F38  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80171F3C  41 82 00 28 */	beq lbl_80171F64
/* 80171F40  38 61 0A 04 */	addi r3, r1, 0xa04
/* 80171F44  7F E4 FB 78 */	mr r4, r31
/* 80171F48  7F C5 F3 78 */	mr r5, r30
/* 80171F4C  4B F2 57 D1 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80171F50  C0 01 0A 08 */	lfs f0, 0xa08(r1)
/* 80171F54  D0 01 13 B0 */	stfs f0, 0x13b0(r1)
/* 80171F58  38 61 0A 04 */	addi r3, r1, 0xa04
/* 80171F5C  38 80 FF FF */	li r4, -1
/* 80171F60  4B E9 72 25 */	bl __dt__4cXyzFv
lbl_80171F64:
/* 80171F64  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80171F68  41 82 01 04 */	beq lbl_8017206C
/* 80171F6C  38 61 13 88 */	addi r3, r1, 0x1388
/* 80171F70  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80171F74  4B F1 C9 91 */	bl __apl__4cXyzFRC3Vec
/* 80171F78  48 00 00 F4 */	b lbl_8017206C
lbl_80171F7C:
/* 80171F7C  7F D9 F3 78 */	mr r25, r30
/* 80171F80  80 1F 04 20 */	lwz r0, 0x420(r31)
/* 80171F84  7C 00 00 34 */	cntlzw r0, r0
/* 80171F88  54 1A D9 7E */	srwi r26, r0, 5
/* 80171F8C  38 61 09 F8 */	addi r3, r1, 0x9f8
/* 80171F90  7F E4 FB 78 */	mr r4, r31
/* 80171F94  7F A5 EB 78 */	mr r5, r29
/* 80171F98  48 00 2E 9D */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80171F9C  38 61 13 AC */	addi r3, r1, 0x13ac
/* 80171FA0  38 81 09 F8 */	addi r4, r1, 0x9f8
/* 80171FA4  4B F2 58 35 */	bl __as__4cXyzFRC4cXyz
/* 80171FA8  38 61 09 F8 */	addi r3, r1, 0x9f8
/* 80171FAC  38 80 FF FF */	li r4, -1
/* 80171FB0  4B E9 71 D5 */	bl __dt__4cXyzFv
/* 80171FB4  38 61 09 EC */	addi r3, r1, 0x9ec
/* 80171FB8  7F E4 FB 78 */	mr r4, r31
/* 80171FBC  7F C5 F3 78 */	mr r5, r30
/* 80171FC0  48 00 2E 75 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80171FC4  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80171FC8  38 81 09 EC */	addi r4, r1, 0x9ec
/* 80171FCC  4B F2 58 0D */	bl __as__4cXyzFRC4cXyz
/* 80171FD0  38 61 09 EC */	addi r3, r1, 0x9ec
/* 80171FD4  38 80 FF FF */	li r4, -1
/* 80171FD8  4B E9 71 AD */	bl __dt__4cXyzFv
/* 80171FDC  38 61 09 E0 */	addi r3, r1, 0x9e0
/* 80171FE0  7F E4 FB 78 */	mr r4, r31
/* 80171FE4  7F A5 EB 78 */	mr r5, r29
/* 80171FE8  48 00 2E 31 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80171FEC  38 61 13 94 */	addi r3, r1, 0x1394
/* 80171FF0  38 81 09 E0 */	addi r4, r1, 0x9e0
/* 80171FF4  4B F2 57 E5 */	bl __as__4cXyzFRC4cXyz
/* 80171FF8  38 61 09 E0 */	addi r3, r1, 0x9e0
/* 80171FFC  38 80 FF FF */	li r4, -1
/* 80172000  4B E9 71 85 */	bl __dt__4cXyzFv
/* 80172004  38 61 09 D4 */	addi r3, r1, 0x9d4
/* 80172008  7F E4 FB 78 */	mr r4, r31
/* 8017200C  7F C5 F3 78 */	mr r5, r30
/* 80172010  48 00 2E 09 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80172014  38 61 13 88 */	addi r3, r1, 0x1388
/* 80172018  38 81 09 D4 */	addi r4, r1, 0x9d4
/* 8017201C  4B F2 57 BD */	bl __as__4cXyzFRC4cXyz
/* 80172020  38 61 09 D4 */	addi r3, r1, 0x9d4
/* 80172024  38 80 FF FF */	li r4, -1
/* 80172028  4B E9 71 5D */	bl __dt__4cXyzFv
/* 8017202C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80172030  41 82 00 28 */	beq lbl_80172058
/* 80172034  38 61 09 C8 */	addi r3, r1, 0x9c8
/* 80172038  7F E4 FB 78 */	mr r4, r31
/* 8017203C  7F C5 F3 78 */	mr r5, r30
/* 80172040  4B F2 56 DD */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80172044  C0 01 09 CC */	lfs f0, 0x9cc(r1)
/* 80172048  D0 01 13 A4 */	stfs f0, 0x13a4(r1)
/* 8017204C  38 61 09 C8 */	addi r3, r1, 0x9c8
/* 80172050  38 80 FF FF */	li r4, -1
/* 80172054  4B E9 71 31 */	bl __dt__4cXyzFv
lbl_80172058:
/* 80172058  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 8017205C  41 82 00 10 */	beq lbl_8017206C
/* 80172060  38 61 13 94 */	addi r3, r1, 0x1394
/* 80172064  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80172068  4B F1 C8 9D */	bl __apl__4cXyzFRC3Vec
lbl_8017206C:
/* 8017206C  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 80172070  2C 00 00 00 */	cmpwi r0, 0
/* 80172074  40 82 01 A8 */	bne lbl_8017221C
/* 80172078  38 00 00 01 */	li r0, 1
/* 8017207C  98 1F 01 58 */	stb r0, 0x158(r31)
/* 80172080  38 61 12 D4 */	addi r3, r1, 0x12d4
/* 80172084  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80172088  C0 42 9D F0 */	lfs f2, lit_11167(r2)
/* 8017208C  C0 62 9D 68 */	lfs f3, lit_9788(r2)
/* 80172090  4B FC F8 CD */	bl __ct__4cXyzFfff
/* 80172094  38 61 09 BC */	addi r3, r1, 0x9bc
/* 80172098  7F E4 FB 78 */	mr r4, r31
/* 8017209C  7F 25 CB 78 */	mr r5, r25
/* 801720A0  4B F2 56 7D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801720A4  38 61 09 B0 */	addi r3, r1, 0x9b0
/* 801720A8  38 81 13 AC */	addi r4, r1, 0x13ac
/* 801720AC  38 A1 09 BC */	addi r5, r1, 0x9bc
/* 801720B0  48 0F 4A 85 */	bl __mi__4cXyzCFRC3Vec
/* 801720B4  38 61 02 A0 */	addi r3, r1, 0x2a0
/* 801720B8  38 81 09 B0 */	addi r4, r1, 0x9b0
/* 801720BC  48 0F F7 C5 */	bl __ct__7cSGlobeFRC4cXyz
/* 801720C0  38 61 09 B0 */	addi r3, r1, 0x9b0
/* 801720C4  38 80 FF FF */	li r4, -1
/* 801720C8  4B E9 70 BD */	bl __dt__4cXyzFv
/* 801720CC  38 61 09 BC */	addi r3, r1, 0x9bc
/* 801720D0  38 80 FF FF */	li r4, -1
/* 801720D4  4B E9 70 B1 */	bl __dt__4cXyzFv
/* 801720D8  38 61 02 98 */	addi r3, r1, 0x298
/* 801720DC  38 81 12 D4 */	addi r4, r1, 0x12d4
/* 801720E0  48 0F F7 A1 */	bl __ct__7cSGlobeFRC4cXyz
/* 801720E4  38 61 02 A0 */	addi r3, r1, 0x2a0
/* 801720E8  48 01 0B 9D */	bl U__7cSGlobeCFv
/* 801720EC  7C 76 1B 78 */	mr r22, r3
/* 801720F0  38 61 02 98 */	addi r3, r1, 0x298
/* 801720F4  48 01 0B 91 */	bl U__7cSGlobeCFv
/* 801720F8  7C 64 1B 78 */	mr r4, r3
/* 801720FC  38 61 00 F4 */	addi r3, r1, 0xf4
/* 80172100  7E C5 B3 78 */	mr r5, r22
/* 80172104  48 0F F0 71 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80172108  38 61 02 98 */	addi r3, r1, 0x298
/* 8017210C  38 81 00 F4 */	addi r4, r1, 0xf4
/* 80172110  4B F1 C7 85 */	bl U__7cSGlobeFRC7cSAngle
/* 80172114  38 61 00 F4 */	addi r3, r1, 0xf4
/* 80172118  38 80 FF FF */	li r4, -1
/* 8017211C  4B EB E3 F5 */	bl __dt__7cSAngleFv
/* 80172120  38 61 09 A4 */	addi r3, r1, 0x9a4
/* 80172124  38 81 02 98 */	addi r4, r1, 0x298
/* 80172128  48 0F F9 8D */	bl Xyz__7cSGlobeCFv
/* 8017212C  38 61 09 98 */	addi r3, r1, 0x998
/* 80172130  38 81 13 A0 */	addi r4, r1, 0x13a0
/* 80172134  38 A1 09 A4 */	addi r5, r1, 0x9a4
/* 80172138  48 0F 49 AD */	bl __pl__4cXyzCFRC3Vec
/* 8017213C  38 7F 04 04 */	addi r3, r31, 0x404
/* 80172140  38 81 09 98 */	addi r4, r1, 0x998
/* 80172144  4B F2 56 95 */	bl __as__4cXyzFRC4cXyz
/* 80172148  38 61 09 98 */	addi r3, r1, 0x998
/* 8017214C  38 80 FF FF */	li r4, -1
/* 80172150  4B E9 70 35 */	bl __dt__4cXyzFv
/* 80172154  38 61 09 A4 */	addi r3, r1, 0x9a4
/* 80172158  38 80 FF FF */	li r4, -1
/* 8017215C  4B E9 70 29 */	bl __dt__4cXyzFv
/* 80172160  38 61 02 10 */	addi r3, r1, 0x210
/* 80172164  2C 1A 00 00 */	cmpwi r26, 0
/* 80172168  41 82 00 0C */	beq lbl_80172174
/* 8017216C  C0 22 9D A4 */	lfs f1, lit_10564(r2)
/* 80172170  48 00 00 08 */	b lbl_80172178
lbl_80172174:
/* 80172174  C0 22 9D A8 */	lfs f1, lit_10565(r2)
lbl_80172178:
/* 80172178  48 0F EE 51 */	bl __ct__7cSAngleFf
/* 8017217C  38 7F 04 78 */	addi r3, r31, 0x478
/* 80172180  38 9F 04 04 */	addi r4, r31, 0x404
/* 80172184  4B F2 56 55 */	bl __as__4cXyzFRC4cXyz
/* 80172188  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8017218C  C0 22 9E 00 */	lfs f1, lit_11171(r2)
/* 80172190  48 0F EE 39 */	bl __ct__7cSAngleFf
/* 80172194  38 61 00 EC */	addi r3, r1, 0xec
/* 80172198  7F E4 FB 78 */	mr r4, r31
/* 8017219C  7F 25 CB 78 */	mr r5, r25
/* 801721A0  4B F2 55 99 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 801721A4  38 61 00 E8 */	addi r3, r1, 0xe8
/* 801721A8  38 81 02 10 */	addi r4, r1, 0x210
/* 801721AC  38 A1 00 EC */	addi r5, r1, 0xec
/* 801721B0  48 0F EF C5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 801721B4  38 7F 04 90 */	addi r3, r31, 0x490
/* 801721B8  C0 22 9E 58 */	lfs f1, lit_12285(r2)
/* 801721BC  38 81 00 F0 */	addi r4, r1, 0xf0
/* 801721C0  38 A1 00 E8 */	addi r5, r1, 0xe8
/* 801721C4  48 0F F8 45 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 801721C8  38 61 00 E8 */	addi r3, r1, 0xe8
/* 801721CC  38 80 FF FF */	li r4, -1
/* 801721D0  4B EB E3 41 */	bl __dt__7cSAngleFv
/* 801721D4  38 61 00 EC */	addi r3, r1, 0xec
/* 801721D8  38 80 FF FF */	li r4, -1
/* 801721DC  4B EB E3 35 */	bl __dt__7cSAngleFv
/* 801721E0  38 61 00 F0 */	addi r3, r1, 0xf0
/* 801721E4  38 80 FF FF */	li r4, -1
/* 801721E8  4B EB E3 29 */	bl __dt__7cSAngleFv
/* 801721EC  38 61 02 10 */	addi r3, r1, 0x210
/* 801721F0  38 80 FF FF */	li r4, -1
/* 801721F4  4B EB E3 1D */	bl __dt__7cSAngleFv
/* 801721F8  38 61 02 98 */	addi r3, r1, 0x298
/* 801721FC  38 80 FF FF */	li r4, -1
/* 80172200  4B EF F4 7D */	bl __dt__7cSGlobeFv
/* 80172204  38 61 02 A0 */	addi r3, r1, 0x2a0
/* 80172208  38 80 FF FF */	li r4, -1
/* 8017220C  4B EF F4 71 */	bl __dt__7cSGlobeFv
/* 80172210  38 61 12 D4 */	addi r3, r1, 0x12d4
/* 80172214  38 80 FF FF */	li r4, -1
/* 80172218  4B E9 6F 6D */	bl __dt__4cXyzFv
lbl_8017221C:
/* 8017221C  38 61 09 8C */	addi r3, r1, 0x98c
/* 80172220  38 9F 04 90 */	addi r4, r31, 0x490
/* 80172224  48 0F F8 91 */	bl Xyz__7cSGlobeCFv
/* 80172228  38 61 09 80 */	addi r3, r1, 0x980
/* 8017222C  38 9F 04 78 */	addi r4, r31, 0x478
/* 80172230  38 A1 09 8C */	addi r5, r1, 0x98c
/* 80172234  48 0F 48 B1 */	bl __pl__4cXyzCFRC3Vec
/* 80172238  38 7F 04 84 */	addi r3, r31, 0x484
/* 8017223C  38 81 09 80 */	addi r4, r1, 0x980
/* 80172240  4B F2 55 99 */	bl __as__4cXyzFRC4cXyz
/* 80172244  38 61 09 80 */	addi r3, r1, 0x980
/* 80172248  38 80 FF FF */	li r4, -1
/* 8017224C  4B E9 6F 39 */	bl __dt__4cXyzFv
/* 80172250  38 61 09 8C */	addi r3, r1, 0x98c
/* 80172254  38 80 FF FF */	li r4, -1
/* 80172258  4B E9 6F 2D */	bl __dt__4cXyzFv
/* 8017225C  C0 02 9D A8 */	lfs f0, lit_10565(r2)
/* 80172260  D0 1F 04 98 */	stfs f0, 0x498(r31)
/* 80172264  38 61 09 74 */	addi r3, r1, 0x974
/* 80172268  7F E4 FB 78 */	mr r4, r31
/* 8017226C  7F 25 CB 78 */	mr r5, r25
/* 80172270  4B F2 54 AD */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80172274  38 61 12 C8 */	addi r3, r1, 0x12c8
/* 80172278  38 81 09 74 */	addi r4, r1, 0x974
/* 8017227C  4B F2 55 79 */	bl __ct__4cXyzFRC4cXyz
/* 80172280  38 61 09 74 */	addi r3, r1, 0x974
/* 80172284  38 80 FF FF */	li r4, -1
/* 80172288  4B E9 6E FD */	bl __dt__4cXyzFv
/* 8017228C  7F E3 FB 78 */	mr r3, r31
/* 80172290  38 81 12 C8 */	addi r4, r1, 0x12c8
/* 80172294  38 BF 04 84 */	addi r5, r31, 0x484
/* 80172298  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 8017229C  4B FF 38 55 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 801722A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801722A4  40 82 00 58 */	bne lbl_801722FC
/* 801722A8  38 61 09 68 */	addi r3, r1, 0x968
/* 801722AC  38 81 12 C8 */	addi r4, r1, 0x12c8
/* 801722B0  4B F2 55 45 */	bl __ct__4cXyzFRC4cXyz
/* 801722B4  38 61 09 5C */	addi r3, r1, 0x95c
/* 801722B8  38 9F 04 84 */	addi r4, r31, 0x484
/* 801722BC  4B F2 55 39 */	bl __ct__4cXyzFRC4cXyz
/* 801722C0  38 61 09 68 */	addi r3, r1, 0x968
/* 801722C4  38 81 09 5C */	addi r4, r1, 0x95c
/* 801722C8  7F A5 EB 78 */	mr r5, r29
/* 801722CC  7F C6 F3 78 */	mr r6, r30
/* 801722D0  38 E0 00 00 */	li r7, 0
/* 801722D4  48 00 2B 7D */	bl func_80174E50
/* 801722D8  7C 76 1B 78 */	mr r22, r3
/* 801722DC  38 61 09 5C */	addi r3, r1, 0x95c
/* 801722E0  38 80 FF FF */	li r4, -1
/* 801722E4  4B E9 6E A1 */	bl __dt__4cXyzFv
/* 801722E8  38 61 09 68 */	addi r3, r1, 0x968
/* 801722EC  38 80 FF FF */	li r4, -1
/* 801722F0  4B E9 6E 95 */	bl __dt__4cXyzFv
/* 801722F4  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 801722F8  41 82 00 0C */	beq lbl_80172304
lbl_801722FC:
/* 801722FC  3B 80 00 00 */	li r28, 0
/* 80172300  48 00 00 30 */	b lbl_80172330
lbl_80172304:
/* 80172304  38 7F 00 64 */	addi r3, r31, 0x64
/* 80172308  38 9F 04 78 */	addi r4, r31, 0x478
/* 8017230C  4B F2 54 CD */	bl __as__4cXyzFRC4cXyz
/* 80172310  38 7F 00 70 */	addi r3, r31, 0x70
/* 80172314  38 9F 04 84 */	addi r4, r31, 0x484
/* 80172318  4B F2 54 C1 */	bl __as__4cXyzFRC4cXyz
/* 8017231C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80172320  38 9F 04 90 */	addi r4, r31, 0x490
/* 80172324  4B F1 C4 51 */	bl __as__7cSGlobeFRC7cSGlobe
/* 80172328  C0 1F 04 98 */	lfs f0, 0x498(r31)
/* 8017232C  D0 1F 00 80 */	stfs f0, 0x80(r31)
lbl_80172330:
/* 80172330  38 61 12 C8 */	addi r3, r1, 0x12c8
/* 80172334  38 80 FF FF */	li r4, -1
/* 80172338  4B E9 6E 4D */	bl __dt__4cXyzFv
/* 8017233C  48 00 26 C0 */	b lbl_801749FC
/* 80172340  2C 1C 00 1A */	cmpwi r28, 0x1a
/* 80172344  41 82 00 F4 */	beq lbl_80172438
/* 80172348  7F B9 EB 78 */	mr r25, r29
/* 8017234C  7F DA F3 78 */	mr r26, r30
/* 80172350  82 DF 04 20 */	lwz r22, 0x420(r31)
/* 80172354  38 61 09 50 */	addi r3, r1, 0x950
/* 80172358  7F E4 FB 78 */	mr r4, r31
/* 8017235C  7F C5 F3 78 */	mr r5, r30
/* 80172360  48 00 2A D5 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80172364  38 61 13 AC */	addi r3, r1, 0x13ac
/* 80172368  38 81 09 50 */	addi r4, r1, 0x950
/* 8017236C  4B F2 54 6D */	bl __as__4cXyzFRC4cXyz
/* 80172370  38 61 09 50 */	addi r3, r1, 0x950
/* 80172374  38 80 FF FF */	li r4, -1
/* 80172378  4B E9 6E 0D */	bl __dt__4cXyzFv
/* 8017237C  38 61 09 44 */	addi r3, r1, 0x944
/* 80172380  7F E4 FB 78 */	mr r4, r31
/* 80172384  7F A5 EB 78 */	mr r5, r29
/* 80172388  48 00 2A AD */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 8017238C  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80172390  38 81 09 44 */	addi r4, r1, 0x944
/* 80172394  4B F2 54 45 */	bl __as__4cXyzFRC4cXyz
/* 80172398  38 61 09 44 */	addi r3, r1, 0x944
/* 8017239C  38 80 FF FF */	li r4, -1
/* 801723A0  4B E9 6D E5 */	bl __dt__4cXyzFv
/* 801723A4  38 61 09 38 */	addi r3, r1, 0x938
/* 801723A8  7F E4 FB 78 */	mr r4, r31
/* 801723AC  7F C5 F3 78 */	mr r5, r30
/* 801723B0  48 00 2A 69 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801723B4  38 61 13 94 */	addi r3, r1, 0x1394
/* 801723B8  38 81 09 38 */	addi r4, r1, 0x938
/* 801723BC  4B F2 54 1D */	bl __as__4cXyzFRC4cXyz
/* 801723C0  38 61 09 38 */	addi r3, r1, 0x938
/* 801723C4  38 80 FF FF */	li r4, -1
/* 801723C8  4B E9 6D BD */	bl __dt__4cXyzFv
/* 801723CC  38 61 09 2C */	addi r3, r1, 0x92c
/* 801723D0  7F E4 FB 78 */	mr r4, r31
/* 801723D4  7F A5 EB 78 */	mr r5, r29
/* 801723D8  48 00 2A 41 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801723DC  38 61 13 88 */	addi r3, r1, 0x1388
/* 801723E0  38 81 09 2C */	addi r4, r1, 0x92c
/* 801723E4  4B F2 53 F5 */	bl __as__4cXyzFRC4cXyz
/* 801723E8  38 61 09 2C */	addi r3, r1, 0x92c
/* 801723EC  38 80 FF FF */	li r4, -1
/* 801723F0  4B E9 6D 95 */	bl __dt__4cXyzFv
/* 801723F4  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 801723F8  41 82 00 28 */	beq lbl_80172420
/* 801723FC  38 61 09 20 */	addi r3, r1, 0x920
/* 80172400  7F E4 FB 78 */	mr r4, r31
/* 80172404  7F C5 F3 78 */	mr r5, r30
/* 80172408  4B F2 53 15 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017240C  C0 01 09 24 */	lfs f0, 0x924(r1)
/* 80172410  D0 01 13 B0 */	stfs f0, 0x13b0(r1)
/* 80172414  38 61 09 20 */	addi r3, r1, 0x920
/* 80172418  38 80 FF FF */	li r4, -1
/* 8017241C  4B E9 6D 69 */	bl __dt__4cXyzFv
lbl_80172420:
/* 80172420  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80172424  41 82 01 08 */	beq lbl_8017252C
/* 80172428  38 61 13 88 */	addi r3, r1, 0x1388
/* 8017242C  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80172430  4B F1 C4 D5 */	bl __apl__4cXyzFRC3Vec
/* 80172434  48 00 00 F8 */	b lbl_8017252C
lbl_80172438:
/* 80172438  7F D9 F3 78 */	mr r25, r30
/* 8017243C  7F BA EB 78 */	mr r26, r29
/* 80172440  80 1F 04 20 */	lwz r0, 0x420(r31)
/* 80172444  7C 00 00 34 */	cntlzw r0, r0
/* 80172448  54 16 D9 7E */	srwi r22, r0, 5
/* 8017244C  38 61 09 14 */	addi r3, r1, 0x914
/* 80172450  7F E4 FB 78 */	mr r4, r31
/* 80172454  7F A5 EB 78 */	mr r5, r29
/* 80172458  48 00 29 DD */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 8017245C  38 61 13 AC */	addi r3, r1, 0x13ac
/* 80172460  38 81 09 14 */	addi r4, r1, 0x914
/* 80172464  4B F2 53 75 */	bl __as__4cXyzFRC4cXyz
/* 80172468  38 61 09 14 */	addi r3, r1, 0x914
/* 8017246C  38 80 FF FF */	li r4, -1
/* 80172470  4B E9 6D 15 */	bl __dt__4cXyzFv
/* 80172474  38 61 09 08 */	addi r3, r1, 0x908
/* 80172478  7F E4 FB 78 */	mr r4, r31
/* 8017247C  7F C5 F3 78 */	mr r5, r30
/* 80172480  48 00 29 B5 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80172484  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80172488  38 81 09 08 */	addi r4, r1, 0x908
/* 8017248C  4B F2 53 4D */	bl __as__4cXyzFRC4cXyz
/* 80172490  38 61 09 08 */	addi r3, r1, 0x908
/* 80172494  38 80 FF FF */	li r4, -1
/* 80172498  4B E9 6C ED */	bl __dt__4cXyzFv
/* 8017249C  38 61 08 FC */	addi r3, r1, 0x8fc
/* 801724A0  7F E4 FB 78 */	mr r4, r31
/* 801724A4  7F A5 EB 78 */	mr r5, r29
/* 801724A8  48 00 29 71 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801724AC  38 61 13 94 */	addi r3, r1, 0x1394
/* 801724B0  38 81 08 FC */	addi r4, r1, 0x8fc
/* 801724B4  4B F2 53 25 */	bl __as__4cXyzFRC4cXyz
/* 801724B8  38 61 08 FC */	addi r3, r1, 0x8fc
/* 801724BC  38 80 FF FF */	li r4, -1
/* 801724C0  4B E9 6C C5 */	bl __dt__4cXyzFv
/* 801724C4  38 61 08 F0 */	addi r3, r1, 0x8f0
/* 801724C8  7F E4 FB 78 */	mr r4, r31
/* 801724CC  7F C5 F3 78 */	mr r5, r30
/* 801724D0  48 00 29 49 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801724D4  38 61 13 88 */	addi r3, r1, 0x1388
/* 801724D8  38 81 08 F0 */	addi r4, r1, 0x8f0
/* 801724DC  4B F2 52 FD */	bl __as__4cXyzFRC4cXyz
/* 801724E0  38 61 08 F0 */	addi r3, r1, 0x8f0
/* 801724E4  38 80 FF FF */	li r4, -1
/* 801724E8  4B E9 6C 9D */	bl __dt__4cXyzFv
/* 801724EC  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 801724F0  41 82 00 28 */	beq lbl_80172518
/* 801724F4  38 61 08 E4 */	addi r3, r1, 0x8e4
/* 801724F8  7F E4 FB 78 */	mr r4, r31
/* 801724FC  7F C5 F3 78 */	mr r5, r30
/* 80172500  4B F2 52 1D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80172504  C0 01 08 E8 */	lfs f0, 0x8e8(r1)
/* 80172508  D0 01 13 A4 */	stfs f0, 0x13a4(r1)
/* 8017250C  38 61 08 E4 */	addi r3, r1, 0x8e4
/* 80172510  38 80 FF FF */	li r4, -1
/* 80172514  4B E9 6C 71 */	bl __dt__4cXyzFv
lbl_80172518:
/* 80172518  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 8017251C  41 82 00 10 */	beq lbl_8017252C
/* 80172520  38 61 13 94 */	addi r3, r1, 0x1394
/* 80172524  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80172528  4B F1 C3 DD */	bl __apl__4cXyzFRC3Vec
lbl_8017252C:
/* 8017252C  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 80172530  2C 00 00 00 */	cmpwi r0, 0
/* 80172534  40 82 02 04 */	bne lbl_80172738
/* 80172538  38 00 00 01 */	li r0, 1
/* 8017253C  98 1F 01 58 */	stb r0, 0x158(r31)
/* 80172540  38 61 12 BC */	addi r3, r1, 0x12bc
/* 80172544  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80172548  C0 42 9D 8C */	lfs f2, lit_10558(r2)
/* 8017254C  C0 62 9D 68 */	lfs f3, lit_9788(r2)
/* 80172550  4B FC F4 0D */	bl __ct__4cXyzFfff
/* 80172554  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80172558  41 82 00 14 */	beq lbl_8017256C
/* 8017255C  2C 1C 00 1B */	cmpwi r28, 0x1b
/* 80172560  40 82 00 0C */	bne lbl_8017256C
/* 80172564  C0 02 9E 5C */	lfs f0, lit_12286(r2)
/* 80172568  D0 01 12 C0 */	stfs f0, 0x12c0(r1)
lbl_8017256C:
/* 8017256C  38 61 08 D8 */	addi r3, r1, 0x8d8
/* 80172570  7F E4 FB 78 */	mr r4, r31
/* 80172574  7F 45 D3 78 */	mr r5, r26
/* 80172578  4B F2 51 A5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017257C  38 61 08 CC */	addi r3, r1, 0x8cc
/* 80172580  7F E4 FB 78 */	mr r4, r31
/* 80172584  7F 25 CB 78 */	mr r5, r25
/* 80172588  4B F2 51 95 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017258C  38 61 08 C0 */	addi r3, r1, 0x8c0
/* 80172590  38 81 08 D8 */	addi r4, r1, 0x8d8
/* 80172594  38 A1 08 CC */	addi r5, r1, 0x8cc
/* 80172598  48 0F 45 9D */	bl __mi__4cXyzCFRC3Vec
/* 8017259C  38 61 02 90 */	addi r3, r1, 0x290
/* 801725A0  38 81 08 C0 */	addi r4, r1, 0x8c0
/* 801725A4  48 0F F2 DD */	bl __ct__7cSGlobeFRC4cXyz
/* 801725A8  38 61 08 C0 */	addi r3, r1, 0x8c0
/* 801725AC  38 80 FF FF */	li r4, -1
/* 801725B0  4B E9 6B D5 */	bl __dt__4cXyzFv
/* 801725B4  38 61 08 CC */	addi r3, r1, 0x8cc
/* 801725B8  38 80 FF FF */	li r4, -1
/* 801725BC  4B E9 6B C9 */	bl __dt__4cXyzFv
/* 801725C0  38 61 08 D8 */	addi r3, r1, 0x8d8
/* 801725C4  38 80 FF FF */	li r4, -1
/* 801725C8  4B E9 6B BD */	bl __dt__4cXyzFv
/* 801725CC  38 61 02 88 */	addi r3, r1, 0x288
/* 801725D0  38 81 12 BC */	addi r4, r1, 0x12bc
/* 801725D4  48 0F F2 AD */	bl __ct__7cSGlobeFRC4cXyz
/* 801725D8  38 61 02 90 */	addi r3, r1, 0x290
/* 801725DC  48 01 06 A9 */	bl U__7cSGlobeCFv
/* 801725E0  7C 77 1B 78 */	mr r23, r3
/* 801725E4  38 61 02 88 */	addi r3, r1, 0x288
/* 801725E8  48 01 06 9D */	bl U__7cSGlobeCFv
/* 801725EC  7C 64 1B 78 */	mr r4, r3
/* 801725F0  38 61 00 E4 */	addi r3, r1, 0xe4
/* 801725F4  7E E5 BB 78 */	mr r5, r23
/* 801725F8  48 0F EB 7D */	bl __pl__7cSAngleCFRC7cSAngle
/* 801725FC  38 61 02 88 */	addi r3, r1, 0x288
/* 80172600  38 81 00 E4 */	addi r4, r1, 0xe4
/* 80172604  4B F1 C2 91 */	bl U__7cSGlobeFRC7cSAngle
/* 80172608  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8017260C  38 80 FF FF */	li r4, -1
/* 80172610  4B EB DF 01 */	bl __dt__7cSAngleFv
/* 80172614  38 61 08 B4 */	addi r3, r1, 0x8b4
/* 80172618  38 81 02 88 */	addi r4, r1, 0x288
/* 8017261C  48 0F F4 99 */	bl Xyz__7cSGlobeCFv
/* 80172620  38 61 08 A8 */	addi r3, r1, 0x8a8
/* 80172624  38 81 13 A0 */	addi r4, r1, 0x13a0
/* 80172628  38 A1 08 B4 */	addi r5, r1, 0x8b4
/* 8017262C  48 0F 44 B9 */	bl __pl__4cXyzCFRC3Vec
/* 80172630  38 7F 04 04 */	addi r3, r31, 0x404
/* 80172634  38 81 08 A8 */	addi r4, r1, 0x8a8
/* 80172638  4B F2 51 A1 */	bl __as__4cXyzFRC4cXyz
/* 8017263C  38 61 08 A8 */	addi r3, r1, 0x8a8
/* 80172640  38 80 FF FF */	li r4, -1
/* 80172644  4B E9 6B 41 */	bl __dt__4cXyzFv
/* 80172648  38 61 08 B4 */	addi r3, r1, 0x8b4
/* 8017264C  38 80 FF FF */	li r4, -1
/* 80172650  4B E9 6B 35 */	bl __dt__4cXyzFv
/* 80172654  38 61 02 0C */	addi r3, r1, 0x20c
/* 80172658  2C 16 00 00 */	cmpwi r22, 0
/* 8017265C  41 82 00 0C */	beq lbl_80172668
/* 80172660  C0 22 9D 8C */	lfs f1, lit_10558(r2)
/* 80172664  48 00 00 08 */	b lbl_8017266C
lbl_80172668:
/* 80172668  C0 22 9E 30 */	lfs f1, lit_12275(r2)
lbl_8017266C:
/* 8017266C  48 0F E9 5D */	bl __ct__7cSAngleFf
/* 80172670  38 61 02 08 */	addi r3, r1, 0x208
/* 80172674  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80172678  41 82 00 0C */	beq lbl_80172684
/* 8017267C  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80172680  48 00 00 08 */	b lbl_80172688
lbl_80172684:
/* 80172684  C0 22 9E 60 */	lfs f1, lit_12287(r2)
lbl_80172688:
/* 80172688  48 0F E9 41 */	bl __ct__7cSAngleFf
/* 8017268C  38 7F 04 78 */	addi r3, r31, 0x478
/* 80172690  38 9F 04 04 */	addi r4, r31, 0x404
/* 80172694  4B F2 51 45 */	bl __as__4cXyzFRC4cXyz
/* 80172698  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8017269C  C0 22 9E 60 */	lfs f1, lit_12287(r2)
/* 801726A0  48 0F E9 29 */	bl __ct__7cSAngleFf
/* 801726A4  38 61 00 DC */	addi r3, r1, 0xdc
/* 801726A8  7F E4 FB 78 */	mr r4, r31
/* 801726AC  7F 25 CB 78 */	mr r5, r25
/* 801726B0  4B F2 50 89 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 801726B4  38 61 00 D8 */	addi r3, r1, 0xd8
/* 801726B8  38 81 02 0C */	addi r4, r1, 0x20c
/* 801726BC  38 A1 00 DC */	addi r5, r1, 0xdc
/* 801726C0  48 0F EA B5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 801726C4  38 7F 04 90 */	addi r3, r31, 0x490
/* 801726C8  C0 22 9D 84 */	lfs f1, lit_10556(r2)
/* 801726CC  38 81 00 E0 */	addi r4, r1, 0xe0
/* 801726D0  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 801726D4  48 0F F3 35 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 801726D8  38 61 00 D8 */	addi r3, r1, 0xd8
/* 801726DC  38 80 FF FF */	li r4, -1
/* 801726E0  4B EB DE 31 */	bl __dt__7cSAngleFv
/* 801726E4  38 61 00 DC */	addi r3, r1, 0xdc
/* 801726E8  38 80 FF FF */	li r4, -1
/* 801726EC  4B EB DE 25 */	bl __dt__7cSAngleFv
/* 801726F0  38 61 00 E0 */	addi r3, r1, 0xe0
/* 801726F4  38 80 FF FF */	li r4, -1
/* 801726F8  4B EB DE 19 */	bl __dt__7cSAngleFv
/* 801726FC  38 61 02 08 */	addi r3, r1, 0x208
/* 80172700  38 80 FF FF */	li r4, -1
/* 80172704  4B EB DE 0D */	bl __dt__7cSAngleFv
/* 80172708  38 61 02 0C */	addi r3, r1, 0x20c
/* 8017270C  38 80 FF FF */	li r4, -1
/* 80172710  4B EB DE 01 */	bl __dt__7cSAngleFv
/* 80172714  38 61 02 88 */	addi r3, r1, 0x288
/* 80172718  38 80 FF FF */	li r4, -1
/* 8017271C  4B EF EF 61 */	bl __dt__7cSGlobeFv
/* 80172720  38 61 02 90 */	addi r3, r1, 0x290
/* 80172724  38 80 FF FF */	li r4, -1
/* 80172728  4B EF EF 55 */	bl __dt__7cSGlobeFv
/* 8017272C  38 61 12 BC */	addi r3, r1, 0x12bc
/* 80172730  38 80 FF FF */	li r4, -1
/* 80172734  4B E9 6A 51 */	bl __dt__4cXyzFv
lbl_80172738:
/* 80172738  38 61 08 9C */	addi r3, r1, 0x89c
/* 8017273C  38 9F 04 90 */	addi r4, r31, 0x490
/* 80172740  48 0F F3 75 */	bl Xyz__7cSGlobeCFv
/* 80172744  38 61 08 90 */	addi r3, r1, 0x890
/* 80172748  38 9F 04 78 */	addi r4, r31, 0x478
/* 8017274C  38 A1 08 9C */	addi r5, r1, 0x89c
/* 80172750  48 0F 43 95 */	bl __pl__4cXyzCFRC3Vec
/* 80172754  38 7F 04 84 */	addi r3, r31, 0x484
/* 80172758  38 81 08 90 */	addi r4, r1, 0x890
/* 8017275C  4B F2 50 7D */	bl __as__4cXyzFRC4cXyz
/* 80172760  38 61 08 90 */	addi r3, r1, 0x890
/* 80172764  38 80 FF FF */	li r4, -1
/* 80172768  4B E9 6A 1D */	bl __dt__4cXyzFv
/* 8017276C  38 61 08 9C */	addi r3, r1, 0x89c
/* 80172770  38 80 FF FF */	li r4, -1
/* 80172774  4B E9 6A 11 */	bl __dt__4cXyzFv
/* 80172778  C0 02 9E 38 */	lfs f0, lit_12277(r2)
/* 8017277C  D0 1F 04 98 */	stfs f0, 0x498(r31)
/* 80172780  38 61 08 84 */	addi r3, r1, 0x884
/* 80172784  7F E4 FB 78 */	mr r4, r31
/* 80172788  7F 25 CB 78 */	mr r5, r25
/* 8017278C  4B F2 4F 91 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80172790  38 61 12 B0 */	addi r3, r1, 0x12b0
/* 80172794  38 81 08 84 */	addi r4, r1, 0x884
/* 80172798  4B F2 50 5D */	bl __ct__4cXyzFRC4cXyz
/* 8017279C  38 61 08 84 */	addi r3, r1, 0x884
/* 801727A0  38 80 FF FF */	li r4, -1
/* 801727A4  4B E9 69 E1 */	bl __dt__4cXyzFv
/* 801727A8  7F E3 FB 78 */	mr r3, r31
/* 801727AC  38 81 12 B0 */	addi r4, r1, 0x12b0
/* 801727B0  38 BF 04 84 */	addi r5, r31, 0x484
/* 801727B4  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 801727B8  4B FF 33 39 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 801727BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801727C0  40 82 00 58 */	bne lbl_80172818
/* 801727C4  38 61 08 78 */	addi r3, r1, 0x878
/* 801727C8  38 81 12 B0 */	addi r4, r1, 0x12b0
/* 801727CC  4B F2 50 29 */	bl __ct__4cXyzFRC4cXyz
/* 801727D0  38 61 08 6C */	addi r3, r1, 0x86c
/* 801727D4  38 9F 04 84 */	addi r4, r31, 0x484
/* 801727D8  4B F2 50 1D */	bl __ct__4cXyzFRC4cXyz
/* 801727DC  38 61 08 78 */	addi r3, r1, 0x878
/* 801727E0  38 81 08 6C */	addi r4, r1, 0x86c
/* 801727E4  7F A5 EB 78 */	mr r5, r29
/* 801727E8  7F C6 F3 78 */	mr r6, r30
/* 801727EC  38 E0 00 00 */	li r7, 0
/* 801727F0  48 00 26 61 */	bl func_80174E50
/* 801727F4  7C 76 1B 78 */	mr r22, r3
/* 801727F8  38 61 08 6C */	addi r3, r1, 0x86c
/* 801727FC  38 80 FF FF */	li r4, -1
/* 80172800  4B E9 69 85 */	bl __dt__4cXyzFv
/* 80172804  38 61 08 78 */	addi r3, r1, 0x878
/* 80172808  38 80 FF FF */	li r4, -1
/* 8017280C  4B E9 69 79 */	bl __dt__4cXyzFv
/* 80172810  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80172814  41 82 00 0C */	beq lbl_80172820
lbl_80172818:
/* 80172818  3B 80 00 00 */	li r28, 0
/* 8017281C  48 00 00 30 */	b lbl_8017284C
lbl_80172820:
/* 80172820  38 7F 00 64 */	addi r3, r31, 0x64
/* 80172824  38 9F 04 78 */	addi r4, r31, 0x478
/* 80172828  4B F2 4F B1 */	bl __as__4cXyzFRC4cXyz
/* 8017282C  38 7F 00 70 */	addi r3, r31, 0x70
/* 80172830  38 9F 04 84 */	addi r4, r31, 0x484
/* 80172834  4B F2 4F A5 */	bl __as__4cXyzFRC4cXyz
/* 80172838  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017283C  38 9F 04 90 */	addi r4, r31, 0x490
/* 80172840  4B F1 BF 35 */	bl __as__7cSGlobeFRC7cSGlobe
/* 80172844  C0 1F 04 98 */	lfs f0, 0x498(r31)
/* 80172848  D0 1F 00 80 */	stfs f0, 0x80(r31)
lbl_8017284C:
/* 8017284C  38 61 12 B0 */	addi r3, r1, 0x12b0
/* 80172850  38 80 FF FF */	li r4, -1
/* 80172854  4B E9 69 31 */	bl __dt__4cXyzFv
/* 80172858  48 00 21 A4 */	b lbl_801749FC
/* 8017285C  2C 1C 00 0B */	cmpwi r28, 0xb
/* 80172860  41 82 00 F8 */	beq lbl_80172958
/* 80172864  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 80172868  41 82 00 F0 */	beq lbl_80172958
/* 8017286C  7F D6 F3 78 */	mr r22, r30
/* 80172870  83 3F 04 20 */	lwz r25, 0x420(r31)
/* 80172874  38 61 08 60 */	addi r3, r1, 0x860
/* 80172878  7F E4 FB 78 */	mr r4, r31
/* 8017287C  7F A5 EB 78 */	mr r5, r29
/* 80172880  48 00 25 B5 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80172884  38 61 13 AC */	addi r3, r1, 0x13ac
/* 80172888  38 81 08 60 */	addi r4, r1, 0x860
/* 8017288C  4B F2 4F 4D */	bl __as__4cXyzFRC4cXyz
/* 80172890  38 61 08 60 */	addi r3, r1, 0x860
/* 80172894  38 80 FF FF */	li r4, -1
/* 80172898  4B E9 68 ED */	bl __dt__4cXyzFv
/* 8017289C  38 61 08 54 */	addi r3, r1, 0x854
/* 801728A0  7F E4 FB 78 */	mr r4, r31
/* 801728A4  7F C5 F3 78 */	mr r5, r30
/* 801728A8  48 00 25 8D */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 801728AC  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 801728B0  38 81 08 54 */	addi r4, r1, 0x854
/* 801728B4  4B F2 4F 25 */	bl __as__4cXyzFRC4cXyz
/* 801728B8  38 61 08 54 */	addi r3, r1, 0x854
/* 801728BC  38 80 FF FF */	li r4, -1
/* 801728C0  4B E9 68 C5 */	bl __dt__4cXyzFv
/* 801728C4  38 61 08 48 */	addi r3, r1, 0x848
/* 801728C8  7F E4 FB 78 */	mr r4, r31
/* 801728CC  7F A5 EB 78 */	mr r5, r29
/* 801728D0  48 00 25 49 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801728D4  38 61 13 94 */	addi r3, r1, 0x1394
/* 801728D8  38 81 08 48 */	addi r4, r1, 0x848
/* 801728DC  4B F2 4E FD */	bl __as__4cXyzFRC4cXyz
/* 801728E0  38 61 08 48 */	addi r3, r1, 0x848
/* 801728E4  38 80 FF FF */	li r4, -1
/* 801728E8  4B E9 68 9D */	bl __dt__4cXyzFv
/* 801728EC  38 61 08 3C */	addi r3, r1, 0x83c
/* 801728F0  7F E4 FB 78 */	mr r4, r31
/* 801728F4  7F C5 F3 78 */	mr r5, r30
/* 801728F8  48 00 25 21 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801728FC  38 61 13 88 */	addi r3, r1, 0x1388
/* 80172900  38 81 08 3C */	addi r4, r1, 0x83c
/* 80172904  4B F2 4E D5 */	bl __as__4cXyzFRC4cXyz
/* 80172908  38 61 08 3C */	addi r3, r1, 0x83c
/* 8017290C  38 80 FF FF */	li r4, -1
/* 80172910  4B E9 68 75 */	bl __dt__4cXyzFv
/* 80172914  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80172918  41 82 00 28 */	beq lbl_80172940
/* 8017291C  38 61 08 30 */	addi r3, r1, 0x830
/* 80172920  7F E4 FB 78 */	mr r4, r31
/* 80172924  7F C5 F3 78 */	mr r5, r30
/* 80172928  4B F2 4D F5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017292C  C0 01 08 34 */	lfs f0, 0x834(r1)
/* 80172930  D0 01 13 A4 */	stfs f0, 0x13a4(r1)
/* 80172934  38 61 08 30 */	addi r3, r1, 0x830
/* 80172938  38 80 FF FF */	li r4, -1
/* 8017293C  4B E9 68 49 */	bl __dt__4cXyzFv
lbl_80172940:
/* 80172940  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80172944  41 82 01 04 */	beq lbl_80172A48
/* 80172948  38 61 13 94 */	addi r3, r1, 0x1394
/* 8017294C  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80172950  4B F1 BF B5 */	bl __apl__4cXyzFRC3Vec
/* 80172954  48 00 00 F4 */	b lbl_80172A48
lbl_80172958:
/* 80172958  7F B6 EB 78 */	mr r22, r29
/* 8017295C  80 1F 04 20 */	lwz r0, 0x420(r31)
/* 80172960  7C 00 00 34 */	cntlzw r0, r0
/* 80172964  54 19 D9 7E */	srwi r25, r0, 5
/* 80172968  38 61 08 24 */	addi r3, r1, 0x824
/* 8017296C  7F E4 FB 78 */	mr r4, r31
/* 80172970  7F C5 F3 78 */	mr r5, r30
/* 80172974  48 00 24 C1 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80172978  38 61 13 AC */	addi r3, r1, 0x13ac
/* 8017297C  38 81 08 24 */	addi r4, r1, 0x824
/* 80172980  4B F2 4E 59 */	bl __as__4cXyzFRC4cXyz
/* 80172984  38 61 08 24 */	addi r3, r1, 0x824
/* 80172988  38 80 FF FF */	li r4, -1
/* 8017298C  4B E9 67 F9 */	bl __dt__4cXyzFv
/* 80172990  38 61 08 18 */	addi r3, r1, 0x818
/* 80172994  7F E4 FB 78 */	mr r4, r31
/* 80172998  7F A5 EB 78 */	mr r5, r29
/* 8017299C  48 00 24 99 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 801729A0  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 801729A4  38 81 08 18 */	addi r4, r1, 0x818
/* 801729A8  4B F2 4E 31 */	bl __as__4cXyzFRC4cXyz
/* 801729AC  38 61 08 18 */	addi r3, r1, 0x818
/* 801729B0  38 80 FF FF */	li r4, -1
/* 801729B4  4B E9 67 D1 */	bl __dt__4cXyzFv
/* 801729B8  38 61 08 0C */	addi r3, r1, 0x80c
/* 801729BC  7F E4 FB 78 */	mr r4, r31
/* 801729C0  7F C5 F3 78 */	mr r5, r30
/* 801729C4  48 00 24 55 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801729C8  38 61 13 94 */	addi r3, r1, 0x1394
/* 801729CC  38 81 08 0C */	addi r4, r1, 0x80c
/* 801729D0  4B F2 4E 09 */	bl __as__4cXyzFRC4cXyz
/* 801729D4  38 61 08 0C */	addi r3, r1, 0x80c
/* 801729D8  38 80 FF FF */	li r4, -1
/* 801729DC  4B E9 67 A9 */	bl __dt__4cXyzFv
/* 801729E0  38 61 08 00 */	addi r3, r1, 0x800
/* 801729E4  7F E4 FB 78 */	mr r4, r31
/* 801729E8  7F A5 EB 78 */	mr r5, r29
/* 801729EC  48 00 24 2D */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801729F0  38 61 13 88 */	addi r3, r1, 0x1388
/* 801729F4  38 81 08 00 */	addi r4, r1, 0x800
/* 801729F8  4B F2 4D E1 */	bl __as__4cXyzFRC4cXyz
/* 801729FC  38 61 08 00 */	addi r3, r1, 0x800
/* 80172A00  38 80 FF FF */	li r4, -1
/* 80172A04  4B E9 67 81 */	bl __dt__4cXyzFv
/* 80172A08  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80172A0C  41 82 00 28 */	beq lbl_80172A34
/* 80172A10  38 61 07 F4 */	addi r3, r1, 0x7f4
/* 80172A14  7F E4 FB 78 */	mr r4, r31
/* 80172A18  7F C5 F3 78 */	mr r5, r30
/* 80172A1C  4B F2 4D 01 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80172A20  C0 01 07 F8 */	lfs f0, 0x7f8(r1)
/* 80172A24  D0 01 13 B0 */	stfs f0, 0x13b0(r1)
/* 80172A28  38 61 07 F4 */	addi r3, r1, 0x7f4
/* 80172A2C  38 80 FF FF */	li r4, -1
/* 80172A30  4B E9 67 55 */	bl __dt__4cXyzFv
lbl_80172A34:
/* 80172A34  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80172A38  41 82 00 10 */	beq lbl_80172A48
/* 80172A3C  38 61 13 88 */	addi r3, r1, 0x1388
/* 80172A40  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80172A44  4B F1 BE C1 */	bl __apl__4cXyzFRC3Vec
lbl_80172A48:
/* 80172A48  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 80172A4C  2C 00 00 00 */	cmpwi r0, 0
/* 80172A50  40 82 03 00 */	bne lbl_80172D50
/* 80172A54  38 61 07 E8 */	addi r3, r1, 0x7e8
/* 80172A58  7F E4 FB 78 */	mr r4, r31
/* 80172A5C  7E C5 B3 78 */	mr r5, r22
/* 80172A60  48 00 23 B9 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80172A64  C0 42 9D BC */	lfs f2, lit_10570(r2)
/* 80172A68  C0 21 13 A4 */	lfs f1, 0x13a4(r1)
/* 80172A6C  C0 01 07 EC */	lfs f0, 0x7ec(r1)
/* 80172A70  EC 01 00 28 */	fsubs f0, f1, f0
/* 80172A74  EE 22 00 32 */	fmuls f17, f2, f0
/* 80172A78  38 61 07 E8 */	addi r3, r1, 0x7e8
/* 80172A7C  38 80 FF FF */	li r4, -1
/* 80172A80  4B E9 67 05 */	bl __dt__4cXyzFv
/* 80172A84  C0 42 9E 64 */	lfs f2, lit_12288(r2)
/* 80172A88  C0 21 13 B0 */	lfs f1, 0x13b0(r1)
/* 80172A8C  C0 01 13 A4 */	lfs f0, 0x13a4(r1)
/* 80172A90  EC 01 00 28 */	fsubs f0, f1, f0
/* 80172A94  EE 42 00 32 */	fmuls f18, f2, f0
/* 80172A98  C0 02 9D 30 */	lfs f0, lit_9397(r2)
/* 80172A9C  EC 00 04 72 */	fmuls f0, f0, f17
/* 80172AA0  EE 20 90 2A */	fadds f17, f0, f18
/* 80172AA4  38 7F 04 18 */	addi r3, r31, 0x418
/* 80172AA8  48 00 FF BD */	bl R__7cSGlobeCFv
/* 80172AAC  C0 02 9E 64 */	lfs f0, lit_12288(r2)
/* 80172AB0  EC 60 00 72 */	fmuls f3, f0, f1
/* 80172AB4  38 61 12 A4 */	addi r3, r1, 0x12a4
/* 80172AB8  C0 22 9E 00 */	lfs f1, lit_11171(r2)
/* 80172ABC  C0 42 9C E4 */	lfs f2, lit_6629(r2)
/* 80172AC0  4B FC EE 9D */	bl __ct__4cXyzFfff
/* 80172AC4  38 61 12 98 */	addi r3, r1, 0x1298
/* 80172AC8  C0 22 9D 74 */	lfs f1, lit_10552(r2)
/* 80172ACC  FC 40 90 90 */	fmr f2, f18
/* 80172AD0  C0 62 9D 70 */	lfs f3, lit_10551(r2)
/* 80172AD4  4B FC EE 89 */	bl __ct__4cXyzFfff
/* 80172AD8  2C 19 00 00 */	cmpwi r25, 0
/* 80172ADC  41 82 00 1C */	beq lbl_80172AF8
/* 80172AE0  C0 01 12 A4 */	lfs f0, 0x12a4(r1)
/* 80172AE4  FC 00 00 50 */	fneg f0, f0
/* 80172AE8  D0 01 12 A4 */	stfs f0, 0x12a4(r1)
/* 80172AEC  C0 01 12 98 */	lfs f0, 0x1298(r1)
/* 80172AF0  FC 00 00 50 */	fneg f0, f0
/* 80172AF4  D0 01 12 98 */	stfs f0, 0x1298(r1)
lbl_80172AF8:
/* 80172AF8  38 61 07 DC */	addi r3, r1, 0x7dc
/* 80172AFC  38 81 13 AC */	addi r4, r1, 0x13ac
/* 80172B00  38 A1 13 A0 */	addi r5, r1, 0x13a0
/* 80172B04  48 0F 40 31 */	bl __mi__4cXyzCFRC3Vec
/* 80172B08  38 61 02 80 */	addi r3, r1, 0x280
/* 80172B0C  38 81 07 DC */	addi r4, r1, 0x7dc
/* 80172B10  48 0F ED 71 */	bl __ct__7cSGlobeFRC4cXyz
/* 80172B14  38 61 07 DC */	addi r3, r1, 0x7dc
/* 80172B18  38 80 FF FF */	li r4, -1
/* 80172B1C  4B E9 66 69 */	bl __dt__4cXyzFv
/* 80172B20  38 61 02 78 */	addi r3, r1, 0x278
/* 80172B24  38 81 12 A4 */	addi r4, r1, 0x12a4
/* 80172B28  48 0F ED 59 */	bl __ct__7cSGlobeFRC4cXyz
/* 80172B2C  38 61 02 80 */	addi r3, r1, 0x280
/* 80172B30  48 01 01 55 */	bl U__7cSGlobeCFv
/* 80172B34  7C 77 1B 78 */	mr r23, r3
/* 80172B38  38 61 02 78 */	addi r3, r1, 0x278
/* 80172B3C  48 01 01 49 */	bl U__7cSGlobeCFv
/* 80172B40  7C 64 1B 78 */	mr r4, r3
/* 80172B44  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80172B48  7E E5 BB 78 */	mr r5, r23
/* 80172B4C  48 0F E6 29 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80172B50  38 61 02 78 */	addi r3, r1, 0x278
/* 80172B54  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80172B58  4B F1 BD 3D */	bl U__7cSGlobeFRC7cSAngle
/* 80172B5C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80172B60  38 80 FF FF */	li r4, -1
/* 80172B64  4B EB D9 AD */	bl __dt__7cSAngleFv
/* 80172B68  38 61 07 D0 */	addi r3, r1, 0x7d0
/* 80172B6C  7F E4 FB 78 */	mr r4, r31
/* 80172B70  7E C5 B3 78 */	mr r5, r22
/* 80172B74  4B F2 4B A9 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80172B78  38 61 07 C4 */	addi r3, r1, 0x7c4
/* 80172B7C  38 81 02 78 */	addi r4, r1, 0x278
/* 80172B80  48 0F EF 35 */	bl Xyz__7cSGlobeCFv
/* 80172B84  38 61 07 B8 */	addi r3, r1, 0x7b8
/* 80172B88  38 81 07 D0 */	addi r4, r1, 0x7d0
/* 80172B8C  38 A1 07 C4 */	addi r5, r1, 0x7c4
/* 80172B90  48 0F 3F 55 */	bl __pl__4cXyzCFRC3Vec
/* 80172B94  38 7F 04 78 */	addi r3, r31, 0x478
/* 80172B98  38 81 07 B8 */	addi r4, r1, 0x7b8
/* 80172B9C  4B F2 4C 3D */	bl __as__4cXyzFRC4cXyz
/* 80172BA0  38 61 07 B8 */	addi r3, r1, 0x7b8
/* 80172BA4  38 80 FF FF */	li r4, -1
/* 80172BA8  4B E9 65 DD */	bl __dt__4cXyzFv
/* 80172BAC  38 61 07 C4 */	addi r3, r1, 0x7c4
/* 80172BB0  38 80 FF FF */	li r4, -1
/* 80172BB4  4B E9 65 D1 */	bl __dt__4cXyzFv
/* 80172BB8  38 61 07 D0 */	addi r3, r1, 0x7d0
/* 80172BBC  38 80 FF FF */	li r4, -1
/* 80172BC0  4B E9 65 C5 */	bl __dt__4cXyzFv
/* 80172BC4  C0 01 13 8C */	lfs f0, 0x138c(r1)
/* 80172BC8  EC 00 88 2A */	fadds f0, f0, f17
/* 80172BCC  D0 1F 04 7C */	stfs f0, 0x47c(r31)
/* 80172BD0  38 61 02 78 */	addi r3, r1, 0x278
/* 80172BD4  38 81 12 98 */	addi r4, r1, 0x1298
/* 80172BD8  48 0F EE 99 */	bl Val__7cSGlobeFRC4cXyz
/* 80172BDC  38 61 02 80 */	addi r3, r1, 0x280
/* 80172BE0  48 01 00 A5 */	bl U__7cSGlobeCFv
/* 80172BE4  48 0F E5 05 */	bl Inv__7cSAngleCFv
/* 80172BE8  7C 77 1B 78 */	mr r23, r3
/* 80172BEC  38 61 02 78 */	addi r3, r1, 0x278
/* 80172BF0  48 01 00 95 */	bl U__7cSGlobeCFv
/* 80172BF4  7C 64 1B 78 */	mr r4, r3
/* 80172BF8  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80172BFC  7E E5 07 34 */	extsh r5, r23
/* 80172C00  48 0F E5 FD */	bl __pl__7cSAngleCFs
/* 80172C04  38 61 02 78 */	addi r3, r1, 0x278
/* 80172C08  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80172C0C  4B F1 BC 89 */	bl U__7cSGlobeFRC7cSAngle
/* 80172C10  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80172C14  38 80 FF FF */	li r4, -1
/* 80172C18  4B EB D8 F9 */	bl __dt__7cSAngleFv
/* 80172C1C  38 61 02 78 */	addi r3, r1, 0x278
/* 80172C20  48 00 FD E9 */	bl V__7cSGlobeCFv
/* 80172C24  7C 64 1B 78 */	mr r4, r3
/* 80172C28  38 61 00 CC */	addi r3, r1, 0xcc
/* 80172C2C  C0 22 9C EC */	lfs f1, lit_6766(r2)
/* 80172C30  48 0F E6 35 */	bl __ml__7cSAngleCFf
/* 80172C34  38 61 02 80 */	addi r3, r1, 0x280
/* 80172C38  48 00 FD D1 */	bl V__7cSGlobeCFv
/* 80172C3C  7C 64 1B 78 */	mr r4, r3
/* 80172C40  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80172C44  C0 22 9D 24 */	lfs f1, lit_8530(r2)
/* 80172C48  48 0F E6 1D */	bl __ml__7cSAngleCFf
/* 80172C4C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80172C50  38 81 00 CC */	addi r4, r1, 0xcc
/* 80172C54  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 80172C58  48 0F E5 1D */	bl __pl__7cSAngleCFRC7cSAngle
/* 80172C5C  38 61 02 78 */	addi r3, r1, 0x278
/* 80172C60  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80172C64  4B F1 CD F5 */	bl V__7cSGlobeFRC7cSAngle
/* 80172C68  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80172C6C  38 80 FF FF */	li r4, -1
/* 80172C70  4B EB D8 A1 */	bl __dt__7cSAngleFv
/* 80172C74  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80172C78  38 80 FF FF */	li r4, -1
/* 80172C7C  4B EB D8 95 */	bl __dt__7cSAngleFv
/* 80172C80  38 61 00 CC */	addi r3, r1, 0xcc
/* 80172C84  38 80 FF FF */	li r4, -1
/* 80172C88  4B EB D8 89 */	bl __dt__7cSAngleFv
/* 80172C8C  38 61 07 AC */	addi r3, r1, 0x7ac
/* 80172C90  38 81 02 78 */	addi r4, r1, 0x278
/* 80172C94  48 0F EE 21 */	bl Xyz__7cSGlobeCFv
/* 80172C98  38 61 07 A0 */	addi r3, r1, 0x7a0
/* 80172C9C  38 81 13 AC */	addi r4, r1, 0x13ac
/* 80172CA0  38 A1 07 AC */	addi r5, r1, 0x7ac
/* 80172CA4  48 0F 3E 41 */	bl __pl__4cXyzCFRC3Vec
/* 80172CA8  38 7F 04 84 */	addi r3, r31, 0x484
/* 80172CAC  38 81 07 A0 */	addi r4, r1, 0x7a0
/* 80172CB0  4B F2 4B 29 */	bl __as__4cXyzFRC4cXyz
/* 80172CB4  38 61 07 A0 */	addi r3, r1, 0x7a0
/* 80172CB8  38 80 FF FF */	li r4, -1
/* 80172CBC  4B E9 64 C9 */	bl __dt__4cXyzFv
/* 80172CC0  38 61 07 AC */	addi r3, r1, 0x7ac
/* 80172CC4  38 80 FF FF */	li r4, -1
/* 80172CC8  4B E9 64 BD */	bl __dt__4cXyzFv
/* 80172CCC  38 61 07 94 */	addi r3, r1, 0x794
/* 80172CD0  38 9F 04 84 */	addi r4, r31, 0x484
/* 80172CD4  38 BF 04 78 */	addi r5, r31, 0x478
/* 80172CD8  48 0F 3E 5D */	bl __mi__4cXyzCFRC3Vec
/* 80172CDC  38 7F 04 90 */	addi r3, r31, 0x490
/* 80172CE0  38 81 07 94 */	addi r4, r1, 0x794
/* 80172CE4  48 0F ED 8D */	bl Val__7cSGlobeFRC4cXyz
/* 80172CE8  38 61 07 94 */	addi r3, r1, 0x794
/* 80172CEC  38 80 FF FF */	li r4, -1
/* 80172CF0  4B E9 64 95 */	bl __dt__4cXyzFv
/* 80172CF4  38 00 00 01 */	li r0, 1
/* 80172CF8  98 1F 01 58 */	stb r0, 0x158(r31)
/* 80172CFC  2C 1C 00 0B */	cmpwi r28, 0xb
/* 80172D00  41 82 00 0C */	beq lbl_80172D0C
/* 80172D04  2C 1C 00 0C */	cmpwi r28, 0xc
/* 80172D08  40 82 00 10 */	bne lbl_80172D18
lbl_80172D0C:
/* 80172D0C  C0 02 9E 38 */	lfs f0, lit_12277(r2)
/* 80172D10  D0 1F 04 98 */	stfs f0, 0x498(r31)
/* 80172D14  48 00 00 0C */	b lbl_80172D20
lbl_80172D18:
/* 80172D18  C0 02 9E 68 */	lfs f0, lit_12289(r2)
/* 80172D1C  D0 1F 04 98 */	stfs f0, 0x498(r31)
lbl_80172D20:
/* 80172D20  38 61 02 78 */	addi r3, r1, 0x278
/* 80172D24  38 80 FF FF */	li r4, -1
/* 80172D28  4B EF E9 55 */	bl __dt__7cSGlobeFv
/* 80172D2C  38 61 02 80 */	addi r3, r1, 0x280
/* 80172D30  38 80 FF FF */	li r4, -1
/* 80172D34  4B EF E9 49 */	bl __dt__7cSGlobeFv
/* 80172D38  38 61 12 98 */	addi r3, r1, 0x1298
/* 80172D3C  38 80 FF FF */	li r4, -1
/* 80172D40  4B E9 64 45 */	bl __dt__4cXyzFv
/* 80172D44  38 61 12 A4 */	addi r3, r1, 0x12a4
/* 80172D48  38 80 FF FF */	li r4, -1
/* 80172D4C  4B E9 64 39 */	bl __dt__4cXyzFv
lbl_80172D50:
/* 80172D50  38 61 07 88 */	addi r3, r1, 0x788
/* 80172D54  7F E4 FB 78 */	mr r4, r31
/* 80172D58  7E C5 B3 78 */	mr r5, r22
/* 80172D5C  4B F2 49 C1 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80172D60  38 61 12 8C */	addi r3, r1, 0x128c
/* 80172D64  38 81 07 88 */	addi r4, r1, 0x788
/* 80172D68  4B F2 4A 8D */	bl __ct__4cXyzFRC4cXyz
/* 80172D6C  38 61 07 88 */	addi r3, r1, 0x788
/* 80172D70  38 80 FF FF */	li r4, -1
/* 80172D74  4B E9 64 11 */	bl __dt__4cXyzFv
/* 80172D78  7F E3 FB 78 */	mr r3, r31
/* 80172D7C  38 81 12 8C */	addi r4, r1, 0x128c
/* 80172D80  38 BF 04 84 */	addi r5, r31, 0x484
/* 80172D84  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 80172D88  4B FF 2D 69 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80172D8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80172D90  40 82 00 58 */	bne lbl_80172DE8
/* 80172D94  38 61 07 7C */	addi r3, r1, 0x77c
/* 80172D98  38 81 12 8C */	addi r4, r1, 0x128c
/* 80172D9C  4B F2 4A 59 */	bl __ct__4cXyzFRC4cXyz
/* 80172DA0  38 61 07 70 */	addi r3, r1, 0x770
/* 80172DA4  38 9F 04 84 */	addi r4, r31, 0x484
/* 80172DA8  4B F2 4A 4D */	bl __ct__4cXyzFRC4cXyz
/* 80172DAC  38 61 07 7C */	addi r3, r1, 0x77c
/* 80172DB0  38 81 07 70 */	addi r4, r1, 0x770
/* 80172DB4  7F A5 EB 78 */	mr r5, r29
/* 80172DB8  7F C6 F3 78 */	mr r6, r30
/* 80172DBC  38 E0 00 00 */	li r7, 0
/* 80172DC0  48 00 20 91 */	bl func_80174E50
/* 80172DC4  7C 76 1B 78 */	mr r22, r3
/* 80172DC8  38 61 07 70 */	addi r3, r1, 0x770
/* 80172DCC  38 80 FF FF */	li r4, -1
/* 80172DD0  4B E9 63 B5 */	bl __dt__4cXyzFv
/* 80172DD4  38 61 07 7C */	addi r3, r1, 0x77c
/* 80172DD8  38 80 FF FF */	li r4, -1
/* 80172DDC  4B E9 63 A9 */	bl __dt__4cXyzFv
/* 80172DE0  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80172DE4  41 82 00 0C */	beq lbl_80172DF0
lbl_80172DE8:
/* 80172DE8  3B 80 00 00 */	li r28, 0
/* 80172DEC  48 00 00 30 */	b lbl_80172E1C
lbl_80172DF0:
/* 80172DF0  38 7F 00 64 */	addi r3, r31, 0x64
/* 80172DF4  38 9F 04 78 */	addi r4, r31, 0x478
/* 80172DF8  4B F2 49 E1 */	bl __as__4cXyzFRC4cXyz
/* 80172DFC  38 7F 00 70 */	addi r3, r31, 0x70
/* 80172E00  38 9F 04 84 */	addi r4, r31, 0x484
/* 80172E04  4B F2 49 D5 */	bl __as__4cXyzFRC4cXyz
/* 80172E08  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80172E0C  38 9F 04 90 */	addi r4, r31, 0x490
/* 80172E10  4B F1 B9 65 */	bl __as__7cSGlobeFRC7cSGlobe
/* 80172E14  C0 1F 04 98 */	lfs f0, 0x498(r31)
/* 80172E18  D0 1F 00 80 */	stfs f0, 0x80(r31)
lbl_80172E1C:
/* 80172E1C  38 61 12 8C */	addi r3, r1, 0x128c
/* 80172E20  38 80 FF FF */	li r4, -1
/* 80172E24  4B E9 63 61 */	bl __dt__4cXyzFv
/* 80172E28  48 00 1B D4 */	b lbl_801749FC
/* 80172E2C  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 80172E30  2C 00 00 00 */	cmpwi r0, 0
/* 80172E34  40 82 00 0C */	bne lbl_80172E40
/* 80172E38  38 00 00 01 */	li r0, 1
/* 80172E3C  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_80172E40:
/* 80172E40  38 7F 00 64 */	addi r3, r31, 0x64
/* 80172E44  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 80172E48  4B F2 49 91 */	bl __as__4cXyzFRC4cXyz
/* 80172E4C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80172E50  C0 22 9E 30 */	lfs f1, lit_12275(r2)
/* 80172E54  48 0F E1 75 */	bl __ct__7cSAngleFf
/* 80172E58  38 7F 04 10 */	addi r3, r31, 0x410
/* 80172E5C  48 00 FE 29 */	bl U__7cSGlobeCFv
/* 80172E60  7C 65 1B 78 */	mr r5, r3
/* 80172E64  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80172E68  C0 22 9E 6C */	lfs f1, lit_12290(r2)
/* 80172E6C  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80172E70  48 0F EB 99 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 80172E74  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80172E78  38 80 FF FF */	li r4, -1
/* 80172E7C  4B EB D6 95 */	bl __dt__7cSAngleFv
/* 80172E80  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80172E84  48 00 FB 85 */	bl V__7cSGlobeCFv
/* 80172E88  38 81 02 44 */	addi r4, r1, 0x244
/* 80172E8C  48 00 FC 01 */	bl __gt__7cSAngleCFRC7cSAngle
/* 80172E90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80172E94  41 82 00 10 */	beq lbl_80172EA4
/* 80172E98  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80172E9C  38 81 02 44 */	addi r4, r1, 0x244
/* 80172EA0  4B F1 CB B9 */	bl V__7cSGlobeFRC7cSAngle
lbl_80172EA4:
/* 80172EA4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80172EA8  48 00 FB 61 */	bl V__7cSGlobeCFv
/* 80172EAC  38 81 02 40 */	addi r4, r1, 0x240
/* 80172EB0  48 00 FB BD */	bl __lt__7cSAngleCFRC7cSAngle
/* 80172EB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80172EB8  41 82 00 10 */	beq lbl_80172EC8
/* 80172EBC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80172EC0  38 81 02 40 */	addi r4, r1, 0x240
/* 80172EC4  4B F1 CB 95 */	bl V__7cSGlobeFRC7cSAngle
lbl_80172EC8:
/* 80172EC8  38 61 07 64 */	addi r3, r1, 0x764
/* 80172ECC  7F E4 FB 78 */	mr r4, r31
/* 80172ED0  7F A5 EB 78 */	mr r5, r29
/* 80172ED4  4B F2 48 49 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80172ED8  38 61 12 80 */	addi r3, r1, 0x1280
/* 80172EDC  38 81 07 64 */	addi r4, r1, 0x764
/* 80172EE0  4B F2 49 15 */	bl __ct__4cXyzFRC4cXyz
/* 80172EE4  38 61 07 64 */	addi r3, r1, 0x764
/* 80172EE8  38 80 FF FF */	li r4, -1
/* 80172EEC  4B E9 62 99 */	bl __dt__4cXyzFv
/* 80172EF0  38 61 07 58 */	addi r3, r1, 0x758
/* 80172EF4  7F E4 FB 78 */	mr r4, r31
/* 80172EF8  7F C5 F3 78 */	mr r5, r30
/* 80172EFC  4B F2 48 21 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80172F00  38 61 12 74 */	addi r3, r1, 0x1274
/* 80172F04  38 81 07 58 */	addi r4, r1, 0x758
/* 80172F08  4B F2 48 ED */	bl __ct__4cXyzFRC4cXyz
/* 80172F0C  38 61 07 58 */	addi r3, r1, 0x758
/* 80172F10  38 80 FF FF */	li r4, -1
/* 80172F14  4B E9 62 71 */	bl __dt__4cXyzFv
/* 80172F18  38 61 02 04 */	addi r3, r1, 0x204
/* 80172F1C  48 00 FB 2D */	bl __ct__7cSAngleFv
/* 80172F20  80 1F 04 20 */	lwz r0, 0x420(r31)
/* 80172F24  2C 00 00 00 */	cmpwi r0, 0
/* 80172F28  41 82 00 2C */	beq lbl_80172F54
/* 80172F2C  38 61 00 BC */	addi r3, r1, 0xbc
/* 80172F30  C0 22 9D 68 */	lfs f1, lit_9788(r2)
/* 80172F34  48 0F E0 95 */	bl __ct__7cSAngleFf
/* 80172F38  38 61 02 04 */	addi r3, r1, 0x204
/* 80172F3C  38 81 00 BC */	addi r4, r1, 0xbc
/* 80172F40  48 00 FD 69 */	bl __as__7cSAngleFRC7cSAngle
/* 80172F44  38 61 00 BC */	addi r3, r1, 0xbc
/* 80172F48  38 80 FF FF */	li r4, -1
/* 80172F4C  4B EB D5 C5 */	bl __dt__7cSAngleFv
/* 80172F50  48 00 00 28 */	b lbl_80172F78
lbl_80172F54:
/* 80172F54  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80172F58  C0 22 9C B0 */	lfs f1, lit_5660(r2)
/* 80172F5C  48 0F E0 6D */	bl __ct__7cSAngleFf
/* 80172F60  38 61 02 04 */	addi r3, r1, 0x204
/* 80172F64  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80172F68  48 00 FD 41 */	bl __as__7cSAngleFRC7cSAngle
/* 80172F6C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80172F70  38 80 FF FF */	li r4, -1
/* 80172F74  4B EB D5 9D */	bl __dt__7cSAngleFv
lbl_80172F78:
/* 80172F78  3A E0 00 00 */	li r23, 0
lbl_80172F7C:
/* 80172F7C  38 61 07 4C */	addi r3, r1, 0x74c
/* 80172F80  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80172F84  48 0F EB 31 */	bl Xyz__7cSGlobeCFv
/* 80172F88  38 61 07 40 */	addi r3, r1, 0x740
/* 80172F8C  38 9F 00 64 */	addi r4, r31, 0x64
/* 80172F90  38 A1 07 4C */	addi r5, r1, 0x74c
/* 80172F94  48 0F 3B 51 */	bl __pl__4cXyzCFRC3Vec
/* 80172F98  38 7F 00 70 */	addi r3, r31, 0x70
/* 80172F9C  38 81 07 40 */	addi r4, r1, 0x740
/* 80172FA0  4B F2 48 39 */	bl __as__4cXyzFRC4cXyz
/* 80172FA4  38 61 07 40 */	addi r3, r1, 0x740
/* 80172FA8  38 80 FF FF */	li r4, -1
/* 80172FAC  4B E9 61 D9 */	bl __dt__4cXyzFv
/* 80172FB0  38 61 07 4C */	addi r3, r1, 0x74c
/* 80172FB4  38 80 FF FF */	li r4, -1
/* 80172FB8  4B E9 61 CD */	bl __dt__4cXyzFv
/* 80172FBC  7F E3 FB 78 */	mr r3, r31
/* 80172FC0  38 81 12 80 */	addi r4, r1, 0x1280
/* 80172FC4  38 BF 00 70 */	addi r5, r31, 0x70
/* 80172FC8  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 80172FCC  4B FF 2B 25 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80172FD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80172FD4  40 82 00 C8 */	bne lbl_8017309C
/* 80172FD8  7F E3 FB 78 */	mr r3, r31
/* 80172FDC  38 81 12 74 */	addi r4, r1, 0x1274
/* 80172FE0  38 BF 00 70 */	addi r5, r31, 0x70
/* 80172FE4  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 80172FE8  4B FF 2B 09 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80172FEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80172FF0  40 82 00 AC */	bne lbl_8017309C
/* 80172FF4  38 61 07 34 */	addi r3, r1, 0x734
/* 80172FF8  38 81 12 80 */	addi r4, r1, 0x1280
/* 80172FFC  4B F2 47 F9 */	bl __ct__4cXyzFRC4cXyz
/* 80173000  38 61 07 28 */	addi r3, r1, 0x728
/* 80173004  38 9F 00 70 */	addi r4, r31, 0x70
/* 80173008  4B F2 47 ED */	bl __ct__4cXyzFRC4cXyz
/* 8017300C  38 61 07 34 */	addi r3, r1, 0x734
/* 80173010  38 81 07 28 */	addi r4, r1, 0x728
/* 80173014  7F A5 EB 78 */	mr r5, r29
/* 80173018  7F C6 F3 78 */	mr r6, r30
/* 8017301C  38 E0 00 00 */	li r7, 0
/* 80173020  48 00 1E 31 */	bl func_80174E50
/* 80173024  7C 76 1B 78 */	mr r22, r3
/* 80173028  38 61 07 28 */	addi r3, r1, 0x728
/* 8017302C  38 80 FF FF */	li r4, -1
/* 80173030  4B E9 61 55 */	bl __dt__4cXyzFv
/* 80173034  38 61 07 34 */	addi r3, r1, 0x734
/* 80173038  38 80 FF FF */	li r4, -1
/* 8017303C  4B E9 61 49 */	bl __dt__4cXyzFv
/* 80173040  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80173044  40 82 00 58 */	bne lbl_8017309C
/* 80173048  38 61 07 1C */	addi r3, r1, 0x71c
/* 8017304C  38 81 12 74 */	addi r4, r1, 0x1274
/* 80173050  4B F2 47 A5 */	bl __ct__4cXyzFRC4cXyz
/* 80173054  38 61 07 10 */	addi r3, r1, 0x710
/* 80173058  38 9F 00 70 */	addi r4, r31, 0x70
/* 8017305C  4B F2 47 99 */	bl __ct__4cXyzFRC4cXyz
/* 80173060  38 61 07 1C */	addi r3, r1, 0x71c
/* 80173064  38 81 07 10 */	addi r4, r1, 0x710
/* 80173068  7F A5 EB 78 */	mr r5, r29
/* 8017306C  7F C6 F3 78 */	mr r6, r30
/* 80173070  38 E0 00 00 */	li r7, 0
/* 80173074  48 00 1D DD */	bl func_80174E50
/* 80173078  7C 76 1B 78 */	mr r22, r3
/* 8017307C  38 61 07 10 */	addi r3, r1, 0x710
/* 80173080  38 80 FF FF */	li r4, -1
/* 80173084  4B E9 61 01 */	bl __dt__4cXyzFv
/* 80173088  38 61 07 1C */	addi r3, r1, 0x71c
/* 8017308C  38 80 FF FF */	li r4, -1
/* 80173090  4B E9 60 F5 */	bl __dt__4cXyzFv
/* 80173094  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80173098  41 82 00 40 */	beq lbl_801730D8
lbl_8017309C:
/* 8017309C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801730A0  48 00 FB E5 */	bl U__7cSGlobeCFv
/* 801730A4  7C 64 1B 78 */	mr r4, r3
/* 801730A8  38 61 00 B4 */	addi r3, r1, 0xb4
/* 801730AC  38 A1 02 04 */	addi r5, r1, 0x204
/* 801730B0  48 0F E0 C5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 801730B4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801730B8  38 81 00 B4 */	addi r4, r1, 0xb4
/* 801730BC  4B F1 B7 D9 */	bl U__7cSGlobeFRC7cSAngle
/* 801730C0  38 61 00 B4 */	addi r3, r1, 0xb4
/* 801730C4  38 80 FF FF */	li r4, -1
/* 801730C8  4B EB D4 49 */	bl __dt__7cSAngleFv
/* 801730CC  3A F7 00 01 */	addi r23, r23, 1
/* 801730D0  2C 17 00 12 */	cmpwi r23, 0x12
/* 801730D4  41 80 FE A8 */	blt lbl_80172F7C
lbl_801730D8:
/* 801730D8  C0 02 9C B8 */	lfs f0, lit_5662(r2)
/* 801730DC  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 801730E0  38 61 02 04 */	addi r3, r1, 0x204
/* 801730E4  38 80 FF FF */	li r4, -1
/* 801730E8  4B EB D4 29 */	bl __dt__7cSAngleFv
/* 801730EC  38 61 12 74 */	addi r3, r1, 0x1274
/* 801730F0  38 80 FF FF */	li r4, -1
/* 801730F4  4B E9 60 91 */	bl __dt__4cXyzFv
/* 801730F8  38 61 12 80 */	addi r3, r1, 0x1280
/* 801730FC  38 80 FF FF */	li r4, -1
/* 80173100  4B E9 60 85 */	bl __dt__4cXyzFv
/* 80173104  48 00 18 F8 */	b lbl_801749FC
/* 80173108  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 8017310C  2C 00 00 00 */	cmpwi r0, 0
/* 80173110  40 82 18 EC */	bne lbl_801749FC
/* 80173114  38 00 00 01 */	li r0, 1
/* 80173118  98 1F 01 58 */	stb r0, 0x158(r31)
/* 8017311C  38 7F 00 64 */	addi r3, r31, 0x64
/* 80173120  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 80173124  4B F2 46 B5 */	bl __as__4cXyzFRC4cXyz
/* 80173128  38 61 02 00 */	addi r3, r1, 0x200
/* 8017312C  48 00 F9 1D */	bl __ct__7cSAngleFv
/* 80173130  80 1F 04 20 */	lwz r0, 0x420(r31)
/* 80173134  2C 00 00 00 */	cmpwi r0, 0
/* 80173138  41 82 00 38 */	beq lbl_80173170
/* 8017313C  38 7F 04 18 */	addi r3, r31, 0x418
/* 80173140  48 00 FB 45 */	bl U__7cSGlobeCFv
/* 80173144  7C 64 1B 78 */	mr r4, r3
/* 80173148  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8017314C  38 AD 8C 10 */	la r5, _90__7cSAngle(r13) /* 80451190-_SDA_BASE_ */
/* 80173150  48 0F E0 25 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80173154  38 61 02 00 */	addi r3, r1, 0x200
/* 80173158  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8017315C  48 00 FB 4D */	bl __as__7cSAngleFRC7cSAngle
/* 80173160  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80173164  38 80 FF FF */	li r4, -1
/* 80173168  4B EB D3 A9 */	bl __dt__7cSAngleFv
/* 8017316C  48 00 00 34 */	b lbl_801731A0
lbl_80173170:
/* 80173170  38 7F 04 18 */	addi r3, r31, 0x418
/* 80173174  48 00 FB 11 */	bl U__7cSGlobeCFv
/* 80173178  7C 64 1B 78 */	mr r4, r3
/* 8017317C  38 61 00 AC */	addi r3, r1, 0xac
/* 80173180  38 AD 8C 18 */	la r5, _270__7cSAngle(r13) /* 80451198-_SDA_BASE_ */
/* 80173184  48 0F DF F1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80173188  38 61 02 00 */	addi r3, r1, 0x200
/* 8017318C  38 81 00 AC */	addi r4, r1, 0xac
/* 80173190  48 00 FB 19 */	bl __as__7cSAngleFRC7cSAngle
/* 80173194  38 61 00 AC */	addi r3, r1, 0xac
/* 80173198  38 80 FF FF */	li r4, -1
/* 8017319C  4B EB D3 75 */	bl __dt__7cSAngleFv
lbl_801731A0:
/* 801731A0  38 61 00 A8 */	addi r3, r1, 0xa8
/* 801731A4  C0 22 9D CC */	lfs f1, lit_10574(r2)
/* 801731A8  48 0F DE 21 */	bl __ct__7cSAngleFf
/* 801731AC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801731B0  C0 22 9E 6C */	lfs f1, lit_12290(r2)
/* 801731B4  38 81 00 A8 */	addi r4, r1, 0xa8
/* 801731B8  38 A1 02 00 */	addi r5, r1, 0x200
/* 801731BC  48 0F E8 4D */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 801731C0  38 61 00 A8 */	addi r3, r1, 0xa8
/* 801731C4  38 80 FF FF */	li r4, -1
/* 801731C8  4B EB D3 49 */	bl __dt__7cSAngleFv
/* 801731CC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801731D0  48 00 F8 39 */	bl V__7cSGlobeCFv
/* 801731D4  38 81 02 44 */	addi r4, r1, 0x244
/* 801731D8  48 00 F8 B5 */	bl __gt__7cSAngleCFRC7cSAngle
/* 801731DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801731E0  41 82 00 10 */	beq lbl_801731F0
/* 801731E4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801731E8  38 81 02 44 */	addi r4, r1, 0x244
/* 801731EC  4B F1 C8 6D */	bl V__7cSGlobeFRC7cSAngle
lbl_801731F0:
/* 801731F0  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801731F4  48 00 F8 15 */	bl V__7cSGlobeCFv
/* 801731F8  38 81 02 40 */	addi r4, r1, 0x240
/* 801731FC  48 00 F8 71 */	bl __lt__7cSAngleCFRC7cSAngle
/* 80173200  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80173204  41 82 00 10 */	beq lbl_80173214
/* 80173208  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017320C  38 81 02 40 */	addi r4, r1, 0x240
/* 80173210  4B F1 C8 49 */	bl V__7cSGlobeFRC7cSAngle
lbl_80173214:
/* 80173214  38 61 07 04 */	addi r3, r1, 0x704
/* 80173218  7F E4 FB 78 */	mr r4, r31
/* 8017321C  7F A5 EB 78 */	mr r5, r29
/* 80173220  4B F2 44 FD */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80173224  38 61 12 68 */	addi r3, r1, 0x1268
/* 80173228  38 81 07 04 */	addi r4, r1, 0x704
/* 8017322C  4B F2 45 C9 */	bl __ct__4cXyzFRC4cXyz
/* 80173230  38 61 07 04 */	addi r3, r1, 0x704
/* 80173234  38 80 FF FF */	li r4, -1
/* 80173238  4B E9 5F 4D */	bl __dt__4cXyzFv
/* 8017323C  38 61 06 F8 */	addi r3, r1, 0x6f8
/* 80173240  7F E4 FB 78 */	mr r4, r31
/* 80173244  7F C5 F3 78 */	mr r5, r30
/* 80173248  4B F2 44 D5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017324C  38 61 12 5C */	addi r3, r1, 0x125c
/* 80173250  38 81 06 F8 */	addi r4, r1, 0x6f8
/* 80173254  4B F2 45 A1 */	bl __ct__4cXyzFRC4cXyz
/* 80173258  38 61 06 F8 */	addi r3, r1, 0x6f8
/* 8017325C  38 80 FF FF */	li r4, -1
/* 80173260  4B E9 5F 25 */	bl __dt__4cXyzFv
/* 80173264  38 61 01 FC */	addi r3, r1, 0x1fc
/* 80173268  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 8017326C  48 0F DC FD */	bl __ct__7cSAngleFRC7cSAngle
/* 80173270  3A E0 00 00 */	li r23, 0
lbl_80173274:
/* 80173274  38 61 06 EC */	addi r3, r1, 0x6ec
/* 80173278  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8017327C  48 0F E8 39 */	bl Xyz__7cSGlobeCFv
/* 80173280  38 61 06 E0 */	addi r3, r1, 0x6e0
/* 80173284  38 9F 00 64 */	addi r4, r31, 0x64
/* 80173288  38 A1 06 EC */	addi r5, r1, 0x6ec
/* 8017328C  48 0F 38 59 */	bl __pl__4cXyzCFRC3Vec
/* 80173290  38 7F 00 70 */	addi r3, r31, 0x70
/* 80173294  38 81 06 E0 */	addi r4, r1, 0x6e0
/* 80173298  4B F2 45 41 */	bl __as__4cXyzFRC4cXyz
/* 8017329C  38 61 06 E0 */	addi r3, r1, 0x6e0
/* 801732A0  38 80 FF FF */	li r4, -1
/* 801732A4  4B E9 5E E1 */	bl __dt__4cXyzFv
/* 801732A8  38 61 06 EC */	addi r3, r1, 0x6ec
/* 801732AC  38 80 FF FF */	li r4, -1
/* 801732B0  4B E9 5E D5 */	bl __dt__4cXyzFv
/* 801732B4  7F E3 FB 78 */	mr r3, r31
/* 801732B8  38 81 12 68 */	addi r4, r1, 0x1268
/* 801732BC  38 BF 00 70 */	addi r5, r31, 0x70
/* 801732C0  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 801732C4  4B FF 28 2D */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 801732C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801732CC  40 82 00 C8 */	bne lbl_80173394
/* 801732D0  7F E3 FB 78 */	mr r3, r31
/* 801732D4  38 81 12 5C */	addi r4, r1, 0x125c
/* 801732D8  38 BF 00 70 */	addi r5, r31, 0x70
/* 801732DC  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 801732E0  4B FF 28 11 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 801732E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801732E8  40 82 00 AC */	bne lbl_80173394
/* 801732EC  38 61 06 D4 */	addi r3, r1, 0x6d4
/* 801732F0  38 81 12 68 */	addi r4, r1, 0x1268
/* 801732F4  4B F2 45 01 */	bl __ct__4cXyzFRC4cXyz
/* 801732F8  38 61 06 C8 */	addi r3, r1, 0x6c8
/* 801732FC  38 9F 00 70 */	addi r4, r31, 0x70
/* 80173300  4B F2 44 F5 */	bl __ct__4cXyzFRC4cXyz
/* 80173304  38 61 06 D4 */	addi r3, r1, 0x6d4
/* 80173308  38 81 06 C8 */	addi r4, r1, 0x6c8
/* 8017330C  7F A5 EB 78 */	mr r5, r29
/* 80173310  7F C6 F3 78 */	mr r6, r30
/* 80173314  38 E0 00 00 */	li r7, 0
/* 80173318  48 00 1B 39 */	bl func_80174E50
/* 8017331C  7C 76 1B 78 */	mr r22, r3
/* 80173320  38 61 06 C8 */	addi r3, r1, 0x6c8
/* 80173324  38 80 FF FF */	li r4, -1
/* 80173328  4B E9 5E 5D */	bl __dt__4cXyzFv
/* 8017332C  38 61 06 D4 */	addi r3, r1, 0x6d4
/* 80173330  38 80 FF FF */	li r4, -1
/* 80173334  4B E9 5E 51 */	bl __dt__4cXyzFv
/* 80173338  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8017333C  40 82 00 58 */	bne lbl_80173394
/* 80173340  38 61 06 BC */	addi r3, r1, 0x6bc
/* 80173344  38 81 12 5C */	addi r4, r1, 0x125c
/* 80173348  4B F2 44 AD */	bl __ct__4cXyzFRC4cXyz
/* 8017334C  38 61 06 B0 */	addi r3, r1, 0x6b0
/* 80173350  38 9F 00 70 */	addi r4, r31, 0x70
/* 80173354  4B F2 44 A1 */	bl __ct__4cXyzFRC4cXyz
/* 80173358  38 61 06 BC */	addi r3, r1, 0x6bc
/* 8017335C  38 81 06 B0 */	addi r4, r1, 0x6b0
/* 80173360  7F A5 EB 78 */	mr r5, r29
/* 80173364  7F C6 F3 78 */	mr r6, r30
/* 80173368  38 E0 00 00 */	li r7, 0
/* 8017336C  48 00 1A E5 */	bl func_80174E50
/* 80173370  7C 76 1B 78 */	mr r22, r3
/* 80173374  38 61 06 B0 */	addi r3, r1, 0x6b0
/* 80173378  38 80 FF FF */	li r4, -1
/* 8017337C  4B E9 5E 09 */	bl __dt__4cXyzFv
/* 80173380  38 61 06 BC */	addi r3, r1, 0x6bc
/* 80173384  38 80 FF FF */	li r4, -1
/* 80173388  4B E9 5D FD */	bl __dt__4cXyzFv
/* 8017338C  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80173390  41 82 00 90 */	beq lbl_80173420
lbl_80173394:
/* 80173394  56 E0 07 FF */	clrlwi. r0, r23, 0x1f
/* 80173398  40 82 00 54 */	bne lbl_801733EC
/* 8017339C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801733A0  C0 22 9D 68 */	lfs f1, lit_9788(r2)
/* 801733A4  48 0F DC 25 */	bl __ct__7cSAngleFf
/* 801733A8  38 61 01 FC */	addi r3, r1, 0x1fc
/* 801733AC  38 81 00 A4 */	addi r4, r1, 0xa4
/* 801733B0  48 0F DE 25 */	bl __apl__7cSAngleFRC7cSAngle
/* 801733B4  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801733B8  38 80 FF FF */	li r4, -1
/* 801733BC  4B EB D1 55 */	bl __dt__7cSAngleFv
/* 801733C0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 801733C4  38 81 02 00 */	addi r4, r1, 0x200
/* 801733C8  38 A1 01 FC */	addi r5, r1, 0x1fc
/* 801733CC  48 0F DD A9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 801733D0  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801733D4  38 81 00 A0 */	addi r4, r1, 0xa0
/* 801733D8  4B F1 B4 BD */	bl U__7cSGlobeFRC7cSAngle
/* 801733DC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 801733E0  38 80 FF FF */	li r4, -1
/* 801733E4  4B EB D1 2D */	bl __dt__7cSAngleFv
/* 801733E8  48 00 00 2C */	b lbl_80173414
lbl_801733EC:
/* 801733EC  38 61 00 9C */	addi r3, r1, 0x9c
/* 801733F0  38 81 02 00 */	addi r4, r1, 0x200
/* 801733F4  38 A1 01 FC */	addi r5, r1, 0x1fc
/* 801733F8  48 0F DD AD */	bl __mi__7cSAngleCFRC7cSAngle
/* 801733FC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80173400  38 81 00 9C */	addi r4, r1, 0x9c
/* 80173404  4B F1 B4 91 */	bl U__7cSGlobeFRC7cSAngle
/* 80173408  38 61 00 9C */	addi r3, r1, 0x9c
/* 8017340C  38 80 FF FF */	li r4, -1
/* 80173410  4B EB D1 01 */	bl __dt__7cSAngleFv
lbl_80173414:
/* 80173414  3A F7 00 01 */	addi r23, r23, 1
/* 80173418  2C 17 00 12 */	cmpwi r23, 0x12
/* 8017341C  41 80 FE 58 */	blt lbl_80173274
lbl_80173420:
/* 80173420  C0 02 9C B8 */	lfs f0, lit_5662(r2)
/* 80173424  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80173428  38 61 01 FC */	addi r3, r1, 0x1fc
/* 8017342C  38 80 FF FF */	li r4, -1
/* 80173430  4B EB D0 E1 */	bl __dt__7cSAngleFv
/* 80173434  38 61 12 5C */	addi r3, r1, 0x125c
/* 80173438  38 80 FF FF */	li r4, -1
/* 8017343C  4B E9 5D 49 */	bl __dt__4cXyzFv
/* 80173440  38 61 12 68 */	addi r3, r1, 0x1268
/* 80173444  38 80 FF FF */	li r4, -1
/* 80173448  4B E9 5D 3D */	bl __dt__4cXyzFv
/* 8017344C  38 61 02 00 */	addi r3, r1, 0x200
/* 80173450  38 80 FF FF */	li r4, -1
/* 80173454  4B EB D0 BD */	bl __dt__7cSAngleFv
/* 80173458  48 00 15 A4 */	b lbl_801749FC
/* 8017345C  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 80173460  2C 00 00 00 */	cmpwi r0, 0
/* 80173464  40 82 00 0C */	bne lbl_80173470
/* 80173468  38 00 00 01 */	li r0, 1
/* 8017346C  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_80173470:
/* 80173470  38 61 06 A4 */	addi r3, r1, 0x6a4
/* 80173474  7F E4 FB 78 */	mr r4, r31
/* 80173478  7F C5 F3 78 */	mr r5, r30
/* 8017347C  48 00 19 9D */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80173480  38 61 12 50 */	addi r3, r1, 0x1250
/* 80173484  38 81 06 A4 */	addi r4, r1, 0x6a4
/* 80173488  4B F2 43 6D */	bl __ct__4cXyzFRC4cXyz
/* 8017348C  38 61 06 A4 */	addi r3, r1, 0x6a4
/* 80173490  38 80 FF FF */	li r4, -1
/* 80173494  4B E9 5C F1 */	bl __dt__4cXyzFv
/* 80173498  38 61 06 98 */	addi r3, r1, 0x698
/* 8017349C  7F E4 FB 78 */	mr r4, r31
/* 801734A0  7F A5 EB 78 */	mr r5, r29
/* 801734A4  48 00 19 75 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801734A8  38 61 12 44 */	addi r3, r1, 0x1244
/* 801734AC  38 81 06 98 */	addi r4, r1, 0x698
/* 801734B0  4B F2 43 45 */	bl __ct__4cXyzFRC4cXyz
/* 801734B4  38 61 06 98 */	addi r3, r1, 0x698
/* 801734B8  38 80 FF FF */	li r4, -1
/* 801734BC  4B E9 5C C9 */	bl __dt__4cXyzFv
/* 801734C0  38 61 06 8C */	addi r3, r1, 0x68c
/* 801734C4  38 81 12 50 */	addi r4, r1, 0x1250
/* 801734C8  38 A1 12 44 */	addi r5, r1, 0x1244
/* 801734CC  48 0F 36 69 */	bl __mi__4cXyzCFRC3Vec
/* 801734D0  38 61 12 38 */	addi r3, r1, 0x1238
/* 801734D4  38 81 06 8C */	addi r4, r1, 0x68c
/* 801734D8  4B F2 43 1D */	bl __ct__4cXyzFRC4cXyz
/* 801734DC  38 61 06 8C */	addi r3, r1, 0x68c
/* 801734E0  38 80 FF FF */	li r4, -1
/* 801734E4  4B E9 5C A1 */	bl __dt__4cXyzFv
/* 801734E8  38 61 02 70 */	addi r3, r1, 0x270
/* 801734EC  38 81 12 38 */	addi r4, r1, 0x1238
/* 801734F0  48 0F E3 91 */	bl __ct__7cSGlobeFRC4cXyz
/* 801734F4  38 61 01 F8 */	addi r3, r1, 0x1f8
/* 801734F8  48 00 F5 51 */	bl __ct__7cSAngleFv
/* 801734FC  38 61 12 50 */	addi r3, r1, 0x1250
/* 80173500  38 81 12 44 */	addi r4, r1, 0x1244
/* 80173504  4B F1 4E E9 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 80173508  C0 02 9C F8 */	lfs f0, lit_8016(r2)
/* 8017350C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80173510  C0 42 9C 90 */	lfs f2, lit_4445(r2)
/* 80173514  EE 22 00 32 */	fmuls f17, f2, f0
/* 80173518  38 61 02 48 */	addi r3, r1, 0x248
/* 8017351C  C0 22 9C B8 */	lfs f1, lit_5662(r2)
/* 80173520  C0 1F 09 2C */	lfs f0, 0x92c(r31)
/* 80173524  EC 01 00 32 */	fmuls f0, f1, f0
/* 80173528  EC 22 00 32 */	fmuls f1, f2, f0
/* 8017352C  48 0F DE 21 */	bl __ct__7cDegreeFf
/* 80173530  38 61 02 48 */	addi r3, r1, 0x248
/* 80173534  48 0F DF 0D */	bl Tan__7cDegreeCFv
/* 80173538  EE 31 08 24 */	fdivs f17, f17, f1
/* 8017353C  80 1F 04 20 */	lwz r0, 0x420(r31)
/* 80173540  2C 00 00 00 */	cmpwi r0, 0
/* 80173544  41 82 00 14 */	beq lbl_80173558
/* 80173548  38 61 01 F8 */	addi r3, r1, 0x1f8
/* 8017354C  38 8D 8C 18 */	la r4, _270__7cSAngle(r13) /* 80451198-_SDA_BASE_ */
/* 80173550  48 00 F7 59 */	bl __as__7cSAngleFRC7cSAngle
/* 80173554  48 00 00 10 */	b lbl_80173564
lbl_80173558:
/* 80173558  38 61 01 F8 */	addi r3, r1, 0x1f8
/* 8017355C  38 8D 8C 10 */	la r4, _90__7cSAngle(r13) /* 80451190-_SDA_BASE_ */
/* 80173560  48 00 F7 49 */	bl __as__7cSAngleFRC7cSAngle
lbl_80173564:
/* 80173564  38 61 06 80 */	addi r3, r1, 0x680
/* 80173568  7F E4 FB 78 */	mr r4, r31
/* 8017356C  7F A5 EB 78 */	mr r5, r29
/* 80173570  48 00 18 A9 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80173574  38 61 06 74 */	addi r3, r1, 0x674
/* 80173578  38 81 12 38 */	addi r4, r1, 0x1238
/* 8017357C  C0 22 9C 90 */	lfs f1, lit_4445(r2)
/* 80173580  48 0F 36 05 */	bl __ml__4cXyzCFf
/* 80173584  38 61 06 68 */	addi r3, r1, 0x668
/* 80173588  38 81 06 80 */	addi r4, r1, 0x680
/* 8017358C  38 A1 06 74 */	addi r5, r1, 0x674
/* 80173590  48 0F 35 55 */	bl __pl__4cXyzCFRC3Vec
/* 80173594  38 7F 04 78 */	addi r3, r31, 0x478
/* 80173598  38 81 06 68 */	addi r4, r1, 0x668
/* 8017359C  4B F2 42 3D */	bl __as__4cXyzFRC4cXyz
/* 801735A0  38 61 06 68 */	addi r3, r1, 0x668
/* 801735A4  38 80 FF FF */	li r4, -1
/* 801735A8  4B E9 5B DD */	bl __dt__4cXyzFv
/* 801735AC  38 61 06 74 */	addi r3, r1, 0x674
/* 801735B0  38 80 FF FF */	li r4, -1
/* 801735B4  4B E9 5B D1 */	bl __dt__4cXyzFv
/* 801735B8  38 61 06 80 */	addi r3, r1, 0x680
/* 801735BC  38 80 FF FF */	li r4, -1
/* 801735C0  4B E9 5B C5 */	bl __dt__4cXyzFv
/* 801735C4  38 61 06 5C */	addi r3, r1, 0x65c
/* 801735C8  7F E4 FB 78 */	mr r4, r31
/* 801735CC  7F C5 F3 78 */	mr r5, r30
/* 801735D0  48 00 18 65 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 801735D4  38 61 06 50 */	addi r3, r1, 0x650
/* 801735D8  7F E4 FB 78 */	mr r4, r31
/* 801735DC  7F A5 EB 78 */	mr r5, r29
/* 801735E0  48 00 18 55 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 801735E4  C0 42 9C 90 */	lfs f2, lit_4445(r2)
/* 801735E8  C0 21 06 60 */	lfs f1, 0x660(r1)
/* 801735EC  C0 01 06 54 */	lfs f0, 0x654(r1)
/* 801735F0  EC 01 00 2A */	fadds f0, f1, f0
/* 801735F4  EC 22 00 32 */	fmuls f1, f2, f0
/* 801735F8  C0 02 9D 18 */	lfs f0, lit_8127(r2)
/* 801735FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80173600  D0 1F 04 7C */	stfs f0, 0x47c(r31)
/* 80173604  38 61 06 50 */	addi r3, r1, 0x650
/* 80173608  38 80 FF FF */	li r4, -1
/* 8017360C  4B E9 5B 79 */	bl __dt__4cXyzFv
/* 80173610  38 61 06 5C */	addi r3, r1, 0x65c
/* 80173614  38 80 FF FF */	li r4, -1
/* 80173618  4B E9 5B 6D */	bl __dt__4cXyzFv
/* 8017361C  38 61 02 70 */	addi r3, r1, 0x270
/* 80173620  48 00 F6 65 */	bl U__7cSGlobeCFv
/* 80173624  7C 64 1B 78 */	mr r4, r3
/* 80173628  38 61 00 98 */	addi r3, r1, 0x98
/* 8017362C  38 A1 01 F8 */	addi r5, r1, 0x1f8
/* 80173630  48 0F DB 45 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80173634  38 7F 04 90 */	addi r3, r31, 0x490
/* 80173638  FC 20 88 90 */	fmr f1, f17
/* 8017363C  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 80173640  38 A1 00 98 */	addi r5, r1, 0x98
/* 80173644  48 0F E3 C5 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 80173648  38 61 00 98 */	addi r3, r1, 0x98
/* 8017364C  38 80 FF FF */	li r4, -1
/* 80173650  4B EB CE C1 */	bl __dt__7cSAngleFv
/* 80173654  38 61 06 44 */	addi r3, r1, 0x644
/* 80173658  38 9F 04 90 */	addi r4, r31, 0x490
/* 8017365C  48 0F E4 59 */	bl Xyz__7cSGlobeCFv
/* 80173660  38 61 06 38 */	addi r3, r1, 0x638
/* 80173664  38 9F 04 78 */	addi r4, r31, 0x478
/* 80173668  38 A1 06 44 */	addi r5, r1, 0x644
/* 8017366C  48 0F 34 79 */	bl __pl__4cXyzCFRC3Vec
/* 80173670  38 7F 04 84 */	addi r3, r31, 0x484
/* 80173674  38 81 06 38 */	addi r4, r1, 0x638
/* 80173678  4B F2 41 61 */	bl __as__4cXyzFRC4cXyz
/* 8017367C  38 61 06 38 */	addi r3, r1, 0x638
/* 80173680  38 80 FF FF */	li r4, -1
/* 80173684  4B E9 5B 01 */	bl __dt__4cXyzFv
/* 80173688  38 61 06 44 */	addi r3, r1, 0x644
/* 8017368C  38 80 FF FF */	li r4, -1
/* 80173690  4B E9 5A F5 */	bl __dt__4cXyzFv
/* 80173694  C0 02 9C B8 */	lfs f0, lit_5662(r2)
/* 80173698  D0 1F 04 98 */	stfs f0, 0x498(r31)
/* 8017369C  7F E3 FB 78 */	mr r3, r31
/* 801736A0  38 81 12 50 */	addi r4, r1, 0x1250
/* 801736A4  38 BF 04 84 */	addi r5, r31, 0x484
/* 801736A8  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 801736AC  4B FF 24 45 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 801736B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801736B4  40 82 00 C8 */	bne lbl_8017377C
/* 801736B8  7F E3 FB 78 */	mr r3, r31
/* 801736BC  38 81 12 44 */	addi r4, r1, 0x1244
/* 801736C0  38 BF 04 84 */	addi r5, r31, 0x484
/* 801736C4  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 801736C8  4B FF 24 29 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 801736CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801736D0  40 82 00 AC */	bne lbl_8017377C
/* 801736D4  38 61 06 2C */	addi r3, r1, 0x62c
/* 801736D8  38 81 12 50 */	addi r4, r1, 0x1250
/* 801736DC  4B F2 41 19 */	bl __ct__4cXyzFRC4cXyz
/* 801736E0  38 61 06 20 */	addi r3, r1, 0x620
/* 801736E4  38 9F 04 84 */	addi r4, r31, 0x484
/* 801736E8  4B F2 41 0D */	bl __ct__4cXyzFRC4cXyz
/* 801736EC  38 61 06 2C */	addi r3, r1, 0x62c
/* 801736F0  38 81 06 20 */	addi r4, r1, 0x620
/* 801736F4  7F A5 EB 78 */	mr r5, r29
/* 801736F8  7F C6 F3 78 */	mr r6, r30
/* 801736FC  38 E0 00 00 */	li r7, 0
/* 80173700  48 00 17 51 */	bl func_80174E50
/* 80173704  7C 76 1B 78 */	mr r22, r3
/* 80173708  38 61 06 20 */	addi r3, r1, 0x620
/* 8017370C  38 80 FF FF */	li r4, -1
/* 80173710  4B E9 5A 75 */	bl __dt__4cXyzFv
/* 80173714  38 61 06 2C */	addi r3, r1, 0x62c
/* 80173718  38 80 FF FF */	li r4, -1
/* 8017371C  4B E9 5A 69 */	bl __dt__4cXyzFv
/* 80173720  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80173724  40 82 00 58 */	bne lbl_8017377C
/* 80173728  38 61 06 14 */	addi r3, r1, 0x614
/* 8017372C  38 81 12 44 */	addi r4, r1, 0x1244
/* 80173730  4B F2 40 C5 */	bl __ct__4cXyzFRC4cXyz
/* 80173734  38 61 06 08 */	addi r3, r1, 0x608
/* 80173738  38 9F 04 84 */	addi r4, r31, 0x484
/* 8017373C  4B F2 40 B9 */	bl __ct__4cXyzFRC4cXyz
/* 80173740  38 61 06 14 */	addi r3, r1, 0x614
/* 80173744  38 81 06 08 */	addi r4, r1, 0x608
/* 80173748  7F A5 EB 78 */	mr r5, r29
/* 8017374C  7F C6 F3 78 */	mr r6, r30
/* 80173750  38 E0 00 00 */	li r7, 0
/* 80173754  48 00 16 FD */	bl func_80174E50
/* 80173758  7C 76 1B 78 */	mr r22, r3
/* 8017375C  38 61 06 08 */	addi r3, r1, 0x608
/* 80173760  38 80 FF FF */	li r4, -1
/* 80173764  4B E9 5A 21 */	bl __dt__4cXyzFv
/* 80173768  38 61 06 14 */	addi r3, r1, 0x614
/* 8017376C  38 80 FF FF */	li r4, -1
/* 80173770  4B E9 5A 15 */	bl __dt__4cXyzFv
/* 80173774  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80173778  41 82 00 0C */	beq lbl_80173784
lbl_8017377C:
/* 8017377C  3B 80 00 00 */	li r28, 0
/* 80173780  48 00 00 30 */	b lbl_801737B0
lbl_80173784:
/* 80173784  38 7F 00 64 */	addi r3, r31, 0x64
/* 80173788  38 9F 04 78 */	addi r4, r31, 0x478
/* 8017378C  4B F2 40 4D */	bl __as__4cXyzFRC4cXyz
/* 80173790  38 7F 00 70 */	addi r3, r31, 0x70
/* 80173794  38 9F 04 84 */	addi r4, r31, 0x484
/* 80173798  4B F2 40 41 */	bl __as__4cXyzFRC4cXyz
/* 8017379C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801737A0  38 9F 04 90 */	addi r4, r31, 0x490
/* 801737A4  4B F1 AF D1 */	bl __as__7cSGlobeFRC7cSGlobe
/* 801737A8  C0 1F 04 98 */	lfs f0, 0x498(r31)
/* 801737AC  D0 1F 00 80 */	stfs f0, 0x80(r31)
lbl_801737B0:
/* 801737B0  38 61 02 48 */	addi r3, r1, 0x248
/* 801737B4  38 80 FF FF */	li r4, -1
/* 801737B8  4B F1 4B 29 */	bl __dt__7cDegreeFv
/* 801737BC  38 61 01 F8 */	addi r3, r1, 0x1f8
/* 801737C0  38 80 FF FF */	li r4, -1
/* 801737C4  4B EB CD 4D */	bl __dt__7cSAngleFv
/* 801737C8  38 61 02 70 */	addi r3, r1, 0x270
/* 801737CC  38 80 FF FF */	li r4, -1
/* 801737D0  4B EF DE AD */	bl __dt__7cSGlobeFv
/* 801737D4  38 61 12 38 */	addi r3, r1, 0x1238
/* 801737D8  38 80 FF FF */	li r4, -1
/* 801737DC  4B E9 59 A9 */	bl __dt__4cXyzFv
/* 801737E0  38 61 12 44 */	addi r3, r1, 0x1244
/* 801737E4  38 80 FF FF */	li r4, -1
/* 801737E8  4B E9 59 9D */	bl __dt__4cXyzFv
/* 801737EC  38 61 12 50 */	addi r3, r1, 0x1250
/* 801737F0  38 80 FF FF */	li r4, -1
/* 801737F4  4B E9 59 91 */	bl __dt__4cXyzFv
/* 801737F8  48 00 12 04 */	b lbl_801749FC
/* 801737FC  38 61 05 FC */	addi r3, r1, 0x5fc
/* 80173800  7F E4 FB 78 */	mr r4, r31
/* 80173804  7F C5 F3 78 */	mr r5, r30
/* 80173808  48 00 16 11 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 8017380C  38 7F 04 78 */	addi r3, r31, 0x478
/* 80173810  38 81 05 FC */	addi r4, r1, 0x5fc
/* 80173814  4B F2 3F C5 */	bl __as__4cXyzFRC4cXyz
/* 80173818  38 61 05 FC */	addi r3, r1, 0x5fc
/* 8017381C  38 80 FF FF */	li r4, -1
/* 80173820  4B E9 59 65 */	bl __dt__4cXyzFv
/* 80173824  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 80173828  2C 00 00 00 */	cmpwi r0, 0
/* 8017382C  40 82 01 6C */	bne lbl_80173998
/* 80173830  38 61 05 F0 */	addi r3, r1, 0x5f0
/* 80173834  7F E4 FB 78 */	mr r4, r31
/* 80173838  7F A5 EB 78 */	mr r5, r29
/* 8017383C  48 00 15 DD */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80173840  38 61 12 2C */	addi r3, r1, 0x122c
/* 80173844  38 81 05 F0 */	addi r4, r1, 0x5f0
/* 80173848  4B F2 3F AD */	bl __ct__4cXyzFRC4cXyz
/* 8017384C  38 61 05 F0 */	addi r3, r1, 0x5f0
/* 80173850  38 80 FF FF */	li r4, -1
/* 80173854  4B E9 59 31 */	bl __dt__4cXyzFv
/* 80173858  38 61 05 E4 */	addi r3, r1, 0x5e4
/* 8017385C  7F E4 FB 78 */	mr r4, r31
/* 80173860  7F A5 EB 78 */	mr r5, r29
/* 80173864  48 00 15 D1 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80173868  C0 01 05 E8 */	lfs f0, 0x5e8(r1)
/* 8017386C  D0 01 12 30 */	stfs f0, 0x1230(r1)
/* 80173870  38 61 05 E4 */	addi r3, r1, 0x5e4
/* 80173874  38 80 FF FF */	li r4, -1
/* 80173878  4B E9 59 0D */	bl __dt__4cXyzFv
/* 8017387C  38 61 05 D8 */	addi r3, r1, 0x5d8
/* 80173880  7F E4 FB 78 */	mr r4, r31
/* 80173884  7F C5 F3 78 */	mr r5, r30
/* 80173888  48 00 15 91 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 8017388C  38 61 12 20 */	addi r3, r1, 0x1220
/* 80173890  38 81 05 D8 */	addi r4, r1, 0x5d8
/* 80173894  4B F2 3F 61 */	bl __ct__4cXyzFRC4cXyz
/* 80173898  38 61 05 D8 */	addi r3, r1, 0x5d8
/* 8017389C  38 80 FF FF */	li r4, -1
/* 801738A0  4B E9 58 E5 */	bl __dt__4cXyzFv
/* 801738A4  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 801738A8  41 82 00 28 */	beq lbl_801738D0
/* 801738AC  38 61 05 CC */	addi r3, r1, 0x5cc
/* 801738B0  7F E4 FB 78 */	mr r4, r31
/* 801738B4  7F C5 F3 78 */	mr r5, r30
/* 801738B8  4B F2 3E 65 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801738BC  C0 01 05 D0 */	lfs f0, 0x5d0(r1)
/* 801738C0  D0 01 12 24 */	stfs f0, 0x1224(r1)
/* 801738C4  38 61 05 CC */	addi r3, r1, 0x5cc
/* 801738C8  38 80 FF FF */	li r4, -1
/* 801738CC  4B E9 58 B9 */	bl __dt__4cXyzFv
lbl_801738D0:
/* 801738D0  38 61 05 C0 */	addi r3, r1, 0x5c0
/* 801738D4  7F E4 FB 78 */	mr r4, r31
/* 801738D8  7F C5 F3 78 */	mr r5, r30
/* 801738DC  48 00 15 59 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 801738E0  C0 01 05 C4 */	lfs f0, 0x5c4(r1)
/* 801738E4  D0 01 12 24 */	stfs f0, 0x1224(r1)
/* 801738E8  38 61 05 C0 */	addi r3, r1, 0x5c0
/* 801738EC  38 80 FF FF */	li r4, -1
/* 801738F0  4B E9 58 95 */	bl __dt__4cXyzFv
/* 801738F4  38 61 05 B4 */	addi r3, r1, 0x5b4
/* 801738F8  38 81 12 2C */	addi r4, r1, 0x122c
/* 801738FC  38 A1 12 20 */	addi r5, r1, 0x1220
/* 80173900  48 0F 32 35 */	bl __mi__4cXyzCFRC3Vec
/* 80173904  38 7F 04 90 */	addi r3, r31, 0x490
/* 80173908  38 81 05 B4 */	addi r4, r1, 0x5b4
/* 8017390C  48 0F E1 65 */	bl Val__7cSGlobeFRC4cXyz
/* 80173910  38 61 05 B4 */	addi r3, r1, 0x5b4
/* 80173914  38 80 FF FF */	li r4, -1
/* 80173918  4B E9 58 6D */	bl __dt__4cXyzFv
/* 8017391C  38 7F 04 90 */	addi r3, r31, 0x490
/* 80173920  C0 22 9D 10 */	lfs f1, lit_8022(r2)
/* 80173924  48 00 F1 29 */	bl R__7cSGlobeFf
/* 80173928  38 61 05 A8 */	addi r3, r1, 0x5a8
/* 8017392C  7F E4 FB 78 */	mr r4, r31
/* 80173930  7F C5 F3 78 */	mr r5, r30
/* 80173934  4B F2 3D E9 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80173938  38 61 05 9C */	addi r3, r1, 0x59c
/* 8017393C  7F E4 FB 78 */	mr r4, r31
/* 80173940  7F C5 F3 78 */	mr r5, r30
/* 80173944  48 00 14 D5 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80173948  C0 21 05 AC */	lfs f1, 0x5ac(r1)
/* 8017394C  C0 02 9E 70 */	lfs f0, lit_12291(r2)
/* 80173950  EC 21 00 28 */	fsubs f1, f1, f0
/* 80173954  C0 01 05 A0 */	lfs f0, 0x5a0(r1)
/* 80173958  EC 01 00 28 */	fsubs f0, f1, f0
/* 8017395C  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 80173960  38 61 05 9C */	addi r3, r1, 0x59c
/* 80173964  38 80 FF FF */	li r4, -1
/* 80173968  4B E9 58 1D */	bl __dt__4cXyzFv
/* 8017396C  38 61 05 A8 */	addi r3, r1, 0x5a8
/* 80173970  38 80 FF FF */	li r4, -1
/* 80173974  4B E9 58 11 */	bl __dt__4cXyzFv
/* 80173978  38 00 00 01 */	li r0, 1
/* 8017397C  98 1F 01 58 */	stb r0, 0x158(r31)
/* 80173980  38 61 12 20 */	addi r3, r1, 0x1220
/* 80173984  38 80 FF FF */	li r4, -1
/* 80173988  4B E9 57 FD */	bl __dt__4cXyzFv
/* 8017398C  38 61 12 2C */	addi r3, r1, 0x122c
/* 80173990  38 80 FF FF */	li r4, -1
/* 80173994  4B E9 57 F1 */	bl __dt__4cXyzFv
lbl_80173998:
/* 80173998  38 61 05 90 */	addi r3, r1, 0x590
/* 8017399C  7F E4 FB 78 */	mr r4, r31
/* 801739A0  7F C5 F3 78 */	mr r5, r30
/* 801739A4  48 00 14 75 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801739A8  C0 3F 04 08 */	lfs f1, 0x408(r31)
/* 801739AC  C0 01 05 94 */	lfs f0, 0x594(r1)
/* 801739B0  EC 01 00 2A */	fadds f0, f1, f0
/* 801739B4  D0 1F 04 7C */	stfs f0, 0x47c(r31)
/* 801739B8  38 61 05 90 */	addi r3, r1, 0x590
/* 801739BC  38 80 FF FF */	li r4, -1
/* 801739C0  4B E9 57 C5 */	bl __dt__4cXyzFv
/* 801739C4  38 61 05 84 */	addi r3, r1, 0x584
/* 801739C8  38 9F 04 90 */	addi r4, r31, 0x490
/* 801739CC  48 0F E0 E9 */	bl Xyz__7cSGlobeCFv
/* 801739D0  38 61 05 78 */	addi r3, r1, 0x578
/* 801739D4  38 9F 04 78 */	addi r4, r31, 0x478
/* 801739D8  38 A1 05 84 */	addi r5, r1, 0x584
/* 801739DC  48 0F 31 09 */	bl __pl__4cXyzCFRC3Vec
/* 801739E0  38 7F 04 84 */	addi r3, r31, 0x484
/* 801739E4  38 81 05 78 */	addi r4, r1, 0x578
/* 801739E8  4B F2 3D F1 */	bl __as__4cXyzFRC4cXyz
/* 801739EC  38 61 05 78 */	addi r3, r1, 0x578
/* 801739F0  38 80 FF FF */	li r4, -1
/* 801739F4  4B E9 57 91 */	bl __dt__4cXyzFv
/* 801739F8  38 61 05 84 */	addi r3, r1, 0x584
/* 801739FC  38 80 FF FF */	li r4, -1
/* 80173A00  4B E9 57 85 */	bl __dt__4cXyzFv
/* 80173A04  C0 02 9E 38 */	lfs f0, lit_12277(r2)
/* 80173A08  D0 1F 04 98 */	stfs f0, 0x498(r31)
/* 80173A0C  38 61 05 6C */	addi r3, r1, 0x56c
/* 80173A10  7F E4 FB 78 */	mr r4, r31
/* 80173A14  7F C5 F3 78 */	mr r5, r30
/* 80173A18  4B F2 3D 05 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80173A1C  38 61 12 14 */	addi r3, r1, 0x1214
/* 80173A20  38 81 05 6C */	addi r4, r1, 0x56c
/* 80173A24  4B F2 3D D1 */	bl __ct__4cXyzFRC4cXyz
/* 80173A28  38 61 05 6C */	addi r3, r1, 0x56c
/* 80173A2C  38 80 FF FF */	li r4, -1
/* 80173A30  4B E9 57 55 */	bl __dt__4cXyzFv
/* 80173A34  7F E3 FB 78 */	mr r3, r31
/* 80173A38  38 81 12 14 */	addi r4, r1, 0x1214
/* 80173A3C  38 BF 04 84 */	addi r5, r31, 0x484
/* 80173A40  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 80173A44  4B FF 20 AD */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80173A48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80173A4C  40 82 00 58 */	bne lbl_80173AA4
/* 80173A50  38 61 05 60 */	addi r3, r1, 0x560
/* 80173A54  38 81 12 14 */	addi r4, r1, 0x1214
/* 80173A58  4B F2 3D 9D */	bl __ct__4cXyzFRC4cXyz
/* 80173A5C  38 61 05 54 */	addi r3, r1, 0x554
/* 80173A60  38 9F 04 84 */	addi r4, r31, 0x484
/* 80173A64  4B F2 3D 91 */	bl __ct__4cXyzFRC4cXyz
/* 80173A68  38 61 05 60 */	addi r3, r1, 0x560
/* 80173A6C  38 81 05 54 */	addi r4, r1, 0x554
/* 80173A70  7F A5 EB 78 */	mr r5, r29
/* 80173A74  7F C6 F3 78 */	mr r6, r30
/* 80173A78  38 E0 00 00 */	li r7, 0
/* 80173A7C  48 00 13 D5 */	bl func_80174E50
/* 80173A80  7C 76 1B 78 */	mr r22, r3
/* 80173A84  38 61 05 54 */	addi r3, r1, 0x554
/* 80173A88  38 80 FF FF */	li r4, -1
/* 80173A8C  4B E9 56 F9 */	bl __dt__4cXyzFv
/* 80173A90  38 61 05 60 */	addi r3, r1, 0x560
/* 80173A94  38 80 FF FF */	li r4, -1
/* 80173A98  4B E9 56 ED */	bl __dt__4cXyzFv
/* 80173A9C  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80173AA0  41 82 00 0C */	beq lbl_80173AAC
lbl_80173AA4:
/* 80173AA4  3B 80 00 00 */	li r28, 0
/* 80173AA8  48 00 00 38 */	b lbl_80173AE0
lbl_80173AAC:
/* 80173AAC  38 7F 00 64 */	addi r3, r31, 0x64
/* 80173AB0  38 9F 04 78 */	addi r4, r31, 0x478
/* 80173AB4  4B F2 3D 25 */	bl __as__4cXyzFRC4cXyz
/* 80173AB8  38 7F 00 70 */	addi r3, r31, 0x70
/* 80173ABC  38 9F 04 84 */	addi r4, r31, 0x484
/* 80173AC0  4B F2 3D 19 */	bl __as__4cXyzFRC4cXyz
/* 80173AC4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80173AC8  38 9F 04 90 */	addi r4, r31, 0x490
/* 80173ACC  4B F1 AC A9 */	bl __as__7cSGlobeFRC7cSGlobe
/* 80173AD0  C0 1F 04 98 */	lfs f0, 0x498(r31)
/* 80173AD4  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80173AD8  7F A3 EB 78 */	mr r3, r29
/* 80173ADC  4B FE BF 71 */	bl func_8015FA4C
lbl_80173AE0:
/* 80173AE0  38 61 12 14 */	addi r3, r1, 0x1214
/* 80173AE4  38 80 FF FF */	li r4, -1
/* 80173AE8  4B E9 56 9D */	bl __dt__4cXyzFv
/* 80173AEC  48 00 0F 10 */	b lbl_801749FC
/* 80173AF0  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 80173AF4  2C 00 00 00 */	cmpwi r0, 0
/* 80173AF8  40 82 0F 04 */	bne lbl_801749FC
/* 80173AFC  38 61 05 48 */	addi r3, r1, 0x548
/* 80173B00  7F E4 FB 78 */	mr r4, r31
/* 80173B04  7F A5 EB 78 */	mr r5, r29
/* 80173B08  48 00 13 2D */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80173B0C  38 61 13 AC */	addi r3, r1, 0x13ac
/* 80173B10  38 81 05 48 */	addi r4, r1, 0x548
/* 80173B14  4B F2 3C C5 */	bl __as__4cXyzFRC4cXyz
/* 80173B18  38 61 05 48 */	addi r3, r1, 0x548
/* 80173B1C  38 80 FF FF */	li r4, -1
/* 80173B20  4B E9 56 65 */	bl __dt__4cXyzFv
/* 80173B24  38 61 05 3C */	addi r3, r1, 0x53c
/* 80173B28  7F E4 FB 78 */	mr r4, r31
/* 80173B2C  7F C5 F3 78 */	mr r5, r30
/* 80173B30  48 00 13 05 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80173B34  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80173B38  38 81 05 3C */	addi r4, r1, 0x53c
/* 80173B3C  4B F2 3C 9D */	bl __as__4cXyzFRC4cXyz
/* 80173B40  38 61 05 3C */	addi r3, r1, 0x53c
/* 80173B44  38 80 FF FF */	li r4, -1
/* 80173B48  4B E9 56 3D */	bl __dt__4cXyzFv
/* 80173B4C  38 61 05 30 */	addi r3, r1, 0x530
/* 80173B50  7F E4 FB 78 */	mr r4, r31
/* 80173B54  7F A5 EB 78 */	mr r5, r29
/* 80173B58  48 00 12 C1 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80173B5C  38 61 13 94 */	addi r3, r1, 0x1394
/* 80173B60  38 81 05 30 */	addi r4, r1, 0x530
/* 80173B64  4B F2 3C 75 */	bl __as__4cXyzFRC4cXyz
/* 80173B68  38 61 05 30 */	addi r3, r1, 0x530
/* 80173B6C  38 80 FF FF */	li r4, -1
/* 80173B70  4B E9 56 15 */	bl __dt__4cXyzFv
/* 80173B74  38 61 05 24 */	addi r3, r1, 0x524
/* 80173B78  7F E4 FB 78 */	mr r4, r31
/* 80173B7C  7F C5 F3 78 */	mr r5, r30
/* 80173B80  48 00 12 99 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80173B84  38 61 13 88 */	addi r3, r1, 0x1388
/* 80173B88  38 81 05 24 */	addi r4, r1, 0x524
/* 80173B8C  4B F2 3C 4D */	bl __as__4cXyzFRC4cXyz
/* 80173B90  38 61 05 24 */	addi r3, r1, 0x524
/* 80173B94  38 80 FF FF */	li r4, -1
/* 80173B98  4B E9 55 ED */	bl __dt__4cXyzFv
/* 80173B9C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80173BA0  41 82 00 28 */	beq lbl_80173BC8
/* 80173BA4  38 61 05 18 */	addi r3, r1, 0x518
/* 80173BA8  7F E4 FB 78 */	mr r4, r31
/* 80173BAC  7F C5 F3 78 */	mr r5, r30
/* 80173BB0  4B F2 3B 6D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80173BB4  C0 01 05 1C */	lfs f0, 0x51c(r1)
/* 80173BB8  D0 01 13 A4 */	stfs f0, 0x13a4(r1)
/* 80173BBC  38 61 05 18 */	addi r3, r1, 0x518
/* 80173BC0  38 80 FF FF */	li r4, -1
/* 80173BC4  4B E9 55 C1 */	bl __dt__4cXyzFv
lbl_80173BC8:
/* 80173BC8  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80173BCC  41 82 00 10 */	beq lbl_80173BDC
/* 80173BD0  38 61 13 94 */	addi r3, r1, 0x1394
/* 80173BD4  38 81 13 C4 */	addi r4, r1, 0x13c4
/* 80173BD8  4B F1 AD 2D */	bl __apl__4cXyzFRC3Vec
lbl_80173BDC:
/* 80173BDC  38 7F 00 64 */	addi r3, r31, 0x64
/* 80173BE0  38 81 13 88 */	addi r4, r1, 0x1388
/* 80173BE4  4B F2 3B F5 */	bl __as__4cXyzFRC4cXyz
/* 80173BE8  38 61 12 08 */	addi r3, r1, 0x1208
/* 80173BEC  38 81 13 94 */	addi r4, r1, 0x1394
/* 80173BF0  4B F2 3C 05 */	bl __ct__4cXyzFRC4cXyz
/* 80173BF4  C0 01 13 B0 */	lfs f0, 0x13b0(r1)
/* 80173BF8  D0 01 12 0C */	stfs f0, 0x120c(r1)
/* 80173BFC  38 61 11 FC */	addi r3, r1, 0x11fc
/* 80173C00  38 81 13 88 */	addi r4, r1, 0x1388
/* 80173C04  4B F2 3B F1 */	bl __ct__4cXyzFRC4cXyz
/* 80173C08  C0 01 13 A4 */	lfs f0, 0x13a4(r1)
/* 80173C0C  D0 01 12 00 */	stfs f0, 0x1200(r1)
/* 80173C10  38 61 05 0C */	addi r3, r1, 0x50c
/* 80173C14  38 81 12 08 */	addi r4, r1, 0x1208
/* 80173C18  38 A1 11 FC */	addi r5, r1, 0x11fc
/* 80173C1C  48 0F 2F 19 */	bl __mi__4cXyzCFRC3Vec
/* 80173C20  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80173C24  38 81 05 0C */	addi r4, r1, 0x50c
/* 80173C28  48 0F DE 49 */	bl Val__7cSGlobeFRC4cXyz
/* 80173C2C  38 61 05 0C */	addi r3, r1, 0x50c
/* 80173C30  38 80 FF FF */	li r4, -1
/* 80173C34  4B E9 55 51 */	bl __dt__4cXyzFv
/* 80173C38  38 61 00 94 */	addi r3, r1, 0x94
/* 80173C3C  C0 22 9D 50 */	lfs f1, lit_9405(r2)
/* 80173C40  48 0F D3 89 */	bl __ct__7cSAngleFf
/* 80173C44  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80173C48  48 00 ED C1 */	bl V__7cSGlobeCFv
/* 80173C4C  7C 64 1B 78 */	mr r4, r3
/* 80173C50  38 61 00 90 */	addi r3, r1, 0x90
/* 80173C54  38 A1 00 94 */	addi r5, r1, 0x94
/* 80173C58  48 0F D5 1D */	bl __pl__7cSAngleCFRC7cSAngle
/* 80173C5C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80173C60  38 81 00 90 */	addi r4, r1, 0x90
/* 80173C64  4B F1 BD F5 */	bl V__7cSGlobeFRC7cSAngle
/* 80173C68  38 61 00 90 */	addi r3, r1, 0x90
/* 80173C6C  38 80 FF FF */	li r4, -1
/* 80173C70  4B EB C8 A1 */	bl __dt__7cSAngleFv
/* 80173C74  38 61 00 94 */	addi r3, r1, 0x94
/* 80173C78  38 80 FF FF */	li r4, -1
/* 80173C7C  4B EB C8 95 */	bl __dt__7cSAngleFv
/* 80173C80  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80173C84  C0 22 9E 74 */	lfs f1, lit_12292(r2)
/* 80173C88  48 00 ED C5 */	bl R__7cSGlobeFf
/* 80173C8C  C0 21 13 A4 */	lfs f1, 0x13a4(r1)
/* 80173C90  C0 01 13 8C */	lfs f0, 0x138c(r1)
/* 80173C94  EC 01 00 28 */	fsubs f0, f1, f0
/* 80173C98  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 80173C9C  38 00 00 01 */	li r0, 1
/* 80173CA0  98 1F 01 58 */	stb r0, 0x158(r31)
/* 80173CA4  C0 21 13 8C */	lfs f1, 0x138c(r1)
/* 80173CA8  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 80173CAC  EC 01 00 2A */	fadds f0, f1, f0
/* 80173CB0  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 80173CB4  38 61 05 00 */	addi r3, r1, 0x500
/* 80173CB8  7F E4 FB 78 */	mr r4, r31
/* 80173CBC  7F A5 EB 78 */	mr r5, r29
/* 80173CC0  4B F2 3A 5D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80173CC4  38 61 11 F0 */	addi r3, r1, 0x11f0
/* 80173CC8  38 81 05 00 */	addi r4, r1, 0x500
/* 80173CCC  4B F2 3B 29 */	bl __ct__4cXyzFRC4cXyz
/* 80173CD0  38 61 05 00 */	addi r3, r1, 0x500
/* 80173CD4  38 80 FF FF */	li r4, -1
/* 80173CD8  4B E9 54 AD */	bl __dt__4cXyzFv
/* 80173CDC  38 61 04 F4 */	addi r3, r1, 0x4f4
/* 80173CE0  7F E4 FB 78 */	mr r4, r31
/* 80173CE4  7F C5 F3 78 */	mr r5, r30
/* 80173CE8  4B F2 3A 35 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80173CEC  38 61 11 E4 */	addi r3, r1, 0x11e4
/* 80173CF0  38 81 04 F4 */	addi r4, r1, 0x4f4
/* 80173CF4  4B F2 3B 01 */	bl __ct__4cXyzFRC4cXyz
/* 80173CF8  38 61 04 F4 */	addi r3, r1, 0x4f4
/* 80173CFC  38 80 FF FF */	li r4, -1
/* 80173D00  4B E9 54 85 */	bl __dt__4cXyzFv
/* 80173D04  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 80173D08  48 00 ED 41 */	bl __ct__7cSAngleFv
/* 80173D0C  80 1F 04 20 */	lwz r0, 0x420(r31)
/* 80173D10  2C 00 00 00 */	cmpwi r0, 0
/* 80173D14  41 82 00 74 */	beq lbl_80173D88
/* 80173D18  38 61 00 8C */	addi r3, r1, 0x8c
/* 80173D1C  C0 22 9C E4 */	lfs f1, lit_6629(r2)
/* 80173D20  48 0F D2 A9 */	bl __ct__7cSAngleFf
/* 80173D24  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80173D28  48 00 EF 5D */	bl U__7cSGlobeCFv
/* 80173D2C  7C 64 1B 78 */	mr r4, r3
/* 80173D30  38 61 00 88 */	addi r3, r1, 0x88
/* 80173D34  38 A1 00 8C */	addi r5, r1, 0x8c
/* 80173D38  48 0F D4 3D */	bl __pl__7cSAngleCFRC7cSAngle
/* 80173D3C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80173D40  38 81 00 88 */	addi r4, r1, 0x88
/* 80173D44  4B F1 AB 51 */	bl U__7cSGlobeFRC7cSAngle
/* 80173D48  38 61 00 88 */	addi r3, r1, 0x88
/* 80173D4C  38 80 FF FF */	li r4, -1
/* 80173D50  4B EB C7 C1 */	bl __dt__7cSAngleFv
/* 80173D54  38 61 00 8C */	addi r3, r1, 0x8c
/* 80173D58  38 80 FF FF */	li r4, -1
/* 80173D5C  4B EB C7 B5 */	bl __dt__7cSAngleFv
/* 80173D60  38 61 00 84 */	addi r3, r1, 0x84
/* 80173D64  C0 22 9D 68 */	lfs f1, lit_9788(r2)
/* 80173D68  48 0F D2 61 */	bl __ct__7cSAngleFf
/* 80173D6C  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 80173D70  38 81 00 84 */	addi r4, r1, 0x84
/* 80173D74  48 00 EF 35 */	bl __as__7cSAngleFRC7cSAngle
/* 80173D78  38 61 00 84 */	addi r3, r1, 0x84
/* 80173D7C  38 80 FF FF */	li r4, -1
/* 80173D80  4B EB C7 91 */	bl __dt__7cSAngleFv
/* 80173D84  48 00 00 70 */	b lbl_80173DF4
lbl_80173D88:
/* 80173D88  38 61 00 80 */	addi r3, r1, 0x80
/* 80173D8C  C0 22 9C E4 */	lfs f1, lit_6629(r2)
/* 80173D90  48 0F D2 39 */	bl __ct__7cSAngleFf
/* 80173D94  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80173D98  48 00 EE ED */	bl U__7cSGlobeCFv
/* 80173D9C  7C 64 1B 78 */	mr r4, r3
/* 80173DA0  38 61 00 7C */	addi r3, r1, 0x7c
/* 80173DA4  38 A1 00 80 */	addi r5, r1, 0x80
/* 80173DA8  48 0F D3 FD */	bl __mi__7cSAngleCFRC7cSAngle
/* 80173DAC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80173DB0  38 81 00 7C */	addi r4, r1, 0x7c
/* 80173DB4  4B F1 AA E1 */	bl U__7cSGlobeFRC7cSAngle
/* 80173DB8  38 61 00 7C */	addi r3, r1, 0x7c
/* 80173DBC  38 80 FF FF */	li r4, -1
/* 80173DC0  4B EB C7 51 */	bl __dt__7cSAngleFv
/* 80173DC4  38 61 00 80 */	addi r3, r1, 0x80
/* 80173DC8  38 80 FF FF */	li r4, -1
/* 80173DCC  4B EB C7 45 */	bl __dt__7cSAngleFv
/* 80173DD0  38 61 00 78 */	addi r3, r1, 0x78
/* 80173DD4  C0 22 9C B0 */	lfs f1, lit_5660(r2)
/* 80173DD8  48 0F D1 F1 */	bl __ct__7cSAngleFf
/* 80173DDC  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 80173DE0  38 81 00 78 */	addi r4, r1, 0x78
/* 80173DE4  48 00 EE C5 */	bl __as__7cSAngleFRC7cSAngle
/* 80173DE8  38 61 00 78 */	addi r3, r1, 0x78
/* 80173DEC  38 80 FF FF */	li r4, -1
/* 80173DF0  4B EB C7 21 */	bl __dt__7cSAngleFv
lbl_80173DF4:
/* 80173DF4  48 00 EC C9 */	bl getMidnaActor__9daPy_py_cFv
/* 80173DF8  7C 79 1B 78 */	mr r25, r3
/* 80173DFC  3A E0 00 00 */	li r23, 0
lbl_80173E00:
/* 80173E00  38 61 04 E8 */	addi r3, r1, 0x4e8
/* 80173E04  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80173E08  48 0F DC AD */	bl Xyz__7cSGlobeCFv
/* 80173E0C  38 61 04 DC */	addi r3, r1, 0x4dc
/* 80173E10  38 9F 00 64 */	addi r4, r31, 0x64
/* 80173E14  38 A1 04 E8 */	addi r5, r1, 0x4e8
/* 80173E18  48 0F 2C CD */	bl __pl__4cXyzCFRC3Vec
/* 80173E1C  38 7F 00 70 */	addi r3, r31, 0x70
/* 80173E20  38 81 04 DC */	addi r4, r1, 0x4dc
/* 80173E24  4B F2 39 B5 */	bl __as__4cXyzFRC4cXyz
/* 80173E28  38 61 04 DC */	addi r3, r1, 0x4dc
/* 80173E2C  38 80 FF FF */	li r4, -1
/* 80173E30  4B E9 53 55 */	bl __dt__4cXyzFv
/* 80173E34  38 61 04 E8 */	addi r3, r1, 0x4e8
/* 80173E38  38 80 FF FF */	li r4, -1
/* 80173E3C  4B E9 53 49 */	bl __dt__4cXyzFv
/* 80173E40  7F E3 FB 78 */	mr r3, r31
/* 80173E44  38 81 11 F0 */	addi r4, r1, 0x11f0
/* 80173E48  38 BF 00 70 */	addi r5, r31, 0x70
/* 80173E4C  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 80173E50  4B FF 1C A1 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80173E54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80173E58  40 82 00 C8 */	bne lbl_80173F20
/* 80173E5C  7F E3 FB 78 */	mr r3, r31
/* 80173E60  38 81 11 E4 */	addi r4, r1, 0x11e4
/* 80173E64  38 BF 00 70 */	addi r5, r31, 0x70
/* 80173E68  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 80173E6C  4B FF 1C 85 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80173E70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80173E74  40 82 00 AC */	bne lbl_80173F20
/* 80173E78  38 61 04 D0 */	addi r3, r1, 0x4d0
/* 80173E7C  38 81 11 F0 */	addi r4, r1, 0x11f0
/* 80173E80  4B F2 39 75 */	bl __ct__4cXyzFRC4cXyz
/* 80173E84  38 61 04 C4 */	addi r3, r1, 0x4c4
/* 80173E88  38 9F 00 70 */	addi r4, r31, 0x70
/* 80173E8C  4B F2 39 69 */	bl __ct__4cXyzFRC4cXyz
/* 80173E90  38 61 04 D0 */	addi r3, r1, 0x4d0
/* 80173E94  38 81 04 C4 */	addi r4, r1, 0x4c4
/* 80173E98  7F A5 EB 78 */	mr r5, r29
/* 80173E9C  7F 26 CB 78 */	mr r6, r25
/* 80173EA0  38 E0 00 00 */	li r7, 0
/* 80173EA4  48 00 0F AD */	bl func_80174E50
/* 80173EA8  7C 76 1B 78 */	mr r22, r3
/* 80173EAC  38 61 04 C4 */	addi r3, r1, 0x4c4
/* 80173EB0  38 80 FF FF */	li r4, -1
/* 80173EB4  4B E9 52 D1 */	bl __dt__4cXyzFv
/* 80173EB8  38 61 04 D0 */	addi r3, r1, 0x4d0
/* 80173EBC  38 80 FF FF */	li r4, -1
/* 80173EC0  4B E9 52 C5 */	bl __dt__4cXyzFv
/* 80173EC4  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80173EC8  40 82 00 58 */	bne lbl_80173F20
/* 80173ECC  38 61 04 B8 */	addi r3, r1, 0x4b8
/* 80173ED0  38 81 11 E4 */	addi r4, r1, 0x11e4
/* 80173ED4  4B F2 39 21 */	bl __ct__4cXyzFRC4cXyz
/* 80173ED8  38 61 04 AC */	addi r3, r1, 0x4ac
/* 80173EDC  38 9F 00 70 */	addi r4, r31, 0x70
/* 80173EE0  4B F2 39 15 */	bl __ct__4cXyzFRC4cXyz
/* 80173EE4  38 61 04 B8 */	addi r3, r1, 0x4b8
/* 80173EE8  38 81 04 AC */	addi r4, r1, 0x4ac
/* 80173EEC  7F A5 EB 78 */	mr r5, r29
/* 80173EF0  7F 26 CB 78 */	mr r6, r25
/* 80173EF4  38 E0 00 00 */	li r7, 0
/* 80173EF8  48 00 0F 59 */	bl func_80174E50
/* 80173EFC  7C 76 1B 78 */	mr r22, r3
/* 80173F00  38 61 04 AC */	addi r3, r1, 0x4ac
/* 80173F04  38 80 FF FF */	li r4, -1
/* 80173F08  4B E9 52 7D */	bl __dt__4cXyzFv
/* 80173F0C  38 61 04 B8 */	addi r3, r1, 0x4b8
/* 80173F10  38 80 FF FF */	li r4, -1
/* 80173F14  4B E9 52 71 */	bl __dt__4cXyzFv
/* 80173F18  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80173F1C  41 82 00 40 */	beq lbl_80173F5C
lbl_80173F20:
/* 80173F20  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80173F24  48 00 ED 61 */	bl U__7cSGlobeCFv
/* 80173F28  7C 64 1B 78 */	mr r4, r3
/* 80173F2C  38 61 00 74 */	addi r3, r1, 0x74
/* 80173F30  38 A1 01 F4 */	addi r5, r1, 0x1f4
/* 80173F34  48 0F D2 41 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80173F38  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80173F3C  38 81 00 74 */	addi r4, r1, 0x74
/* 80173F40  4B F1 A9 55 */	bl U__7cSGlobeFRC7cSAngle
/* 80173F44  38 61 00 74 */	addi r3, r1, 0x74
/* 80173F48  38 80 FF FF */	li r4, -1
/* 80173F4C  4B EB C5 C5 */	bl __dt__7cSAngleFv
/* 80173F50  3A F7 00 01 */	addi r23, r23, 1
/* 80173F54  2C 17 00 12 */	cmpwi r23, 0x12
/* 80173F58  41 80 FE A8 */	blt lbl_80173E00
lbl_80173F5C:
/* 80173F5C  C0 02 9C B8 */	lfs f0, lit_5662(r2)
/* 80173F60  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80173F64  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 80173F68  38 80 FF FF */	li r4, -1
/* 80173F6C  4B EB C5 A5 */	bl __dt__7cSAngleFv
/* 80173F70  38 61 11 E4 */	addi r3, r1, 0x11e4
/* 80173F74  38 80 FF FF */	li r4, -1
/* 80173F78  4B E9 52 0D */	bl __dt__4cXyzFv
/* 80173F7C  38 61 11 F0 */	addi r3, r1, 0x11f0
/* 80173F80  38 80 FF FF */	li r4, -1
/* 80173F84  4B E9 52 01 */	bl __dt__4cXyzFv
/* 80173F88  38 61 11 FC */	addi r3, r1, 0x11fc
/* 80173F8C  38 80 FF FF */	li r4, -1
/* 80173F90  4B E9 51 F5 */	bl __dt__4cXyzFv
/* 80173F94  38 61 12 08 */	addi r3, r1, 0x1208
/* 80173F98  38 80 FF FF */	li r4, -1
/* 80173F9C  4B E9 51 E9 */	bl __dt__4cXyzFv
/* 80173FA0  48 00 0A 5C */	b lbl_801749FC
/* 80173FA4  38 61 04 A0 */	addi r3, r1, 0x4a0
/* 80173FA8  7F E4 FB 78 */	mr r4, r31
/* 80173FAC  7F A5 EB 78 */	mr r5, r29
/* 80173FB0  48 00 0E 85 */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80173FB4  38 61 13 AC */	addi r3, r1, 0x13ac
/* 80173FB8  38 81 04 A0 */	addi r4, r1, 0x4a0
/* 80173FBC  4B F2 38 1D */	bl __as__4cXyzFRC4cXyz
/* 80173FC0  38 61 04 A0 */	addi r3, r1, 0x4a0
/* 80173FC4  38 80 FF FF */	li r4, -1
/* 80173FC8  4B E9 51 BD */	bl __dt__4cXyzFv
/* 80173FCC  38 61 04 94 */	addi r3, r1, 0x494
/* 80173FD0  7F E4 FB 78 */	mr r4, r31
/* 80173FD4  7F C5 F3 78 */	mr r5, r30
/* 80173FD8  48 00 0E 5D */	bl talkEyePos__9dCamera_cFP10fopAc_ac_c
/* 80173FDC  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80173FE0  38 81 04 94 */	addi r4, r1, 0x494
/* 80173FE4  4B F2 37 F5 */	bl __as__4cXyzFRC4cXyz
/* 80173FE8  38 61 04 94 */	addi r3, r1, 0x494
/* 80173FEC  38 80 FF FF */	li r4, -1
/* 80173FF0  4B E9 51 95 */	bl __dt__4cXyzFv
/* 80173FF4  38 61 04 88 */	addi r3, r1, 0x488
/* 80173FF8  38 81 13 AC */	addi r4, r1, 0x13ac
/* 80173FFC  38 A1 13 A0 */	addi r5, r1, 0x13a0
/* 80174000  48 0F 2B 35 */	bl __mi__4cXyzCFRC3Vec
/* 80174004  38 61 02 68 */	addi r3, r1, 0x268
/* 80174008  38 81 04 88 */	addi r4, r1, 0x488
/* 8017400C  48 0F D8 75 */	bl __ct__7cSGlobeFRC4cXyz
/* 80174010  38 61 04 88 */	addi r3, r1, 0x488
/* 80174014  38 80 FF FF */	li r4, -1
/* 80174018  4B E9 51 6D */	bl __dt__4cXyzFv
/* 8017401C  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 80174020  2C 00 00 00 */	cmpwi r0, 0
/* 80174024  40 82 02 3C */	bne lbl_80174260
/* 80174028  38 00 00 01 */	li r0, 1
/* 8017402C  98 1F 01 58 */	stb r0, 0x158(r31)
/* 80174030  38 61 02 60 */	addi r3, r1, 0x260
/* 80174034  38 81 02 68 */	addi r4, r1, 0x268
/* 80174038  48 0F D7 B9 */	bl __ct__7cSGlobeFRC7cSGlobe
/* 8017403C  38 61 02 68 */	addi r3, r1, 0x268
/* 80174040  48 00 EA 25 */	bl R__7cSGlobeCFv
/* 80174044  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 80174048  EC 20 00 72 */	fmuls f1, f0, f1
/* 8017404C  38 61 02 60 */	addi r3, r1, 0x260
/* 80174050  48 00 E9 FD */	bl R__7cSGlobeFf
/* 80174054  38 61 04 7C */	addi r3, r1, 0x47c
/* 80174058  38 81 02 60 */	addi r4, r1, 0x260
/* 8017405C  48 0F DA 59 */	bl Xyz__7cSGlobeCFv
/* 80174060  38 61 04 70 */	addi r3, r1, 0x470
/* 80174064  38 81 13 A0 */	addi r4, r1, 0x13a0
/* 80174068  38 A1 04 7C */	addi r5, r1, 0x47c
/* 8017406C  48 0F 2A 79 */	bl __pl__4cXyzCFRC3Vec
/* 80174070  38 7F 00 64 */	addi r3, r31, 0x64
/* 80174074  38 81 04 70 */	addi r4, r1, 0x470
/* 80174078  4B F2 37 61 */	bl __as__4cXyzFRC4cXyz
/* 8017407C  38 61 04 70 */	addi r3, r1, 0x470
/* 80174080  38 80 FF FF */	li r4, -1
/* 80174084  4B E9 51 01 */	bl __dt__4cXyzFv
/* 80174088  38 61 04 7C */	addi r3, r1, 0x47c
/* 8017408C  38 80 FF FF */	li r4, -1
/* 80174090  4B E9 50 F5 */	bl __dt__4cXyzFv
/* 80174094  C0 01 13 A4 */	lfs f0, 0x13a4(r1)
/* 80174098  C0 62 9D 68 */	lfs f3, lit_9788(r2)
/* 8017409C  EC 40 18 28 */	fsubs f2, f0, f3
/* 801740A0  C0 22 9C E4 */	lfs f1, lit_6629(r2)
/* 801740A4  C0 1F 04 64 */	lfs f0, 0x464(r31)
/* 801740A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801740AC  EC 02 00 28 */	fsubs f0, f2, f0
/* 801740B0  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 801740B4  80 1F 04 20 */	lwz r0, 0x420(r31)
/* 801740B8  2C 00 00 00 */	cmpwi r0, 0
/* 801740BC  41 82 00 4C */	beq lbl_80174108
/* 801740C0  C0 9F 04 64 */	lfs f4, 0x464(r31)
/* 801740C4  38 61 04 64 */	addi r3, r1, 0x464
/* 801740C8  C0 22 9D A4 */	lfs f1, lit_10564(r2)
/* 801740CC  EC 03 01 32 */	fmuls f0, f3, f4
/* 801740D0  EC 21 00 2A */	fadds f1, f1, f0
/* 801740D4  C0 42 9D 50 */	lfs f2, lit_9405(r2)
/* 801740D8  C0 62 9D 90 */	lfs f3, lit_10559(r2)
/* 801740DC  C0 02 9D 34 */	lfs f0, lit_9398(r2)
/* 801740E0  EC 00 01 32 */	fmuls f0, f0, f4
/* 801740E4  EC 63 00 28 */	fsubs f3, f3, f0
/* 801740E8  4B FC D8 75 */	bl __ct__4cXyzFfff
/* 801740EC  38 61 02 60 */	addi r3, r1, 0x260
/* 801740F0  38 81 04 64 */	addi r4, r1, 0x464
/* 801740F4  48 0F D9 7D */	bl Val__7cSGlobeFRC4cXyz
/* 801740F8  38 61 04 64 */	addi r3, r1, 0x464
/* 801740FC  38 80 FF FF */	li r4, -1
/* 80174100  4B E9 50 85 */	bl __dt__4cXyzFv
/* 80174104  48 00 00 48 */	b lbl_8017414C
lbl_80174108:
/* 80174108  C0 9F 04 64 */	lfs f4, 0x464(r31)
/* 8017410C  38 61 04 58 */	addi r3, r1, 0x458
/* 80174110  C0 22 9E 68 */	lfs f1, lit_12289(r2)
/* 80174114  EC 03 01 32 */	fmuls f0, f3, f4
/* 80174118  EC 21 00 28 */	fsubs f1, f1, f0
/* 8017411C  C0 42 9D 50 */	lfs f2, lit_9405(r2)
/* 80174120  C0 62 9D 90 */	lfs f3, lit_10559(r2)
/* 80174124  C0 02 9D 34 */	lfs f0, lit_9398(r2)
/* 80174128  EC 00 01 32 */	fmuls f0, f0, f4
/* 8017412C  EC 63 00 28 */	fsubs f3, f3, f0
/* 80174130  4B FC D8 2D */	bl __ct__4cXyzFfff
/* 80174134  38 61 02 60 */	addi r3, r1, 0x260
/* 80174138  38 81 04 58 */	addi r4, r1, 0x458
/* 8017413C  48 0F D9 35 */	bl Val__7cSGlobeFRC4cXyz
/* 80174140  38 61 04 58 */	addi r3, r1, 0x458
/* 80174144  38 80 FF FF */	li r4, -1
/* 80174148  4B E9 50 3D */	bl __dt__4cXyzFv
lbl_8017414C:
/* 8017414C  38 61 00 70 */	addi r3, r1, 0x70
/* 80174150  7F E4 FB 78 */	mr r4, r31
/* 80174154  7F A5 EB 78 */	mr r5, r29
/* 80174158  4B F2 35 E1 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8017415C  38 61 02 60 */	addi r3, r1, 0x260
/* 80174160  48 00 EB 25 */	bl U__7cSGlobeCFv
/* 80174164  7C 64 1B 78 */	mr r4, r3
/* 80174168  38 61 00 6C */	addi r3, r1, 0x6c
/* 8017416C  38 A1 00 70 */	addi r5, r1, 0x70
/* 80174170  48 0F D0 05 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80174174  38 61 02 60 */	addi r3, r1, 0x260
/* 80174178  38 81 00 6C */	addi r4, r1, 0x6c
/* 8017417C  4B F1 A7 19 */	bl U__7cSGlobeFRC7cSAngle
/* 80174180  38 61 00 6C */	addi r3, r1, 0x6c
/* 80174184  38 80 FF FF */	li r4, -1
/* 80174188  4B EB C3 89 */	bl __dt__7cSAngleFv
/* 8017418C  38 61 00 70 */	addi r3, r1, 0x70
/* 80174190  38 80 FF FF */	li r4, -1
/* 80174194  4B EB C3 7D */	bl __dt__7cSAngleFv
/* 80174198  38 61 02 68 */	addi r3, r1, 0x268
/* 8017419C  48 00 E8 6D */	bl V__7cSGlobeCFv
/* 801741A0  7C 76 1B 78 */	mr r22, r3
/* 801741A4  38 61 02 60 */	addi r3, r1, 0x260
/* 801741A8  48 00 E8 61 */	bl V__7cSGlobeCFv
/* 801741AC  7C 64 1B 78 */	mr r4, r3
/* 801741B0  38 61 00 68 */	addi r3, r1, 0x68
/* 801741B4  7E C5 B3 78 */	mr r5, r22
/* 801741B8  48 0F CF BD */	bl __pl__7cSAngleCFRC7cSAngle
/* 801741BC  38 61 02 60 */	addi r3, r1, 0x260
/* 801741C0  38 81 00 68 */	addi r4, r1, 0x68
/* 801741C4  4B F1 B8 95 */	bl V__7cSGlobeFRC7cSAngle
/* 801741C8  38 61 00 68 */	addi r3, r1, 0x68
/* 801741CC  38 80 FF FF */	li r4, -1
/* 801741D0  4B EB C3 41 */	bl __dt__7cSAngleFv
/* 801741D4  38 61 04 4C */	addi r3, r1, 0x44c
/* 801741D8  38 81 02 60 */	addi r4, r1, 0x260
/* 801741DC  48 0F D8 D9 */	bl Xyz__7cSGlobeCFv
/* 801741E0  38 61 04 40 */	addi r3, r1, 0x440
/* 801741E4  38 81 13 AC */	addi r4, r1, 0x13ac
/* 801741E8  38 A1 04 4C */	addi r5, r1, 0x44c
/* 801741EC  48 0F 28 F9 */	bl __pl__4cXyzCFRC3Vec
/* 801741F0  38 7F 00 70 */	addi r3, r31, 0x70
/* 801741F4  38 81 04 40 */	addi r4, r1, 0x440
/* 801741F8  4B F2 35 E1 */	bl __as__4cXyzFRC4cXyz
/* 801741FC  38 61 04 40 */	addi r3, r1, 0x440
/* 80174200  38 80 FF FF */	li r4, -1
/* 80174204  4B E9 4F 81 */	bl __dt__4cXyzFv
/* 80174208  38 61 04 4C */	addi r3, r1, 0x44c
/* 8017420C  38 80 FF FF */	li r4, -1
/* 80174210  4B E9 4F 75 */	bl __dt__4cXyzFv
/* 80174214  38 61 04 34 */	addi r3, r1, 0x434
/* 80174218  38 9F 00 70 */	addi r4, r31, 0x70
/* 8017421C  38 BF 00 64 */	addi r5, r31, 0x64
/* 80174220  48 0F 29 15 */	bl __mi__4cXyzCFRC3Vec
/* 80174224  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80174228  38 81 04 34 */	addi r4, r1, 0x434
/* 8017422C  48 0F D8 45 */	bl Val__7cSGlobeFRC4cXyz
/* 80174230  38 61 04 34 */	addi r3, r1, 0x434
/* 80174234  38 80 FF FF */	li r4, -1
/* 80174238  4B E9 4F 4D */	bl __dt__4cXyzFv
/* 8017423C  C0 42 9D 34 */	lfs f2, lit_9398(r2)
/* 80174240  C0 3F 04 64 */	lfs f1, 0x464(r31)
/* 80174244  C0 02 9E 08 */	lfs f0, lit_11173(r2)
/* 80174248  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017424C  EC 02 00 2A */	fadds f0, f2, f0
/* 80174250  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80174254  38 61 02 60 */	addi r3, r1, 0x260
/* 80174258  38 80 FF FF */	li r4, -1
/* 8017425C  4B EF D4 21 */	bl __dt__7cSGlobeFv
lbl_80174260:
/* 80174260  38 61 02 68 */	addi r3, r1, 0x268
/* 80174264  38 80 FF FF */	li r4, -1
/* 80174268  4B EF D4 15 */	bl __dt__7cSGlobeFv
/* 8017426C  48 00 07 90 */	b lbl_801749FC
/* 80174270  38 61 11 D8 */	addi r3, r1, 0x11d8
/* 80174274  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80174278  C0 42 9E 00 */	lfs f2, lit_11171(r2)
/* 8017427C  C0 62 9D 80 */	lfs f3, lit_10555(r2)
/* 80174280  4B FC D6 DD */	bl __ct__4cXyzFfff
/* 80174284  38 61 02 58 */	addi r3, r1, 0x258
/* 80174288  38 81 11 D8 */	addi r4, r1, 0x11d8
/* 8017428C  48 0F D5 F5 */	bl __ct__7cSGlobeFRC4cXyz
/* 80174290  38 61 00 64 */	addi r3, r1, 0x64
/* 80174294  7F E4 FB 78 */	mr r4, r31
/* 80174298  7F A5 EB 78 */	mr r5, r29
/* 8017429C  4B F2 34 9D */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 801742A0  38 61 02 58 */	addi r3, r1, 0x258
/* 801742A4  48 00 E9 E1 */	bl U__7cSGlobeCFv
/* 801742A8  7C 64 1B 78 */	mr r4, r3
/* 801742AC  38 61 00 60 */	addi r3, r1, 0x60
/* 801742B0  38 A1 00 64 */	addi r5, r1, 0x64
/* 801742B4  48 0F CE C1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 801742B8  38 61 02 58 */	addi r3, r1, 0x258
/* 801742BC  38 81 00 60 */	addi r4, r1, 0x60
/* 801742C0  4B F1 A5 D5 */	bl U__7cSGlobeFRC7cSAngle
/* 801742C4  38 61 00 60 */	addi r3, r1, 0x60
/* 801742C8  38 80 FF FF */	li r4, -1
/* 801742CC  4B EB C2 45 */	bl __dt__7cSAngleFv
/* 801742D0  38 61 00 64 */	addi r3, r1, 0x64
/* 801742D4  38 80 FF FF */	li r4, -1
/* 801742D8  4B EB C2 39 */	bl __dt__7cSAngleFv
/* 801742DC  38 61 04 28 */	addi r3, r1, 0x428
/* 801742E0  7F E4 FB 78 */	mr r4, r31
/* 801742E4  7F A5 EB 78 */	mr r5, r29
/* 801742E8  4B F2 34 35 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801742EC  38 61 04 1C */	addi r3, r1, 0x41c
/* 801742F0  38 81 02 58 */	addi r4, r1, 0x258
/* 801742F4  48 0F D7 C1 */	bl Xyz__7cSGlobeCFv
/* 801742F8  38 61 04 10 */	addi r3, r1, 0x410
/* 801742FC  38 81 04 28 */	addi r4, r1, 0x428
/* 80174300  38 A1 04 1C */	addi r5, r1, 0x41c
/* 80174304  48 0F 27 E1 */	bl __pl__4cXyzCFRC3Vec
/* 80174308  38 7F 00 64 */	addi r3, r31, 0x64
/* 8017430C  38 81 04 10 */	addi r4, r1, 0x410
/* 80174310  4B F2 34 C9 */	bl __as__4cXyzFRC4cXyz
/* 80174314  38 61 04 10 */	addi r3, r1, 0x410
/* 80174318  38 80 FF FF */	li r4, -1
/* 8017431C  4B E9 4E 69 */	bl __dt__4cXyzFv
/* 80174320  38 61 04 1C */	addi r3, r1, 0x41c
/* 80174324  38 80 FF FF */	li r4, -1
/* 80174328  4B E9 4E 5D */	bl __dt__4cXyzFv
/* 8017432C  38 61 04 28 */	addi r3, r1, 0x428
/* 80174330  38 80 FF FF */	li r4, -1
/* 80174334  4B E9 4E 51 */	bl __dt__4cXyzFv
/* 80174338  38 61 00 5C */	addi r3, r1, 0x5c
/* 8017433C  C0 22 9C B0 */	lfs f1, lit_5660(r2)
/* 80174340  48 0F CC 89 */	bl __ct__7cSAngleFf
/* 80174344  38 61 00 58 */	addi r3, r1, 0x58
/* 80174348  C0 22 9E 34 */	lfs f1, lit_12276(r2)
/* 8017434C  48 0F CC 7D */	bl __ct__7cSAngleFf
/* 80174350  38 61 00 54 */	addi r3, r1, 0x54
/* 80174354  7F E4 FB 78 */	mr r4, r31
/* 80174358  7F A5 EB 78 */	mr r5, r29
/* 8017435C  4B F2 33 DD */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80174360  38 61 00 50 */	addi r3, r1, 0x50
/* 80174364  38 81 00 58 */	addi r4, r1, 0x58
/* 80174368  38 A1 00 54 */	addi r5, r1, 0x54
/* 8017436C  48 0F CE 09 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80174370  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80174374  C0 22 9E 44 */	lfs f1, lit_12280(r2)
/* 80174378  38 81 00 5C */	addi r4, r1, 0x5c
/* 8017437C  38 A1 00 50 */	addi r5, r1, 0x50
/* 80174380  48 0F D6 89 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 80174384  38 61 00 50 */	addi r3, r1, 0x50
/* 80174388  38 80 FF FF */	li r4, -1
/* 8017438C  4B EB C1 85 */	bl __dt__7cSAngleFv
/* 80174390  38 61 00 54 */	addi r3, r1, 0x54
/* 80174394  38 80 FF FF */	li r4, -1
/* 80174398  4B EB C1 79 */	bl __dt__7cSAngleFv
/* 8017439C  38 61 00 58 */	addi r3, r1, 0x58
/* 801743A0  38 80 FF FF */	li r4, -1
/* 801743A4  4B EB C1 6D */	bl __dt__7cSAngleFv
/* 801743A8  38 61 00 5C */	addi r3, r1, 0x5c
/* 801743AC  38 80 FF FF */	li r4, -1
/* 801743B0  4B EB C1 61 */	bl __dt__7cSAngleFv
/* 801743B4  38 00 00 01 */	li r0, 1
/* 801743B8  98 1F 01 58 */	stb r0, 0x158(r31)
/* 801743BC  38 61 04 04 */	addi r3, r1, 0x404
/* 801743C0  38 9F 00 5C */	addi r4, r31, 0x5c
/* 801743C4  48 0F D6 F1 */	bl Xyz__7cSGlobeCFv
/* 801743C8  38 61 03 F8 */	addi r3, r1, 0x3f8
/* 801743CC  38 9F 00 64 */	addi r4, r31, 0x64
/* 801743D0  38 A1 04 04 */	addi r5, r1, 0x404
/* 801743D4  48 0F 27 11 */	bl __pl__4cXyzCFRC3Vec
/* 801743D8  38 7F 00 70 */	addi r3, r31, 0x70
/* 801743DC  38 81 03 F8 */	addi r4, r1, 0x3f8
/* 801743E0  4B F2 33 F9 */	bl __as__4cXyzFRC4cXyz
/* 801743E4  38 61 03 F8 */	addi r3, r1, 0x3f8
/* 801743E8  38 80 FF FF */	li r4, -1
/* 801743EC  4B E9 4D 99 */	bl __dt__4cXyzFv
/* 801743F0  38 61 04 04 */	addi r3, r1, 0x404
/* 801743F4  38 80 FF FF */	li r4, -1
/* 801743F8  4B E9 4D 8D */	bl __dt__4cXyzFv
/* 801743FC  C0 02 9E 78 */	lfs f0, lit_12293(r2)
/* 80174400  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80174404  38 61 02 58 */	addi r3, r1, 0x258
/* 80174408  38 80 FF FF */	li r4, -1
/* 8017440C  4B EF D2 71 */	bl __dt__7cSGlobeFv
/* 80174410  38 61 11 D8 */	addi r3, r1, 0x11d8
/* 80174414  38 80 FF FF */	li r4, -1
/* 80174418  4B E9 4D 6D */	bl __dt__4cXyzFv
/* 8017441C  48 00 05 E0 */	b lbl_801749FC
/* 80174420  38 61 03 EC */	addi r3, r1, 0x3ec
/* 80174424  7F E4 FB 78 */	mr r4, r31
/* 80174428  7F A5 EB 78 */	mr r5, r29
/* 8017442C  48 00 09 ED */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80174430  38 7F 00 64 */	addi r3, r31, 0x64
/* 80174434  38 81 03 EC */	addi r4, r1, 0x3ec
/* 80174438  4B F2 33 A1 */	bl __as__4cXyzFRC4cXyz
/* 8017443C  38 61 03 EC */	addi r3, r1, 0x3ec
/* 80174440  38 80 FF FF */	li r4, -1
/* 80174444  4B E9 4D 41 */	bl __dt__4cXyzFv
/* 80174448  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 8017444C  2C 00 00 00 */	cmpwi r0, 0
/* 80174450  40 82 00 8C */	bne lbl_801744DC
/* 80174454  38 61 00 4C */	addi r3, r1, 0x4c
/* 80174458  C0 22 9D 68 */	lfs f1, lit_9788(r2)
/* 8017445C  48 0F CB 6D */	bl __ct__7cSAngleFf
/* 80174460  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80174464  38 81 00 4C */	addi r4, r1, 0x4c
/* 80174468  4B F1 B5 F1 */	bl V__7cSGlobeFRC7cSAngle
/* 8017446C  38 61 00 4C */	addi r3, r1, 0x4c
/* 80174470  38 80 FF FF */	li r4, -1
/* 80174474  4B EB C0 9D */	bl __dt__7cSAngleFv
/* 80174478  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8017447C  C0 22 9E 7C */	lfs f1, lit_12294(r2)
/* 80174480  48 00 E5 CD */	bl R__7cSGlobeFf
/* 80174484  38 61 00 48 */	addi r3, r1, 0x48
/* 80174488  7F E4 FB 78 */	mr r4, r31
/* 8017448C  7F A5 EB 78 */	mr r5, r29
/* 80174490  4B F2 32 A9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80174494  38 61 00 48 */	addi r3, r1, 0x48
/* 80174498  48 0F CC 51 */	bl Inv__7cSAngleCFv
/* 8017449C  7C 64 1B 78 */	mr r4, r3
/* 801744A0  38 61 00 44 */	addi r3, r1, 0x44
/* 801744A4  48 0F CA F5 */	bl __ct__7cSAngleFs
/* 801744A8  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801744AC  38 81 00 44 */	addi r4, r1, 0x44
/* 801744B0  4B F1 A3 E5 */	bl U__7cSGlobeFRC7cSAngle
/* 801744B4  38 61 00 44 */	addi r3, r1, 0x44
/* 801744B8  38 80 FF FF */	li r4, -1
/* 801744BC  4B EB C0 55 */	bl __dt__7cSAngleFv
/* 801744C0  38 61 00 48 */	addi r3, r1, 0x48
/* 801744C4  38 80 FF FF */	li r4, -1
/* 801744C8  4B EB C0 49 */	bl __dt__7cSAngleFv
/* 801744CC  C0 02 9E 80 */	lfs f0, lit_12295(r2)
/* 801744D0  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 801744D4  38 00 00 01 */	li r0, 1
/* 801744D8  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_801744DC:
/* 801744DC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 801744E0  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 801744E4  EC 01 00 2A */	fadds f0, f1, f0
/* 801744E8  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 801744EC  38 61 03 E0 */	addi r3, r1, 0x3e0
/* 801744F0  38 9F 00 5C */	addi r4, r31, 0x5c
/* 801744F4  48 0F D5 C1 */	bl Xyz__7cSGlobeCFv
/* 801744F8  38 61 03 D4 */	addi r3, r1, 0x3d4
/* 801744FC  38 9F 00 64 */	addi r4, r31, 0x64
/* 80174500  38 A1 03 E0 */	addi r5, r1, 0x3e0
/* 80174504  48 0F 25 E1 */	bl __pl__4cXyzCFRC3Vec
/* 80174508  38 7F 00 70 */	addi r3, r31, 0x70
/* 8017450C  38 81 03 D4 */	addi r4, r1, 0x3d4
/* 80174510  4B F2 32 C9 */	bl __as__4cXyzFRC4cXyz
/* 80174514  38 61 03 D4 */	addi r3, r1, 0x3d4
/* 80174518  38 80 FF FF */	li r4, -1
/* 8017451C  4B E9 4C 69 */	bl __dt__4cXyzFv
/* 80174520  38 61 03 E0 */	addi r3, r1, 0x3e0
/* 80174524  38 80 FF FF */	li r4, -1
/* 80174528  4B E9 4C 5D */	bl __dt__4cXyzFv
/* 8017452C  C0 02 9E 78 */	lfs f0, lit_12293(r2)
/* 80174530  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80174534  48 00 04 C8 */	b lbl_801749FC
/* 80174538  38 61 03 C8 */	addi r3, r1, 0x3c8
/* 8017453C  7F E4 FB 78 */	mr r4, r31
/* 80174540  7F C5 F3 78 */	mr r5, r30
/* 80174544  4B F2 31 D9 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80174548  38 61 13 AC */	addi r3, r1, 0x13ac
/* 8017454C  38 81 03 C8 */	addi r4, r1, 0x3c8
/* 80174550  4B F2 32 89 */	bl __as__4cXyzFRC4cXyz
/* 80174554  38 61 03 C8 */	addi r3, r1, 0x3c8
/* 80174558  38 80 FF FF */	li r4, -1
/* 8017455C  4B E9 4C 29 */	bl __dt__4cXyzFv
/* 80174560  38 61 03 BC */	addi r3, r1, 0x3bc
/* 80174564  7F E4 FB 78 */	mr r4, r31
/* 80174568  7F A5 EB 78 */	mr r5, r29
/* 8017456C  4B F2 31 B1 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80174570  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80174574  38 81 03 BC */	addi r4, r1, 0x3bc
/* 80174578  4B F2 32 61 */	bl __as__4cXyzFRC4cXyz
/* 8017457C  38 61 03 BC */	addi r3, r1, 0x3bc
/* 80174580  38 80 FF FF */	li r4, -1
/* 80174584  4B E9 4C 01 */	bl __dt__4cXyzFv
/* 80174588  38 61 03 B0 */	addi r3, r1, 0x3b0
/* 8017458C  7F E4 FB 78 */	mr r4, r31
/* 80174590  7F C5 F3 78 */	mr r5, r30
/* 80174594  48 00 08 85 */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 80174598  38 61 13 94 */	addi r3, r1, 0x1394
/* 8017459C  38 81 03 B0 */	addi r4, r1, 0x3b0
/* 801745A0  4B F2 32 39 */	bl __as__4cXyzFRC4cXyz
/* 801745A4  38 61 03 B0 */	addi r3, r1, 0x3b0
/* 801745A8  38 80 FF FF */	li r4, -1
/* 801745AC  4B E9 4B D9 */	bl __dt__4cXyzFv
/* 801745B0  38 61 03 A4 */	addi r3, r1, 0x3a4
/* 801745B4  7F E4 FB 78 */	mr r4, r31
/* 801745B8  7F A5 EB 78 */	mr r5, r29
/* 801745BC  48 00 08 5D */	bl talkBasePos__9dCamera_cFP10fopAc_ac_c
/* 801745C0  38 61 13 88 */	addi r3, r1, 0x1388
/* 801745C4  38 81 03 A4 */	addi r4, r1, 0x3a4
/* 801745C8  4B F2 32 11 */	bl __as__4cXyzFRC4cXyz
/* 801745CC  38 61 03 A4 */	addi r3, r1, 0x3a4
/* 801745D0  38 80 FF FF */	li r4, -1
/* 801745D4  4B E9 4B B1 */	bl __dt__4cXyzFv
/* 801745D8  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 801745DC  2C 00 00 00 */	cmpwi r0, 0
/* 801745E0  40 82 00 0C */	bne lbl_801745EC
/* 801745E4  38 00 00 01 */	li r0, 1
/* 801745E8  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_801745EC:
/* 801745EC  38 61 11 CC */	addi r3, r1, 0x11cc
/* 801745F0  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 801745F4  C0 42 9C E4 */	lfs f2, lit_6629(r2)
/* 801745F8  C0 62 9D 98 */	lfs f3, lit_10561(r2)
/* 801745FC  4B FC D3 61 */	bl __ct__4cXyzFfff
/* 80174600  38 61 02 50 */	addi r3, r1, 0x250
/* 80174604  38 81 11 CC */	addi r4, r1, 0x11cc
/* 80174608  48 0F D2 79 */	bl __ct__7cSGlobeFRC4cXyz
/* 8017460C  38 61 00 40 */	addi r3, r1, 0x40
/* 80174610  7F E4 FB 78 */	mr r4, r31
/* 80174614  7F A5 EB 78 */	mr r5, r29
/* 80174618  4B F2 31 21 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8017461C  38 61 02 50 */	addi r3, r1, 0x250
/* 80174620  48 00 E6 65 */	bl U__7cSGlobeCFv
/* 80174624  7C 64 1B 78 */	mr r4, r3
/* 80174628  38 61 00 3C */	addi r3, r1, 0x3c
/* 8017462C  38 A1 00 40 */	addi r5, r1, 0x40
/* 80174630  48 0F CB 45 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80174634  38 61 02 50 */	addi r3, r1, 0x250
/* 80174638  38 81 00 3C */	addi r4, r1, 0x3c
/* 8017463C  4B F1 A2 59 */	bl U__7cSGlobeFRC7cSAngle
/* 80174640  38 61 00 3C */	addi r3, r1, 0x3c
/* 80174644  38 80 FF FF */	li r4, -1
/* 80174648  4B EB BE C9 */	bl __dt__7cSAngleFv
/* 8017464C  38 61 00 40 */	addi r3, r1, 0x40
/* 80174650  38 80 FF FF */	li r4, -1
/* 80174654  4B EB BE BD */	bl __dt__7cSAngleFv
/* 80174658  38 61 03 98 */	addi r3, r1, 0x398
/* 8017465C  38 81 02 50 */	addi r4, r1, 0x250
/* 80174660  48 0F D4 55 */	bl Xyz__7cSGlobeCFv
/* 80174664  38 61 03 8C */	addi r3, r1, 0x38c
/* 80174668  38 81 13 A0 */	addi r4, r1, 0x13a0
/* 8017466C  38 A1 03 98 */	addi r5, r1, 0x398
/* 80174670  48 0F 24 75 */	bl __pl__4cXyzCFRC3Vec
/* 80174674  38 7F 04 78 */	addi r3, r31, 0x478
/* 80174678  38 81 03 8C */	addi r4, r1, 0x38c
/* 8017467C  4B F2 31 5D */	bl __as__4cXyzFRC4cXyz
/* 80174680  38 61 03 8C */	addi r3, r1, 0x38c
/* 80174684  38 80 FF FF */	li r4, -1
/* 80174688  4B E9 4A FD */	bl __dt__4cXyzFv
/* 8017468C  38 61 03 98 */	addi r3, r1, 0x398
/* 80174690  38 80 FF FF */	li r4, -1
/* 80174694  4B E9 4A F1 */	bl __dt__4cXyzFv
/* 80174698  38 61 01 F0 */	addi r3, r1, 0x1f0
/* 8017469C  48 00 E3 AD */	bl __ct__7cSAngleFv
/* 801746A0  2C 1C 00 24 */	cmpwi r28, 0x24
/* 801746A4  40 82 00 60 */	bne lbl_80174704
/* 801746A8  38 61 01 F0 */	addi r3, r1, 0x1f0
/* 801746AC  C0 22 9E 84 */	lfs f1, lit_12296(r2)
/* 801746B0  48 0F C9 5D */	bl Val__7cSAngleFf
/* 801746B4  38 61 00 38 */	addi r3, r1, 0x38
/* 801746B8  7F E4 FB 78 */	mr r4, r31
/* 801746BC  7F A5 EB 78 */	mr r5, r29
/* 801746C0  4B F2 30 79 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 801746C4  38 61 00 34 */	addi r3, r1, 0x34
/* 801746C8  38 81 01 F0 */	addi r4, r1, 0x1f0
/* 801746CC  38 A1 00 38 */	addi r5, r1, 0x38
/* 801746D0  48 0F CA A5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 801746D4  38 7F 04 90 */	addi r3, r31, 0x490
/* 801746D8  C0 22 9D 10 */	lfs f1, lit_8022(r2)
/* 801746DC  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 801746E0  38 A1 00 34 */	addi r5, r1, 0x34
/* 801746E4  48 0F D3 25 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 801746E8  38 61 00 34 */	addi r3, r1, 0x34
/* 801746EC  38 80 FF FF */	li r4, -1
/* 801746F0  4B EB BE 21 */	bl __dt__7cSAngleFv
/* 801746F4  38 61 00 38 */	addi r3, r1, 0x38
/* 801746F8  38 80 FF FF */	li r4, -1
/* 801746FC  4B EB BE 15 */	bl __dt__7cSAngleFv
/* 80174700  48 00 00 5C */	b lbl_8017475C
lbl_80174704:
/* 80174704  38 61 01 F0 */	addi r3, r1, 0x1f0
/* 80174708  C0 22 9E 60 */	lfs f1, lit_12287(r2)
/* 8017470C  48 0F C9 01 */	bl Val__7cSAngleFf
/* 80174710  38 61 00 30 */	addi r3, r1, 0x30
/* 80174714  7F E4 FB 78 */	mr r4, r31
/* 80174718  7F A5 EB 78 */	mr r5, r29
/* 8017471C  4B F2 30 1D */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80174720  38 61 00 2C */	addi r3, r1, 0x2c
/* 80174724  38 81 01 F0 */	addi r4, r1, 0x1f0
/* 80174728  38 A1 00 30 */	addi r5, r1, 0x30
/* 8017472C  48 0F CA 49 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80174730  38 7F 04 90 */	addi r3, r31, 0x490
/* 80174734  C0 22 9E 7C */	lfs f1, lit_12294(r2)
/* 80174738  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 8017473C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80174740  48 0F D2 C9 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 80174744  38 61 00 2C */	addi r3, r1, 0x2c
/* 80174748  38 80 FF FF */	li r4, -1
/* 8017474C  4B EB BD C5 */	bl __dt__7cSAngleFv
/* 80174750  38 61 00 30 */	addi r3, r1, 0x30
/* 80174754  38 80 FF FF */	li r4, -1
/* 80174758  4B EB BD B9 */	bl __dt__7cSAngleFv
lbl_8017475C:
/* 8017475C  C0 02 9C B8 */	lfs f0, lit_5662(r2)
/* 80174760  D0 1F 04 98 */	stfs f0, 0x498(r31)
/* 80174764  38 61 03 80 */	addi r3, r1, 0x380
/* 80174768  38 9F 04 90 */	addi r4, r31, 0x490
/* 8017476C  48 0F D3 49 */	bl Xyz__7cSGlobeCFv
/* 80174770  38 61 03 74 */	addi r3, r1, 0x374
/* 80174774  38 9F 04 78 */	addi r4, r31, 0x478
/* 80174778  38 A1 03 80 */	addi r5, r1, 0x380
/* 8017477C  48 0F 23 69 */	bl __pl__4cXyzCFRC3Vec
/* 80174780  38 7F 04 84 */	addi r3, r31, 0x484
/* 80174784  38 81 03 74 */	addi r4, r1, 0x374
/* 80174788  4B F2 30 51 */	bl __as__4cXyzFRC4cXyz
/* 8017478C  38 61 03 74 */	addi r3, r1, 0x374
/* 80174790  38 80 FF FF */	li r4, -1
/* 80174794  4B E9 49 F1 */	bl __dt__4cXyzFv
/* 80174798  38 61 03 80 */	addi r3, r1, 0x380
/* 8017479C  38 80 FF FF */	li r4, -1
/* 801747A0  4B E9 49 E5 */	bl __dt__4cXyzFv
/* 801747A4  38 61 03 68 */	addi r3, r1, 0x368
/* 801747A8  7F E4 FB 78 */	mr r4, r31
/* 801747AC  7F A5 EB 78 */	mr r5, r29
/* 801747B0  4B F2 2F 6D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801747B4  38 61 11 C0 */	addi r3, r1, 0x11c0
/* 801747B8  38 81 03 68 */	addi r4, r1, 0x368
/* 801747BC  4B F2 30 39 */	bl __ct__4cXyzFRC4cXyz
/* 801747C0  38 61 03 68 */	addi r3, r1, 0x368
/* 801747C4  38 80 FF FF */	li r4, -1
/* 801747C8  4B E9 49 BD */	bl __dt__4cXyzFv
/* 801747CC  7F E3 FB 78 */	mr r3, r31
/* 801747D0  38 81 11 C0 */	addi r4, r1, 0x11c0
/* 801747D4  38 BF 04 84 */	addi r5, r31, 0x484
/* 801747D8  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 801747DC  4B FF 13 15 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 801747E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801747E4  40 82 00 58 */	bne lbl_8017483C
/* 801747E8  38 61 03 5C */	addi r3, r1, 0x35c
/* 801747EC  38 81 11 C0 */	addi r4, r1, 0x11c0
/* 801747F0  4B F2 30 05 */	bl __ct__4cXyzFRC4cXyz
/* 801747F4  38 61 03 50 */	addi r3, r1, 0x350
/* 801747F8  38 9F 04 84 */	addi r4, r31, 0x484
/* 801747FC  4B F2 2F F9 */	bl __ct__4cXyzFRC4cXyz
/* 80174800  38 61 03 5C */	addi r3, r1, 0x35c
/* 80174804  38 81 03 50 */	addi r4, r1, 0x350
/* 80174808  7F A5 EB 78 */	mr r5, r29
/* 8017480C  7F C6 F3 78 */	mr r6, r30
/* 80174810  38 E0 00 00 */	li r7, 0
/* 80174814  48 00 06 3D */	bl func_80174E50
/* 80174818  7C 76 1B 78 */	mr r22, r3
/* 8017481C  38 61 03 50 */	addi r3, r1, 0x350
/* 80174820  38 80 FF FF */	li r4, -1
/* 80174824  4B E9 49 61 */	bl __dt__4cXyzFv
/* 80174828  38 61 03 5C */	addi r3, r1, 0x35c
/* 8017482C  38 80 FF FF */	li r4, -1
/* 80174830  4B E9 49 55 */	bl __dt__4cXyzFv
/* 80174834  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80174838  41 82 01 60 */	beq lbl_80174998
lbl_8017483C:
/* 8017483C  C0 3F 04 7C */	lfs f1, 0x47c(r31)
/* 80174840  C0 02 9D 68 */	lfs f0, lit_9788(r2)
/* 80174844  EC 01 00 28 */	fsubs f0, f1, f0
/* 80174848  D0 1F 04 7C */	stfs f0, 0x47c(r31)
/* 8017484C  38 61 00 28 */	addi r3, r1, 0x28
/* 80174850  C0 22 9E 30 */	lfs f1, lit_12275(r2)
/* 80174854  48 0F C7 75 */	bl __ct__7cSAngleFf
/* 80174858  38 61 00 24 */	addi r3, r1, 0x24
/* 8017485C  7F E4 FB 78 */	mr r4, r31
/* 80174860  7F A5 EB 78 */	mr r5, r29
/* 80174864  4B F2 2E D5 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80174868  38 61 00 20 */	addi r3, r1, 0x20
/* 8017486C  38 81 01 F0 */	addi r4, r1, 0x1f0
/* 80174870  38 A1 00 24 */	addi r5, r1, 0x24
/* 80174874  48 0F C9 01 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80174878  38 7F 04 90 */	addi r3, r31, 0x490
/* 8017487C  C0 22 9D E8 */	lfs f1, lit_10581(r2)
/* 80174880  38 81 00 28 */	addi r4, r1, 0x28
/* 80174884  38 A1 00 20 */	addi r5, r1, 0x20
/* 80174888  48 0F D1 81 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 8017488C  38 61 00 20 */	addi r3, r1, 0x20
/* 80174890  38 80 FF FF */	li r4, -1
/* 80174894  4B EB BC 7D */	bl __dt__7cSAngleFv
/* 80174898  38 61 00 24 */	addi r3, r1, 0x24
/* 8017489C  38 80 FF FF */	li r4, -1
/* 801748A0  4B EB BC 71 */	bl __dt__7cSAngleFv
/* 801748A4  38 61 00 28 */	addi r3, r1, 0x28
/* 801748A8  38 80 FF FF */	li r4, -1
/* 801748AC  4B EB BC 65 */	bl __dt__7cSAngleFv
/* 801748B0  38 61 03 44 */	addi r3, r1, 0x344
/* 801748B4  38 9F 04 90 */	addi r4, r31, 0x490
/* 801748B8  48 0F D1 FD */	bl Xyz__7cSGlobeCFv
/* 801748BC  38 61 03 38 */	addi r3, r1, 0x338
/* 801748C0  38 9F 04 78 */	addi r4, r31, 0x478
/* 801748C4  38 A1 03 44 */	addi r5, r1, 0x344
/* 801748C8  48 0F 22 1D */	bl __pl__4cXyzCFRC3Vec
/* 801748CC  38 7F 04 84 */	addi r3, r31, 0x484
/* 801748D0  38 81 03 38 */	addi r4, r1, 0x338
/* 801748D4  4B F2 2F 05 */	bl __as__4cXyzFRC4cXyz
/* 801748D8  38 61 03 38 */	addi r3, r1, 0x338
/* 801748DC  38 80 FF FF */	li r4, -1
/* 801748E0  4B E9 48 A5 */	bl __dt__4cXyzFv
/* 801748E4  38 61 03 44 */	addi r3, r1, 0x344
/* 801748E8  38 80 FF FF */	li r4, -1
/* 801748EC  4B E9 48 99 */	bl __dt__4cXyzFv
/* 801748F0  7F E3 FB 78 */	mr r3, r31
/* 801748F4  38 81 11 C0 */	addi r4, r1, 0x11c0
/* 801748F8  38 BF 04 84 */	addi r5, r31, 0x484
/* 801748FC  80 DF 04 74 */	lwz r6, 0x474(r31)
/* 80174900  4B FF 11 F1 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80174904  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80174908  40 82 00 58 */	bne lbl_80174960
/* 8017490C  38 61 03 2C */	addi r3, r1, 0x32c
/* 80174910  38 81 11 C0 */	addi r4, r1, 0x11c0
/* 80174914  4B F2 2E E1 */	bl __ct__4cXyzFRC4cXyz
/* 80174918  38 61 03 20 */	addi r3, r1, 0x320
/* 8017491C  38 9F 04 84 */	addi r4, r31, 0x484
/* 80174920  4B F2 2E D5 */	bl __ct__4cXyzFRC4cXyz
/* 80174924  38 61 03 2C */	addi r3, r1, 0x32c
/* 80174928  38 81 03 20 */	addi r4, r1, 0x320
/* 8017492C  7F A5 EB 78 */	mr r5, r29
/* 80174930  7F C6 F3 78 */	mr r6, r30
/* 80174934  38 E0 00 00 */	li r7, 0
/* 80174938  48 00 05 19 */	bl func_80174E50
/* 8017493C  7C 76 1B 78 */	mr r22, r3
/* 80174940  38 61 03 20 */	addi r3, r1, 0x320
/* 80174944  38 80 FF FF */	li r4, -1
/* 80174948  4B E9 48 3D */	bl __dt__4cXyzFv
/* 8017494C  38 61 03 2C */	addi r3, r1, 0x32c
/* 80174950  38 80 FF FF */	li r4, -1
/* 80174954  4B E9 48 31 */	bl __dt__4cXyzFv
/* 80174958  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8017495C  41 82 00 0C */	beq lbl_80174968
lbl_80174960:
/* 80174960  3B 80 00 00 */	li r28, 0
/* 80174964  48 00 00 60 */	b lbl_801749C4
lbl_80174968:
/* 80174968  38 7F 00 64 */	addi r3, r31, 0x64
/* 8017496C  38 9F 04 78 */	addi r4, r31, 0x478
/* 80174970  4B F2 2E 69 */	bl __as__4cXyzFRC4cXyz
/* 80174974  38 7F 00 70 */	addi r3, r31, 0x70
/* 80174978  38 9F 04 84 */	addi r4, r31, 0x484
/* 8017497C  4B F2 2E 5D */	bl __as__4cXyzFRC4cXyz
/* 80174980  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80174984  38 9F 04 90 */	addi r4, r31, 0x490
/* 80174988  4B F1 9D ED */	bl __as__7cSGlobeFRC7cSGlobe
/* 8017498C  C0 1F 04 98 */	lfs f0, 0x498(r31)
/* 80174990  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80174994  48 00 00 30 */	b lbl_801749C4
lbl_80174998:
/* 80174998  38 7F 00 64 */	addi r3, r31, 0x64
/* 8017499C  38 9F 04 78 */	addi r4, r31, 0x478
/* 801749A0  4B F2 2E 39 */	bl __as__4cXyzFRC4cXyz
/* 801749A4  38 7F 00 70 */	addi r3, r31, 0x70
/* 801749A8  38 9F 04 84 */	addi r4, r31, 0x484
/* 801749AC  4B F2 2E 2D */	bl __as__4cXyzFRC4cXyz
/* 801749B0  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801749B4  38 9F 04 90 */	addi r4, r31, 0x490
/* 801749B8  4B F1 9D BD */	bl __as__7cSGlobeFRC7cSGlobe
/* 801749BC  C0 1F 04 98 */	lfs f0, 0x498(r31)
/* 801749C0  D0 1F 00 80 */	stfs f0, 0x80(r31)
lbl_801749C4:
/* 801749C4  38 61 11 C0 */	addi r3, r1, 0x11c0
/* 801749C8  38 80 FF FF */	li r4, -1
/* 801749CC  4B E9 47 B9 */	bl __dt__4cXyzFv
/* 801749D0  38 61 01 F0 */	addi r3, r1, 0x1f0
/* 801749D4  38 80 FF FF */	li r4, -1
/* 801749D8  4B EB BB 39 */	bl __dt__7cSAngleFv
/* 801749DC  38 61 02 50 */	addi r3, r1, 0x250
/* 801749E0  38 80 FF FF */	li r4, -1
/* 801749E4  4B EF CC 99 */	bl __dt__7cSGlobeFv
/* 801749E8  38 61 11 CC */	addi r3, r1, 0x11cc
/* 801749EC  38 80 FF FF */	li r4, -1
/* 801749F0  4B E9 47 95 */	bl __dt__4cXyzFv
/* 801749F4  48 00 00 08 */	b lbl_801749FC
lbl_801749F8:
/* 801749F8  3B 80 00 00 */	li r28, 0
lbl_801749FC:
/* 801749FC  A8 1F 04 6C */	lha r0, 0x46c(r31)
/* 80174A00  2C 00 00 00 */	cmpwi r0, 0
/* 80174A04  41 82 00 0C */	beq lbl_80174A10
/* 80174A08  38 00 00 01 */	li r0, 1
/* 80174A0C  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_80174A10:
/* 80174A10  2C 1C 00 00 */	cmpwi r28, 0
/* 80174A14  40 82 02 BC */	bne lbl_80174CD0
/* 80174A18  88 1F 01 58 */	lbz r0, 0x158(r31)
/* 80174A1C  28 00 00 00 */	cmplwi r0, 0
/* 80174A20  41 82 00 68 */	beq lbl_80174A88
/* 80174A24  38 7F 00 64 */	addi r3, r31, 0x64
/* 80174A28  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 80174A2C  4B F2 2D AD */	bl __as__4cXyzFRC4cXyz
/* 80174A30  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80174A34  38 9F 04 10 */	addi r4, r31, 0x410
/* 80174A38  4B F1 9D 3D */	bl __as__7cSGlobeFRC7cSGlobe
/* 80174A3C  38 61 03 14 */	addi r3, r1, 0x314
/* 80174A40  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80174A44  48 0F D0 71 */	bl Xyz__7cSGlobeCFv
/* 80174A48  38 61 03 08 */	addi r3, r1, 0x308
/* 80174A4C  38 9F 00 64 */	addi r4, r31, 0x64
/* 80174A50  38 A1 03 14 */	addi r5, r1, 0x314
/* 80174A54  48 0F 20 91 */	bl __pl__4cXyzCFRC3Vec
/* 80174A58  38 7F 00 70 */	addi r3, r31, 0x70
/* 80174A5C  38 81 03 08 */	addi r4, r1, 0x308
/* 80174A60  4B F2 2D 79 */	bl __as__4cXyzFRC4cXyz
/* 80174A64  38 61 03 08 */	addi r3, r1, 0x308
/* 80174A68  38 80 FF FF */	li r4, -1
/* 80174A6C  4B E9 47 19 */	bl __dt__4cXyzFv
/* 80174A70  38 61 03 14 */	addi r3, r1, 0x314
/* 80174A74  38 80 FF FF */	li r4, -1
/* 80174A78  4B E9 47 0D */	bl __dt__4cXyzFv
/* 80174A7C  C0 1F 04 40 */	lfs f0, 0x440(r31)
/* 80174A80  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80174A84  48 00 02 4C */	b lbl_80174CD0
lbl_80174A88:
/* 80174A88  80 7F 04 2C */	lwz r3, 0x42c(r31)
/* 80174A8C  38 03 00 01 */	addi r0, r3, 1
/* 80174A90  C8 42 9C 98 */	lfd f2, lit_4448(r2)
/* 80174A94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80174A98  90 01 14 6C */	stw r0, 0x146c(r1)
/* 80174A9C  3C 60 43 30 */	lis r3, 0x4330
/* 80174AA0  90 61 14 68 */	stw r3, 0x1468(r1)
/* 80174AA4  C8 01 14 68 */	lfd f0, 0x1468(r1)
/* 80174AA8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80174AAC  80 1F 04 30 */	lwz r0, 0x430(r31)
/* 80174AB0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80174AB4  90 01 14 64 */	stw r0, 0x1464(r1)
/* 80174AB8  90 61 14 60 */	stw r3, 0x1460(r1)
/* 80174ABC  C8 01 14 60 */	lfd f0, 0x1460(r1)
/* 80174AC0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80174AC4  EC 01 00 24 */	fdivs f0, f1, f0
/* 80174AC8  D0 1F 04 38 */	stfs f0, 0x438(r31)
/* 80174ACC  C0 3F 04 38 */	lfs f1, 0x438(r31)
/* 80174AD0  C0 42 9E 88 */	lfs f2, lit_12297(r2)
/* 80174AD4  4B F1 36 69 */	bl rationalBezierRatio__8dCamMathFff
/* 80174AD8  FE 20 08 90 */	fmr f17, f1
/* 80174ADC  38 61 02 FC */	addi r3, r1, 0x2fc
/* 80174AE0  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 80174AE4  38 BF 00 64 */	addi r5, r31, 0x64
/* 80174AE8  48 0F 20 4D */	bl __mi__4cXyzCFRC3Vec
/* 80174AEC  38 61 02 F0 */	addi r3, r1, 0x2f0
/* 80174AF0  38 81 02 FC */	addi r4, r1, 0x2fc
/* 80174AF4  FC 20 88 90 */	fmr f1, f17
/* 80174AF8  48 0F 20 8D */	bl __ml__4cXyzCFf
/* 80174AFC  38 7F 00 64 */	addi r3, r31, 0x64
/* 80174B00  38 81 02 F0 */	addi r4, r1, 0x2f0
/* 80174B04  4B F1 9E 01 */	bl __apl__4cXyzFRC3Vec
/* 80174B08  38 61 02 F0 */	addi r3, r1, 0x2f0
/* 80174B0C  38 80 FF FF */	li r4, -1
/* 80174B10  4B E9 46 75 */	bl __dt__4cXyzFv
/* 80174B14  38 61 02 FC */	addi r3, r1, 0x2fc
/* 80174B18  38 80 FF FF */	li r4, -1
/* 80174B1C  4B E9 46 69 */	bl __dt__4cXyzFv
/* 80174B20  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80174B24  48 00 DF 41 */	bl R__7cSGlobeCFv
/* 80174B28  FE A0 08 90 */	fmr f21, f1
/* 80174B2C  38 7F 04 10 */	addi r3, r31, 0x410
/* 80174B30  48 00 DF 35 */	bl R__7cSGlobeCFv
/* 80174B34  EC 01 A8 28 */	fsubs f0, f1, f21
/* 80174B38  EE B1 00 32 */	fmuls f21, f17, f0
/* 80174B3C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80174B40  48 00 DF 25 */	bl R__7cSGlobeCFv
/* 80174B44  EC 21 A8 2A */	fadds f1, f1, f21
/* 80174B48  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80174B4C  48 00 DF 01 */	bl R__7cSGlobeFf
/* 80174B50  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80174B54  48 00 DE B5 */	bl V__7cSGlobeCFv
/* 80174B58  7C 76 1B 78 */	mr r22, r3
/* 80174B5C  38 7F 04 10 */	addi r3, r31, 0x410
/* 80174B60  48 00 DE A9 */	bl V__7cSGlobeCFv
/* 80174B64  7C 64 1B 78 */	mr r4, r3
/* 80174B68  38 61 00 1C */	addi r3, r1, 0x1c
/* 80174B6C  7E C5 B3 78 */	mr r5, r22
/* 80174B70  48 0F C6 35 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80174B74  38 61 00 18 */	addi r3, r1, 0x18
/* 80174B78  38 81 00 1C */	addi r4, r1, 0x1c
/* 80174B7C  FC 20 88 90 */	fmr f1, f17
/* 80174B80  48 0F C6 E5 */	bl __ml__7cSAngleCFf
/* 80174B84  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80174B88  48 00 DE 81 */	bl V__7cSGlobeCFv
/* 80174B8C  7C 64 1B 78 */	mr r4, r3
/* 80174B90  38 61 00 14 */	addi r3, r1, 0x14
/* 80174B94  38 A1 00 18 */	addi r5, r1, 0x18
/* 80174B98  48 0F C5 DD */	bl __pl__7cSAngleCFRC7cSAngle
/* 80174B9C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80174BA0  38 81 00 14 */	addi r4, r1, 0x14
/* 80174BA4  4B F1 AE B5 */	bl V__7cSGlobeFRC7cSAngle
/* 80174BA8  38 61 00 14 */	addi r3, r1, 0x14
/* 80174BAC  38 80 FF FF */	li r4, -1
/* 80174BB0  4B EB B9 61 */	bl __dt__7cSAngleFv
/* 80174BB4  38 61 00 18 */	addi r3, r1, 0x18
/* 80174BB8  38 80 FF FF */	li r4, -1
/* 80174BBC  4B EB B9 55 */	bl __dt__7cSAngleFv
/* 80174BC0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80174BC4  38 80 FF FF */	li r4, -1
/* 80174BC8  4B EB B9 49 */	bl __dt__7cSAngleFv
/* 80174BCC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80174BD0  48 00 E0 B5 */	bl U__7cSGlobeCFv
/* 80174BD4  7C 76 1B 78 */	mr r22, r3
/* 80174BD8  38 7F 04 10 */	addi r3, r31, 0x410
/* 80174BDC  48 00 E0 A9 */	bl U__7cSGlobeCFv
/* 80174BE0  7C 64 1B 78 */	mr r4, r3
/* 80174BE4  38 61 00 10 */	addi r3, r1, 0x10
/* 80174BE8  7E C5 B3 78 */	mr r5, r22
/* 80174BEC  48 0F C5 B9 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80174BF0  38 61 00 0C */	addi r3, r1, 0xc
/* 80174BF4  38 81 00 10 */	addi r4, r1, 0x10
/* 80174BF8  FC 20 88 90 */	fmr f1, f17
/* 80174BFC  48 0F C6 69 */	bl __ml__7cSAngleCFf
/* 80174C00  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80174C04  48 00 E0 81 */	bl U__7cSGlobeCFv
/* 80174C08  7C 64 1B 78 */	mr r4, r3
/* 80174C0C  38 61 00 08 */	addi r3, r1, 8
/* 80174C10  38 A1 00 0C */	addi r5, r1, 0xc
/* 80174C14  48 0F C5 61 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80174C18  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80174C1C  38 81 00 08 */	addi r4, r1, 8
/* 80174C20  4B F1 9C 75 */	bl U__7cSGlobeFRC7cSAngle
/* 80174C24  38 61 00 08 */	addi r3, r1, 8
/* 80174C28  38 80 FF FF */	li r4, -1
/* 80174C2C  4B EB B8 E5 */	bl __dt__7cSAngleFv
/* 80174C30  38 61 00 0C */	addi r3, r1, 0xc
/* 80174C34  38 80 FF FF */	li r4, -1
/* 80174C38  4B EB B8 D9 */	bl __dt__7cSAngleFv
/* 80174C3C  38 61 00 10 */	addi r3, r1, 0x10
/* 80174C40  38 80 FF FF */	li r4, -1
/* 80174C44  4B EB B8 CD */	bl __dt__7cSAngleFv
/* 80174C48  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 80174C4C  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80174C50  48 0F CE 65 */	bl Xyz__7cSGlobeCFv
/* 80174C54  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 80174C58  38 9F 00 64 */	addi r4, r31, 0x64
/* 80174C5C  38 A1 02 E4 */	addi r5, r1, 0x2e4
/* 80174C60  48 0F 1E 85 */	bl __pl__4cXyzCFRC3Vec
/* 80174C64  38 7F 00 70 */	addi r3, r31, 0x70
/* 80174C68  38 81 02 D8 */	addi r4, r1, 0x2d8
/* 80174C6C  4B F2 2B 6D */	bl __as__4cXyzFRC4cXyz
/* 80174C70  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 80174C74  38 80 FF FF */	li r4, -1
/* 80174C78  4B E9 45 0D */	bl __dt__4cXyzFv
/* 80174C7C  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 80174C80  38 80 FF FF */	li r4, -1
/* 80174C84  4B E9 45 01 */	bl __dt__4cXyzFv
/* 80174C88  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80174C8C  C0 1F 04 40 */	lfs f0, 0x440(r31)
/* 80174C90  EC 00 08 28 */	fsubs f0, f0, f1
/* 80174C94  EC 11 00 32 */	fmuls f0, f17, f0
/* 80174C98  EC 01 00 2A */	fadds f0, f1, f0
/* 80174C9C  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80174CA0  C0 3F 04 34 */	lfs f1, 0x434(r31)
/* 80174CA4  C0 1F 04 38 */	lfs f0, 0x438(r31)
/* 80174CA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80174CAC  D0 1F 04 34 */	stfs f0, 0x434(r31)
/* 80174CB0  80 9F 04 2C */	lwz r4, 0x42c(r31)
/* 80174CB4  80 7F 04 30 */	lwz r3, 0x430(r31)
/* 80174CB8  38 03 FF FF */	addi r0, r3, -1
/* 80174CBC  7C 04 00 00 */	cmpw r4, r0
/* 80174CC0  41 80 00 0C */	blt lbl_80174CCC
/* 80174CC4  38 00 00 01 */	li r0, 1
/* 80174CC8  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_80174CCC:
/* 80174CCC  3B 00 00 00 */	li r24, 0
lbl_80174CD0:
/* 80174CD0  80 7F 04 2C */	lwz r3, 0x42c(r31)
/* 80174CD4  38 03 00 01 */	addi r0, r3, 1
/* 80174CD8  90 1F 04 2C */	stw r0, 0x42c(r31)
/* 80174CDC  38 61 13 88 */	addi r3, r1, 0x1388
/* 80174CE0  38 80 FF FF */	li r4, -1
/* 80174CE4  4B E9 44 A1 */	bl __dt__4cXyzFv
/* 80174CE8  38 61 13 94 */	addi r3, r1, 0x1394
/* 80174CEC  38 80 FF FF */	li r4, -1
/* 80174CF0  4B E9 44 95 */	bl __dt__4cXyzFv
/* 80174CF4  38 61 13 A0 */	addi r3, r1, 0x13a0
/* 80174CF8  38 80 FF FF */	li r4, -1
/* 80174CFC  4B E9 44 89 */	bl __dt__4cXyzFv
/* 80174D00  38 61 13 AC */	addi r3, r1, 0x13ac
/* 80174D04  38 80 FF FF */	li r4, -1
/* 80174D08  4B E9 44 7D */	bl __dt__4cXyzFv
/* 80174D0C  38 61 13 C4 */	addi r3, r1, 0x13c4
/* 80174D10  38 80 FF FF */	li r4, -1
/* 80174D14  4B E9 44 71 */	bl __dt__4cXyzFv
/* 80174D18  38 61 02 38 */	addi r3, r1, 0x238
/* 80174D1C  38 80 FF FF */	li r4, -1
/* 80174D20  4B EB B7 F1 */	bl __dt__7cSAngleFv
/* 80174D24  38 61 02 3C */	addi r3, r1, 0x23c
/* 80174D28  38 80 FF FF */	li r4, -1
/* 80174D2C  4B EB B7 E5 */	bl __dt__7cSAngleFv
/* 80174D30  38 61 02 40 */	addi r3, r1, 0x240
/* 80174D34  38 80 FF FF */	li r4, -1
/* 80174D38  4B EB B7 D9 */	bl __dt__7cSAngleFv
/* 80174D3C  38 61 02 44 */	addi r3, r1, 0x244
/* 80174D40  38 80 FF FF */	li r4, -1
/* 80174D44  4B EB B7 CD */	bl __dt__7cSAngleFv
/* 80174D48  7F 03 C3 78 */	mr r3, r24
lbl_80174D4C:
/* 80174D4C  38 00 15 88 */	li r0, 0x1588
/* 80174D50  13 E1 00 0C */	psq_lx f31, r1, r0, 0, 0 /* qr0 */
/* 80174D54  CB E1 15 80 */	lfd f31, 0x1580(r1)
/* 80174D58  38 00 15 78 */	li r0, 0x1578
/* 80174D5C  13 C1 00 0C */	psq_lx f30, r1, r0, 0, 0 /* qr0 */
/* 80174D60  CB C1 15 70 */	lfd f30, 0x1570(r1)
/* 80174D64  38 00 15 68 */	li r0, 0x1568
/* 80174D68  13 A1 00 0C */	psq_lx f29, r1, r0, 0, 0 /* qr0 */
/* 80174D6C  CB A1 15 60 */	lfd f29, 0x1560(r1)
/* 80174D70  38 00 15 58 */	li r0, 0x1558
/* 80174D74  13 81 00 0C */	psq_lx f28, r1, r0, 0, 0 /* qr0 */
/* 80174D78  CB 81 15 50 */	lfd f28, 0x1550(r1)
/* 80174D7C  38 00 15 48 */	li r0, 0x1548
/* 80174D80  13 61 00 0C */	psq_lx f27, r1, r0, 0, 0 /* qr0 */
/* 80174D84  CB 61 15 40 */	lfd f27, 0x1540(r1)
/* 80174D88  38 00 15 38 */	li r0, 0x1538
/* 80174D8C  13 41 00 0C */	psq_lx f26, r1, r0, 0, 0 /* qr0 */
/* 80174D90  CB 41 15 30 */	lfd f26, 0x1530(r1)
/* 80174D94  38 00 15 28 */	li r0, 0x1528
/* 80174D98  13 21 00 0C */	psq_lx f25, r1, r0, 0, 0 /* qr0 */
/* 80174D9C  CB 21 15 20 */	lfd f25, 0x1520(r1)
/* 80174DA0  38 00 15 18 */	li r0, 0x1518
/* 80174DA4  13 01 00 0C */	psq_lx f24, r1, r0, 0, 0 /* qr0 */
/* 80174DA8  CB 01 15 10 */	lfd f24, 0x1510(r1)
/* 80174DAC  38 00 15 08 */	li r0, 0x1508
/* 80174DB0  12 E1 00 0C */	psq_lx f23, r1, r0, 0, 0 /* qr0 */
/* 80174DB4  CA E1 15 00 */	lfd f23, 0x1500(r1)
/* 80174DB8  38 00 14 F8 */	li r0, 0x14f8
/* 80174DBC  12 C1 00 0C */	psq_lx f22, r1, r0, 0, 0 /* qr0 */
/* 80174DC0  CA C1 14 F0 */	lfd f22, 0x14f0(r1)
/* 80174DC4  38 00 14 E8 */	li r0, 0x14e8
/* 80174DC8  12 A1 00 0C */	psq_lx f21, r1, r0, 0, 0 /* qr0 */
/* 80174DCC  CA A1 14 E0 */	lfd f21, 0x14e0(r1)
/* 80174DD0  38 00 14 D8 */	li r0, 0x14d8
/* 80174DD4  12 81 00 0C */	psq_lx f20, r1, r0, 0, 0 /* qr0 */
/* 80174DD8  CA 81 14 D0 */	lfd f20, 0x14d0(r1)
/* 80174DDC  38 00 14 C8 */	li r0, 0x14c8
/* 80174DE0  12 61 00 0C */	psq_lx f19, r1, r0, 0, 0 /* qr0 */
/* 80174DE4  CA 61 14 C0 */	lfd f19, 0x14c0(r1)
/* 80174DE8  38 00 14 B8 */	li r0, 0x14b8
/* 80174DEC  12 41 00 0C */	psq_lx f18, r1, r0, 0, 0 /* qr0 */
/* 80174DF0  CA 41 14 B0 */	lfd f18, 0x14b0(r1)
/* 80174DF4  38 00 14 A8 */	li r0, 0x14a8
/* 80174DF8  12 21 00 0C */	psq_lx f17, r1, r0, 0, 0 /* qr0 */
/* 80174DFC  CA 21 14 A0 */	lfd f17, 0x14a0(r1)
/* 80174E00  39 61 14 A0 */	addi r11, r1, 0x14a0
/* 80174E04  48 1E D4 09 */	bl _restgpr_22
/* 80174E08  80 01 15 94 */	lwz r0, 0x1594(r1)
/* 80174E0C  7C 08 03 A6 */	mtlr r0
/* 80174E10  38 21 15 90 */	addi r1, r1, 0x1590
/* 80174E14  4E 80 00 20 */	blr 
