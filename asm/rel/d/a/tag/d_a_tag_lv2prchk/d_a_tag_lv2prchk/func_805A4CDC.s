lbl_805A4CDC:
/* 805A4CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4CE0  7C 08 02 A6 */	mflr r0
/* 805A4CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4CE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A4CEC  7C 7F 1B 78 */	mr r31, r3
/* 805A4CF0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A4CF4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A4CF8  40 82 00 1C */	bne lbl_805A4D14
/* 805A4CFC  28 1F 00 00 */	cmplwi r31, 0
/* 805A4D00  41 82 00 08 */	beq lbl_805A4D08
/* 805A4D04  4B A7 3E 60 */	b __ct__10fopAc_ac_cFv
lbl_805A4D08:
/* 805A4D08  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805A4D0C  60 00 00 08 */	ori r0, r0, 8
/* 805A4D10  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805A4D14:
/* 805A4D14  7F E3 FB 78 */	mr r3, r31
/* 805A4D18  4B FF FF 41 */	bl Create__15daTagLv2PrChk_cFv
/* 805A4D1C  2C 03 00 00 */	cmpwi r3, 0
/* 805A4D20  40 82 00 0C */	bne lbl_805A4D2C
/* 805A4D24  38 60 00 05 */	li r3, 5
/* 805A4D28  48 00 00 08 */	b lbl_805A4D30
lbl_805A4D2C:
/* 805A4D2C  38 60 00 04 */	li r3, 4
lbl_805A4D30:
/* 805A4D30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A4D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A4D38  7C 08 03 A6 */	mtlr r0
/* 805A4D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4D40  4E 80 00 20 */	blr 
