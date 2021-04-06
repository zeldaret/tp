lbl_8084B56C:
/* 8084B56C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084B570  7C 08 02 A6 */	mflr r0
/* 8084B574  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084B578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8084B57C  7C 7F 1B 78 */	mr r31, r3
/* 8084B580  80 03 07 30 */	lwz r0, 0x730(r3)
/* 8084B584  2C 00 00 00 */	cmpwi r0, 0
/* 8084B588  41 82 00 0C */	beq lbl_8084B594
/* 8084B58C  38 60 00 00 */	li r3, 0
/* 8084B590  48 00 00 38 */	b lbl_8084B5C8
lbl_8084B594:
/* 8084B594  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 8084B598  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 8084B59C  80 04 00 34 */	lwz r0, 0x34(r4)
/* 8084B5A0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8084B5A4  41 82 00 20 */	beq lbl_8084B5C4
/* 8084B5A8  38 80 00 05 */	li r4, 5
/* 8084B5AC  38 A0 00 00 */	li r5, 0
/* 8084B5B0  4B FF F4 E9 */	bl setActionMode__8daKago_cFii
/* 8084B5B4  38 00 00 01 */	li r0, 1
/* 8084B5B8  98 1F 06 E1 */	stb r0, 0x6e1(r31)
/* 8084B5BC  38 60 00 01 */	li r3, 1
/* 8084B5C0  48 00 00 08 */	b lbl_8084B5C8
lbl_8084B5C4:
/* 8084B5C4  38 60 00 00 */	li r3, 0
lbl_8084B5C8:
/* 8084B5C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8084B5CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084B5D0  7C 08 03 A6 */	mtlr r0
/* 8084B5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8084B5D8  4E 80 00 20 */	blr 
