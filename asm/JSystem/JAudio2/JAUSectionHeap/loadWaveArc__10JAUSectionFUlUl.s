lbl_802A5948:
/* 802A5948  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A594C  7C 08 02 A6 */	mflr r0
/* 802A5950  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A5954  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5958  48 0B C8 81 */	bl _savegpr_28
/* 802A595C  7C 7E 1B 78 */	mr r30, r3
/* 802A5960  7C 9D 23 78 */	mr r29, r4
/* 802A5964  7C BC 2B 78 */	mr r28, r5
/* 802A5968  28 1D 00 FF */	cmplwi r29, 0xff
/* 802A596C  41 80 00 28 */	blt lbl_802A5994
/* 802A5970  3C 60 80 3D */	lis r3, __files@ha
/* 802A5974  38 63 29 B0 */	addi r3, r3, __files@l
/* 802A5978  38 63 00 A0 */	addi r3, r3, 0xa0
/* 802A597C  3C 80 80 3A */	lis r4, JAUSectionHeap__stringBase0@ha
/* 802A5980  38 84 B9 50 */	addi r4, r4, JAUSectionHeap__stringBase0@l
/* 802A5984  38 84 00 24 */	addi r4, r4, 0x24
/* 802A5988  4C C6 31 82 */	crclr 6
/* 802A598C  48 0C 0E 11 */	bl fprintf
/* 802A5990  48 0B D1 2D */	bl abort
lbl_802A5994:
/* 802A5994  38 7E 00 6C */	addi r3, r30, 0x6c
/* 802A5998  7F A4 EB 78 */	mr r4, r29
/* 802A599C  48 00 0C 99 */	bl func_802A6634
/* 802A59A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A59A4  41 82 00 90 */	beq lbl_802A5A34
/* 802A59A8  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 802A59AC  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 802A59B0  7C 1D 00 40 */	cmplw r29, r0
/* 802A59B4  41 80 00 0C */	blt lbl_802A59C0
/* 802A59B8  3B C0 00 00 */	li r30, 0
/* 802A59BC  48 00 00 10 */	b lbl_802A59CC
lbl_802A59C0:
/* 802A59C0  80 63 00 F4 */	lwz r3, 0xf4(r3)
/* 802A59C4  57 A0 10 3A */	slwi r0, r29, 2
/* 802A59C8  7F C3 00 2E */	lwzx r30, r3, r0
lbl_802A59CC:
/* 802A59CC  28 1E 00 00 */	cmplwi r30, 0
/* 802A59D0  41 82 00 64 */	beq lbl_802A5A34
/* 802A59D4  3B A0 00 00 */	li r29, 0
/* 802A59D8  3B E0 00 01 */	li r31, 1
/* 802A59DC  48 00 00 34 */	b lbl_802A5A10
lbl_802A59E0:
/* 802A59E0  7F E0 E8 30 */	slw r0, r31, r29
/* 802A59E4  7F 80 00 39 */	and. r0, r28, r0
/* 802A59E8  41 82 00 24 */	beq lbl_802A5A0C
/* 802A59EC  7F C3 F3 78 */	mr r3, r30
/* 802A59F0  7F A4 EB 78 */	mr r4, r29
/* 802A59F4  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A59F8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A59FC  7D 89 03 A6 */	mtctr r12
/* 802A5A00  4E 80 04 21 */	bctrl 
/* 802A5A04  38 80 00 00 */	li r4, 0
/* 802A5A08  4B FF 4A B9 */	bl load__10JASWaveArcFP7JASHeap
lbl_802A5A0C:
/* 802A5A0C  3B BD 00 01 */	addi r29, r29, 1
lbl_802A5A10:
/* 802A5A10  7F C3 F3 78 */	mr r3, r30
/* 802A5A14  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A5A18  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802A5A1C  7D 89 03 A6 */	mtctr r12
/* 802A5A20  4E 80 04 21 */	bctrl 
/* 802A5A24  7C 1D 18 40 */	cmplw r29, r3
/* 802A5A28  41 80 FF B8 */	blt lbl_802A59E0
/* 802A5A2C  38 60 00 01 */	li r3, 1
/* 802A5A30  48 00 00 08 */	b lbl_802A5A38
lbl_802A5A34:
/* 802A5A34  38 60 00 00 */	li r3, 0
lbl_802A5A38:
/* 802A5A38  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5A3C  48 0B C7 E9 */	bl _restgpr_28
/* 802A5A40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A5A44  7C 08 03 A6 */	mtlr r0
/* 802A5A48  38 21 00 20 */	addi r1, r1, 0x20
/* 802A5A4C  4E 80 00 20 */	blr 
