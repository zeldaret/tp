lbl_8021E5D4:
/* 8021E5D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021E5D8  7C 08 02 A6 */	mflr r0
/* 8021E5DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021E5E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021E5E4  7C 7F 1B 78 */	mr r31, r3
/* 8021E5E8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8021E5EC  2C 00 00 FF */	cmpwi r0, 0xff
/* 8021E5F0  41 82 00 20 */	beq lbl_8021E610
/* 8021E5F4  40 80 00 14 */	bge lbl_8021E608
/* 8021E5F8  2C 00 00 2D */	cmpwi r0, 0x2d
/* 8021E5FC  40 80 00 0C */	bge lbl_8021E608
/* 8021E600  2C 00 00 2A */	cmpwi r0, 0x2a
/* 8021E604  40 80 00 0C */	bge lbl_8021E610
lbl_8021E608:
/* 8021E608  3B E0 00 FF */	li r31, 0xff
/* 8021E60C  38 80 00 00 */	li r4, 0
lbl_8021E610:
/* 8021E610  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8021E614  41 82 00 24 */	beq lbl_8021E638
/* 8021E618  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021E61C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021E620  88 83 00 15 */	lbz r4, 0x15(r3)
/* 8021E624  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8021E628  28 00 00 FF */	cmplwi r0, 0xff
/* 8021E62C  41 82 00 0C */	beq lbl_8021E638
/* 8021E630  38 63 00 CC */	addi r3, r3, 0xcc
/* 8021E634  4B E1 58 61 */	bl offFirstBit__21dSv_player_get_item_cFUc
lbl_8021E638:
/* 8021E638  7F E3 FB 78 */	mr r3, r31
/* 8021E63C  4B E1 09 59 */	bl dComIfGs_setSelectEquipShield__FUc
/* 8021E640  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021E644  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021E648  9B E3 5E 76 */	stb r31, 0x5e76(r3)
/* 8021E64C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021E650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021E654  7C 08 03 A6 */	mtlr r0
/* 8021E658  38 21 00 10 */	addi r1, r1, 0x10
/* 8021E65C  4E 80 00 20 */	blr 
