lbl_802D7A64:
/* 802D7A64  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802D7A68  7C 08 02 A6 */	mflr r0
/* 802D7A6C  90 01 00 64 */	stw r0, 0x64(r1)
/* 802D7A70  39 61 00 60 */	addi r11, r1, 0x60
/* 802D7A74  48 08 A7 69 */	bl _savegpr_29
/* 802D7A78  7C 7F 1B 78 */	mr r31, r3
/* 802D7A7C  7C 9E 23 78 */	mr r30, r4
/* 802D7A80  80 03 00 50 */	lwz r0, 0x50(r3)
/* 802D7A84  28 00 00 00 */	cmplwi r0, 0
/* 802D7A88  40 82 00 18 */	bne lbl_802D7AA0
/* 802D7A8C  81 83 00 00 */	lwz r12, 0(r3)
/* 802D7A90  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802D7A94  7D 89 03 A6 */	mtctr r12
/* 802D7A98  4E 80 04 21 */	bctrl 
/* 802D7A9C  48 00 00 DC */	b lbl_802D7B78
lbl_802D7AA0:
/* 802D7AA0  4B FF EC 95 */	bl findPtrResource__10JKRArchiveCFPCv
/* 802D7AA4  7C 7D 1B 79 */	or. r29, r3, r3
/* 802D7AA8  40 82 00 0C */	bne lbl_802D7AB4
/* 802D7AAC  38 60 FF FF */	li r3, -1
/* 802D7AB0  48 00 00 C8 */	b lbl_802D7B78
lbl_802D7AB4:
/* 802D7AB4  80 1D 00 04 */	lwz r0, 4(r29)
/* 802D7AB8  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 802D7ABC  40 82 00 20 */	bne lbl_802D7ADC
/* 802D7AC0  7F E3 FB 78 */	mr r3, r31
/* 802D7AC4  7F C4 F3 78 */	mr r4, r30
/* 802D7AC8  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D7ACC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802D7AD0  7D 89 03 A6 */	mtctr r12
/* 802D7AD4  4E 80 04 21 */	bctrl 
/* 802D7AD8  48 00 00 A0 */	b lbl_802D7B78
lbl_802D7ADC:
/* 802D7ADC  7F E3 FB 78 */	mr r3, r31
/* 802D7AE0  7F A4 EB 78 */	mr r4, r29
/* 802D7AE4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D7AE8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802D7AEC  7D 89 03 A6 */	mtctr r12
/* 802D7AF0  4E 80 04 21 */	bctrl 
/* 802D7AF4  28 03 00 00 */	cmplwi r3, 0
/* 802D7AF8  41 82 00 08 */	beq lbl_802D7B00
/* 802D7AFC  48 00 00 7C */	b lbl_802D7B78
lbl_802D7B00:
/* 802D7B00  38 01 00 27 */	addi r0, r1, 0x27
/* 802D7B04  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 802D7B08  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802D7B0C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D7B10  80 1D 00 08 */	lwz r0, 8(r29)
/* 802D7B14  7C 60 1A 14 */	add r3, r0, r3
/* 802D7B18  7F C4 F3 78 */	mr r4, r30
/* 802D7B1C  38 A0 00 20 */	li r5, 0x20
/* 802D7B20  38 C0 00 00 */	li r6, 0
/* 802D7B24  38 E0 00 00 */	li r7, 0
/* 802D7B28  39 00 00 00 */	li r8, 0
/* 802D7B2C  39 20 FF FF */	li r9, -1
/* 802D7B30  39 40 00 00 */	li r10, 0
/* 802D7B34  4B FF AA 81 */	bl aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
/* 802D7B38  88 BE 00 07 */	lbz r5, 7(r30)
/* 802D7B3C  88 9E 00 06 */	lbz r4, 6(r30)
/* 802D7B40  88 7E 00 04 */	lbz r3, 4(r30)
/* 802D7B44  88 1E 00 05 */	lbz r0, 5(r30)
/* 802D7B48  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D7B4C  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D7B50  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D7B54  7C BE 03 78 */	or r30, r5, r0
/* 802D7B58  7F E3 FB 78 */	mr r3, r31
/* 802D7B5C  7F A4 EB 78 */	mr r4, r29
/* 802D7B60  7F C5 F3 78 */	mr r5, r30
/* 802D7B64  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D7B68  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802D7B6C  7D 89 03 A6 */	mtctr r12
/* 802D7B70  4E 80 04 21 */	bctrl 
/* 802D7B74  7F C3 F3 78 */	mr r3, r30
lbl_802D7B78:
/* 802D7B78  39 61 00 60 */	addi r11, r1, 0x60
/* 802D7B7C  48 08 A6 AD */	bl _restgpr_29
/* 802D7B80  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802D7B84  7C 08 03 A6 */	mtlr r0
/* 802D7B88  38 21 00 60 */	addi r1, r1, 0x60
/* 802D7B8C  4E 80 00 20 */	blr 
