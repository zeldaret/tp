lbl_8015B320:
/* 8015B320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015B324  7C 08 02 A6 */	mflr r0
/* 8015B328  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015B32C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015B330  93 C1 00 08 */	stw r30, 8(r1)
/* 8015B334  7C DE 33 78 */	mr r30, r6
/* 8015B338  7C 7F 1B 79 */	or. r31, r3, r3
/* 8015B33C  41 82 00 84 */	beq lbl_8015B3C0
/* 8015B340  48 00 20 8D */	bl checkPlayerGet__8daItem_cFv
/* 8015B344  2C 03 00 00 */	cmpwi r3, 0
/* 8015B348  41 82 00 78 */	beq lbl_8015B3C0
/* 8015B34C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8015B350  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8015B354  41 82 00 10 */	beq lbl_8015B364
/* 8015B358  7F E3 FB 78 */	mr r3, r31
/* 8015B35C  48 00 1B 91 */	bl itemGetNextExecute__8daItem_cFv
/* 8015B360  48 00 00 60 */	b lbl_8015B3C0
lbl_8015B364:
/* 8015B364  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8015B368  40 82 00 0C */	bne lbl_8015B374
/* 8015B36C  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8015B370  41 82 00 3C */	beq lbl_8015B3AC
lbl_8015B374:
/* 8015B374  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015B378  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015B37C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8015B380  28 00 00 00 */	cmplwi r0, 0
/* 8015B384  40 82 00 3C */	bne lbl_8015B3C0
/* 8015B388  88 1F 09 5E */	lbz r0, 0x95e(r31)
/* 8015B38C  28 00 00 00 */	cmplwi r0, 0
/* 8015B390  40 82 00 30 */	bne lbl_8015B3C0
/* 8015B394  88 1F 09 4A */	lbz r0, 0x94a(r31)
/* 8015B398  2C 00 00 05 */	cmpwi r0, 5
/* 8015B39C  41 82 00 24 */	beq lbl_8015B3C0
/* 8015B3A0  7F E3 FB 78 */	mr r3, r31
/* 8015B3A4  48 00 10 79 */	bl procInitBoomerangCarry__8daItem_cFv
/* 8015B3A8  48 00 00 18 */	b lbl_8015B3C0
lbl_8015B3AC:
/* 8015B3AC  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 8015B3B0  41 82 00 10 */	beq lbl_8015B3C0
/* 8015B3B4  88 1F 09 48 */	lbz r0, 0x948(r31)
/* 8015B3B8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8015B3BC  98 1F 09 48 */	stb r0, 0x948(r31)
lbl_8015B3C0:
/* 8015B3C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015B3C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015B3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015B3CC  7C 08 03 A6 */	mtlr r0
/* 8015B3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8015B3D4  4E 80 00 20 */	blr 
