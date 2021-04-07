lbl_809A6360:
/* 809A6360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A6364  7C 08 02 A6 */	mflr r0
/* 809A6368  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A636C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A6370  7C 7F 1B 78 */	mr r31, r3
/* 809A6374  3C 60 80 9A */	lis r3, s_rod_sub__FPvPv@ha /* 0x809A6314@ha */
/* 809A6378  38 63 63 14 */	addi r3, r3, s_rod_sub__FPvPv@l /* 0x809A6314@l */
/* 809A637C  7F E4 FB 78 */	mr r4, r31
/* 809A6380  4B 67 AF B9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 809A6384  3C 80 80 9A */	lis r4, lrl@ha /* 0x809A6A50@ha */
/* 809A6388  90 64 6A 50 */	stw r3, lrl@l(r4)  /* 0x809A6A50@l */
/* 809A638C  7F E3 FB 78 */	mr r3, r31
/* 809A6390  4B FF FD 71 */	bl df_control__FP12npc_df_class
/* 809A6394  38 60 00 01 */	li r3, 1
/* 809A6398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A639C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A63A0  7C 08 03 A6 */	mtlr r0
/* 809A63A4  38 21 00 10 */	addi r1, r1, 0x10
/* 809A63A8  4E 80 00 20 */	blr 
