lbl_80070974:
/* 80070974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80070978  7C 08 02 A6 */	mflr r0
/* 8007097C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80070980  39 61 00 20 */	addi r11, r1, 0x20
/* 80070984  48 2F 18 55 */	bl _savegpr_28
/* 80070988  7C 7C 1B 78 */	mr r28, r3
/* 8007098C  38 80 00 00 */	li r4, 0
/* 80070990  4B FF FE B5 */	bl GetLockonList__12dAttention_cFl
/* 80070994  7C 7D 1B 79 */	or. r29, r3, r3
/* 80070998  41 82 00 54 */	beq lbl_800709EC
/* 8007099C  48 00 2E C9 */	bl getActor__10dAttList_cFv
/* 800709A0  28 03 00 00 */	cmplwi r3, 0
/* 800709A4  41 82 00 48 */	beq lbl_800709EC
/* 800709A8  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 800709AC  28 00 00 01 */	cmplwi r0, 1
/* 800709B0  40 82 00 3C */	bne lbl_800709EC
/* 800709B4  7F 83 E3 78 */	mr r3, r28
/* 800709B8  48 00 2E 2D */	bl LockonTruth__12dAttention_cFv
/* 800709BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800709C0  41 82 00 2C */	beq lbl_800709EC
/* 800709C4  7F A3 EB 78 */	mr r3, r29
/* 800709C8  48 00 2E 9D */	bl getActor__10dAttList_cFv
/* 800709CC  A0 03 00 FA */	lhz r0, 0xfa(r3)
/* 800709D0  54 00 06 B4 */	rlwinm r0, r0, 0, 0x1a, 0x1a
/* 800709D4  2C 00 00 20 */	cmpwi r0, 0x20
/* 800709D8  40 82 00 0C */	bne lbl_800709E4
/* 800709DC  7F A3 EB 78 */	mr r3, r29
/* 800709E0  48 00 00 78 */	b lbl_80070A58
lbl_800709E4:
/* 800709E4  38 60 00 00 */	li r3, 0
/* 800709E8  48 00 00 70 */	b lbl_80070A58
lbl_800709EC:
/* 800709EC  80 1C 04 30 */	lwz r0, 0x430(r28)
/* 800709F0  2C 00 00 00 */	cmpwi r0, 0
/* 800709F4  40 82 00 0C */	bne lbl_80070A00
/* 800709F8  38 60 00 00 */	li r3, 0
/* 800709FC  48 00 00 5C */	b lbl_80070A58
lbl_80070A00:
/* 80070A00  3B A0 00 00 */	li r29, 0
/* 80070A04  3B E0 00 00 */	li r31, 0
/* 80070A08  48 00 00 40 */	b lbl_80070A48
lbl_80070A0C:
/* 80070A0C  7C 7C FA 14 */	add r3, r28, r31
/* 80070A10  80 03 03 EC */	lwz r0, 0x3ec(r3)
/* 80070A14  28 00 00 03 */	cmplwi r0, 3
/* 80070A18  40 82 00 28 */	bne lbl_80070A40
/* 80070A1C  3B C3 03 E0 */	addi r30, r3, 0x3e0
/* 80070A20  7F C3 F3 78 */	mr r3, r30
/* 80070A24  48 00 2E 41 */	bl getActor__10dAttList_cFv
/* 80070A28  A0 03 00 FA */	lhz r0, 0xfa(r3)
/* 80070A2C  54 00 06 B4 */	rlwinm r0, r0, 0, 0x1a, 0x1a
/* 80070A30  2C 00 00 20 */	cmpwi r0, 0x20
/* 80070A34  40 82 00 0C */	bne lbl_80070A40
/* 80070A38  7F C3 F3 78 */	mr r3, r30
/* 80070A3C  48 00 00 1C */	b lbl_80070A58
lbl_80070A40:
/* 80070A40  3B BD 00 01 */	addi r29, r29, 1
/* 80070A44  3B FF 00 14 */	addi r31, r31, 0x14
lbl_80070A48:
/* 80070A48  80 1C 04 30 */	lwz r0, 0x430(r28)
/* 80070A4C  7C 1D 00 00 */	cmpw r29, r0
/* 80070A50  41 80 FF BC */	blt lbl_80070A0C
/* 80070A54  38 60 00 00 */	li r3, 0
lbl_80070A58:
/* 80070A58  39 61 00 20 */	addi r11, r1, 0x20
/* 80070A5C  48 2F 17 C9 */	bl _restgpr_28
/* 80070A60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80070A64  7C 08 03 A6 */	mtlr r0
/* 80070A68  38 21 00 20 */	addi r1, r1, 0x20
/* 80070A6C  4E 80 00 20 */	blr 
