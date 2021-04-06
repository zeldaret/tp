lbl_8069506C:
/* 8069506C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80695070  7C 08 02 A6 */	mflr r0
/* 80695074  90 01 00 34 */	stw r0, 0x34(r1)
/* 80695078  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8069507C  7C 7F 1B 78 */	mr r31, r3
/* 80695080  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80695084  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80695088  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8069508C  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80695090  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80695094  4B CB 18 55 */	bl PSMTXTrans
/* 80695098  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8069509C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806950A0  A8 9F 00 3E */	lha r4, 0x3e(r31)
/* 806950A4  4B 97 73 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 806950A8  38 61 00 08 */	addi r3, r1, 8
/* 806950AC  38 9F 00 18 */	addi r4, r31, 0x18
/* 806950B0  38 BF 00 0C */	addi r5, r31, 0xc
/* 806950B4  4B BD 1A 81 */	bl __mi__4cXyzCFRC3Vec
/* 806950B8  C0 21 00 08 */	lfs f1, 8(r1)
/* 806950BC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806950C0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806950C4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806950C8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806950CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806950D0  EC 21 00 72 */	fmuls f1, f1, f1
/* 806950D4  EC 00 00 32 */	fmuls f0, f0, f0
/* 806950D8  EC 21 00 2A */	fadds f1, f1, f0
/* 806950DC  3C 60 80 69 */	lis r3, lit_3945@ha /* 0x80697CA8@ha */
/* 806950E0  C0 03 7C A8 */	lfs f0, lit_3945@l(r3)  /* 0x80697CA8@l */
/* 806950E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806950E8  40 81 00 0C */	ble lbl_806950F4
/* 806950EC  FC 00 08 34 */	frsqrte f0, f1
/* 806950F0  EC 20 00 72 */	fmuls f1, f0, f1
lbl_806950F4:
/* 806950F4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 806950F8  4B BD 25 7D */	bl cM_atan2s__Fff
/* 806950FC  7C 64 1B 78 */	mr r4, r3
/* 80695100  A8 1F 00 4A */	lha r0, 0x4a(r31)
/* 80695104  2C 00 00 00 */	cmpwi r0, 0
/* 80695108  40 80 00 0C */	bge lbl_80695114
/* 8069510C  1C 04 FF FF */	mulli r0, r4, -1
/* 80695110  7C 04 07 34 */	extsh r4, r0
lbl_80695114:
/* 80695114  38 7F 00 40 */	addi r3, r31, 0x40
/* 80695118  38 A0 00 02 */	li r5, 2
/* 8069511C  38 C0 10 00 */	li r6, 0x1000
/* 80695120  4B BD B4 E9 */	bl cLib_addCalcAngleS2__FPssss
/* 80695124  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80695128  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8069512C  A8 9F 00 40 */	lha r4, 0x40(r31)
/* 80695130  4B 97 73 9D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80695134  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80695138  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8069513C  38 80 C0 00 */	li r4, -16384
/* 80695140  4B 97 72 5D */	bl mDoMtx_XrotM__FPA4_fs
/* 80695144  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x80697E7C@ha */
/* 80695148  38 63 7E 7C */	addi r3, r3, l_HIO@l /* 0x80697E7C@l */
/* 8069514C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80695150  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80695154  EC 21 00 32 */	fmuls f1, f1, f0
/* 80695158  FC 40 08 90 */	fmr f2, f1
/* 8069515C  FC 60 08 90 */	fmr f3, f1
/* 80695160  4B 97 7C D9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80695164  3C 60 80 69 */	lis r3, lit_3945@ha /* 0x80697CA8@ha */
/* 80695168  C0 23 7C A8 */	lfs f1, lit_3945@l(r3)  /* 0x80697CA8@l */
/* 8069516C  3C 60 80 69 */	lis r3, lit_4019@ha /* 0x80697CD0@ha */
/* 80695170  C0 43 7C D0 */	lfs f2, lit_4019@l(r3)  /* 0x80697CD0@l */
/* 80695174  FC 60 08 90 */	fmr f3, f1
/* 80695178  4B 97 7C 25 */	bl transM__14mDoMtx_stack_cFfff
/* 8069517C  88 1F 00 52 */	lbz r0, 0x52(r31)
/* 80695180  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80695184  41 82 00 1C */	beq lbl_806951A0
/* 80695188  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8069518C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80695190  80 9F 00 00 */	lwz r4, 0(r31)
/* 80695194  38 84 00 24 */	addi r4, r4, 0x24
/* 80695198  4B CB 13 19 */	bl PSMTXCopy
/* 8069519C  48 00 00 18 */	b lbl_806951B4
lbl_806951A0:
/* 806951A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806951A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806951A8  80 9F 00 04 */	lwz r4, 4(r31)
/* 806951AC  38 84 00 24 */	addi r4, r4, 0x24
/* 806951B0  4B CB 13 01 */	bl PSMTXCopy
lbl_806951B4:
/* 806951B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806951B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806951BC  7C 08 03 A6 */	mtlr r0
/* 806951C0  38 21 00 30 */	addi r1, r1, 0x30
/* 806951C4  4E 80 00 20 */	blr 
