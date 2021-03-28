lbl_802F5F9C:
/* 802F5F9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F5FA0  7C 08 02 A6 */	mflr r0
/* 802F5FA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F5FA8  39 61 00 30 */	addi r11, r1, 0x30
/* 802F5FAC  48 06 C2 29 */	bl _savegpr_27
/* 802F5FB0  7C 7B 1B 78 */	mr r27, r3
/* 802F5FB4  7C 9D 23 78 */	mr r29, r4
/* 802F5FB8  7C BE 2B 78 */	mr r30, r5
/* 802F5FBC  7C DF 33 78 */	mr r31, r6
/* 802F5FC0  3C 60 80 3D */	lis r3, __vt__7J2DPane@ha
/* 802F5FC4  38 03 CF D0 */	addi r0, r3, __vt__7J2DPane@l
/* 802F5FC8  90 1B 00 00 */	stw r0, 0(r27)
/* 802F5FCC  3B 9B 00 DC */	addi r28, r27, 0xdc
/* 802F5FD0  7F 83 E3 78 */	mr r3, r28
/* 802F5FD4  4B FE 5F 41 */	bl initiate__10JSUPtrListFv
/* 802F5FD8  38 7C 00 0C */	addi r3, r28, 0xc
/* 802F5FDC  7F 64 DB 78 */	mr r4, r27
/* 802F5FE0  4B FE 5E 1D */	bl __ct__10JSUPtrLinkFPv
/* 802F5FE4  38 00 00 00 */	li r0, 0
/* 802F5FE8  90 1B 00 F8 */	stw r0, 0xf8(r27)
/* 802F5FEC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802F5FF0  40 82 00 60 */	bne lbl_802F6050
/* 802F5FF4  7F C3 F3 78 */	mr r3, r30
/* 802F5FF8  81 9E 00 00 */	lwz r12, 0(r30)
/* 802F5FFC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F6000  7D 89 03 A6 */	mtctr r12
/* 802F6004  4E 80 04 21 */	bctrl 
/* 802F6008  7C 7F 1B 78 */	mr r31, r3
/* 802F600C  7F C3 F3 78 */	mr r3, r30
/* 802F6010  38 81 00 10 */	addi r4, r1, 0x10
/* 802F6014  38 A0 00 08 */	li r5, 8
/* 802F6018  4B FE 62 81 */	bl read__14JSUInputStreamFPvl
/* 802F601C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802F6020  90 1B 00 08 */	stw r0, 8(r27)
/* 802F6024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F6028  7F FF 02 14 */	add r31, r31, r0
/* 802F602C  7F 63 DB 78 */	mr r3, r27
/* 802F6030  7F A4 EB 78 */	mr r4, r29
/* 802F6034  7F C5 F3 78 */	mr r5, r30
/* 802F6038  48 00 00 8D */	bl makePaneStream__7J2DPaneFP7J2DPaneP20JSURandomInputStream
/* 802F603C  7F C3 F3 78 */	mr r3, r30
/* 802F6040  7F E4 FB 78 */	mr r4, r31
/* 802F6044  38 A0 00 00 */	li r5, 0
/* 802F6048  4B FE 64 95 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802F604C  48 00 00 5C */	b lbl_802F60A8
lbl_802F6050:
/* 802F6050  7F C3 F3 78 */	mr r3, r30
/* 802F6054  81 9E 00 00 */	lwz r12, 0(r30)
/* 802F6058  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F605C  7D 89 03 A6 */	mtctr r12
/* 802F6060  4E 80 04 21 */	bctrl 
/* 802F6064  7C 7F 1B 78 */	mr r31, r3
/* 802F6068  7F C3 F3 78 */	mr r3, r30
/* 802F606C  38 81 00 08 */	addi r4, r1, 8
/* 802F6070  38 A0 00 08 */	li r5, 8
/* 802F6074  4B FE 63 E5 */	bl peek__20JSURandomInputStreamFPvl
/* 802F6078  80 01 00 08 */	lwz r0, 8(r1)
/* 802F607C  90 1B 00 08 */	stw r0, 8(r27)
/* 802F6080  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802F6084  7F FF 02 14 */	add r31, r31, r0
/* 802F6088  7F 63 DB 78 */	mr r3, r27
/* 802F608C  7F A4 EB 78 */	mr r4, r29
/* 802F6090  7F C5 F3 78 */	mr r5, r30
/* 802F6094  48 00 1A 85 */	bl makePaneExStream__7J2DPaneFP7J2DPaneP20JSURandomInputStream
/* 802F6098  7F C3 F3 78 */	mr r3, r30
/* 802F609C  7F E4 FB 78 */	mr r4, r31
/* 802F60A0  38 A0 00 00 */	li r5, 0
/* 802F60A4  4B FE 64 39 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
lbl_802F60A8:
/* 802F60A8  7F 63 DB 78 */	mr r3, r27
/* 802F60AC  39 61 00 30 */	addi r11, r1, 0x30
/* 802F60B0  48 06 C1 71 */	bl _restgpr_27
/* 802F60B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F60B8  7C 08 03 A6 */	mtlr r0
/* 802F60BC  38 21 00 30 */	addi r1, r1, 0x30
/* 802F60C0  4E 80 00 20 */	blr 
