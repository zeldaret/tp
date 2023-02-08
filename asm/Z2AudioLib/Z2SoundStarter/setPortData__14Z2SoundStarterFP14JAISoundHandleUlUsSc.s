lbl_802AAEDC:
/* 802AAEDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AAEE0  7C 08 02 A6 */	mflr r0
/* 802AAEE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AAEE8  39 61 00 20 */	addi r11, r1, 0x20
/* 802AAEEC  48 0B 72 F1 */	bl _savegpr_29
/* 802AAEF0  7C BD 2B 78 */	mr r29, r5
/* 802AAEF4  7C DE 33 78 */	mr r30, r6
/* 802AAEF8  7C FF 3B 78 */	mr r31, r7
/* 802AAEFC  28 04 00 00 */	cmplwi r4, 0
/* 802AAF00  41 82 00 5C */	beq lbl_802AAF5C
/* 802AAF04  80 64 00 00 */	lwz r3, 0(r4)
/* 802AAF08  28 03 00 00 */	cmplwi r3, 0
/* 802AAF0C  41 82 00 50 */	beq lbl_802AAF5C
/* 802AAF10  81 83 00 00 */	lwz r12, 0(r3)
/* 802AAF14  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802AAF18  7D 89 03 A6 */	mtctr r12
/* 802AAF1C  4E 80 04 21 */	bctrl 
/* 802AAF20  7C 65 1B 78 */	mr r5, r3
/* 802AAF24  7F E4 07 74 */	extsb r4, r31
/* 802AAF28  2C 04 FF FF */	cmpwi r4, -1
/* 802AAF2C  41 82 00 20 */	beq lbl_802AAF4C
/* 802AAF30  54 80 10 3A */	slwi r0, r4, 2
/* 802AAF34  7F E5 02 14 */	add r31, r5, r0
/* 802AAF38  80 1F 01 30 */	lwz r0, 0x130(r31)
/* 802AAF3C  28 00 00 00 */	cmplwi r0, 0
/* 802AAF40  40 82 00 08 */	bne lbl_802AAF48
/* 802AAF44  4B FE 6C ED */	bl openChild__8JASTrackFUl
lbl_802AAF48:
/* 802AAF48  80 BF 01 30 */	lwz r5, 0x130(r31)
lbl_802AAF4C:
/* 802AAF4C  7C A3 2B 78 */	mr r3, r5
/* 802AAF50  7F A4 EB 78 */	mr r4, r29
/* 802AAF54  7F C5 F3 78 */	mr r5, r30
/* 802AAF58  4B FE 79 C1 */	bl writePort__8JASTrackFUlUs
lbl_802AAF5C:
/* 802AAF5C  39 61 00 20 */	addi r11, r1, 0x20
/* 802AAF60  48 0B 72 C9 */	bl _restgpr_29
/* 802AAF64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AAF68  7C 08 03 A6 */	mtlr r0
/* 802AAF6C  38 21 00 20 */	addi r1, r1, 0x20
/* 802AAF70  4E 80 00 20 */	blr 
