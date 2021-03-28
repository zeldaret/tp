lbl_801D72D4:
/* 801D72D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D72D8  7C 08 02 A6 */	mflr r0
/* 801D72DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D72E0  39 61 00 30 */	addi r11, r1, 0x30
/* 801D72E4  48 18 AE E9 */	bl _savegpr_25
/* 801D72E8  7C 79 1B 78 */	mr r25, r3
/* 801D72EC  7C 9A 23 79 */	or. r26, r4, r4
/* 801D72F0  7C BB 2B 78 */	mr r27, r5
/* 801D72F4  40 82 00 10 */	bne lbl_801D7304
/* 801D72F8  38 00 00 00 */	li r0, 0
/* 801D72FC  98 19 00 C0 */	stb r0, 0xc0(r25)
/* 801D7300  48 00 00 80 */	b lbl_801D7380
lbl_801D7304:
/* 801D7304  3B 80 00 00 */	li r28, 0
/* 801D7308  3B E0 00 00 */	li r31, 0
/* 801D730C  3C 60 80 39 */	lis r3, font_at_6194@ha
/* 801D7310  3B A3 65 58 */	addi r29, r3, font_at_6194@l
/* 801D7314  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801D7318  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
lbl_801D731C:
/* 801D731C  80 79 00 08 */	lwz r3, 8(r25)
/* 801D7320  7C 9D FA 14 */	add r4, r29, r31
/* 801D7324  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D7328  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D732C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7330  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D7334  7D 89 03 A6 */	mtctr r12
/* 801D7338  4E 80 04 21 */	bctrl 
/* 801D733C  48 12 93 1D */	bl getStringPtr__10J2DTextBoxCFv
/* 801D7340  7C 65 1B 78 */	mr r5, r3
/* 801D7344  7F C3 F3 78 */	mr r3, r30
/* 801D7348  7F 44 D3 78 */	mr r4, r26
/* 801D734C  38 C0 00 00 */	li r6, 0
/* 801D7350  48 04 51 F5 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801D7354  3B 9C 00 01 */	addi r28, r28, 1
/* 801D7358  2C 1C 00 05 */	cmpwi r28, 5
/* 801D735C  3B FF 00 08 */	addi r31, r31, 8
/* 801D7360  41 80 FF BC */	blt lbl_801D731C
/* 801D7364  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 801D7368  28 00 00 FF */	cmplwi r0, 0xff
/* 801D736C  40 82 00 10 */	bne lbl_801D737C
/* 801D7370  38 00 00 02 */	li r0, 2
/* 801D7374  98 19 00 C0 */	stb r0, 0xc0(r25)
/* 801D7378  48 00 00 08 */	b lbl_801D7380
lbl_801D737C:
/* 801D737C  9B 79 00 C0 */	stb r27, 0xc0(r25)
lbl_801D7380:
/* 801D7380  39 61 00 30 */	addi r11, r1, 0x30
/* 801D7384  48 18 AE 95 */	bl _restgpr_25
/* 801D7388  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D738C  7C 08 03 A6 */	mtlr r0
/* 801D7390  38 21 00 30 */	addi r1, r1, 0x30
/* 801D7394  4E 80 00 20 */	blr 
