lbl_80259AC4:
/* 80259AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80259AC8  7C 08 02 A6 */	mflr r0
/* 80259ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80259AD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80259AD4  7C 7F 1B 78 */	mr r31, r3
/* 80259AD8  A8 03 00 08 */	lha r0, 8(r3)
/* 80259ADC  2C 00 00 0C */	cmpwi r0, 0xc
/* 80259AE0  40 82 00 4C */	bne lbl_80259B2C
/* 80259AE4  38 60 00 00 */	li r3, 0
/* 80259AE8  4B DC AE 6D */	bl resetArchiveBank__20dStage_roomControl_cFi
/* 80259AEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80259AF0  40 82 00 0C */	bne lbl_80259AFC
/* 80259AF4  38 60 00 00 */	li r3, 0
/* 80259AF8  48 00 00 F0 */	b lbl_80259BE8
lbl_80259AFC:
/* 80259AFC  4B DA D7 C9 */	bl mDoAud_resetRecover__Fv
/* 80259B00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80259B04  40 82 00 0C */	bne lbl_80259B10
/* 80259B08  38 60 00 00 */	li r3, 0
/* 80259B0C  48 00 00 DC */	b lbl_80259BE8
lbl_80259B10:
/* 80259B10  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80259B14  80 03 00 00 */	lwz r0, 0(r3)
/* 80259B18  2C 00 00 00 */	cmpwi r0, 0
/* 80259B1C  41 82 00 A8 */	beq lbl_80259BC4
/* 80259B20  38 00 00 01 */	li r0, 1
/* 80259B24  98 1F 01 D4 */	stb r0, 0x1d4(r31)
/* 80259B28  48 00 00 9C */	b lbl_80259BC4
lbl_80259B2C:
/* 80259B2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259B30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80259B34  A8 03 4E 16 */	lha r0, 0x4e16(r3)
/* 80259B38  2C 00 FF FC */	cmpwi r0, -4
/* 80259B3C  41 82 00 70 */	beq lbl_80259BAC
/* 80259B40  80 03 0D D0 */	lwz r0, 0xdd0(r3)
/* 80259B44  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80259B48  28 00 00 0C */	cmplwi r0, 0xc
/* 80259B4C  41 82 00 60 */	beq lbl_80259BAC
/* 80259B50  3B E3 4E 0E */	addi r31, r3, 0x4e0e
/* 80259B54  7F E3 FB 78 */	mr r3, r31
/* 80259B58  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 80259B5C  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 80259B60  38 84 00 0F */	addi r4, r4, 0xf
/* 80259B64  48 10 EE 31 */	bl strcmp
/* 80259B68  2C 03 00 00 */	cmpwi r3, 0
/* 80259B6C  41 82 00 40 */	beq lbl_80259BAC
/* 80259B70  7F E3 FB 78 */	mr r3, r31
/* 80259B74  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 80259B78  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 80259B7C  38 84 00 17 */	addi r4, r4, 0x17
/* 80259B80  48 10 EE 15 */	bl strcmp
/* 80259B84  2C 03 00 00 */	cmpwi r3, 0
/* 80259B88  40 82 00 3C */	bne lbl_80259BC4
/* 80259B8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259B90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80259B94  88 03 4E 18 */	lbz r0, 0x4e18(r3)
/* 80259B98  2C 00 00 01 */	cmpwi r0, 1
/* 80259B9C  40 82 00 28 */	bne lbl_80259BC4
/* 80259BA0  88 03 4E 19 */	lbz r0, 0x4e19(r3)
/* 80259BA4  2C 00 00 09 */	cmpwi r0, 9
/* 80259BA8  40 82 00 1C */	bne lbl_80259BC4
lbl_80259BAC:
/* 80259BAC  38 60 00 00 */	li r3, 0
/* 80259BB0  4B DC AD A5 */	bl resetArchiveBank__20dStage_roomControl_cFi
/* 80259BB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80259BB8  40 82 00 0C */	bne lbl_80259BC4
/* 80259BBC  38 60 00 00 */	li r3, 0
/* 80259BC0  48 00 00 28 */	b lbl_80259BE8
lbl_80259BC4:
/* 80259BC4  38 00 00 FF */	li r0, 0xff
/* 80259BC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259BCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80259BD0  3C 63 00 02 */	addis r3, r3, 2
/* 80259BD4  98 03 DD F8 */	stb r0, -0x2208(r3)
/* 80259BD8  38 00 00 00 */	li r0, 0
/* 80259BDC  98 0D 86 66 */	stb r0, struct_80450BE4+0x2(r13)
/* 80259BE0  98 0D 89 50 */	stb r0, data_80450ED0(r13)
/* 80259BE4  38 60 00 01 */	li r3, 1
lbl_80259BE8:
/* 80259BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80259BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80259BF0  7C 08 03 A6 */	mtlr r0
/* 80259BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80259BF8  4E 80 00 20 */	blr 
