lbl_8002EEC0:
/* 8002EEC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002EEC4  7C 08 02 A6 */	mflr r0
/* 8002EEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002EECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002EED0  7C 7F 1B 78 */	mr r31, r3
/* 8002EED4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002EED8  2C 00 00 3F */	cmpwi r0, 0x3f
/* 8002EEDC  41 82 00 64 */	beq lbl_8002EF40
/* 8002EEE0  40 80 00 1C */	bge lbl_8002EEFC
/* 8002EEE4  2C 00 00 29 */	cmpwi r0, 0x29
/* 8002EEE8  41 82 00 3C */	beq lbl_8002EF24
/* 8002EEEC  40 80 00 88 */	bge lbl_8002EF74
/* 8002EEF0  2C 00 00 28 */	cmpwi r0, 0x28
/* 8002EEF4  40 80 00 14 */	bge lbl_8002EF08
/* 8002EEF8  48 00 00 7C */	b lbl_8002EF74
lbl_8002EEFC:
/* 8002EEFC  2C 00 00 49 */	cmpwi r0, 0x49
/* 8002EF00  41 82 00 5C */	beq lbl_8002EF5C
/* 8002EF04  48 00 00 70 */	b lbl_8002EF74
lbl_8002EF08:
/* 8002EF08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002EF0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002EF10  38 63 01 00 */	addi r3, r3, 0x100
/* 8002EF14  38 80 00 01 */	li r4, 1
/* 8002EF18  38 A0 00 00 */	li r5, 0
/* 8002EF1C  48 00 52 CD */	bl setCollect__20dSv_player_collect_cFiUc
/* 8002EF20  48 00 00 54 */	b lbl_8002EF74
lbl_8002EF24:
/* 8002EF24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002EF28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002EF2C  38 63 01 00 */	addi r3, r3, 0x100
/* 8002EF30  38 80 00 01 */	li r4, 1
/* 8002EF34  38 A0 00 01 */	li r5, 1
/* 8002EF38  48 00 52 B1 */	bl setCollect__20dSv_player_collect_cFiUc
/* 8002EF3C  48 00 00 38 */	b lbl_8002EF74
lbl_8002EF40:
/* 8002EF40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002EF44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002EF48  38 63 01 00 */	addi r3, r3, 0x100
/* 8002EF4C  38 80 00 01 */	li r4, 1
/* 8002EF50  38 A0 00 02 */	li r5, 2
/* 8002EF54  48 00 52 95 */	bl setCollect__20dSv_player_collect_cFiUc
/* 8002EF58  48 00 00 1C */	b lbl_8002EF74
lbl_8002EF5C:
/* 8002EF5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002EF60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002EF64  38 63 01 00 */	addi r3, r3, 0x100
/* 8002EF68  38 80 00 01 */	li r4, 1
/* 8002EF6C  38 A0 00 03 */	li r5, 3
/* 8002EF70  48 00 52 79 */	bl setCollect__20dSv_player_collect_cFiUc
lbl_8002EF74:
/* 8002EF74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002EF78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002EF7C  9B E3 00 14 */	stb r31, 0x14(r3)
/* 8002EF80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002EF84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002EF88  7C 08 03 A6 */	mtlr r0
/* 8002EF8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8002EF90  4E 80 00 20 */	blr 
