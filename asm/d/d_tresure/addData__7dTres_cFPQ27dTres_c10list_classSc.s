lbl_8009BCB4:
/* 8009BCB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009BCB8  7C 08 02 A6 */	mflr r0
/* 8009BCBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009BCC0  39 61 00 20 */	addi r11, r1, 0x20
/* 8009BCC4  48 2C 65 0D */	bl _savegpr_26
/* 8009BCC8  7C 7B 1B 78 */	mr r27, r3
/* 8009BCCC  7C 9C 23 78 */	mr r28, r4
/* 8009BCD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009BCD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009BCD8  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8009BCDC  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8009BCE0  7D 89 03 A6 */	mtctr r12
/* 8009BCE4  4E 80 04 21 */	bctrl 
/* 8009BCE8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8009BCEC  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 8009BCF0  28 00 00 03 */	cmplwi r0, 3
/* 8009BCF4  41 82 01 1C */	beq lbl_8009BE10
/* 8009BCF8  4B FF FF 75 */	bl reset__7dTres_cFv
/* 8009BCFC  83 FB 00 04 */	lwz r31, 4(r27)
/* 8009BD00  80 6D 8A 18 */	lwz r3, mTypeGroupData__7dTres_c(r13)
/* 8009BD04  A0 0D 8A 1C */	lhz r0, mNum__7dTres_c(r13)
/* 8009BD08  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 8009BD0C  7F C3 02 14 */	add r30, r3, r0
/* 8009BD10  3B A0 00 00 */	li r29, 0
/* 8009BD14  3C 60 80 42 */	lis r3, mTypeGroupListAll__7dTres_c@ha
/* 8009BD18  3B 43 54 38 */	addi r26, r3, mTypeGroupListAll__7dTres_c@l
/* 8009BD1C  48 00 00 E8 */	b lbl_8009BE04
lbl_8009BD20:
/* 8009BD20  88 1F 00 00 */	lbz r0, 0(r31)
/* 8009BD24  98 1E 00 00 */	stb r0, 0(r30)
/* 8009BD28  88 1F 00 01 */	lbz r0, 1(r31)
/* 8009BD2C  98 1E 00 01 */	stb r0, 1(r30)
/* 8009BD30  88 1F 00 02 */	lbz r0, 2(r31)
/* 8009BD34  98 1E 00 02 */	stb r0, 2(r30)
/* 8009BD38  88 1F 00 03 */	lbz r0, 3(r31)
/* 8009BD3C  98 1E 00 03 */	stb r0, 3(r30)
/* 8009BD40  80 7F 00 04 */	lwz r3, 4(r31)
/* 8009BD44  80 1F 00 08 */	lwz r0, 8(r31)
/* 8009BD48  90 7E 00 04 */	stw r3, 4(r30)
/* 8009BD4C  90 1E 00 08 */	stw r0, 8(r30)
/* 8009BD50  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8009BD54  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8009BD58  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8009BD5C  98 1E 00 10 */	stb r0, 0x10(r30)
/* 8009BD60  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 8009BD64  98 1E 00 11 */	stb r0, 0x11(r30)
/* 8009BD68  88 1F 00 12 */	lbz r0, 0x12(r31)
/* 8009BD6C  98 1E 00 12 */	stb r0, 0x12(r30)
/* 8009BD70  88 1F 00 13 */	lbz r0, 0x13(r31)
/* 8009BD74  98 1E 00 13 */	stb r0, 0x13(r30)
/* 8009BD78  9B 9E 00 01 */	stb r28, 1(r30)
/* 8009BD7C  38 00 00 00 */	li r0, 0
/* 8009BD80  98 1E 00 02 */	stb r0, 2(r30)
/* 8009BD84  88 7E 00 11 */	lbz r3, 0x11(r30)
/* 8009BD88  48 00 07 29 */	bl getTypeToTypeGroupNo__7dTres_cFUc
/* 8009BD8C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8009BD90  38 00 00 00 */	li r0, 0
/* 8009BD94  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8009BD98  98 7E 00 18 */	stb r3, 0x18(r30)
/* 8009BD9C  1C 04 00 0C */	mulli r0, r4, 0xc
/* 8009BDA0  7C 9A 02 14 */	add r4, r26, r0
/* 8009BDA4  80 04 00 00 */	lwz r0, 0(r4)
/* 8009BDA8  28 00 00 00 */	cmplwi r0, 0
/* 8009BDAC  40 82 00 08 */	bne lbl_8009BDB4
/* 8009BDB0  93 C4 00 00 */	stw r30, 0(r4)
lbl_8009BDB4:
/* 8009BDB4  80 64 00 04 */	lwz r3, 4(r4)
/* 8009BDB8  28 03 00 00 */	cmplwi r3, 0
/* 8009BDBC  41 82 00 08 */	beq lbl_8009BDC4
/* 8009BDC0  93 C3 00 14 */	stw r30, 0x14(r3)
lbl_8009BDC4:
/* 8009BDC4  93 C4 00 04 */	stw r30, 4(r4)
/* 8009BDC8  88 64 00 08 */	lbz r3, 8(r4)
/* 8009BDCC  38 03 00 01 */	addi r0, r3, 1
/* 8009BDD0  98 04 00 08 */	stb r0, 8(r4)
/* 8009BDD4  88 1E 00 11 */	lbz r0, 0x11(r30)
/* 8009BDD8  2C 00 00 FF */	cmpwi r0, 0xff
/* 8009BDDC  41 82 00 08 */	beq lbl_8009BDE4
/* 8009BDE0  48 00 00 0C */	b lbl_8009BDEC
lbl_8009BDE4:
/* 8009BDE4  7F C3 F3 78 */	mr r3, r30
/* 8009BDE8  48 00 00 41 */	bl checkTreasureBox__7dTres_cFPQ27dTres_c6data_s
lbl_8009BDEC:
/* 8009BDEC  A0 6D 8A 1C */	lhz r3, mNum__7dTres_c(r13)
/* 8009BDF0  38 03 00 01 */	addi r0, r3, 1
/* 8009BDF4  B0 0D 8A 1C */	sth r0, mNum__7dTres_c(r13)
/* 8009BDF8  3B BD 00 01 */	addi r29, r29, 1
/* 8009BDFC  3B FF 00 14 */	addi r31, r31, 0x14
/* 8009BE00  3B DE 00 1C */	addi r30, r30, 0x1c
lbl_8009BE04:
/* 8009BE04  80 1B 00 00 */	lwz r0, 0(r27)
/* 8009BE08  7C 1D 00 00 */	cmpw r29, r0
/* 8009BE0C  41 80 FF 14 */	blt lbl_8009BD20
lbl_8009BE10:
/* 8009BE10  39 61 00 20 */	addi r11, r1, 0x20
/* 8009BE14  48 2C 64 09 */	bl _restgpr_26
/* 8009BE18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009BE1C  7C 08 03 A6 */	mtlr r0
/* 8009BE20  38 21 00 20 */	addi r1, r1, 0x20
/* 8009BE24  4E 80 00 20 */	blr 
