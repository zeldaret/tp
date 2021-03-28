lbl_802F8990:
/* 802F8990  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F8994  7C 08 02 A6 */	mflr r0
/* 802F8998  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F899C  39 61 00 30 */	addi r11, r1, 0x30
/* 802F89A0  48 06 98 2D */	bl _savegpr_25
/* 802F89A4  7C 79 1B 78 */	mr r25, r3
/* 802F89A8  7C 9A 23 78 */	mr r26, r4
/* 802F89AC  7C BB 2B 78 */	mr r27, r5
/* 802F89B0  7C DC 33 78 */	mr r28, r6
/* 802F89B4  7C FD 3B 78 */	mr r29, r7
/* 802F89B8  7F 5E D3 78 */	mr r30, r26
/* 802F89BC  3C 60 46 4E */	lis r3, 0x464E /* 0x464E5431@ha */
/* 802F89C0  3B E3 54 31 */	addi r31, r3, 0x5431 /* 0x464E5431@l */
lbl_802F89C4:
/* 802F89C4  7F 63 DB 78 */	mr r3, r27
/* 802F89C8  38 81 00 08 */	addi r4, r1, 8
/* 802F89CC  38 A0 00 08 */	li r5, 8
/* 802F89D0  4B FE 3A 89 */	bl peek__20JSURandomInputStreamFPvl
/* 802F89D4  80 81 00 08 */	lwz r4, 8(r1)
/* 802F89D8  7C 04 F8 00 */	cmpw r4, r31
/* 802F89DC  41 82 00 F4 */	beq lbl_802F8AD0
/* 802F89E0  40 80 00 40 */	bge lbl_802F8A20
/* 802F89E4  3C 60 45 4E */	lis r3, 0x454E /* 0x454E4431@ha */
/* 802F89E8  38 03 44 31 */	addi r0, r3, 0x4431 /* 0x454E4431@l */
/* 802F89EC  7C 04 00 00 */	cmpw r4, r0
/* 802F89F0  41 82 00 A4 */	beq lbl_802F8A94
/* 802F89F4  40 80 00 18 */	bge lbl_802F8A0C
/* 802F89F8  3C 60 42 47 */	lis r3, 0x4247 /* 0x42474E31@ha */
/* 802F89FC  38 03 4E 31 */	addi r0, r3, 0x4E31 /* 0x42474E31@l */
/* 802F8A00  7C 04 00 00 */	cmpw r4, r0
/* 802F8A04  41 82 00 5C */	beq lbl_802F8A60
/* 802F8A08  48 00 01 10 */	b lbl_802F8B18
lbl_802F8A0C:
/* 802F8A0C  3C 60 45 58 */	lis r3, 0x4558 /* 0x45585431@ha */
/* 802F8A10  38 03 54 31 */	addi r0, r3, 0x5431 /* 0x45585431@l */
/* 802F8A14  7C 04 00 00 */	cmpw r4, r0
/* 802F8A18  41 82 00 30 */	beq lbl_802F8A48
/* 802F8A1C  48 00 00 FC */	b lbl_802F8B18
lbl_802F8A20:
/* 802F8A20  3C 60 54 45 */	lis r3, 0x5445 /* 0x54455831@ha */
/* 802F8A24  38 03 58 31 */	addi r0, r3, 0x5831 /* 0x54455831@l */
/* 802F8A28  7C 04 00 00 */	cmpw r4, r0
/* 802F8A2C  41 82 00 80 */	beq lbl_802F8AAC
/* 802F8A30  40 80 00 E8 */	bge lbl_802F8B18
/* 802F8A34  3C 60 4D 41 */	lis r3, 0x4D41 /* 0x4D415431@ha */
/* 802F8A38  38 03 54 31 */	addi r0, r3, 0x5431 /* 0x4D415431@l */
/* 802F8A3C  7C 04 00 00 */	cmpw r4, r0
/* 802F8A40  41 82 00 B4 */	beq lbl_802F8AF4
/* 802F8A44  48 00 00 D4 */	b lbl_802F8B18
lbl_802F8A48:
/* 802F8A48  7F 63 DB 78 */	mr r3, r27
/* 802F8A4C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 802F8A50  38 A0 00 01 */	li r5, 1
/* 802F8A54  4B FE 3A 89 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802F8A58  38 60 00 01 */	li r3, 1
/* 802F8A5C  48 00 01 24 */	b lbl_802F8B80
lbl_802F8A60:
/* 802F8A60  7F 63 DB 78 */	mr r3, r27
/* 802F8A64  80 81 00 0C */	lwz r4, 0xc(r1)
/* 802F8A68  38 A0 00 01 */	li r5, 1
/* 802F8A6C  4B FE 3A 71 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802F8A70  7F 23 CB 78 */	mr r3, r25
/* 802F8A74  7F C4 F3 78 */	mr r4, r30
/* 802F8A78  7F 65 DB 78 */	mr r5, r27
/* 802F8A7C  7F 86 E3 78 */	mr r6, r28
/* 802F8A80  7F A7 EB 78 */	mr r7, r29
/* 802F8A84  4B FF FF 0D */	bl makeHierarchyPanes__9J2DScreenFP7J2DPaneP20JSURandomInputStreamUlP10JKRArchive
/* 802F8A88  2C 03 00 00 */	cmpwi r3, 0
/* 802F8A8C  41 82 FF 38 */	beq lbl_802F89C4
/* 802F8A90  48 00 00 F0 */	b lbl_802F8B80
lbl_802F8A94:
/* 802F8A94  7F 63 DB 78 */	mr r3, r27
/* 802F8A98  80 81 00 0C */	lwz r4, 0xc(r1)
/* 802F8A9C  38 A0 00 01 */	li r5, 1
/* 802F8AA0  4B FE 3A 3D */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802F8AA4  38 60 00 00 */	li r3, 0
/* 802F8AA8  48 00 00 D8 */	b lbl_802F8B80
lbl_802F8AAC:
/* 802F8AAC  7F 23 CB 78 */	mr r3, r25
/* 802F8AB0  7F 64 DB 78 */	mr r4, r27
/* 802F8AB4  7F 85 E3 78 */	mr r5, r28
/* 802F8AB8  48 00 07 C9 */	bl getResReference__9J2DScreenFP20JSURandomInputStreamUl
/* 802F8ABC  90 79 01 08 */	stw r3, 0x108(r25)
/* 802F8AC0  28 03 00 00 */	cmplwi r3, 0
/* 802F8AC4  40 82 FF 00 */	bne lbl_802F89C4
/* 802F8AC8  38 60 00 02 */	li r3, 2
/* 802F8ACC  48 00 00 B4 */	b lbl_802F8B80
lbl_802F8AD0:
/* 802F8AD0  7F 23 CB 78 */	mr r3, r25
/* 802F8AD4  7F 64 DB 78 */	mr r4, r27
/* 802F8AD8  7F 85 E3 78 */	mr r5, r28
/* 802F8ADC  48 00 07 A5 */	bl getResReference__9J2DScreenFP20JSURandomInputStreamUl
/* 802F8AE0  90 79 01 0C */	stw r3, 0x10c(r25)
/* 802F8AE4  28 03 00 00 */	cmplwi r3, 0
/* 802F8AE8  40 82 FE DC */	bne lbl_802F89C4
/* 802F8AEC  38 60 00 02 */	li r3, 2
/* 802F8AF0  48 00 00 90 */	b lbl_802F8B80
lbl_802F8AF4:
/* 802F8AF4  7F 23 CB 78 */	mr r3, r25
/* 802F8AF8  7F 64 DB 78 */	mr r4, r27
/* 802F8AFC  7F 85 E3 78 */	mr r5, r28
/* 802F8B00  7F A6 EB 78 */	mr r6, r29
/* 802F8B04  48 00 08 79 */	bl createMaterial__9J2DScreenFP20JSURandomInputStreamUlP10JKRArchive
/* 802F8B08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F8B0C  40 82 FE B8 */	bne lbl_802F89C4
/* 802F8B10  38 60 00 02 */	li r3, 2
/* 802F8B14  48 00 00 6C */	b lbl_802F8B80
lbl_802F8B18:
/* 802F8B18  28 1D 00 00 */	cmplwi r29, 0
/* 802F8B1C  40 82 00 2C */	bne lbl_802F8B48
/* 802F8B20  7F 23 CB 78 */	mr r3, r25
/* 802F8B24  38 81 00 08 */	addi r4, r1, 8
/* 802F8B28  7F 65 DB 78 */	mr r5, r27
/* 802F8B2C  7F 46 D3 78 */	mr r6, r26
/* 802F8B30  7F 87 E3 78 */	mr r7, r28
/* 802F8B34  81 99 00 00 */	lwz r12, 0(r25)
/* 802F8B38  81 8C 00 94 */	lwz r12, 0x94(r12)
/* 802F8B3C  7D 89 03 A6 */	mtctr r12
/* 802F8B40  4E 80 04 21 */	bctrl 
/* 802F8B44  48 00 00 2C */	b lbl_802F8B70
lbl_802F8B48:
/* 802F8B48  7F 23 CB 78 */	mr r3, r25
/* 802F8B4C  38 81 00 08 */	addi r4, r1, 8
/* 802F8B50  7F 65 DB 78 */	mr r5, r27
/* 802F8B54  7F 46 D3 78 */	mr r6, r26
/* 802F8B58  7F 87 E3 78 */	mr r7, r28
/* 802F8B5C  7F A8 EB 78 */	mr r8, r29
/* 802F8B60  81 99 00 00 */	lwz r12, 0(r25)
/* 802F8B64  81 8C 00 98 */	lwz r12, 0x98(r12)
/* 802F8B68  7D 89 03 A6 */	mtctr r12
/* 802F8B6C  4E 80 04 21 */	bctrl 
lbl_802F8B70:
/* 802F8B70  7C 7E 1B 78 */	mr r30, r3
/* 802F8B74  28 03 00 00 */	cmplwi r3, 0
/* 802F8B78  40 82 FE 4C */	bne lbl_802F89C4
/* 802F8B7C  38 60 00 02 */	li r3, 2
lbl_802F8B80:
/* 802F8B80  39 61 00 30 */	addi r11, r1, 0x30
/* 802F8B84  48 06 96 95 */	bl _restgpr_25
/* 802F8B88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F8B8C  7C 08 03 A6 */	mtlr r0
/* 802F8B90  38 21 00 30 */	addi r1, r1, 0x30
/* 802F8B94  4E 80 00 20 */	blr 
