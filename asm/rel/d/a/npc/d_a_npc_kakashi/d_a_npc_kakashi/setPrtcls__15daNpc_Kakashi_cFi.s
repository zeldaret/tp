lbl_8054D26C:
/* 8054D26C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8054D270  7C 08 02 A6 */	mflr r0
/* 8054D274  90 01 00 44 */	stw r0, 0x44(r1)
/* 8054D278  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8054D27C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8054D280  7C 7F 1B 78 */	mr r31, r3
/* 8054D284  7C 9E 23 79 */	or. r30, r4, r4
/* 8054D288  41 82 00 0C */	beq lbl_8054D294
/* 8054D28C  2C 1E 00 01 */	cmpwi r30, 1
/* 8054D290  40 82 00 48 */	bne lbl_8054D2D8
lbl_8054D294:
/* 8054D294  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 8054D298  80 63 00 04 */	lwz r3, 4(r3)
/* 8054D29C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8054D2A0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8054D2A4  38 63 01 50 */	addi r3, r3, 0x150
/* 8054D2A8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8054D2AC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8054D2B0  4B DF 92 00 */	b PSMTXCopy
/* 8054D2B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8054D2B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8054D2BC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8054D2C0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8054D2C4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8054D2C8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8054D2CC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8054D2D0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8054D2D4  48 00 00 1C */	b lbl_8054D2F0
lbl_8054D2D8:
/* 8054D2D8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8054D2DC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8054D2E0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8054D2E4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8054D2E8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8054D2EC  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_8054D2F0:
/* 8054D2F0  2C 1E 00 00 */	cmpwi r30, 0
/* 8054D2F4  41 80 00 68 */	blt lbl_8054D35C
/* 8054D2F8  2C 1E 00 02 */	cmpwi r30, 2
/* 8054D2FC  40 80 00 60 */	bge lbl_8054D35C
/* 8054D300  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054D304  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054D308  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8054D30C  38 80 00 00 */	li r4, 0
/* 8054D310  90 81 00 08 */	stw r4, 8(r1)
/* 8054D314  38 00 FF FF */	li r0, -1
/* 8054D318  90 01 00 0C */	stw r0, 0xc(r1)
/* 8054D31C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8054D320  90 81 00 14 */	stw r4, 0x14(r1)
/* 8054D324  90 81 00 18 */	stw r4, 0x18(r1)
/* 8054D328  38 80 00 00 */	li r4, 0
/* 8054D32C  57 C0 08 3C */	slwi r0, r30, 1
/* 8054D330  3C A0 80 55 */	lis r5, id@ha
/* 8054D334  38 A5 EB CC */	addi r5, r5, id@l
/* 8054D338  7C A5 02 2E */	lhzx r5, r5, r0
/* 8054D33C  38 C1 00 20 */	addi r6, r1, 0x20
/* 8054D340  38 E0 00 00 */	li r7, 0
/* 8054D344  39 1F 0D 78 */	addi r8, r31, 0xd78
/* 8054D348  39 20 00 00 */	li r9, 0
/* 8054D34C  39 40 00 FF */	li r10, 0xff
/* 8054D350  3D 60 80 55 */	lis r11, lit_4400@ha
/* 8054D354  C0 2B EB 7C */	lfs f1, lit_4400@l(r11)
/* 8054D358  4B AF F7 38 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_8054D35C:
/* 8054D35C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8054D360  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8054D364  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8054D368  7C 08 03 A6 */	mtlr r0
/* 8054D36C  38 21 00 40 */	addi r1, r1, 0x40
/* 8054D370  4E 80 00 20 */	blr 
