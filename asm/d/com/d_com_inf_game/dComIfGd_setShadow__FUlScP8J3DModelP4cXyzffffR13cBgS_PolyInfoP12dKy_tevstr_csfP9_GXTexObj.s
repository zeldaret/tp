lbl_8002E910:
/* 8002E910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002E914  7C 08 02 A6 */	mflr r0
/* 8002E918  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002E91C  7C 6A 1B 78 */	mr r10, r3
/* 8002E920  7C 89 23 78 */	mr r9, r4
/* 8002E924  7C A0 2B 78 */	mr r0, r5
/* 8002E928  7C C7 33 78 */	mr r7, r6
/* 8002E92C  C0 02 83 00 */	lfs f0, lit_5090(r2)
/* 8002E930  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8002E934  4C 40 13 82 */	cror 2, 0, 2
/* 8002E938  40 82 00 0C */	bne lbl_8002E944
/* 8002E93C  38 60 00 00 */	li r3, 0
/* 8002E940  48 00 00 24 */	b lbl_8002E964
lbl_8002E944:
/* 8002E944  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002E948  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002E94C  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 8002E950  7D 44 53 78 */	mr r4, r10
/* 8002E954  7D 25 4B 78 */	mr r5, r9
/* 8002E958  7C 06 03 78 */	mr r6, r0
/* 8002E95C  EC 43 20 28 */	fsubs f2, f3, f4
/* 8002E960  48 02 73 15 */	bl setReal__21dDlst_shadowControl_cFUlScP8J3DModelP4cXyzffP12dKy_tevstr_c
lbl_8002E964:
/* 8002E964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002E968  7C 08 03 A6 */	mtlr r0
/* 8002E96C  38 21 00 10 */	addi r1, r1, 0x10
/* 8002E970  4E 80 00 20 */	blr 
