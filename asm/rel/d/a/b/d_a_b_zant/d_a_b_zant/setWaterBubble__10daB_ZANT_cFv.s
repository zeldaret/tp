lbl_80640310:
/* 80640310  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80640314  7C 08 02 A6 */	mflr r0
/* 80640318  90 01 00 44 */	stw r0, 0x44(r1)
/* 8064031C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80640320  7C 7F 1B 78 */	mr r31, r3
/* 80640324  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 80640328  80 63 00 04 */	lwz r3, 4(r3)
/* 8064032C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80640330  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80640334  38 63 02 10 */	addi r3, r3, 0x210
/* 80640338  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064033C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80640340  4B D0 61 71 */	bl PSMTXCopy
/* 80640344  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80640348  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064034C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80640350  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80640354  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80640358  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8064035C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80640360  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80640364  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80640368  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064036C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80640370  38 00 00 FF */	li r0, 0xff
/* 80640374  90 01 00 08 */	stw r0, 8(r1)
/* 80640378  38 80 00 00 */	li r4, 0
/* 8064037C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80640380  38 00 FF FF */	li r0, -1
/* 80640384  90 01 00 10 */	stw r0, 0x10(r1)
/* 80640388  90 81 00 14 */	stw r4, 0x14(r1)
/* 8064038C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80640390  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80640394  80 9F 38 9C */	lwz r4, 0x389c(r31)
/* 80640398  38 A0 00 00 */	li r5, 0
/* 8064039C  38 C0 01 E8 */	li r6, 0x1e8
/* 806403A0  38 E1 00 20 */	addi r7, r1, 0x20
/* 806403A4  39 1F 01 0C */	addi r8, r31, 0x10c
/* 806403A8  39 20 00 00 */	li r9, 0
/* 806403AC  39 40 00 00 */	li r10, 0
/* 806403B0  3D 60 80 65 */	lis r11, lit_4169@ha /* 0x8064EB28@ha */
/* 806403B4  C0 2B EB 28 */	lfs f1, lit_4169@l(r11)  /* 0x8064EB28@l */
/* 806403B8  4B A0 D1 15 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806403BC  90 7F 38 9C */	stw r3, 0x389c(r31)
/* 806403C0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 806403C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806403C8  7C 08 03 A6 */	mtlr r0
/* 806403CC  38 21 00 40 */	addi r1, r1, 0x40
/* 806403D0  4E 80 00 20 */	blr 
