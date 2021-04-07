lbl_8001B334:
/* 8001B334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B338  7C 08 02 A6 */	mflr r0
/* 8001B33C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B340  7C 68 1B 78 */	mr r8, r3
/* 8001B344  7C 89 23 78 */	mr r9, r4
/* 8001B348  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001B34C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001B350  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8001B354  38 00 00 00 */	li r0, 0
/* 8001B358  88 83 00 E5 */	lbz r4, 0xe5(r3)
/* 8001B35C  28 04 00 00 */	cmplwi r4, 0
/* 8001B360  41 82 00 0C */	beq lbl_8001B36C
/* 8001B364  28 04 00 02 */	cmplwi r4, 2
/* 8001B368  40 82 00 08 */	bne lbl_8001B370
lbl_8001B36C:
/* 8001B36C  38 00 00 01 */	li r0, 1
lbl_8001B370:
/* 8001B370  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001B374  40 82 00 20 */	bne lbl_8001B394
/* 8001B378  54 C0 05 6B */	rlwinm. r0, r6, 0, 0x15, 0x15
/* 8001B37C  41 82 00 10 */	beq lbl_8001B38C
/* 8001B380  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 8001B384  7C 00 40 40 */	cmplw r0, r8
/* 8001B388  41 82 00 0C */	beq lbl_8001B394
lbl_8001B38C:
/* 8001B38C  38 60 00 00 */	li r3, 0
/* 8001B390  48 00 00 2C */	b lbl_8001B3BC
lbl_8001B394:
/* 8001B394  54 A0 04 3F */	clrlwi. r0, r5, 0x10
/* 8001B398  40 82 00 08 */	bne lbl_8001B3A0
/* 8001B39C  38 A0 00 02 */	li r5, 2
lbl_8001B3A0:
/* 8001B3A0  38 00 00 FF */	li r0, 0xff
/* 8001B3A4  90 01 00 08 */	stw r0, 8(r1)
/* 8001B3A8  38 80 00 0A */	li r4, 0xa
/* 8001B3AC  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 8001B3B0  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 8001B3B4  39 40 FF FF */	li r10, -1
/* 8001B3B8  48 02 62 B1 */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
lbl_8001B3BC:
/* 8001B3BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B3C0  7C 08 03 A6 */	mtlr r0
/* 8001B3C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B3C8  4E 80 00 20 */	blr 
