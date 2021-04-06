lbl_8079F42C:
/* 8079F42C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8079F430  7C 08 02 A6 */	mflr r0
/* 8079F434  90 01 00 44 */	stw r0, 0x44(r1)
/* 8079F438  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8079F43C  7C 7F 1B 78 */	mr r31, r3
/* 8079F440  38 61 00 08 */	addi r3, r1, 8
/* 8079F444  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079F448  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079F44C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8079F450  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8079F454  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8079F458  4B AC 76 DD */	bl __mi__4cXyzCFRC3Vec
/* 8079F45C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8079F460  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8079F464  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8079F468  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8079F46C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8079F470  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8079F474  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079F478  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079F47C  80 63 00 00 */	lwz r3, 0(r3)
/* 8079F480  A8 1F 06 9C */	lha r0, 0x69c(r31)
/* 8079F484  7C 00 00 D0 */	neg r0, r0
/* 8079F488  7C 04 07 34 */	extsh r4, r0
/* 8079F48C  4B 86 CE B9 */	bl mDoMtx_XrotS__FPA4_fs
/* 8079F490  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079F494  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079F498  80 63 00 00 */	lwz r3, 0(r3)
/* 8079F49C  A8 1F 06 9E */	lha r0, 0x69e(r31)
/* 8079F4A0  7C 00 00 D0 */	neg r0, r0
/* 8079F4A4  7C 04 07 34 */	extsh r4, r0
/* 8079F4A8  4B 86 CF 8D */	bl mDoMtx_YrotM__FPA4_fs
/* 8079F4AC  38 61 00 20 */	addi r3, r1, 0x20
/* 8079F4B0  38 81 00 14 */	addi r4, r1, 0x14
/* 8079F4B4  4B AD 1A 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8079F4B8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8079F4BC  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8079F4C0  4B AC 81 B5 */	bl cM_atan2s__Fff
/* 8079F4C4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8079F4C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8079F4CC  7C 08 03 A6 */	mtlr r0
/* 8079F4D0  38 21 00 40 */	addi r1, r1, 0x40
/* 8079F4D4  4E 80 00 20 */	blr 
