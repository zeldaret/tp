lbl_8012CB0C:
/* 8012CB0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012CB10  7C 08 02 A6 */	mflr r0
/* 8012CB14  90 01 00 34 */	stw r0, 0x34(r1)
/* 8012CB18  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8012CB1C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8012CB20  39 61 00 20 */	addi r11, r1, 0x20
/* 8012CB24  48 23 56 B5 */	bl _savegpr_28
/* 8012CB28  7C 7C 1B 78 */	mr r28, r3
/* 8012CB2C  83 C3 21 60 */	lwz r30, 0x2160(r3)
/* 8012CB30  88 03 2F D8 */	lbz r0, 0x2fd8(r3)
/* 8012CB34  28 00 00 0C */	cmplwi r0, 0xc
/* 8012CB38  40 80 00 8C */	bge lbl_8012CBC4
/* 8012CB3C  80 1C 21 5C */	lwz r0, 0x215c(r28)
/* 8012CB40  28 00 00 00 */	cmplwi r0, 0
/* 8012CB44  40 82 00 08 */	bne lbl_8012CB4C
/* 8012CB48  48 00 00 7C */	b lbl_8012CBC4
lbl_8012CB4C:
/* 8012CB4C  3B A0 00 00 */	li r29, 0
/* 8012CB50  CB E2 92 B0 */	lfd f31, lit_6025(r2)
/* 8012CB54  3F E0 43 30 */	lis r31, 0x4330
lbl_8012CB58:
/* 8012CB58  88 1E 00 00 */	lbz r0, 0(r30)
/* 8012CB5C  7C 00 07 74 */	extsb r0, r0
/* 8012CB60  2C 00 FF FF */	cmpwi r0, -1
/* 8012CB64  41 82 00 60 */	beq lbl_8012CBC4
/* 8012CB68  80 7C 21 5C */	lwz r3, 0x215c(r28)
/* 8012CB6C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8012CB70  90 01 00 0C */	stw r0, 0xc(r1)
/* 8012CB74  93 E1 00 08 */	stw r31, 8(r1)
/* 8012CB78  C8 01 00 08 */	lfd f0, 8(r1)
/* 8012CB7C  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8012CB80  48 1F B8 AD */	bl checkPass__12J3DFrameCtrlFf
/* 8012CB84  2C 03 00 00 */	cmpwi r3, 0
/* 8012CB88  41 82 00 2C */	beq lbl_8012CBB4
/* 8012CB8C  7F 83 E3 78 */	mr r3, r28
/* 8012CB90  88 1C 2F D8 */	lbz r0, 0x2fd8(r28)
/* 8012CB94  54 00 10 3A */	slwi r0, r0, 2
/* 8012CB98  3C 80 80 39 */	lis r4, label@ha /* 0x80391E48@ha */
/* 8012CB9C  38 84 1E 48 */	addi r4, r4, label@l /* 0x80391E48@l */
/* 8012CBA0  7C 84 00 2E */	lwzx r4, r4, r0
/* 8012CBA4  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8012CBA8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8012CBAC  7D 89 03 A6 */	mtctr r12
/* 8012CBB0  4E 80 04 21 */	bctrl 
lbl_8012CBB4:
/* 8012CBB4  3B BD 00 01 */	addi r29, r29, 1
/* 8012CBB8  2C 1D 00 04 */	cmpwi r29, 4
/* 8012CBBC  3B DE 00 01 */	addi r30, r30, 1
/* 8012CBC0  41 80 FF 98 */	blt lbl_8012CB58
lbl_8012CBC4:
/* 8012CBC4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8012CBC8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8012CBCC  39 61 00 20 */	addi r11, r1, 0x20
/* 8012CBD0  48 23 56 55 */	bl _restgpr_28
/* 8012CBD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012CBD8  7C 08 03 A6 */	mtlr r0
/* 8012CBDC  38 21 00 30 */	addi r1, r1, 0x30
/* 8012CBE0  4E 80 00 20 */	blr 
