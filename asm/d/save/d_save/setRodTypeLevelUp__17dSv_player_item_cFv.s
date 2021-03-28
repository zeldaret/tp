lbl_80033CBC:
/* 80033CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033CC0  7C 08 02 A6 */	mflr r0
/* 80033CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033CC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033CCC  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80033CD0  2C 00 00 5B */	cmpwi r0, 0x5b
/* 80033CD4  41 82 00 20 */	beq lbl_80033CF4
/* 80033CD8  40 80 00 10 */	bge lbl_80033CE8
/* 80033CDC  2C 00 00 4A */	cmpwi r0, 0x4a
/* 80033CE0  41 82 00 2C */	beq lbl_80033D0C
/* 80033CE4  48 00 00 30 */	b lbl_80033D14
lbl_80033CE8:
/* 80033CE8  2C 00 00 5D */	cmpwi r0, 0x5d
/* 80033CEC  41 82 00 14 */	beq lbl_80033D00
/* 80033CF0  48 00 00 24 */	b lbl_80033D14
lbl_80033CF4:
/* 80033CF4  38 00 00 5E */	li r0, 0x5e
/* 80033CF8  98 03 00 14 */	stb r0, 0x14(r3)
/* 80033CFC  48 00 00 18 */	b lbl_80033D14
lbl_80033D00:
/* 80033D00  38 00 00 5F */	li r0, 0x5f
/* 80033D04  98 03 00 14 */	stb r0, 0x14(r3)
/* 80033D08  48 00 00 0C */	b lbl_80033D14
lbl_80033D0C:
/* 80033D0C  38 00 00 5C */	li r0, 0x5c
/* 80033D10  98 03 00 14 */	stb r0, 0x14(r3)
lbl_80033D14:
/* 80033D14  3B E0 00 00 */	li r31, 0
lbl_80033D18:
/* 80033D18  7F E3 FB 78 */	mr r3, r31
/* 80033D1C  4B FF A0 D9 */	bl dComIfGp_setSelectItem__Fi
/* 80033D20  3B FF 00 01 */	addi r31, r31, 1
/* 80033D24  2C 1F 00 04 */	cmpwi r31, 4
/* 80033D28  41 80 FF F0 */	blt lbl_80033D18
/* 80033D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80033D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033D34  7C 08 03 A6 */	mtlr r0
/* 80033D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80033D3C  4E 80 00 20 */	blr 
