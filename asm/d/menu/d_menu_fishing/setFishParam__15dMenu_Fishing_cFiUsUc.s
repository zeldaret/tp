lbl_801C605C:
/* 801C605C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801C6060  7C 08 02 A6 */	mflr r0
/* 801C6064  90 01 00 74 */	stw r0, 0x74(r1)
/* 801C6068  39 61 00 70 */	addi r11, r1, 0x70
/* 801C606C  48 19 C1 5D */	bl _savegpr_24
/* 801C6070  7C 7D 1B 78 */	mr r29, r3
/* 801C6074  7C 9A 23 78 */	mr r26, r4
/* 801C6078  7C BC 2B 78 */	mr r28, r5
/* 801C607C  7C D8 33 78 */	mr r24, r6
/* 801C6080  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 801C6084  4B FF FF 95 */	bl getFigure__15dMenu_Fishing_cFi
/* 801C6088  7C 7B 1B 78 */	mr r27, r3
/* 801C608C  7F A3 EB 78 */	mr r3, r29
/* 801C6090  57 04 06 3E */	clrlwi r4, r24, 0x18
/* 801C6094  4B FF FF 85 */	bl getFigure__15dMenu_Fishing_cFi
/* 801C6098  57 05 06 3E */	clrlwi r5, r24, 0x18
/* 801C609C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 801C60A0  3B 24 61 C0 */	addi r25, r4, g_dComIfG_gameInfo@l
/* 801C60A4  57 40 10 3A */	slwi r0, r26, 2
/* 801C60A8  7F FD 02 14 */	add r31, r29, r0
/* 801C60AC  54 7A 06 3E */	clrlwi r26, r3, 0x18
/* 801C60B0  3B C1 00 28 */	addi r30, r1, 0x28
/* 801C60B4  57 98 04 3E */	clrlwi r24, r28, 0x10
/* 801C60B8  57 7B 06 3E */	clrlwi r27, r27, 0x18
/* 801C60BC  3B 81 00 08 */	addi r28, r1, 8
/* 801C60C0  90 B9 5E 0C */	stw r5, 0x5e0c(r25)
/* 801C60C4  80 7D 01 F4 */	lwz r3, 0x1f4(r29)
/* 801C60C8  38 80 05 97 */	li r4, 0x597
/* 801C60CC  80 BF 01 24 */	lwz r5, 0x124(r31)
/* 801C60D0  38 C0 00 00 */	li r6, 0
/* 801C60D4  38 E0 00 00 */	li r7, 0
/* 801C60D8  39 00 00 00 */	li r8, 0
/* 801C60DC  39 20 00 00 */	li r9, 0
/* 801C60E0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C60E4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C60E8  7D 89 03 A6 */	mtctr r12
/* 801C60EC  4E 80 04 21 */	bctrl 
/* 801C60F0  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 801C60F4  48 13 A5 65 */	bl getStringPtr__10J2DTextBoxCFv
/* 801C60F8  7C 64 1B 78 */	mr r4, r3
/* 801C60FC  7F C3 F3 78 */	mr r3, r30
/* 801C6100  48 1A 2A 2D */	bl strcpy
/* 801C6104  38 C0 00 00 */	li r6, 0
/* 801C6108  38 81 00 08 */	addi r4, r1, 8
/* 801C610C  7C 7E D2 14 */	add r3, r30, r26
/* 801C6110  48 00 00 14 */	b lbl_801C6124
lbl_801C6114:
/* 801C6114  98 A4 00 00 */	stb r5, 0(r4)
/* 801C6118  38 C6 00 01 */	addi r6, r6, 1
/* 801C611C  38 63 00 01 */	addi r3, r3, 1
/* 801C6120  38 84 00 01 */	addi r4, r4, 1
lbl_801C6124:
/* 801C6124  88 A3 00 00 */	lbz r5, 0(r3)
/* 801C6128  7C A0 07 75 */	extsb. r0, r5
/* 801C612C  40 82 FF E8 */	bne lbl_801C6114
/* 801C6130  38 00 00 00 */	li r0, 0
/* 801C6134  7C 1C 31 AE */	stbx r0, r28, r6
/* 801C6138  7C 1E D1 AE */	stbx r0, r30, r26
/* 801C613C  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 801C6140  48 13 A5 19 */	bl getStringPtr__10J2DTextBoxCFv
/* 801C6144  38 81 00 28 */	addi r4, r1, 0x28
/* 801C6148  48 1A 29 E5 */	bl strcpy
/* 801C614C  80 7F 01 84 */	lwz r3, 0x184(r31)
/* 801C6150  48 13 A5 09 */	bl getStringPtr__10J2DTextBoxCFv
/* 801C6154  38 81 00 08 */	addi r4, r1, 8
/* 801C6158  48 1A 29 D5 */	bl strcpy
/* 801C615C  93 19 5E 0C */	stw r24, 0x5e0c(r25)
/* 801C6160  80 7D 01 F4 */	lwz r3, 0x1f4(r29)
/* 801C6164  38 80 05 98 */	li r4, 0x598
/* 801C6168  80 BF 01 54 */	lwz r5, 0x154(r31)
/* 801C616C  38 C0 00 00 */	li r6, 0
/* 801C6170  38 E0 00 00 */	li r7, 0
/* 801C6174  39 00 00 00 */	li r8, 0
/* 801C6178  39 20 00 00 */	li r9, 0
/* 801C617C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6180  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C6184  7D 89 03 A6 */	mtctr r12
/* 801C6188  4E 80 04 21 */	bctrl 
/* 801C618C  80 7F 01 54 */	lwz r3, 0x154(r31)
/* 801C6190  48 13 A4 C9 */	bl getStringPtr__10J2DTextBoxCFv
/* 801C6194  7C 64 1B 78 */	mr r4, r3
/* 801C6198  38 61 00 28 */	addi r3, r1, 0x28
/* 801C619C  48 1A 29 91 */	bl strcpy
/* 801C61A0  38 C0 00 00 */	li r6, 0
/* 801C61A4  38 81 00 08 */	addi r4, r1, 8
/* 801C61A8  7C 7E DA 14 */	add r3, r30, r27
/* 801C61AC  48 00 00 14 */	b lbl_801C61C0
lbl_801C61B0:
/* 801C61B0  98 A4 00 00 */	stb r5, 0(r4)
/* 801C61B4  38 C6 00 01 */	addi r6, r6, 1
/* 801C61B8  38 63 00 01 */	addi r3, r3, 1
/* 801C61BC  38 84 00 01 */	addi r4, r4, 1
lbl_801C61C0:
/* 801C61C0  88 A3 00 00 */	lbz r5, 0(r3)
/* 801C61C4  7C A0 07 75 */	extsb. r0, r5
/* 801C61C8  40 82 FF E8 */	bne lbl_801C61B0
/* 801C61CC  38 00 00 00 */	li r0, 0
/* 801C61D0  7C 1C 31 AE */	stbx r0, r28, r6
/* 801C61D4  7C 1E D9 AE */	stbx r0, r30, r27
/* 801C61D8  80 7F 01 54 */	lwz r3, 0x154(r31)
/* 801C61DC  48 13 A4 7D */	bl getStringPtr__10J2DTextBoxCFv
/* 801C61E0  38 81 00 28 */	addi r4, r1, 0x28
/* 801C61E4  48 1A 29 49 */	bl strcpy
/* 801C61E8  80 7F 01 B4 */	lwz r3, 0x1b4(r31)
/* 801C61EC  48 13 A4 6D */	bl getStringPtr__10J2DTextBoxCFv
/* 801C61F0  38 81 00 08 */	addi r4, r1, 8
/* 801C61F4  48 1A 29 39 */	bl strcpy
/* 801C61F8  39 61 00 70 */	addi r11, r1, 0x70
/* 801C61FC  48 19 C0 19 */	bl _restgpr_24
/* 801C6200  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801C6204  7C 08 03 A6 */	mtlr r0
/* 801C6208  38 21 00 70 */	addi r1, r1, 0x70
/* 801C620C  4E 80 00 20 */	blr 
