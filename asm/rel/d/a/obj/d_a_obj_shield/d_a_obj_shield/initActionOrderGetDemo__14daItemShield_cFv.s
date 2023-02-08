lbl_80CD7C68:
/* 80CD7C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD7C6C  7C 08 02 A6 */	mflr r0
/* 80CD7C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD7C74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD7C78  7C 7F 1B 78 */	mr r31, r3
/* 80CD7C7C  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80CD7C80  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CD7C84  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CD7C88  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 80CD7C8C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CD7C90  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 80CD7C94  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 80CD7C98  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CD7C9C  90 03 08 0C */	stw r0, 0x80c(r3)
/* 80CD7CA0  4B 35 FD C5 */	bl hide__12daItemBase_cFv
/* 80CD7CA4  7F E3 FB 78 */	mr r3, r31
/* 80CD7CA8  38 80 00 00 */	li r4, 0
/* 80CD7CAC  38 A0 00 00 */	li r5, 0
/* 80CD7CB0  4B 34 3D 21 */	bl fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 80CD7CB4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CD7CB8  60 00 00 08 */	ori r0, r0, 8
/* 80CD7CBC  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80CD7CC0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CD7CC4  88 9F 09 2A */	lbz r4, 0x92a(r31)
/* 80CD7CC8  38 A0 FF FF */	li r5, -1
/* 80CD7CCC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CD7CD0  7C 06 07 74 */	extsb r6, r0
/* 80CD7CD4  38 E0 00 00 */	li r7, 0
/* 80CD7CD8  39 00 00 00 */	li r8, 0
/* 80CD7CDC  4B 34 3F 99 */	bl fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz
/* 80CD7CE0  90 7F 09 2C */	stw r3, 0x92c(r31)
/* 80CD7CE4  38 00 00 02 */	li r0, 2
/* 80CD7CE8  98 1F 09 34 */	stb r0, 0x934(r31)
/* 80CD7CEC  38 60 00 01 */	li r3, 1
/* 80CD7CF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD7CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD7CF8  7C 08 03 A6 */	mtlr r0
/* 80CD7CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD7D00  4E 80 00 20 */	blr 
