lbl_80A9E364:
/* 80A9E364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9E368  7C 08 02 A6 */	mflr r0
/* 80A9E36C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9E370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9E374  7C 7F 1B 78 */	mr r31, r3
/* 80A9E378  48 00 00 6D */	bl chkDistTag__18daNpc_Pachi_Taro_cFv
/* 80A9E37C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80A9E380  41 82 00 14 */	beq lbl_80A9E394
/* 80A9E384  B0 7F 0E 30 */	sth r3, 0xe30(r31)
/* 80A9E388  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 80A9E38C  B0 1F 0F DC */	sth r0, 0xfdc(r31)
/* 80A9E390  48 00 00 40 */	b lbl_80A9E3D0
lbl_80A9E394:
/* 80A9E394  7F E3 FB 78 */	mr r3, r31
/* 80A9E398  48 00 00 C1 */	bl chkEscapeTag__18daNpc_Pachi_Taro_cFv
/* 80A9E39C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80A9E3A0  41 82 00 14 */	beq lbl_80A9E3B4
/* 80A9E3A4  B0 7F 0E 30 */	sth r3, 0xe30(r31)
/* 80A9E3A8  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 80A9E3AC  B0 1F 0F DC */	sth r0, 0xfdc(r31)
/* 80A9E3B0  48 00 00 20 */	b lbl_80A9E3D0
lbl_80A9E3B4:
/* 80A9E3B4  7F E3 FB 78 */	mr r3, r31
/* 80A9E3B8  48 00 01 B5 */	bl chkTarget__18daNpc_Pachi_Taro_cFv
/* 80A9E3BC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80A9E3C0  41 82 00 10 */	beq lbl_80A9E3D0
/* 80A9E3C4  B0 7F 0E 30 */	sth r3, 0xe30(r31)
/* 80A9E3C8  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 80A9E3CC  B0 1F 0F DC */	sth r0, 0xfdc(r31)
lbl_80A9E3D0:
/* 80A9E3D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9E3D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9E3D8  7C 08 03 A6 */	mtlr r0
/* 80A9E3DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9E3E0  4E 80 00 20 */	blr 
