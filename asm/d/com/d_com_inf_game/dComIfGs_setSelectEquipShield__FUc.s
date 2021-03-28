lbl_8002EF94:
/* 8002EF94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002EF98  7C 08 02 A6 */	mflr r0
/* 8002EF9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002EFA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002EFA4  7C 7F 1B 78 */	mr r31, r3
/* 8002EFA8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002EFAC  2C 00 00 2B */	cmpwi r0, 0x2b
/* 8002EFB0  41 82 00 3C */	beq lbl_8002EFEC
/* 8002EFB4  40 80 00 10 */	bge lbl_8002EFC4
/* 8002EFB8  2C 00 00 2A */	cmpwi r0, 0x2a
/* 8002EFBC  40 80 00 14 */	bge lbl_8002EFD0
/* 8002EFC0  48 00 00 60 */	b lbl_8002F020
lbl_8002EFC4:
/* 8002EFC4  2C 00 00 2D */	cmpwi r0, 0x2d
/* 8002EFC8  40 80 00 58 */	bge lbl_8002F020
/* 8002EFCC  48 00 00 3C */	b lbl_8002F008
lbl_8002EFD0:
/* 8002EFD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002EFD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002EFD8  38 63 01 00 */	addi r3, r3, 0x100
/* 8002EFDC  38 80 00 02 */	li r4, 2
/* 8002EFE0  38 A0 00 00 */	li r5, 0
/* 8002EFE4  48 00 52 05 */	bl setCollect__20dSv_player_collect_cFiUc
/* 8002EFE8  48 00 00 38 */	b lbl_8002F020
lbl_8002EFEC:
/* 8002EFEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002EFF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002EFF4  38 63 01 00 */	addi r3, r3, 0x100
/* 8002EFF8  38 80 00 02 */	li r4, 2
/* 8002EFFC  38 A0 00 01 */	li r5, 1
/* 8002F000  48 00 51 E9 */	bl setCollect__20dSv_player_collect_cFiUc
/* 8002F004  48 00 00 1C */	b lbl_8002F020
lbl_8002F008:
/* 8002F008  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002F00C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F010  38 63 01 00 */	addi r3, r3, 0x100
/* 8002F014  38 80 00 02 */	li r4, 2
/* 8002F018  38 A0 00 02 */	li r5, 2
/* 8002F01C  48 00 51 CD */	bl setCollect__20dSv_player_collect_cFiUc
lbl_8002F020:
/* 8002F020  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002F024  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F028  9B E3 00 15 */	stb r31, 0x15(r3)
/* 8002F02C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002F030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002F034  7C 08 03 A6 */	mtlr r0
/* 8002F038  38 21 00 10 */	addi r1, r1, 0x10
/* 8002F03C  4E 80 00 20 */	blr 
