lbl_8029E0BC:
/* 8029E0BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E0C0  7C 08 02 A6 */	mflr r0
/* 8029E0C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E0C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8029E0CC  48 0C 41 11 */	bl _savegpr_29
/* 8029E0D0  3B E0 00 00 */	li r31, 0
/* 8029E0D4  80 8D 8D 68 */	lwz r4, CH_BUF__6JASDsp(r13)
/* 8029E0D8  54 60 20 36 */	slwi r0, r3, 4
/* 8029E0DC  1C 00 01 80 */	mulli r0, r0, 0x180
/* 8029E0E0  7F C4 02 14 */	add r30, r4, r0
/* 8029E0E4  3B A0 00 00 */	li r29, 0
lbl_8029E0E8:
/* 8029E0E8  57 FF 0C 3C */	rlwinm r31, r31, 1, 0x10, 0x1e
/* 8029E0EC  7F C3 F3 78 */	mr r3, r30
/* 8029E0F0  4B FF FC 7D */	bl isActive__Q26JASDsp8TChannelCFv
/* 8029E0F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029E0F8  41 82 00 0C */	beq lbl_8029E104
/* 8029E0FC  63 E0 00 01 */	ori r0, r31, 1
/* 8029E100  54 1F 04 3E */	clrlwi r31, r0, 0x10
lbl_8029E104:
/* 8029E104  3B BD 00 01 */	addi r29, r29, 1
/* 8029E108  2C 1D 00 10 */	cmpwi r29, 0x10
/* 8029E10C  3B DE 01 80 */	addi r30, r30, 0x180
/* 8029E110  41 80 FF D8 */	blt lbl_8029E0E8
/* 8029E114  7F E3 FB 78 */	mr r3, r31
/* 8029E118  39 61 00 20 */	addi r11, r1, 0x20
/* 8029E11C  48 0C 41 0D */	bl _restgpr_29
/* 8029E120  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E124  7C 08 03 A6 */	mtlr r0
/* 8029E128  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E12C  4E 80 00 20 */	blr 
