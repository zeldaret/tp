lbl_802D887C:
/* 802D887C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D8880  7C 08 02 A6 */	mflr r0
/* 802D8884  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D8888  39 61 00 20 */	addi r11, r1, 0x20
/* 802D888C  48 08 99 4D */	bl _savegpr_28
/* 802D8890  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D8894  7C 9F 23 78 */	mr r31, r4
/* 802D8898  41 82 01 08 */	beq lbl_802D89A0
/* 802D889C  3C 60 80 3D */	lis r3, __vt__14JKRCompArchive@ha
/* 802D88A0  38 03 C3 E8 */	addi r0, r3, __vt__14JKRCompArchive@l
/* 802D88A4  90 1E 00 00 */	stw r0, 0(r30)
/* 802D88A8  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 802D88AC  28 00 00 00 */	cmplwi r0, 0
/* 802D88B0  41 82 00 58 */	beq lbl_802D8908
/* 802D88B4  83 BE 00 4C */	lwz r29, 0x4c(r30)
/* 802D88B8  3B 80 00 00 */	li r28, 0
/* 802D88BC  48 00 00 2C */	b lbl_802D88E8
lbl_802D88C0:
/* 802D88C0  80 1D 00 04 */	lwz r0, 4(r29)
/* 802D88C4  54 00 46 F7 */	rlwinm. r0, r0, 8, 0x1b, 0x1b
/* 802D88C8  40 82 00 18 */	bne lbl_802D88E0
/* 802D88CC  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802D88D0  28 03 00 00 */	cmplwi r3, 0
/* 802D88D4  41 82 00 0C */	beq lbl_802D88E0
/* 802D88D8  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 802D88DC  4B FF 5C 25 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D88E0:
/* 802D88E0  3B BD 00 14 */	addi r29, r29, 0x14
/* 802D88E4  3B 9C 00 01 */	addi r28, r28, 1
lbl_802D88E8:
/* 802D88E8  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 802D88EC  80 03 00 08 */	lwz r0, 8(r3)
/* 802D88F0  7C 1C 00 40 */	cmplw r28, r0
/* 802D88F4  41 80 FF CC */	blt lbl_802D88C0
/* 802D88F8  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 802D88FC  4B FF 5C 05 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D8900  38 00 00 00 */	li r0, 0
/* 802D8904  90 1E 00 44 */	stw r0, 0x44(r30)
lbl_802D8908:
/* 802D8908  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 802D890C  28 03 00 00 */	cmplwi r3, 0
/* 802D8910  41 82 00 1C */	beq lbl_802D892C
/* 802D8914  41 82 00 18 */	beq lbl_802D892C
/* 802D8918  38 80 00 01 */	li r4, 1
/* 802D891C  81 83 00 00 */	lwz r12, 0(r3)
/* 802D8920  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D8924  7D 89 03 A6 */	mtctr r12
/* 802D8928  4E 80 04 21 */	bctrl 
lbl_802D892C:
/* 802D892C  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 802D8930  28 03 00 00 */	cmplwi r3, 0
/* 802D8934  41 82 00 14 */	beq lbl_802D8948
/* 802D8938  38 80 00 00 */	li r4, 0
/* 802D893C  4B FF 5B C5 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D8940  38 00 00 00 */	li r0, 0
/* 802D8944  90 1E 00 50 */	stw r0, 0x50(r30)
lbl_802D8948:
/* 802D8948  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802D894C  28 03 00 00 */	cmplwi r3, 0
/* 802D8950  41 82 00 1C */	beq lbl_802D896C
/* 802D8954  41 82 00 18 */	beq lbl_802D896C
/* 802D8958  38 80 00 01 */	li r4, 1
/* 802D895C  81 83 00 00 */	lwz r12, 0(r3)
/* 802D8960  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D8964  7D 89 03 A6 */	mtctr r12
/* 802D8968  4E 80 04 21 */	bctrl 
lbl_802D896C:
/* 802D896C  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 802D8970  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 802D8974  38 9E 00 18 */	addi r4, r30, 0x18
/* 802D8978  48 00 37 E5 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D897C  38 00 00 00 */	li r0, 0
/* 802D8980  98 1E 00 30 */	stb r0, 0x30(r30)
/* 802D8984  7F C3 F3 78 */	mr r3, r30
/* 802D8988  38 80 00 00 */	li r4, 0
/* 802D898C  4B FF D9 A9 */	bl __dt__10JKRArchiveFv
/* 802D8990  7F E0 07 35 */	extsh. r0, r31
/* 802D8994  40 81 00 0C */	ble lbl_802D89A0
/* 802D8998  7F C3 F3 78 */	mr r3, r30
/* 802D899C  4B FF 63 A1 */	bl __dl__FPv
lbl_802D89A0:
/* 802D89A0  7F C3 F3 78 */	mr r3, r30
/* 802D89A4  39 61 00 20 */	addi r11, r1, 0x20
/* 802D89A8  48 08 98 7D */	bl _restgpr_28
/* 802D89AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D89B0  7C 08 03 A6 */	mtlr r0
/* 802D89B4  38 21 00 20 */	addi r1, r1, 0x20
/* 802D89B8  4E 80 00 20 */	blr 
