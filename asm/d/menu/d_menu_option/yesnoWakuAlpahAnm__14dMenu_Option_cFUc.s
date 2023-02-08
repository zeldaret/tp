lbl_801E8CFC:
/* 801E8CFC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801E8D00  7C 08 02 A6 */	mflr r0
/* 801E8D04  90 01 00 54 */	stw r0, 0x54(r1)
/* 801E8D08  39 61 00 50 */	addi r11, r1, 0x50
/* 801E8D0C  48 17 94 C1 */	bl _savegpr_25
/* 801E8D10  7C 79 1B 78 */	mr r25, r3
/* 801E8D14  3B A0 00 00 */	li r29, 0
/* 801E8D18  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801E8D1C  28 00 00 FF */	cmplwi r0, 0xff
/* 801E8D20  41 82 00 EC */	beq lbl_801E8E0C
/* 801E8D24  54 9E 15 BA */	rlwinm r30, r4, 2, 0x16, 0x1d
/* 801E8D28  7C 79 F2 14 */	add r3, r25, r30
/* 801E8D2C  80 63 01 EC */	lwz r3, 0x1ec(r3)
/* 801E8D30  7F F9 02 14 */	add r31, r25, r0
/* 801E8D34  88 9F 03 FF */	lbz r4, 0x3ff(r31)
/* 801E8D38  88 BF 03 FB */	lbz r5, 0x3fb(r31)
/* 801E8D3C  88 DF 03 FD */	lbz r6, 0x3fd(r31)
/* 801E8D40  38 E0 00 00 */	li r7, 0
/* 801E8D44  48 06 CB 35 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801E8D48  7C 7C 1B 78 */	mr r28, r3
/* 801E8D4C  7C 79 F2 14 */	add r3, r25, r30
/* 801E8D50  80 63 01 F4 */	lwz r3, 0x1f4(r3)
/* 801E8D54  88 9F 03 FF */	lbz r4, 0x3ff(r31)
/* 801E8D58  88 BF 03 FB */	lbz r5, 0x3fb(r31)
/* 801E8D5C  88 DF 03 FD */	lbz r6, 0x3fd(r31)
/* 801E8D60  38 E0 00 00 */	li r7, 0
/* 801E8D64  48 06 CB 15 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801E8D68  7C 7B 1B 78 */	mr r27, r3
/* 801E8D6C  7C 79 F2 14 */	add r3, r25, r30
/* 801E8D70  80 63 01 FC */	lwz r3, 0x1fc(r3)
/* 801E8D74  88 9F 03 FF */	lbz r4, 0x3ff(r31)
/* 801E8D78  88 BF 03 FB */	lbz r5, 0x3fb(r31)
/* 801E8D7C  88 DF 03 FD */	lbz r6, 0x3fd(r31)
/* 801E8D80  38 E0 00 00 */	li r7, 0
/* 801E8D84  48 06 CA F5 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801E8D88  7C 7A 1B 78 */	mr r26, r3
/* 801E8D8C  38 00 00 96 */	li r0, 0x96
/* 801E8D90  98 01 00 08 */	stb r0, 8(r1)
/* 801E8D94  98 01 00 09 */	stb r0, 9(r1)
/* 801E8D98  98 01 00 0A */	stb r0, 0xa(r1)
/* 801E8D9C  38 60 00 FF */	li r3, 0xff
/* 801E8DA0  98 61 00 0B */	stb r3, 0xb(r1)
/* 801E8DA4  80 01 00 08 */	lwz r0, 8(r1)
/* 801E8DA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E8DAC  98 61 00 10 */	stb r3, 0x10(r1)
/* 801E8DB0  98 61 00 11 */	stb r3, 0x11(r1)
/* 801E8DB4  98 61 00 12 */	stb r3, 0x12(r1)
/* 801E8DB8  98 61 00 13 */	stb r3, 0x13(r1)
/* 801E8DBC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801E8DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E8DC4  7C 99 F2 14 */	add r4, r25, r30
/* 801E8DC8  80 64 01 E4 */	lwz r3, 0x1e4(r4)
/* 801E8DCC  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 801E8DD0  90 01 00 18 */	stw r0, 0x18(r1)
/* 801E8DD4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801E8DD8  80 64 01 E4 */	lwz r3, 0x1e4(r4)
/* 801E8DDC  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 801E8DE0  90 01 00 20 */	stw r0, 0x20(r1)
/* 801E8DE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E8DE8  80 64 01 E4 */	lwz r3, 0x1e4(r4)
/* 801E8DEC  88 9F 03 FF */	lbz r4, 0x3ff(r31)
/* 801E8DF0  38 A1 00 24 */	addi r5, r1, 0x24
/* 801E8DF4  38 C1 00 1C */	addi r6, r1, 0x1c
/* 801E8DF8  38 E1 00 14 */	addi r7, r1, 0x14
/* 801E8DFC  39 01 00 0C */	addi r8, r1, 0xc
/* 801E8E00  39 20 00 00 */	li r9, 0
/* 801E8E04  48 06 BA B9 */	bl colorAnime__8CPaneMgrFsQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorUc
/* 801E8E08  48 00 00 14 */	b lbl_801E8E1C
lbl_801E8E0C:
/* 801E8E0C  3B 80 00 01 */	li r28, 1
/* 801E8E10  3B 60 00 01 */	li r27, 1
/* 801E8E14  3B 40 00 01 */	li r26, 1
/* 801E8E18  38 60 00 01 */	li r3, 1
lbl_801E8E1C:
/* 801E8E1C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801E8E20  28 00 00 01 */	cmplwi r0, 1
/* 801E8E24  40 82 00 2C */	bne lbl_801E8E50
/* 801E8E28  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 801E8E2C  28 00 00 01 */	cmplwi r0, 1
/* 801E8E30  40 82 00 20 */	bne lbl_801E8E50
/* 801E8E34  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 801E8E38  28 00 00 01 */	cmplwi r0, 1
/* 801E8E3C  40 82 00 14 */	bne lbl_801E8E50
/* 801E8E40  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801E8E44  28 00 00 01 */	cmplwi r0, 1
/* 801E8E48  40 82 00 08 */	bne lbl_801E8E50
/* 801E8E4C  3B A0 00 01 */	li r29, 1
lbl_801E8E50:
/* 801E8E50  7F A3 EB 78 */	mr r3, r29
/* 801E8E54  39 61 00 50 */	addi r11, r1, 0x50
/* 801E8E58  48 17 93 C1 */	bl _restgpr_25
/* 801E8E5C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801E8E60  7C 08 03 A6 */	mtlr r0
/* 801E8E64  38 21 00 50 */	addi r1, r1, 0x50
/* 801E8E68  4E 80 00 20 */	blr 
