lbl_802D6A6C:
/* 802D6A6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6A70  7C 08 02 A6 */	mflr r0
/* 802D6A74  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D6A78  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6A7C  48 08 B7 5D */	bl _savegpr_28
/* 802D6A80  7C 7C 1B 78 */	mr r28, r3
/* 802D6A84  7C 9D 23 78 */	mr r29, r4
/* 802D6A88  7C BE 2B 78 */	mr r30, r5
/* 802D6A8C  7C DF 33 78 */	mr r31, r6
/* 802D6A90  38 A0 00 01 */	li r5, 1
/* 802D6A94  4B FF F8 01 */	bl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
/* 802D6A98  3C 60 80 3D */	lis r3, __vt__13JKRMemArchive@ha
/* 802D6A9C  38 03 C2 D8 */	addi r0, r3, __vt__13JKRMemArchive@l
/* 802D6AA0  90 1C 00 00 */	stw r0, 0(r28)
/* 802D6AA4  38 00 00 00 */	li r0, 0
/* 802D6AA8  98 1C 00 30 */	stb r0, 0x30(r28)
/* 802D6AAC  7F 83 E3 78 */	mr r3, r28
/* 802D6AB0  7F A4 EB 78 */	mr r4, r29
/* 802D6AB4  7F C5 F3 78 */	mr r5, r30
/* 802D6AB8  7F E6 FB 78 */	mr r6, r31
/* 802D6ABC  48 00 02 75 */	bl open__13JKRMemArchiveFPvUl15JKRMemBreakFlag
/* 802D6AC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D6AC4  40 82 00 0C */	bne lbl_802D6AD0
/* 802D6AC8  7F 83 E3 78 */	mr r3, r28
/* 802D6ACC  48 00 00 40 */	b lbl_802D6B0C
lbl_802D6AD0:
/* 802D6AD0  3C 60 52 41 */	lis r3, 0x5241 /* 0x52415243@ha */
/* 802D6AD4  38 03 52 43 */	addi r0, r3, 0x5243 /* 0x52415243@l */
/* 802D6AD8  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 802D6ADC  80 9C 00 54 */	lwz r4, 0x54(r28)
/* 802D6AE0  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802D6AE4  80 03 00 04 */	lwz r0, 4(r3)
/* 802D6AE8  7C 04 02 14 */	add r0, r4, r0
/* 802D6AEC  90 1C 00 28 */	stw r0, 0x28(r28)
/* 802D6AF0  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 802D6AF4  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 802D6AF8  38 9C 00 18 */	addi r4, r28, 0x18
/* 802D6AFC  48 00 54 F5 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 802D6B00  38 00 00 01 */	li r0, 1
/* 802D6B04  98 1C 00 30 */	stb r0, 0x30(r28)
/* 802D6B08  7F 83 E3 78 */	mr r3, r28
lbl_802D6B0C:
/* 802D6B0C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6B10  48 08 B7 15 */	bl _restgpr_28
/* 802D6B14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6B18  7C 08 03 A6 */	mtlr r0
/* 802D6B1C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6B20  4E 80 00 20 */	blr 
