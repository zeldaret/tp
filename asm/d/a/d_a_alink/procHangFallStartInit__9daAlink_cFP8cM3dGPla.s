lbl_800FAECC:
/* 800FAECC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800FAED0  7C 08 02 A6 */	mflr r0
/* 800FAED4  90 01 00 54 */	stw r0, 0x54(r1)
/* 800FAED8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800FAEDC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800FAEE0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 800FAEE4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 800FAEE8  39 61 00 30 */	addi r11, r1, 0x30
/* 800FAEEC  48 26 72 F1 */	bl _savegpr_29
/* 800FAEF0  7C 7F 1B 78 */	mr r31, r3
/* 800FAEF4  7C 9E 23 78 */	mr r30, r4
/* 800FAEF8  7F C3 F3 78 */	mr r3, r30
/* 800FAEFC  48 16 C2 2D */	bl atan2sX_Z__4cXyzCFv
/* 800FAF00  7C 7D 1B 78 */	mr r29, r3
/* 800FAF04  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800FAF08  C0 42 93 2C */	lfs f2, lit_7624(r2)
/* 800FAF0C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 800FAF10  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FAF14  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FAF18  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800FAF1C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800FAF20  C0 1E 00 08 */	lfs f0, 8(r30)
/* 800FAF24  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FAF28  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FAF2C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800FAF30  7F E3 FB 78 */	mr r3, r31
/* 800FAF34  7F A4 EB 78 */	mr r4, r29
/* 800FAF38  4B FF F9 25 */	bl checkHangStartSideWall__9daAlink_cFs
/* 800FAF3C  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800FAF40  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 800FAF44  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800FAF48  EC 21 00 2A */	fadds f1, f1, f0
/* 800FAF4C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800FAF50  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FAF54  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800FAF58  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800FAF5C  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 800FAF60  38 81 00 08 */	addi r4, r1, 8
/* 800FAF64  48 16 CD C5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FAF68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FAF6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FAF70  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 800FAF74  7F C3 F3 78 */	mr r3, r30
/* 800FAF78  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 800FAF7C  4B F7 95 25 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800FAF80  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800FAF84  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 800FAF88  FC 40 08 18 */	frsp f2, f1
/* 800FAF8C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 800FAF90  41 82 00 24 */	beq lbl_800FAFB4
/* 800FAF94  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800FAF98  C0 0D 81 14 */	lfs f0, l_autoDownHeight(r13)
/* 800FAF9C  EC 01 00 2A */	fadds f0, f1, f0
/* 800FAFA0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800FAFA4  40 80 00 0C */	bge lbl_800FAFB0
/* 800FAFA8  38 60 00 00 */	li r3, 0
/* 800FAFAC  48 00 01 D0 */	b lbl_800FB17C
lbl_800FAFB0:
/* 800FAFB0  D0 5F 04 D4 */	stfs f2, 0x4d4(r31)
lbl_800FAFB4:
/* 800FAFB4  7F BD 07 34 */	extsh r29, r29
/* 800FAFB8  38 1D C0 00 */	addi r0, r29, -16384
/* 800FAFBC  C0 22 92 9C */	lfs f1, lit_5944(r2)
/* 800FAFC0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FAFC4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800FAFC8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800FAFCC  7C 03 04 2E */	lfsx f0, r3, r0
/* 800FAFD0  EF E1 00 32 */	fmuls f31, f1, f0
/* 800FAFD4  7C 63 02 14 */	add r3, r3, r0
/* 800FAFD8  C0 03 00 04 */	lfs f0, 4(r3)
/* 800FAFDC  EF C1 00 32 */	fmuls f30, f1, f0
/* 800FAFE0  C0 01 00 08 */	lfs f0, 8(r1)
/* 800FAFE4  EC 00 F8 2A */	fadds f0, f0, f31
/* 800FAFE8  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FAFEC  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 800FAFF0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800FAFF4  EC 01 00 2A */	fadds f0, f1, f0
/* 800FAFF8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800FAFFC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800FB000  EC 00 F0 2A */	fadds f0, f0, f30
/* 800FB004  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800FB008  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 800FB00C  38 81 00 08 */	addi r4, r1, 8
/* 800FB010  48 16 CD 19 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FB014  7F C3 F3 78 */	mr r3, r30
/* 800FB018  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 800FB01C  4B F7 94 85 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800FB020  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800FB024  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800FB028  EC 02 00 28 */	fsubs f0, f2, f0
/* 800FB02C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FB030  40 80 00 70 */	bge lbl_800FB0A0
/* 800FB034  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800FB038  EC 00 F8 28 */	fsubs f0, f0, f31
/* 800FB03C  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FB040  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800FB044  EC 00 F0 28 */	fsubs f0, f0, f30
/* 800FB048  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800FB04C  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 800FB050  38 81 00 08 */	addi r4, r1, 8
/* 800FB054  48 16 CC D5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FB058  7F C3 F3 78 */	mr r3, r30
/* 800FB05C  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 800FB060  4B F7 94 41 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800FB064  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800FB068  FC 40 08 18 */	frsp f2, f1
/* 800FB06C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800FB070  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800FB074  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FB078  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800FB07C  40 80 00 0C */	bge lbl_800FB088
/* 800FB080  38 60 00 00 */	li r3, 0
/* 800FB084  48 00 00 F8 */	b lbl_800FB17C
lbl_800FB088:
/* 800FB088  C0 01 00 08 */	lfs f0, 8(r1)
/* 800FB08C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800FB090  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800FB094  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800FB098  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800FB09C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_800FB0A0:
/* 800FB0A0  7F E3 FB 78 */	mr r3, r31
/* 800FB0A4  38 80 00 00 */	li r4, 0
/* 800FB0A8  3F BD 00 01 */	addis r29, r29, 1
/* 800FB0AC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800FB0B0  3B BD 80 00 */	addi r29, r29, -32768
/* 800FB0B4  7C 1D 00 50 */	subf r0, r29, r0
/* 800FB0B8  7C 05 07 34 */	extsh r5, r0
/* 800FB0BC  38 C0 00 00 */	li r6, 0
/* 800FB0C0  4B FB 2A B9 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800FB0C4  B3 BF 04 E6 */	sth r29, 0x4e6(r31)
/* 800FB0C8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800FB0CC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800FB0D0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800FB0D4  28 00 00 0E */	cmplwi r0, 0xe
/* 800FB0D8  40 82 00 0C */	bne lbl_800FB0E4
/* 800FB0DC  C3 C2 92 C0 */	lfs f30, lit_6108(r2)
/* 800FB0E0  48 00 00 10 */	b lbl_800FB0F0
lbl_800FB0E4:
/* 800FB0E4  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wallFall_c0@ha
/* 800FB0E8  38 63 E1 B8 */	addi r3, r3, m__22daAlinkHIO_wallFall_c0@l
/* 800FB0EC  C3 C3 00 0C */	lfs f30, 0xc(r3)
lbl_800FB0F0:
/* 800FB0F0  7F E3 FB 78 */	mr r3, r31
/* 800FB0F4  38 80 00 56 */	li r4, 0x56
/* 800FB0F8  4B FC 6E 75 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FB0FC  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800FB100  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800FB104  90 1F 05 78 */	stw r0, 0x578(r31)
/* 800FB108  7F E3 FB 78 */	mr r3, r31
/* 800FB10C  38 80 00 95 */	li r4, 0x95
/* 800FB110  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wallFall_c0@ha
/* 800FB114  38 A5 E1 B8 */	addi r5, r5, m__22daAlinkHIO_wallFall_c0@l
/* 800FB118  C0 25 00 04 */	lfs f1, 4(r5)
/* 800FB11C  C0 45 00 08 */	lfs f2, 8(r5)
/* 800FB120  A8 A5 00 00 */	lha r5, 0(r5)
/* 800FB124  FC 60 F0 90 */	fmr f3, f30
/* 800FB128  4B FB 1E E5 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800FB12C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FB130  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800FB134  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800FB138  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FB13C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FB140  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800FB144  60 00 01 00 */	ori r0, r0, 0x100
/* 800FB148  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800FB14C  7F E3 FB 78 */	mr r3, r31
/* 800FB150  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001000B@ha */
/* 800FB154  38 84 00 0B */	addi r4, r4, 0x000B /* 0x0001000B@l */
/* 800FB158  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800FB15C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800FB160  7D 89 03 A6 */	mtctr r12
/* 800FB164  4E 80 04 21 */	bctrl 
/* 800FB168  7F E3 FB 78 */	mr r3, r31
/* 800FB16C  4B FE 4A BD */	bl setBowHangAnime__9daAlink_cFv
/* 800FB170  7F E3 FB 78 */	mr r3, r31
/* 800FB174  4B FF F5 71 */	bl setHangGroundY__9daAlink_cFv
/* 800FB178  38 60 00 01 */	li r3, 1
lbl_800FB17C:
/* 800FB17C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800FB180  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800FB184  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 800FB188  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 800FB18C  39 61 00 30 */	addi r11, r1, 0x30
/* 800FB190  48 26 70 99 */	bl _restgpr_29
/* 800FB194  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800FB198  7C 08 03 A6 */	mtlr r0
/* 800FB19C  38 21 00 50 */	addi r1, r1, 0x50
/* 800FB1A0  4E 80 00 20 */	blr 
