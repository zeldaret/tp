lbl_80C0BD90:
/* 80C0BD90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C0BD94  7C 08 02 A6 */	mflr r0
/* 80C0BD98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C0BD9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C0BDA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C0BDA4  7C 7E 1B 78 */	mr r30, r3
/* 80C0BDA8  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C0BDAC  3B E3 FA 7C */	addi r31, r3, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C0BDB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0BDB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0BDB8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80C0BDBC  7C 00 00 D0 */	neg r0, r0
/* 80C0BDC0  7C 04 07 34 */	extsh r4, r0
/* 80C0BDC4  4B 40 06 19 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C0BDC8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C0BDCC  FC 20 00 50 */	fneg f1, f0
/* 80C0BDD0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C0BDD4  FC 40 00 50 */	fneg f2, f0
/* 80C0BDD8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C0BDDC  FC 60 00 50 */	fneg f3, f0
/* 80C0BDE0  4B 40 0F BD */	bl transM__14mDoMtx_stack_cFfff
/* 80C0BDE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0BDE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0BDEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0BDF0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0BDF4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80C0BDF8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80C0BDFC  38 A1 00 08 */	addi r5, r1, 8
/* 80C0BE00  4B 73 AF 6D */	bl PSMTXMultVec
/* 80C0BE04  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C0BE08  FC 00 02 10 */	fabs f0, f0
/* 80C0BE0C  FC 20 00 18 */	frsp f1, f0
/* 80C0BE10  C0 1F 02 34 */	lfs f0, 0x234(r31)
/* 80C0BE14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0BE18  40 80 00 2C */	bge lbl_80C0BE44
/* 80C0BE1C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80C0BE20  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0BE24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0BE28  40 81 00 1C */	ble lbl_80C0BE44
/* 80C0BE2C  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80C0BE30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0BE34  40 80 00 10 */	bge lbl_80C0BE44
/* 80C0BE38  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80C0BE3C  60 00 00 10 */	ori r0, r0, 0x10
/* 80C0BE40  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80C0BE44:
/* 80C0BE44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C0BE48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C0BE4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C0BE50  7C 08 03 A6 */	mtlr r0
/* 80C0BE54  38 21 00 20 */	addi r1, r1, 0x20
/* 80C0BE58  4E 80 00 20 */	blr 
