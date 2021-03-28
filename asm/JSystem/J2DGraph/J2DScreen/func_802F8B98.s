lbl_802F8B98:
/* 802F8B98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F8B9C  7C 08 02 A6 */	mflr r0
/* 802F8BA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F8BA4  39 61 00 20 */	addi r11, r1, 0x20
/* 802F8BA8  48 06 96 29 */	bl _savegpr_26
/* 802F8BAC  7C 7A 1B 78 */	mr r26, r3
/* 802F8BB0  7C 9B 23 78 */	mr r27, r4
/* 802F8BB4  7C BC 2B 78 */	mr r28, r5
/* 802F8BB8  7C DD 33 78 */	mr r29, r6
/* 802F8BBC  7C FE 3B 78 */	mr r30, r7
/* 802F8BC0  7D 1F 43 78 */	mr r31, r8
/* 802F8BC4  80 A4 00 00 */	lwz r5, 0(r4)
/* 802F8BC8  3C 80 54 42 */	lis r4, 0x5442 /* 0x54425831@ha */
/* 802F8BCC  38 04 58 31 */	addi r0, r4, 0x5831 /* 0x54425831@l */
/* 802F8BD0  7C 05 00 00 */	cmpw r5, r0
/* 802F8BD4  41 82 01 08 */	beq lbl_802F8CDC
/* 802F8BD8  40 80 00 4C */	bge lbl_802F8C24
/* 802F8BDC  3C 60 50 49 */	lis r3, 0x5049 /* 0x50494331@ha */
/* 802F8BE0  38 03 43 31 */	addi r0, r3, 0x4331 /* 0x50494331@l */
/* 802F8BE4  7C 05 00 00 */	cmpw r5, r0
/* 802F8BE8  41 82 00 C8 */	beq lbl_802F8CB0
/* 802F8BEC  40 80 00 28 */	bge lbl_802F8C14
/* 802F8BF0  3C 60 50 41 */	lis r3, 0x5041 /* 0x50414E32@ha */
/* 802F8BF4  38 03 4E 32 */	addi r0, r3, 0x4E32 /* 0x50414E32@l */
/* 802F8BF8  7C 05 00 00 */	cmpw r5, r0
/* 802F8BFC  41 82 01 0C */	beq lbl_802F8D08
/* 802F8C00  40 80 02 64 */	bge lbl_802F8E64
/* 802F8C04  38 03 4E 31 */	addi r0, r3, 0x4e31
/* 802F8C08  7C 05 00 00 */	cmpw r5, r0
/* 802F8C0C  40 80 00 4C */	bge lbl_802F8C58
/* 802F8C10  48 00 02 54 */	b lbl_802F8E64
lbl_802F8C14:
/* 802F8C14  38 03 43 33 */	addi r0, r3, 0x4333
/* 802F8C18  7C 05 00 00 */	cmpw r5, r0
/* 802F8C1C  40 80 02 48 */	bge lbl_802F8E64
/* 802F8C20  48 00 01 78 */	b lbl_802F8D98
lbl_802F8C24:
/* 802F8C24  3C 60 57 49 */	lis r3, 0x5749 /* 0x57494E31@ha */
/* 802F8C28  38 03 4E 31 */	addi r0, r3, 0x4E31 /* 0x57494E31@l */
/* 802F8C2C  7C 05 00 00 */	cmpw r5, r0
/* 802F8C30  41 82 00 54 */	beq lbl_802F8C84
/* 802F8C34  40 80 00 14 */	bge lbl_802F8C48
/* 802F8C38  38 04 58 33 */	addi r0, r4, 0x5833
/* 802F8C3C  7C 05 00 00 */	cmpw r5, r0
/* 802F8C40  40 80 02 24 */	bge lbl_802F8E64
/* 802F8C44  48 00 01 B8 */	b lbl_802F8DFC
lbl_802F8C48:
/* 802F8C48  38 03 4E 33 */	addi r0, r3, 0x4e33
/* 802F8C4C  7C 05 00 00 */	cmpw r5, r0
/* 802F8C50  40 80 02 14 */	bge lbl_802F8E64
/* 802F8C54  48 00 00 E0 */	b lbl_802F8D34
lbl_802F8C58:
/* 802F8C58  38 60 01 00 */	li r3, 0x100
/* 802F8C5C  4B FD 5F F1 */	bl __nw__FUl
/* 802F8C60  7C 60 1B 79 */	or. r0, r3, r3
/* 802F8C64  41 82 00 18 */	beq lbl_802F8C7C
/* 802F8C68  7F A4 EB 78 */	mr r4, r29
/* 802F8C6C  7F 85 E3 78 */	mr r5, r28
/* 802F8C70  38 C0 00 00 */	li r6, 0
/* 802F8C74  4B FF D3 29 */	bl __ct__7J2DPaneFP7J2DPaneP20JSURandomInputStreamUc
/* 802F8C78  7C 60 1B 78 */	mr r0, r3
lbl_802F8C7C:
/* 802F8C7C  7C 1A 03 78 */	mr r26, r0
/* 802F8C80  48 00 02 38 */	b lbl_802F8EB8
lbl_802F8C84:
/* 802F8C84  38 60 01 48 */	li r3, 0x148
/* 802F8C88  4B FD 5F C5 */	bl __nw__FUl
/* 802F8C8C  7C 60 1B 79 */	or. r0, r3, r3
/* 802F8C90  41 82 00 18 */	beq lbl_802F8CA8
/* 802F8C94  7F A4 EB 78 */	mr r4, r29
/* 802F8C98  7F 85 E3 78 */	mr r5, r28
/* 802F8C9C  7F E6 FB 78 */	mr r6, r31
/* 802F8CA0  48 00 0E D5 */	bl __ct__9J2DWindowFP7J2DPaneP20JSURandomInputStreamP10JKRArchive
/* 802F8CA4  7C 60 1B 78 */	mr r0, r3
lbl_802F8CA8:
/* 802F8CA8  7C 1A 03 78 */	mr r26, r0
/* 802F8CAC  48 00 02 0C */	b lbl_802F8EB8
lbl_802F8CB0:
/* 802F8CB0  38 60 01 50 */	li r3, 0x150
/* 802F8CB4  4B FD 5F 99 */	bl __nw__FUl
/* 802F8CB8  7C 60 1B 79 */	or. r0, r3, r3
/* 802F8CBC  41 82 00 18 */	beq lbl_802F8CD4
/* 802F8CC0  7F A4 EB 78 */	mr r4, r29
/* 802F8CC4  7F 85 E3 78 */	mr r5, r28
/* 802F8CC8  7F E6 FB 78 */	mr r6, r31
/* 802F8CCC  48 00 34 4D */	bl __ct__10J2DPictureFP7J2DPaneP20JSURandomInputStreamP10JKRArchive
/* 802F8CD0  7C 60 1B 78 */	mr r0, r3
lbl_802F8CD4:
/* 802F8CD4  7C 1A 03 78 */	mr r26, r0
/* 802F8CD8  48 00 01 E0 */	b lbl_802F8EB8
lbl_802F8CDC:
/* 802F8CDC  38 60 01 38 */	li r3, 0x138
/* 802F8CE0  4B FD 5F 6D */	bl __nw__FUl
/* 802F8CE4  7C 60 1B 79 */	or. r0, r3, r3
/* 802F8CE8  41 82 00 18 */	beq lbl_802F8D00
/* 802F8CEC  7F A4 EB 78 */	mr r4, r29
/* 802F8CF0  7F 85 E3 78 */	mr r5, r28
/* 802F8CF4  7F E6 FB 78 */	mr r6, r31
/* 802F8CF8  48 00 69 E1 */	bl __ct__10J2DTextBoxFP7J2DPaneP20JSURandomInputStreamP10JKRArchive
/* 802F8CFC  7C 60 1B 78 */	mr r0, r3
lbl_802F8D00:
/* 802F8D00  7C 1A 03 78 */	mr r26, r0
/* 802F8D04  48 00 01 B4 */	b lbl_802F8EB8
lbl_802F8D08:
/* 802F8D08  38 60 01 00 */	li r3, 0x100
/* 802F8D0C  4B FD 5F 41 */	bl __nw__FUl
/* 802F8D10  7C 60 1B 79 */	or. r0, r3, r3
/* 802F8D14  41 82 00 18 */	beq lbl_802F8D2C
/* 802F8D18  7F A4 EB 78 */	mr r4, r29
/* 802F8D1C  7F 85 E3 78 */	mr r5, r28
/* 802F8D20  38 C0 00 01 */	li r6, 1
/* 802F8D24  4B FF D2 79 */	bl __ct__7J2DPaneFP7J2DPaneP20JSURandomInputStreamUc
/* 802F8D28  7C 60 1B 78 */	mr r0, r3
lbl_802F8D2C:
/* 802F8D2C  7C 1A 03 78 */	mr r26, r0
/* 802F8D30  48 00 01 88 */	b lbl_802F8EB8
lbl_802F8D34:
/* 802F8D34  57 C0 02 DF */	rlwinm. r0, r30, 0, 0xb, 0xf
/* 802F8D38  41 82 00 34 */	beq lbl_802F8D6C
/* 802F8D3C  38 60 01 80 */	li r3, 0x180
/* 802F8D40  4B FD 5F 0D */	bl __nw__FUl
/* 802F8D44  7C 60 1B 79 */	or. r0, r3, r3
/* 802F8D48  41 82 00 1C */	beq lbl_802F8D64
/* 802F8D4C  7F A4 EB 78 */	mr r4, r29
/* 802F8D50  7F 85 E3 78 */	mr r5, r28
/* 802F8D54  7F C6 F3 78 */	mr r6, r30
/* 802F8D58  80 FA 01 04 */	lwz r7, 0x104(r26)
/* 802F8D5C  48 00 7F 39 */	bl __ct__11J2DWindowExFP7J2DPaneP20JSURandomInputStreamUlP11J2DMaterial
/* 802F8D60  7C 60 1B 78 */	mr r0, r3
lbl_802F8D64:
/* 802F8D64  7C 1A 03 78 */	mr r26, r0
/* 802F8D68  48 00 01 50 */	b lbl_802F8EB8
lbl_802F8D6C:
/* 802F8D6C  38 60 01 48 */	li r3, 0x148
/* 802F8D70  4B FD 5E DD */	bl __nw__FUl
/* 802F8D74  7C 60 1B 79 */	or. r0, r3, r3
/* 802F8D78  41 82 00 18 */	beq lbl_802F8D90
/* 802F8D7C  7F A4 EB 78 */	mr r4, r29
/* 802F8D80  7F 85 E3 78 */	mr r5, r28
/* 802F8D84  80 DA 01 04 */	lwz r6, 0x104(r26)
/* 802F8D88  48 00 0E 89 */	bl __ct__9J2DWindowFP7J2DPaneP20JSURandomInputStreamP11J2DMaterial
/* 802F8D8C  7C 60 1B 78 */	mr r0, r3
lbl_802F8D90:
/* 802F8D90  7C 1A 03 78 */	mr r26, r0
/* 802F8D94  48 00 01 24 */	b lbl_802F8EB8
lbl_802F8D98:
/* 802F8D98  57 C0 02 DF */	rlwinm. r0, r30, 0, 0xb, 0xf
/* 802F8D9C  41 82 00 34 */	beq lbl_802F8DD0
/* 802F8DA0  38 60 01 A0 */	li r3, 0x1a0
/* 802F8DA4  4B FD 5E A9 */	bl __nw__FUl
/* 802F8DA8  7C 60 1B 79 */	or. r0, r3, r3
/* 802F8DAC  41 82 00 1C */	beq lbl_802F8DC8
/* 802F8DB0  7F A4 EB 78 */	mr r4, r29
/* 802F8DB4  7F 85 E3 78 */	mr r5, r28
/* 802F8DB8  7F C6 F3 78 */	mr r6, r30
/* 802F8DBC  80 FA 01 04 */	lwz r7, 0x104(r26)
/* 802F8DC0  48 00 A9 2D */	bl __ct__12J2DPictureExFP7J2DPaneP20JSURandomInputStreamUlP11J2DMaterial
/* 802F8DC4  7C 60 1B 78 */	mr r0, r3
lbl_802F8DC8:
/* 802F8DC8  7C 1A 03 78 */	mr r26, r0
/* 802F8DCC  48 00 00 EC */	b lbl_802F8EB8
lbl_802F8DD0:
/* 802F8DD0  38 60 01 50 */	li r3, 0x150
/* 802F8DD4  4B FD 5E 79 */	bl __nw__FUl
/* 802F8DD8  7C 60 1B 79 */	or. r0, r3, r3
/* 802F8DDC  41 82 00 18 */	beq lbl_802F8DF4
/* 802F8DE0  7F A4 EB 78 */	mr r4, r29
/* 802F8DE4  7F 85 E3 78 */	mr r5, r28
/* 802F8DE8  80 DA 01 04 */	lwz r6, 0x104(r26)
/* 802F8DEC  48 00 33 E9 */	bl __ct__10J2DPictureFP7J2DPaneP20JSURandomInputStreamP11J2DMaterial
/* 802F8DF0  7C 60 1B 78 */	mr r0, r3
lbl_802F8DF4:
/* 802F8DF4  7C 1A 03 78 */	mr r26, r0
/* 802F8DF8  48 00 00 C0 */	b lbl_802F8EB8
lbl_802F8DFC:
/* 802F8DFC  57 C0 02 DF */	rlwinm. r0, r30, 0, 0xb, 0xf
/* 802F8E00  41 82 00 34 */	beq lbl_802F8E34
/* 802F8E04  38 60 01 48 */	li r3, 0x148
/* 802F8E08  4B FD 5E 45 */	bl __nw__FUl
/* 802F8E0C  7C 60 1B 79 */	or. r0, r3, r3
/* 802F8E10  41 82 00 1C */	beq lbl_802F8E2C
/* 802F8E14  7F A4 EB 78 */	mr r4, r29
/* 802F8E18  7F 85 E3 78 */	mr r5, r28
/* 802F8E1C  7F C6 F3 78 */	mr r6, r30
/* 802F8E20  80 FA 01 04 */	lwz r7, 0x104(r26)
/* 802F8E24  48 00 E3 C1 */	bl __ct__12J2DTextBoxExFP7J2DPaneP20JSURandomInputStreamUlP11J2DMaterial
/* 802F8E28  7C 60 1B 78 */	mr r0, r3
lbl_802F8E2C:
/* 802F8E2C  7C 1A 03 78 */	mr r26, r0
/* 802F8E30  48 00 00 88 */	b lbl_802F8EB8
lbl_802F8E34:
/* 802F8E34  38 60 01 38 */	li r3, 0x138
/* 802F8E38  4B FD 5E 15 */	bl __nw__FUl
/* 802F8E3C  7C 60 1B 79 */	or. r0, r3, r3
/* 802F8E40  41 82 00 1C */	beq lbl_802F8E5C
/* 802F8E44  7F A4 EB 78 */	mr r4, r29
/* 802F8E48  7F 85 E3 78 */	mr r5, r28
/* 802F8E4C  7F C6 F3 78 */	mr r6, r30
/* 802F8E50  80 FA 01 04 */	lwz r7, 0x104(r26)
/* 802F8E54  48 00 69 09 */	bl __ct__10J2DTextBoxFP7J2DPaneP20JSURandomInputStreamUlP11J2DMaterial
/* 802F8E58  7C 60 1B 78 */	mr r0, r3
lbl_802F8E5C:
/* 802F8E5C  7C 1A 03 78 */	mr r26, r0
/* 802F8E60  48 00 00 58 */	b lbl_802F8EB8
lbl_802F8E64:
/* 802F8E64  7F 83 E3 78 */	mr r3, r28
/* 802F8E68  81 9C 00 00 */	lwz r12, 0(r28)
/* 802F8E6C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F8E70  7D 89 03 A6 */	mtctr r12
/* 802F8E74  4E 80 04 21 */	bctrl 
/* 802F8E78  80 1B 00 04 */	lwz r0, 4(r27)
/* 802F8E7C  7F 60 1A 14 */	add r27, r0, r3
/* 802F8E80  38 60 01 00 */	li r3, 0x100
/* 802F8E84  4B FD 5D C9 */	bl __nw__FUl
/* 802F8E88  7C 60 1B 79 */	or. r0, r3, r3
/* 802F8E8C  41 82 00 18 */	beq lbl_802F8EA4
/* 802F8E90  7F A4 EB 78 */	mr r4, r29
/* 802F8E94  7F 85 E3 78 */	mr r5, r28
/* 802F8E98  38 C0 00 00 */	li r6, 0
/* 802F8E9C  4B FF D1 01 */	bl __ct__7J2DPaneFP7J2DPaneP20JSURandomInputStreamUc
/* 802F8EA0  7C 60 1B 78 */	mr r0, r3
lbl_802F8EA4:
/* 802F8EA4  7C 1A 03 78 */	mr r26, r0
/* 802F8EA8  7F 83 E3 78 */	mr r3, r28
/* 802F8EAC  7F 64 DB 78 */	mr r4, r27
/* 802F8EB0  38 A0 00 00 */	li r5, 0
/* 802F8EB4  4B FE 36 29 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
lbl_802F8EB8:
/* 802F8EB8  7F 43 D3 78 */	mr r3, r26
/* 802F8EBC  39 61 00 20 */	addi r11, r1, 0x20
/* 802F8EC0  48 06 93 5D */	bl _restgpr_26
/* 802F8EC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F8EC8  7C 08 03 A6 */	mtlr r0
/* 802F8ECC  38 21 00 20 */	addi r1, r1, 0x20
/* 802F8ED0  4E 80 00 20 */	blr 
