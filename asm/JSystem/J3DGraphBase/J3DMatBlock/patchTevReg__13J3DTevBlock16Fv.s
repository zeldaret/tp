lbl_8031CAB0:
/* 8031CAB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031CAB4  7C 08 02 A6 */	mflr r0
/* 8031CAB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031CABC  39 61 00 30 */	addi r11, r1, 0x30
/* 8031CAC0  48 04 57 19 */	bl _savegpr_28
/* 8031CAC4  7C 7C 1B 78 */	mr r28, r3
/* 8031CAC8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031CACC  80 64 00 00 */	lwz r3, 0(r4)
/* 8031CAD0  80 1C 01 70 */	lwz r0, 0x170(r28)
/* 8031CAD4  7C 03 02 14 */	add r0, r3, r0
/* 8031CAD8  90 04 00 08 */	stw r0, 8(r4)
/* 8031CADC  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031CAE0  83 C3 00 08 */	lwz r30, 8(r3)
/* 8031CAE4  3B A0 00 00 */	li r29, 0
/* 8031CAE8  3B E0 00 00 */	li r31, 0
lbl_8031CAEC:
/* 8031CAEC  38 1F 00 DA */	addi r0, r31, 0xda
/* 8031CAF0  7C 9C 02 14 */	add r4, r28, r0
/* 8031CAF4  80 64 00 00 */	lwz r3, 0(r4)
/* 8031CAF8  80 04 00 04 */	lwz r0, 4(r4)
/* 8031CAFC  90 61 00 0C */	stw r3, 0xc(r1)
/* 8031CB00  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031CB04  38 7D 00 01 */	addi r3, r29, 1
/* 8031CB08  38 81 00 0C */	addi r4, r1, 0xc
/* 8031CB0C  4B FF 28 F1 */	bl J3DGDSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8031CB10  3B BD 00 01 */	addi r29, r29, 1
/* 8031CB14  28 1D 00 03 */	cmplwi r29, 3
/* 8031CB18  3B FF 00 08 */	addi r31, r31, 8
/* 8031CB1C  41 80 FF D0 */	blt lbl_8031CAEC
/* 8031CB20  3B A0 00 00 */	li r29, 0
/* 8031CB24  3B E0 00 00 */	li r31, 0
lbl_8031CB28:
/* 8031CB28  38 1F 00 FA */	addi r0, r31, 0xfa
/* 8031CB2C  7C 1C 00 2E */	lwzx r0, r28, r0
/* 8031CB30  90 01 00 08 */	stw r0, 8(r1)
/* 8031CB34  7F A3 EB 78 */	mr r3, r29
/* 8031CB38  38 81 00 08 */	addi r4, r1, 8
/* 8031CB3C  4B FF 27 59 */	bl J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
/* 8031CB40  3B BD 00 01 */	addi r29, r29, 1
/* 8031CB44  28 1D 00 04 */	cmplwi r29, 4
/* 8031CB48  3B FF 00 04 */	addi r31, r31, 4
/* 8031CB4C  41 80 FF DC */	blt lbl_8031CB28
/* 8031CB50  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031CB54  80 03 00 08 */	lwz r0, 8(r3)
/* 8031CB58  7F C3 F3 78 */	mr r3, r30
/* 8031CB5C  7C 9E 00 50 */	subf r4, r30, r0
/* 8031CB60  48 01 EA 7D */	bl DCStoreRange
/* 8031CB64  39 61 00 30 */	addi r11, r1, 0x30
/* 8031CB68  48 04 56 BD */	bl _restgpr_28
/* 8031CB6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031CB70  7C 08 03 A6 */	mtlr r0
/* 8031CB74  38 21 00 30 */	addi r1, r1, 0x30
/* 8031CB78  4E 80 00 20 */	blr 
