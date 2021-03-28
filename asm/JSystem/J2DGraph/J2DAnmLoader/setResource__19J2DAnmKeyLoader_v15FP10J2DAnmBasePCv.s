lbl_80309414:
/* 80309414  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80309418  7C 08 02 A6 */	mflr r0
/* 8030941C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80309420  39 61 00 20 */	addi r11, r1, 0x20
/* 80309424  48 05 8D AD */	bl _savegpr_26
/* 80309428  7C 7B 1B 78 */	mr r27, r3
/* 8030942C  7C 9C 23 78 */	mr r28, r4
/* 80309430  3B C5 00 20 */	addi r30, r5, 0x20
/* 80309434  3B A0 00 00 */	li r29, 0
/* 80309438  3C 60 54 52 */	lis r3, 0x5452 /* 0x54524B31@ha */
/* 8030943C  3B E3 4B 31 */	addi r31, r3, 0x4B31 /* 0x54524B31@l */
/* 80309440  83 45 00 0C */	lwz r26, 0xc(r5)
/* 80309444  48 00 01 0C */	b lbl_80309550
lbl_80309448:
/* 80309448  80 9E 00 00 */	lwz r4, 0(r30)
/* 8030944C  7C 04 F8 00 */	cmpw r4, r31
/* 80309450  41 82 00 B8 */	beq lbl_80309508
/* 80309454  40 80 00 2C */	bge lbl_80309480
/* 80309458  3C 60 50 41 */	lis r3, 0x5041 /* 0x50414B31@ha */
/* 8030945C  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x50414B31@l */
/* 80309460  7C 04 00 00 */	cmpw r4, r0
/* 80309464  41 82 00 64 */	beq lbl_803094C8
/* 80309468  40 80 00 DC */	bge lbl_80309544
/* 8030946C  3C 60 41 4E */	lis r3, 0x414E /* 0x414E4B31@ha */
/* 80309470  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x414E4B31@l */
/* 80309474  7C 04 00 00 */	cmpw r4, r0
/* 80309478  41 82 00 30 */	beq lbl_803094A8
/* 8030947C  48 00 00 C8 */	b lbl_80309544
lbl_80309480:
/* 80309480  3C 60 56 43 */	lis r3, 0x5643 /* 0x56434B31@ha */
/* 80309484  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x56434B31@l */
/* 80309488  7C 04 00 00 */	cmpw r4, r0
/* 8030948C  41 82 00 9C */	beq lbl_80309528
/* 80309490  40 80 00 B4 */	bge lbl_80309544
/* 80309494  3C 60 54 54 */	lis r3, 0x5454 /* 0x54544B31@ha */
/* 80309498  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x54544B31@l */
/* 8030949C  7C 04 00 00 */	cmpw r4, r0
/* 803094A0  41 82 00 48 */	beq lbl_803094E8
/* 803094A4  48 00 00 A0 */	b lbl_80309544
lbl_803094A8:
/* 803094A8  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 803094AC  2C 00 00 00 */	cmpwi r0, 0
/* 803094B0  40 82 00 94 */	bne lbl_80309544
/* 803094B4  7F 63 DB 78 */	mr r3, r27
/* 803094B8  7F 84 E3 78 */	mr r4, r28
/* 803094BC  7F C5 F3 78 */	mr r5, r30
/* 803094C0  48 00 00 D9 */	bl setAnmTransform__19J2DAnmKeyLoader_v15FP18J2DAnmTransformKeyPC22J3DAnmTransformKeyData
/* 803094C4  48 00 00 80 */	b lbl_80309544
lbl_803094C8:
/* 803094C8  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 803094CC  2C 00 00 01 */	cmpwi r0, 1
/* 803094D0  40 82 00 74 */	bne lbl_80309544
/* 803094D4  7F 63 DB 78 */	mr r3, r27
/* 803094D8  7F 84 E3 78 */	mr r4, r28
/* 803094DC  7F C5 F3 78 */	mr r5, r30
/* 803094E0  48 00 03 91 */	bl setAnmColor__19J2DAnmKeyLoader_v15FP14J2DAnmColorKeyPC18J3DAnmColorKeyData
/* 803094E4  48 00 00 60 */	b lbl_80309544
lbl_803094E8:
/* 803094E8  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 803094EC  2C 00 00 04 */	cmpwi r0, 4
/* 803094F0  40 82 00 54 */	bne lbl_80309544
/* 803094F4  7F 63 DB 78 */	mr r3, r27
/* 803094F8  7F 84 E3 78 */	mr r4, r28
/* 803094FC  7F C5 F3 78 */	mr r5, r30
/* 80309500  48 00 01 5D */	bl setAnmTextureSRT__19J2DAnmKeyLoader_v15FP19J2DAnmTextureSRTKeyPC23J3DAnmTextureSRTKeyData
/* 80309504  48 00 00 40 */	b lbl_80309544
lbl_80309508:
/* 80309508  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 8030950C  2C 00 00 05 */	cmpwi r0, 5
/* 80309510  40 82 00 34 */	bne lbl_80309544
/* 80309514  7F 63 DB 78 */	mr r3, r27
/* 80309518  7F 84 E3 78 */	mr r4, r28
/* 8030951C  7F C5 F3 78 */	mr r5, r30
/* 80309520  48 00 0A E5 */	bl setAnmTevReg__19J2DAnmKeyLoader_v15FP15J2DAnmTevRegKeyPC19J3DAnmTevRegKeyData
/* 80309524  48 00 00 20 */	b lbl_80309544
lbl_80309528:
/* 80309528  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 8030952C  2C 00 00 07 */	cmpwi r0, 7
/* 80309530  40 82 00 14 */	bne lbl_80309544
/* 80309534  7F 63 DB 78 */	mr r3, r27
/* 80309538  7F 84 E3 78 */	mr r4, r28
/* 8030953C  7F C5 F3 78 */	mr r5, r30
/* 80309540  48 00 04 45 */	bl setAnmVtxColor__19J2DAnmKeyLoader_v15FP17J2DAnmVtxColorKeyPC21J3DAnmVtxColorKeyData
lbl_80309544:
/* 80309544  80 1E 00 04 */	lwz r0, 4(r30)
/* 80309548  7F DE 02 14 */	add r30, r30, r0
/* 8030954C  3B BD 00 01 */	addi r29, r29, 1
lbl_80309550:
/* 80309550  7C 1D D0 40 */	cmplw r29, r26
/* 80309554  41 80 FE F4 */	blt lbl_80309448
/* 80309558  39 61 00 20 */	addi r11, r1, 0x20
/* 8030955C  48 05 8C C1 */	bl _restgpr_26
/* 80309560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80309564  7C 08 03 A6 */	mtlr r0
/* 80309568  38 21 00 20 */	addi r1, r1, 0x20
/* 8030956C  4E 80 00 20 */	blr 
