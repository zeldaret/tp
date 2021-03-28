lbl_80C09F08:
/* 80C09F08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C09F0C  7C 08 02 A6 */	mflr r0
/* 80C09F10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C09F14  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C09F18  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C09F1C  7C 7F 1B 78 */	mr r31, r3
/* 80C09F20  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha
/* 80C09F24  3B C3 FA 7C */	addi r30, r3, m__17daObj_GrA_Param_c@l
/* 80C09F28  80 1F 05 98 */	lwz r0, 0x598(r31)
/* 80C09F2C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80C09F30  41 82 00 D0 */	beq lbl_80C0A000
/* 80C09F34  88 1F 20 1C */	lbz r0, 0x201c(r31)
/* 80C09F38  7C 00 07 74 */	extsb r0, r0
/* 80C09F3C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80C09F40  41 80 00 C0 */	blt lbl_80C0A000
/* 80C09F44  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C09F48  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C09F4C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C09F50  C0 1E 02 10 */	lfs f0, 0x210(r30)
/* 80C09F54  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C09F58  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C09F5C  4B 40 2E 08 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C09F60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C09F64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C09F68  A8 9F 09 1C */	lha r4, 0x91c(r31)
/* 80C09F6C  4B 40 24 C8 */	b mDoMtx_YrotM__FPA4_fs
/* 80C09F70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C09F74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C09F78  38 81 00 18 */	addi r4, r1, 0x18
/* 80C09F7C  38 BF 0C 88 */	addi r5, r31, 0xc88
/* 80C09F80  4B 73 CD EC */	b PSMTXMultVec
/* 80C09F84  A8 1F 09 1A */	lha r0, 0x91a(r31)
/* 80C09F88  B0 1F 0C 94 */	sth r0, 0xc94(r31)
/* 80C09F8C  A8 1F 09 1C */	lha r0, 0x91c(r31)
/* 80C09F90  B0 1F 0C 96 */	sth r0, 0xc96(r31)
/* 80C09F94  A8 1F 09 1E */	lha r0, 0x91e(r31)
/* 80C09F98  B0 1F 0C 98 */	sth r0, 0xc98(r31)
/* 80C09F9C  38 00 00 01 */	li r0, 1
/* 80C09FA0  98 1F 0C 84 */	stb r0, 0xc84(r31)
/* 80C09FA4  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C09FA8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C09FAC  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80C09FB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C09FB4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C09FB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C09FBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C09FC0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C09FC4  38 80 00 08 */	li r4, 8
/* 80C09FC8  38 A0 00 0F */	li r5, 0xf
/* 80C09FCC  38 C1 00 0C */	addi r6, r1, 0xc
/* 80C09FD0  4B 46 5A 54 */	b StartShock__12dVibration_cFii4cXyz
/* 80C09FD4  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006004B@ha */
/* 80C09FD8  38 03 00 4B */	addi r0, r3, 0x004B /* 0x0006004B@l */
/* 80C09FDC  90 01 00 08 */	stw r0, 8(r1)
/* 80C09FE0  38 7F 07 58 */	addi r3, r31, 0x758
/* 80C09FE4  38 81 00 08 */	addi r4, r1, 8
/* 80C09FE8  38 A0 00 00 */	li r5, 0
/* 80C09FEC  38 C0 FF FF */	li r6, -1
/* 80C09FF0  81 9F 07 58 */	lwz r12, 0x758(r31)
/* 80C09FF4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C09FF8  7D 89 03 A6 */	mtctr r12
/* 80C09FFC  4E 80 04 21 */	bctrl 
lbl_80C0A000:
/* 80C0A000  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C0A004  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C0A008  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C0A00C  7C 08 03 A6 */	mtlr r0
/* 80C0A010  38 21 00 30 */	addi r1, r1, 0x30
/* 80C0A014  4E 80 00 20 */	blr 
