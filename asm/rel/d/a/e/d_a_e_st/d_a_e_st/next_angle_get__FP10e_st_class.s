lbl_8079F08C:
/* 8079F08C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8079F090  7C 08 02 A6 */	mflr r0
/* 8079F094  90 01 00 44 */	stw r0, 0x44(r1)
/* 8079F098  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8079F09C  7C 7F 1B 78 */	mr r31, r3
/* 8079F0A0  38 61 00 08 */	addi r3, r1, 8
/* 8079F0A4  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 8079F0A8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8079F0AC  4B AC 7A 89 */	bl __mi__4cXyzCFRC3Vec
/* 8079F0B0  C0 01 00 08 */	lfs f0, 8(r1)
/* 8079F0B4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8079F0B8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8079F0BC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8079F0C0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8079F0C4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8079F0C8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079F0CC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079F0D0  80 63 00 00 */	lwz r3, 0(r3)
/* 8079F0D4  A8 1F 06 9C */	lha r0, 0x69c(r31)
/* 8079F0D8  7C 00 00 D0 */	neg r0, r0
/* 8079F0DC  7C 04 07 34 */	extsh r4, r0
/* 8079F0E0  4B 86 D2 65 */	bl mDoMtx_XrotS__FPA4_fs
/* 8079F0E4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079F0E8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079F0EC  80 63 00 00 */	lwz r3, 0(r3)
/* 8079F0F0  A8 1F 06 9E */	lha r0, 0x69e(r31)
/* 8079F0F4  7C 00 00 D0 */	neg r0, r0
/* 8079F0F8  7C 04 07 34 */	extsh r4, r0
/* 8079F0FC  4B 86 D3 39 */	bl mDoMtx_YrotM__FPA4_fs
/* 8079F100  38 61 00 20 */	addi r3, r1, 0x20
/* 8079F104  38 81 00 14 */	addi r4, r1, 0x14
/* 8079F108  4B AD 1D E5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8079F10C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8079F110  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8079F114  4B AC 85 61 */	bl cM_atan2s__Fff
/* 8079F118  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8079F11C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8079F120  7C 08 03 A6 */	mtlr r0
/* 8079F124  38 21 00 40 */	addi r1, r1, 0x40
/* 8079F128  4E 80 00 20 */	blr 
