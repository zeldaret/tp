lbl_8021E4B0:
/* 8021E4B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021E4B4  7C 08 02 A6 */	mflr r0
/* 8021E4B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021E4BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021E4C0  7C 7F 1B 78 */	mr r31, r3
/* 8021E4C4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8021E4C8  2C 00 00 32 */	cmpwi r0, 0x32
/* 8021E4CC  40 80 00 0C */	bge lbl_8021E4D8
/* 8021E4D0  2C 00 00 2E */	cmpwi r0, 0x2e
/* 8021E4D4  40 80 00 0C */	bge lbl_8021E4E0
lbl_8021E4D8:
/* 8021E4D8  3B E0 00 2E */	li r31, 0x2e
/* 8021E4DC  38 80 00 00 */	li r4, 0
lbl_8021E4E0:
/* 8021E4E0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8021E4E4  41 82 00 24 */	beq lbl_8021E508
/* 8021E4E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021E4EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021E4F0  88 83 00 13 */	lbz r4, 0x13(r3)
/* 8021E4F4  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8021E4F8  28 00 00 FF */	cmplwi r0, 0xff
/* 8021E4FC  41 82 00 0C */	beq lbl_8021E508
/* 8021E500  38 63 00 CC */	addi r3, r3, 0xcc
/* 8021E504  4B E1 59 91 */	bl offFirstBit__21dSv_player_get_item_cFUc
lbl_8021E508:
/* 8021E508  7F E3 FB 78 */	mr r3, r31
/* 8021E50C  4B E1 09 A5 */	bl dComIfGs_setSelectEquipClothes__FUc
/* 8021E510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021E514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021E518  9B E3 5E 74 */	stb r31, 0x5e74(r3)
/* 8021E51C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021E520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021E524  7C 08 03 A6 */	mtlr r0
/* 8021E528  38 21 00 10 */	addi r1, r1, 0x10
/* 8021E52C  4E 80 00 20 */	blr 
