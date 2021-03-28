lbl_80118AD0:
/* 80118AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80118AD4  7C 08 02 A6 */	mflr r0
/* 80118AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80118ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80118AE0  3B E0 00 00 */	li r31, 0
/* 80118AE4  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 80118AE8  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 80118AEC  38 63 00 F6 */	addi r3, r3, 0xf6
/* 80118AF0  4B F8 4F 71 */	bl checkStageName__9daAlink_cFPCc
/* 80118AF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80118AF8  41 82 00 24 */	beq lbl_80118B1C
/* 80118AFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80118B00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80118B04  38 63 09 78 */	addi r3, r3, 0x978
/* 80118B08  38 80 00 01 */	li r4, 1
/* 80118B0C  4B F1 C0 DD */	bl isSwitch__12dSv_danBit_cCFi
/* 80118B10  2C 03 00 00 */	cmpwi r3, 0
/* 80118B14  41 82 00 08 */	beq lbl_80118B1C
/* 80118B18  3B E0 00 01 */	li r31, 1
lbl_80118B1C:
/* 80118B1C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80118B20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80118B24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80118B28  7C 08 03 A6 */	mtlr r0
/* 80118B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80118B30  4E 80 00 20 */	blr 
