lbl_80106E88:
/* 80106E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80106E8C  7C 08 02 A6 */	mflr r0
/* 80106E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80106E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80106E98  7C 7F 1B 78 */	mr r31, r3
/* 80106E9C  38 80 00 A8 */	li r4, 0xa8
/* 80106EA0  4B FB B0 CD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80106EA4  7F E3 FB 78 */	mr r3, r31
/* 80106EA8  4B FF F8 11 */	bl getBoardRowAnmSpeed__9daAlink_cFv
/* 80106EAC  7F E3 FB 78 */	mr r3, r31
/* 80106EB0  38 80 00 F9 */	li r4, 0xf9
/* 80106EB4  3C A0 80 39 */	lis r5, m__19daAlinkHIO_board_c0@ha /* 0x8038E870@ha */
/* 80106EB8  38 A5 E8 70 */	addi r5, r5, m__19daAlinkHIO_board_c0@l /* 0x8038E870@l */
/* 80106EBC  C0 45 00 84 */	lfs f2, 0x84(r5)
/* 80106EC0  4B FA 61 21 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 80106EC4  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80106EC8  60 00 00 40 */	ori r0, r0, 0x40
/* 80106ECC  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80106ED0  38 00 00 04 */	li r0, 4
/* 80106ED4  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80106ED8  38 00 00 01 */	li r0, 1
/* 80106EDC  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 80106EE0  38 00 00 00 */	li r0, 0
/* 80106EE4  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 80106EE8  38 60 00 01 */	li r3, 1
/* 80106EEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80106EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80106EF4  7C 08 03 A6 */	mtlr r0
/* 80106EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80106EFC  4E 80 00 20 */	blr 
