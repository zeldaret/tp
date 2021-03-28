lbl_8024BCC4:
/* 8024BCC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024BCC8  7C 08 02 A6 */	mflr r0
/* 8024BCCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024BCD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024BCD4  A0 64 00 04 */	lhz r3, 4(r4)
/* 8024BCD8  2C 03 00 01 */	cmpwi r3, 1
/* 8024BCDC  41 80 00 18 */	blt lbl_8024BCF4
/* 8024BCE0  2C 03 00 04 */	cmpwi r3, 4
/* 8024BCE4  40 80 00 10 */	bge lbl_8024BCF4
/* 8024BCE8  38 03 FF FF */	addi r0, r3, -1
/* 8024BCEC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8024BCF0  48 00 00 48 */	b lbl_8024BD38
lbl_8024BCF4:
/* 8024BCF4  2C 03 00 04 */	cmpwi r3, 4
/* 8024BCF8  40 82 00 20 */	bne lbl_8024BD18
/* 8024BCFC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8024BD00  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8024BD04  88 03 00 DC */	lbz r0, 0xdc(r3)
/* 8024BD08  28 00 00 FF */	cmplwi r0, 0xff
/* 8024BD0C  41 82 00 2C */	beq lbl_8024BD38
/* 8024BD10  7C 04 03 78 */	mr r4, r0
/* 8024BD14  48 00 00 24 */	b lbl_8024BD38
lbl_8024BD18:
/* 8024BD18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024BD1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024BD20  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8024BD24  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 8024BD28  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 8024BD2C  4B DE 8C D9 */	bl getEventReg__11dSv_event_cCFUs
/* 8024BD30  38 03 FF FF */	addi r0, r3, -1
/* 8024BD34  54 04 06 3E */	clrlwi r4, r0, 0x18
lbl_8024BD38:
/* 8024BD38  3B E0 00 00 */	li r31, 0
/* 8024BD3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024BD40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024BD44  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024BD48  38 04 00 0F */	addi r0, r4, 0xf
/* 8024BD4C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8024BD50  38 A0 00 00 */	li r5, 0
/* 8024BD54  4B DE 72 DD */	bl getItem__17dSv_player_item_cCFib
/* 8024BD58  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024BD5C  2C 00 00 71 */	cmpwi r0, 0x71
/* 8024BD60  41 82 00 28 */	beq lbl_8024BD88
/* 8024BD64  40 80 00 10 */	bge lbl_8024BD74
/* 8024BD68  2C 00 00 70 */	cmpwi r0, 0x70
/* 8024BD6C  40 80 00 14 */	bge lbl_8024BD80
/* 8024BD70  48 00 00 24 */	b lbl_8024BD94
lbl_8024BD74:
/* 8024BD74  2C 00 00 73 */	cmpwi r0, 0x73
/* 8024BD78  40 80 00 1C */	bge lbl_8024BD94
/* 8024BD7C  48 00 00 14 */	b lbl_8024BD90
lbl_8024BD80:
/* 8024BD80  3B E0 00 01 */	li r31, 1
/* 8024BD84  48 00 00 10 */	b lbl_8024BD94
lbl_8024BD88:
/* 8024BD88  3B E0 00 02 */	li r31, 2
/* 8024BD8C  48 00 00 08 */	b lbl_8024BD94
lbl_8024BD90:
/* 8024BD90  3B E0 00 03 */	li r31, 3
lbl_8024BD94:
/* 8024BD94  4B FE C8 79 */	bl setEquipBombInfo__12dMsgObject_cFv
/* 8024BD98  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8024BD9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024BDA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024BDA4  7C 08 03 A6 */	mtlr r0
/* 8024BDA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8024BDAC  4E 80 00 20 */	blr 
