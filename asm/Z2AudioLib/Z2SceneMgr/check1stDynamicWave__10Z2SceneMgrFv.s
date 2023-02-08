lbl_802BA09C:
/* 802BA09C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BA0A0  7C 08 02 A6 */	mflr r0
/* 802BA0A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BA0A8  39 61 00 20 */	addi r11, r1, 0x20
/* 802BA0AC  48 0A 81 31 */	bl _savegpr_29
/* 802BA0B0  7C 7D 1B 78 */	mr r29, r3
/* 802BA0B4  3B E0 00 01 */	li r31, 1
/* 802BA0B8  7F FE FB 78 */	mr r30, r31
/* 802BA0BC  88 03 00 17 */	lbz r0, 0x17(r3)
/* 802BA0C0  7C 00 07 75 */	extsb. r0, r0
/* 802BA0C4  40 82 00 1C */	bne lbl_802BA0E0
/* 802BA0C8  88 9D 00 0D */	lbz r4, 0xd(r29)
/* 802BA0CC  38 A0 00 00 */	li r5, 0
/* 802BA0D0  48 00 05 C9 */	bl getWaveLoadStatus__10Z2SceneMgrFUlUl
/* 802BA0D4  2C 03 00 01 */	cmpwi r3, 1
/* 802BA0D8  41 82 00 08 */	beq lbl_802BA0E0
/* 802BA0DC  3B C0 00 00 */	li r30, 0
lbl_802BA0E0:
/* 802BA0E0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802BA0E4  40 82 00 20 */	bne lbl_802BA104
/* 802BA0E8  7F A3 EB 78 */	mr r3, r29
/* 802BA0EC  88 9D 00 11 */	lbz r4, 0x11(r29)
/* 802BA0F0  38 A0 00 01 */	li r5, 1
/* 802BA0F4  48 00 05 A5 */	bl getWaveLoadStatus__10Z2SceneMgrFUlUl
/* 802BA0F8  2C 03 00 01 */	cmpwi r3, 1
/* 802BA0FC  41 82 00 08 */	beq lbl_802BA104
/* 802BA100  3B E0 00 00 */	li r31, 0
lbl_802BA104:
/* 802BA104  7F E3 FB 78 */	mr r3, r31
/* 802BA108  39 61 00 20 */	addi r11, r1, 0x20
/* 802BA10C  48 0A 81 1D */	bl _restgpr_29
/* 802BA110  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BA114  7C 08 03 A6 */	mtlr r0
/* 802BA118  38 21 00 20 */	addi r1, r1, 0x20
/* 802BA11C  4E 80 00 20 */	blr 
