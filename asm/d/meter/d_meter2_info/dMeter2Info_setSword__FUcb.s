lbl_8021E530:
/* 8021E530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021E534  7C 08 02 A6 */	mflr r0
/* 8021E538  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021E53C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021E540  7C 7F 1B 78 */	mr r31, r3
/* 8021E544  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8021E548  2C 00 00 49 */	cmpwi r0, 0x49
/* 8021E54C  41 82 00 38 */	beq lbl_8021E584
/* 8021E550  40 80 00 24 */	bge lbl_8021E574
/* 8021E554  2C 00 00 3F */	cmpwi r0, 0x3f
/* 8021E558  41 82 00 2C */	beq lbl_8021E584
/* 8021E55C  40 80 00 20 */	bge lbl_8021E57C
/* 8021E560  2C 00 00 2A */	cmpwi r0, 0x2a
/* 8021E564  40 80 00 18 */	bge lbl_8021E57C
/* 8021E568  2C 00 00 28 */	cmpwi r0, 0x28
/* 8021E56C  40 80 00 18 */	bge lbl_8021E584
/* 8021E570  48 00 00 0C */	b lbl_8021E57C
lbl_8021E574:
/* 8021E574  2C 00 00 FF */	cmpwi r0, 0xff
/* 8021E578  41 82 00 0C */	beq lbl_8021E584
lbl_8021E57C:
/* 8021E57C  3B E0 00 FF */	li r31, 0xff
/* 8021E580  38 80 00 00 */	li r4, 0
lbl_8021E584:
/* 8021E584  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8021E588  41 82 00 24 */	beq lbl_8021E5AC
/* 8021E58C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021E590  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021E594  88 83 00 14 */	lbz r4, 0x14(r3)
/* 8021E598  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8021E59C  28 00 00 FF */	cmplwi r0, 0xff
/* 8021E5A0  41 82 00 0C */	beq lbl_8021E5AC
/* 8021E5A4  38 63 00 CC */	addi r3, r3, 0xcc
/* 8021E5A8  4B E1 58 ED */	bl offFirstBit__21dSv_player_get_item_cFUc
lbl_8021E5AC:
/* 8021E5AC  7F E3 FB 78 */	mr r3, r31
/* 8021E5B0  4B E1 09 11 */	bl dComIfGs_setSelectEquipSword__FUc
/* 8021E5B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021E5B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021E5BC  9B E3 5E 75 */	stb r31, 0x5e75(r3)
/* 8021E5C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021E5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021E5C8  7C 08 03 A6 */	mtlr r0
/* 8021E5CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8021E5D0  4E 80 00 20 */	blr 
