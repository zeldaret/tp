lbl_8021D36C:
/* 8021D36C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021D370  7C 08 02 A6 */	mflr r0
/* 8021D374  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021D378  39 61 00 20 */	addi r11, r1, 0x20
/* 8021D37C  48 14 4E 55 */	bl _savegpr_26
/* 8021D380  7C 7A 1B 78 */	mr r26, r3
/* 8021D384  7C BB 2B 78 */	mr r27, r5
/* 8021D388  7C DC 33 78 */	mr r28, r6
/* 8021D38C  7C FD 3B 78 */	mr r29, r7
/* 8021D390  7D 1E 43 78 */	mr r30, r8
/* 8021D394  4B FF F8 ED */	bl getItemType__13dMeter2Info_cFUc
/* 8021D398  7C 7F 1B 78 */	mr r31, r3
/* 8021D39C  28 1B 00 00 */	cmplwi r27, 0
/* 8021D3A0  41 82 00 94 */	beq lbl_8021D434
/* 8021D3A4  7F 43 D3 78 */	mr r3, r26
/* 8021D3A8  7F E4 FB 78 */	mr r4, r31
/* 8021D3AC  7F 65 DB 78 */	mr r5, r27
/* 8021D3B0  48 00 01 75 */	bl set1stColor__13dMeter2Info_cFUcP10J2DPicture
/* 8021D3B4  28 1C 00 00 */	cmplwi r28, 0
/* 8021D3B8  41 82 00 7C */	beq lbl_8021D434
/* 8021D3BC  38 1F FF E5 */	addi r0, r31, -27
/* 8021D3C0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8021D3C4  28 00 00 02 */	cmplwi r0, 2
/* 8021D3C8  40 81 00 10 */	ble lbl_8021D3D8
/* 8021D3CC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8021D3D0  28 00 00 1E */	cmplwi r0, 0x1e
/* 8021D3D4  40 82 00 20 */	bne lbl_8021D3F4
lbl_8021D3D8:
/* 8021D3D8  28 1D 00 00 */	cmplwi r29, 0
/* 8021D3DC  40 82 00 18 */	bne lbl_8021D3F4
/* 8021D3E0  7F 43 D3 78 */	mr r3, r26
/* 8021D3E4  7F E4 FB 78 */	mr r4, r31
/* 8021D3E8  7F 85 E3 78 */	mr r5, r28
/* 8021D3EC  48 00 03 79 */	bl set3rdColor__13dMeter2Info_cFUcP10J2DPicture
/* 8021D3F0  48 00 00 44 */	b lbl_8021D434
lbl_8021D3F4:
/* 8021D3F4  7F 43 D3 78 */	mr r3, r26
/* 8021D3F8  7F E4 FB 78 */	mr r4, r31
/* 8021D3FC  7F 85 E3 78 */	mr r5, r28
/* 8021D400  48 00 02 45 */	bl set2ndColor__13dMeter2Info_cFUcP10J2DPicture
/* 8021D404  28 1D 00 00 */	cmplwi r29, 0
/* 8021D408  41 82 00 2C */	beq lbl_8021D434
/* 8021D40C  7F 43 D3 78 */	mr r3, r26
/* 8021D410  7F E4 FB 78 */	mr r4, r31
/* 8021D414  7F A5 EB 78 */	mr r5, r29
/* 8021D418  48 00 03 4D */	bl set3rdColor__13dMeter2Info_cFUcP10J2DPicture
/* 8021D41C  28 1E 00 00 */	cmplwi r30, 0
/* 8021D420  41 82 00 14 */	beq lbl_8021D434
/* 8021D424  7F 43 D3 78 */	mr r3, r26
/* 8021D428  7F E4 FB 78 */	mr r4, r31
/* 8021D42C  7F C5 F3 78 */	mr r5, r30
/* 8021D430  48 00 07 35 */	bl set4thColor__13dMeter2Info_cFUcP10J2DPicture
lbl_8021D434:
/* 8021D434  39 61 00 20 */	addi r11, r1, 0x20
/* 8021D438  48 14 4D E5 */	bl _restgpr_26
/* 8021D43C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021D440  7C 08 03 A6 */	mtlr r0
/* 8021D444  38 21 00 20 */	addi r1, r1, 0x20
/* 8021D448  4E 80 00 20 */	blr 
