lbl_8015D95C:
/* 8015D95C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D960  7C 08 02 A6 */	mflr r0
/* 8015D964  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D968  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D96C  7C 7F 1B 78 */	mr r31, r3
/* 8015D970  80 63 09 24 */	lwz r3, 0x924(r3)
/* 8015D974  38 03 00 01 */	addi r0, r3, 1
/* 8015D978  90 1F 09 24 */	stw r0, 0x924(r31)
/* 8015D97C  A8 7F 09 28 */	lha r3, 0x928(r31)
/* 8015D980  80 0D 81 28 */	lwz r0, m_timer_max__8daItem_c(r13)
/* 8015D984  7C 03 00 00 */	cmpw r3, r0
/* 8015D988  40 80 00 0C */	bge lbl_8015D994
/* 8015D98C  38 03 00 01 */	addi r0, r3, 1
/* 8015D990  B0 1F 09 28 */	sth r0, 0x928(r31)
lbl_8015D994:
/* 8015D994  7F E3 FB 78 */	mr r3, r31
/* 8015D998  4B FF F9 D9 */	bl checkCountTimer__8daItem_cFv
/* 8015D99C  2C 03 00 00 */	cmpwi r3, 0
/* 8015D9A0  41 82 00 30 */	beq lbl_8015D9D0
/* 8015D9A4  A8 7F 09 42 */	lha r3, 0x942(r31)
/* 8015D9A8  2C 03 00 00 */	cmpwi r3, 0
/* 8015D9AC  40 81 00 10 */	ble lbl_8015D9BC
/* 8015D9B0  38 03 FF FF */	addi r0, r3, -1
/* 8015D9B4  B0 1F 09 42 */	sth r0, 0x942(r31)
/* 8015D9B8  48 00 00 18 */	b lbl_8015D9D0
lbl_8015D9BC:
/* 8015D9BC  A8 7F 09 44 */	lha r3, 0x944(r31)
/* 8015D9C0  2C 03 00 00 */	cmpwi r3, 0
/* 8015D9C4  40 81 00 0C */	ble lbl_8015D9D0
/* 8015D9C8  38 03 FF FF */	addi r0, r3, -1
/* 8015D9CC  B0 1F 09 44 */	sth r0, 0x944(r31)
lbl_8015D9D0:
/* 8015D9D0  38 7F 09 5E */	addi r3, r31, 0x95e
/* 8015D9D4  4B FE 41 15 */	bl func_80141AE8
/* 8015D9D8  38 60 00 01 */	li r3, 1
/* 8015D9DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D9E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D9E4  7C 08 03 A6 */	mtlr r0
/* 8015D9E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D9EC  4E 80 00 20 */	blr 
