lbl_8024B2F8:
/* 8024B2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B2FC  7C 08 02 A6 */	mflr r0
/* 8024B300  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024B308  7C 7F 1B 78 */	mr r31, r3
/* 8024B30C  38 C0 00 00 */	li r6, 0
/* 8024B310  4B FF FF B1 */	bl query005__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci
/* 8024B314  B0 7F 00 3A */	sth r3, 0x3a(r31)
/* 8024B318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024B31C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B320  7C 08 03 A6 */	mtlr r0
/* 8024B324  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B328  4E 80 00 20 */	blr 
