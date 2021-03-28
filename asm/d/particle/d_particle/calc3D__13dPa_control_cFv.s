lbl_8004C078:
/* 8004C078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004C07C  7C 08 02 A6 */	mflr r0
/* 8004C080  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004C084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004C088  93 C1 00 08 */	stw r30, 8(r1)
/* 8004C08C  7C 7E 1B 78 */	mr r30, r3
/* 8004C090  88 6D 89 44 */	lbz r3, data_80450EC4(r13)
/* 8004C094  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8004C098  41 82 00 10 */	beq lbl_8004C0A8
/* 8004C09C  54 60 07 FA */	rlwinm r0, r3, 0, 0x1f, 0x1d
/* 8004C0A0  98 0D 89 44 */	stb r0, data_80450EC4(r13)
/* 8004C0A4  48 00 00 30 */	b lbl_8004C0D4
lbl_8004C0A8:
/* 8004C0A8  3B E0 00 00 */	li r31, 0
/* 8004C0AC  48 00 00 14 */	b lbl_8004C0C0
lbl_8004C0B0:
/* 8004C0B0  80 6D 89 20 */	lwz r3, mEmitterMng__13dPa_control_c(r13)
/* 8004C0B4  7F E4 FB 78 */	mr r4, r31
/* 8004C0B8  48 23 1E E9 */	bl calc__17JPAEmitterManagerFUc
/* 8004C0BC  3B FF 00 01 */	addi r31, r31, 1
lbl_8004C0C0:
/* 8004C0C0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8004C0C4  28 00 00 0D */	cmplwi r0, 0xd
/* 8004C0C8  40 81 FF E8 */	ble lbl_8004C0B0
/* 8004C0CC  38 7E 02 10 */	addi r3, r30, 0x210
/* 8004C0D0  4B FF F6 D9 */	bl execute__Q213dPa_control_c7level_cFv
lbl_8004C0D4:
/* 8004C0D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004C0D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004C0DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004C0E0  7C 08 03 A6 */	mtlr r0
/* 8004C0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8004C0E8  4E 80 00 20 */	blr 
