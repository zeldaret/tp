lbl_801C086C:
/* 801C086C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C0870  7C 08 02 A6 */	mflr r0
/* 801C0874  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C0878  39 61 00 30 */	addi r11, r1, 0x30
/* 801C087C  48 1A 19 51 */	bl _savegpr_25
/* 801C0880  7C 9D 23 78 */	mr r29, r4
/* 801C0884  7C BE 2B 78 */	mr r30, r5
/* 801C0888  7C D9 33 78 */	mr r25, r6
/* 801C088C  3B E0 00 00 */	li r31, 0
/* 801C0890  88 64 00 11 */	lbz r3, 0x11(r4)
/* 801C0894  4B ED BC 1D */	bl getTypeToTypeGroupNo__7dTres_cFUc
/* 801C0898  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 801C089C  3B 60 00 00 */	li r27, 0
/* 801C08A0  4B E7 E4 39 */	bl chkGetMap__10dMapInfo_nFv
/* 801C08A4  4B E7 E3 FD */	bl chkGetCompass__10dMapInfo_nFv
/* 801C08A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C08AC  41 82 00 08 */	beq lbl_801C08B4
/* 801C08B0  3B 60 00 01 */	li r27, 1
lbl_801C08B4:
/* 801C08B4  3B 40 00 00 */	li r26, 0
/* 801C08B8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 801C08BC  41 82 00 10 */	beq lbl_801C08CC
/* 801C08C0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801C08C4  41 82 00 08 */	beq lbl_801C08CC
/* 801C08C8  3B 40 00 01 */	li r26, 1
lbl_801C08CC:
/* 801C08CC  28 1C 00 10 */	cmplwi r28, 0x10
/* 801C08D0  41 81 02 54 */	bgt lbl_801C0B24
/* 801C08D4  3C 60 80 3C */	lis r3, lit_3798@ha
/* 801C08D8  38 63 CB 6C */	addi r3, r3, lit_3798@l
/* 801C08DC  57 80 10 3A */	slwi r0, r28, 2
/* 801C08E0  7C 03 00 2E */	lwzx r0, r3, r0
/* 801C08E4  7C 09 03 A6 */	mtctr r0
/* 801C08E8  4E 80 04 20 */	bctr 
/* 801C08EC  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 801C08F0  41 82 02 34 */	beq lbl_801C0B24
/* 801C08F4  88 9D 00 00 */	lbz r4, 0(r29)
/* 801C08F8  28 04 00 FF */	cmplwi r4, 0xff
/* 801C08FC  41 82 02 28 */	beq lbl_801C0B24
/* 801C0900  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C0904  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C0908  38 63 09 58 */	addi r3, r3, 0x958
/* 801C090C  4B E7 3E DD */	bl isTbox__12dSv_memBit_cCFi
/* 801C0910  2C 03 00 00 */	cmpwi r3, 0
/* 801C0914  40 82 02 10 */	bne lbl_801C0B24
/* 801C0918  3B E0 00 01 */	li r31, 1
/* 801C091C  48 00 02 08 */	b lbl_801C0B24
/* 801C0920  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 801C0924  41 82 02 00 */	beq lbl_801C0B24
/* 801C0928  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C092C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C0930  38 63 09 58 */	addi r3, r3, 0x958
/* 801C0934  88 9D 00 00 */	lbz r4, 0(r29)
/* 801C0938  4B E7 3E B1 */	bl isTbox__12dSv_memBit_cCFi
/* 801C093C  2C 03 00 00 */	cmpwi r3, 0
/* 801C0940  40 82 01 E4 */	bne lbl_801C0B24
/* 801C0944  3B E0 00 01 */	li r31, 1
/* 801C0948  48 00 01 DC */	b lbl_801C0B24
/* 801C094C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801C0950  41 82 01 D4 */	beq lbl_801C0B24
/* 801C0954  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 801C0958  41 82 01 CC */	beq lbl_801C0B24
/* 801C095C  3B E0 00 01 */	li r31, 1
/* 801C0960  48 00 01 C4 */	b lbl_801C0B24
/* 801C0964  88 9D 00 00 */	lbz r4, 0(r29)
/* 801C0968  28 04 00 FF */	cmplwi r4, 0xff
/* 801C096C  41 82 00 20 */	beq lbl_801C098C
/* 801C0970  41 82 01 B4 */	beq lbl_801C0B24
/* 801C0974  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C0978  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C097C  38 63 09 58 */	addi r3, r3, 0x958
/* 801C0980  4B E7 3E 69 */	bl isTbox__12dSv_memBit_cCFi
/* 801C0984  2C 03 00 00 */	cmpwi r3, 0
/* 801C0988  40 82 01 9C */	bne lbl_801C0B24
lbl_801C098C:
/* 801C098C  88 9D 00 10 */	lbz r4, 0x10(r29)
/* 801C0990  28 04 00 FF */	cmplwi r4, 0xff
/* 801C0994  41 82 00 24 */	beq lbl_801C09B8
/* 801C0998  41 82 01 8C */	beq lbl_801C0B24
/* 801C099C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C09A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C09A4  88 BD 00 01 */	lbz r5, 1(r29)
/* 801C09A8  7C A5 07 74 */	extsb r5, r5
/* 801C09AC  4B E7 49 B5 */	bl isSwitch__10dSv_info_cCFii
/* 801C09B0  2C 03 00 00 */	cmpwi r3, 0
/* 801C09B4  41 82 01 70 */	beq lbl_801C0B24
lbl_801C09B8:
/* 801C09B8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801C09BC  41 82 01 68 */	beq lbl_801C0B24
/* 801C09C0  3B E0 00 01 */	li r31, 1
/* 801C09C4  48 00 01 60 */	b lbl_801C0B24
/* 801C09C8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 801C09CC  41 82 01 58 */	beq lbl_801C0B24
/* 801C09D0  88 9D 00 10 */	lbz r4, 0x10(r29)
/* 801C09D4  28 04 00 FF */	cmplwi r4, 0xff
/* 801C09D8  41 82 00 24 */	beq lbl_801C09FC
/* 801C09DC  41 82 01 48 */	beq lbl_801C0B24
/* 801C09E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C09E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C09E8  88 BD 00 01 */	lbz r5, 1(r29)
/* 801C09EC  7C A5 07 74 */	extsb r5, r5
/* 801C09F0  4B E7 49 71 */	bl isSwitch__10dSv_info_cCFii
/* 801C09F4  2C 03 00 00 */	cmpwi r3, 0
/* 801C09F8  41 82 01 2C */	beq lbl_801C0B24
lbl_801C09FC:
/* 801C09FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C0A00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C0A04  38 63 09 58 */	addi r3, r3, 0x958
/* 801C0A08  38 80 00 03 */	li r4, 3
/* 801C0A0C  4B E7 3F 29 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801C0A10  2C 03 00 00 */	cmpwi r3, 0
/* 801C0A14  40 82 01 10 */	bne lbl_801C0B24
/* 801C0A18  3B E0 00 01 */	li r31, 1
/* 801C0A1C  48 00 01 08 */	b lbl_801C0B24
/* 801C0A20  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 801C0A24  41 82 01 00 */	beq lbl_801C0B24
/* 801C0A28  88 9D 00 00 */	lbz r4, 0(r29)
/* 801C0A2C  28 04 00 FF */	cmplwi r4, 0xff
/* 801C0A30  41 82 00 20 */	beq lbl_801C0A50
/* 801C0A34  41 82 00 F0 */	beq lbl_801C0B24
/* 801C0A38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C0A3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C0A40  38 63 09 58 */	addi r3, r3, 0x958
/* 801C0A44  4B E7 3D A5 */	bl isTbox__12dSv_memBit_cCFi
/* 801C0A48  2C 03 00 00 */	cmpwi r3, 0
/* 801C0A4C  40 82 00 D8 */	bne lbl_801C0B24
lbl_801C0A50:
/* 801C0A50  3B E0 00 01 */	li r31, 1
/* 801C0A54  48 00 00 D0 */	b lbl_801C0B24
/* 801C0A58  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 801C0A5C  41 82 00 C8 */	beq lbl_801C0B24
/* 801C0A60  3B E0 00 01 */	li r31, 1
/* 801C0A64  48 00 00 C0 */	b lbl_801C0B24
/* 801C0A68  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 801C0A6C  41 82 00 B8 */	beq lbl_801C0B24
/* 801C0A70  88 9D 00 00 */	lbz r4, 0(r29)
/* 801C0A74  28 04 00 FF */	cmplwi r4, 0xff
/* 801C0A78  41 82 00 20 */	beq lbl_801C0A98
/* 801C0A7C  41 82 00 A8 */	beq lbl_801C0B24
/* 801C0A80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C0A84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C0A88  38 63 09 58 */	addi r3, r3, 0x958
/* 801C0A8C  4B E7 3D 5D */	bl isTbox__12dSv_memBit_cCFi
/* 801C0A90  2C 03 00 00 */	cmpwi r3, 0
/* 801C0A94  40 82 00 90 */	bne lbl_801C0B24
lbl_801C0A98:
/* 801C0A98  3B E0 00 01 */	li r31, 1
/* 801C0A9C  48 00 00 88 */	b lbl_801C0B24
/* 801C0AA0  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 801C0AA4  41 82 00 80 */	beq lbl_801C0B24
/* 801C0AA8  88 9D 00 00 */	lbz r4, 0(r29)
/* 801C0AAC  28 04 00 FF */	cmplwi r4, 0xff
/* 801C0AB0  41 82 00 20 */	beq lbl_801C0AD0
/* 801C0AB4  41 82 00 70 */	beq lbl_801C0B24
/* 801C0AB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C0ABC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C0AC0  38 63 09 58 */	addi r3, r3, 0x958
/* 801C0AC4  4B E7 3D 25 */	bl isTbox__12dSv_memBit_cCFi
/* 801C0AC8  2C 03 00 00 */	cmpwi r3, 0
/* 801C0ACC  41 82 00 58 */	beq lbl_801C0B24
lbl_801C0AD0:
/* 801C0AD0  3B E0 00 01 */	li r31, 1
/* 801C0AD4  48 00 00 50 */	b lbl_801C0B24
/* 801C0AD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C0ADC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C0AE0  3B C3 09 58 */	addi r30, r3, 0x958
/* 801C0AE4  7F C3 F3 78 */	mr r3, r30
/* 801C0AE8  38 80 00 03 */	li r4, 3
/* 801C0AEC  4B E7 3E 49 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801C0AF0  2C 03 00 00 */	cmpwi r3, 0
/* 801C0AF4  40 82 00 30 */	bne lbl_801C0B24
/* 801C0AF8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 801C0AFC  41 82 00 28 */	beq lbl_801C0B24
/* 801C0B00  88 9D 00 00 */	lbz r4, 0(r29)
/* 801C0B04  28 04 00 FF */	cmplwi r4, 0xff
/* 801C0B08  41 82 00 18 */	beq lbl_801C0B20
/* 801C0B0C  41 82 00 18 */	beq lbl_801C0B24
/* 801C0B10  7F C3 F3 78 */	mr r3, r30
/* 801C0B14  4B E7 3C D5 */	bl isTbox__12dSv_memBit_cCFi
/* 801C0B18  2C 03 00 00 */	cmpwi r3, 0
/* 801C0B1C  40 82 00 08 */	bne lbl_801C0B24
lbl_801C0B20:
/* 801C0B20  3B E0 00 01 */	li r31, 1
lbl_801C0B24:
/* 801C0B24  7F E3 FB 78 */	mr r3, r31
/* 801C0B28  39 61 00 30 */	addi r11, r1, 0x30
/* 801C0B2C  48 1A 16 ED */	bl _restgpr_25
/* 801C0B30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C0B34  7C 08 03 A6 */	mtlr r0
/* 801C0B38  38 21 00 30 */	addi r1, r1, 0x30
/* 801C0B3C  4E 80 00 20 */	blr 
