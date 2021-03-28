lbl_8024CA94:
/* 8024CA94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024CA98  7C 08 02 A6 */	mflr r0
/* 8024CA9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024CAA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8024CAA4  7C 86 23 78 */	mr r6, r4
/* 8024CAA8  38 81 00 08 */	addi r4, r1, 8
/* 8024CAAC  38 A1 00 0A */	addi r5, r1, 0xa
/* 8024CAB0  38 C6 00 04 */	addi r6, r6, 4
/* 8024CAB4  4B FF E6 3D */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024CAB8  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8024CABC  28 00 00 01 */	cmplwi r0, 1
/* 8024CAC0  41 81 00 B4 */	bgt lbl_8024CB74
/* 8024CAC4  A0 01 00 08 */	lhz r0, 8(r1)
/* 8024CAC8  2C 00 00 A2 */	cmpwi r0, 0xa2
/* 8024CACC  41 82 00 48 */	beq lbl_8024CB14
/* 8024CAD0  40 80 00 10 */	bge lbl_8024CAE0
/* 8024CAD4  2C 00 00 A1 */	cmpwi r0, 0xa1
/* 8024CAD8  40 80 00 14 */	bge lbl_8024CAEC
/* 8024CADC  48 00 00 88 */	b lbl_8024CB64
lbl_8024CAE0:
/* 8024CAE0  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 8024CAE4  40 80 00 80 */	bge lbl_8024CB64
/* 8024CAE8  48 00 00 54 */	b lbl_8024CB3C
lbl_8024CAEC:
/* 8024CAEC  38 00 00 01 */	li r0, 1
/* 8024CAF0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8024CAF4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8024CAF8  98 03 00 E3 */	stb r0, 0xe3(r3)
/* 8024CAFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024CB00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024CB04  38 63 01 14 */	addi r3, r3, 0x114
/* 8024CB08  38 80 00 00 */	li r4, 0
/* 8024CB0C  4B DE 78 5D */	bl onLightDropGetFlag__16dSv_light_drop_cFUc
/* 8024CB10  48 00 00 5C */	b lbl_8024CB6C
lbl_8024CB14:
/* 8024CB14  38 00 00 01 */	li r0, 1
/* 8024CB18  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8024CB1C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8024CB20  98 03 00 E4 */	stb r0, 0xe4(r3)
/* 8024CB24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024CB28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024CB2C  38 63 01 14 */	addi r3, r3, 0x114
/* 8024CB30  38 80 00 01 */	li r4, 1
/* 8024CB34  4B DE 78 35 */	bl onLightDropGetFlag__16dSv_light_drop_cFUc
/* 8024CB38  48 00 00 34 */	b lbl_8024CB6C
lbl_8024CB3C:
/* 8024CB3C  38 00 00 01 */	li r0, 1
/* 8024CB40  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8024CB44  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8024CB48  98 03 00 E5 */	stb r0, 0xe5(r3)
/* 8024CB4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024CB50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024CB54  38 63 01 14 */	addi r3, r3, 0x114
/* 8024CB58  38 80 00 02 */	li r4, 2
/* 8024CB5C  4B DE 78 0D */	bl onLightDropGetFlag__16dSv_light_drop_cFUc
/* 8024CB60  48 00 00 0C */	b lbl_8024CB6C
lbl_8024CB64:
/* 8024CB64  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8024CB68  4B E4 B3 25 */	bl execItemGet__FUc
lbl_8024CB6C:
/* 8024CB6C  38 60 00 01 */	li r3, 1
/* 8024CB70  48 00 00 2C */	b lbl_8024CB9C
lbl_8024CB74:
/* 8024CB74  3B E0 00 00 */	li r31, 0
/* 8024CB78  48 00 00 14 */	b lbl_8024CB8C
lbl_8024CB7C:
/* 8024CB7C  A0 01 00 08 */	lhz r0, 8(r1)
/* 8024CB80  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8024CB84  4B E4 B3 09 */	bl execItemGet__FUc
/* 8024CB88  3B FF 00 01 */	addi r31, r31, 1
lbl_8024CB8C:
/* 8024CB8C  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8024CB90  7C 1F 00 00 */	cmpw r31, r0
/* 8024CB94  41 80 FF E8 */	blt lbl_8024CB7C
/* 8024CB98  38 60 00 01 */	li r3, 1
lbl_8024CB9C:
/* 8024CB9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8024CBA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024CBA4  7C 08 03 A6 */	mtlr r0
/* 8024CBA8  38 21 00 20 */	addi r1, r1, 0x20
/* 8024CBAC  4E 80 00 20 */	blr 
