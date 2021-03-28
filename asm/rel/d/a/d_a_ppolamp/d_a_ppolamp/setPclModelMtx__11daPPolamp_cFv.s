lbl_80D4CDA8:
/* 80D4CDA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D4CDAC  7C 08 02 A6 */	mflr r0
/* 80D4CDB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D4CDB4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D4CDB8  7C 7F 1B 78 */	mr r31, r3
/* 80D4CDBC  3C 60 80 D5 */	lis r3, lit_3859@ha
/* 80D4CDC0  38 83 D2 98 */	addi r4, r3, lit_3859@l
/* 80D4CDC4  80 64 00 00 */	lwz r3, 0(r4)
/* 80D4CDC8  80 04 00 04 */	lwz r0, 4(r4)
/* 80D4CDCC  90 61 00 20 */	stw r3, 0x20(r1)
/* 80D4CDD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D4CDD4  80 04 00 08 */	lwz r0, 8(r4)
/* 80D4CDD8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D4CDDC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D4CDE0  38 63 00 24 */	addi r3, r3, 0x24
/* 80D4CDE4  38 81 00 20 */	addi r4, r1, 0x20
/* 80D4CDE8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80D4CDEC  4B 5F 9F 80 */	b PSMTXMultVec
/* 80D4CDF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4CDF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D4CDF8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80D4CDFC  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80D4CE00  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 80D4CE04  4B 5F 9A E4 */	b PSMTXTrans
/* 80D4CE08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D4CE0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D4CE10  80 83 5D 74 */	lwz r4, 0x5d74(r3)
/* 80D4CE14  28 04 00 00 */	cmplwi r4, 0
/* 80D4CE18  41 82 00 5C */	beq lbl_80D4CE74
/* 80D4CE1C  38 61 00 08 */	addi r3, r1, 8
/* 80D4CE20  38 84 00 D8 */	addi r4, r4, 0xd8
/* 80D4CE24  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D4CE28  4B 51 9D 0C */	b __mi__4cXyzCFRC3Vec
/* 80D4CE2C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D4CE30  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D4CE34  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D4CE38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D4CE3C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D4CE40  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D4CE44  38 61 00 14 */	addi r3, r1, 0x14
/* 80D4CE48  4B 51 A2 E0 */	b atan2sX_Z__4cXyzCFv
/* 80D4CE4C  7C 64 1B 78 */	mr r4, r3
/* 80D4CE50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4CE54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D4CE58  4B 2B F5 DC */	b mDoMtx_YrotM__FPA4_fs
/* 80D4CE5C  38 61 00 14 */	addi r3, r1, 0x14
/* 80D4CE60  4B 51 A2 F0 */	b atan2sY_XZ__4cXyzCFv
/* 80D4CE64  7C 64 1B 78 */	mr r4, r3
/* 80D4CE68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4CE6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D4CE70  4B 2B F5 2C */	b mDoMtx_XrotM__FPA4_fs
lbl_80D4CE74:
/* 80D4CE74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4CE78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D4CE7C  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80D4CE80  38 84 00 24 */	addi r4, r4, 0x24
/* 80D4CE84  4B 5F 96 2C */	b PSMTXCopy
/* 80D4CE88  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D4CE8C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D4CE90  7C 08 03 A6 */	mtlr r0
/* 80D4CE94  38 21 00 40 */	addi r1, r1, 0x40
/* 80D4CE98  4E 80 00 20 */	blr 
