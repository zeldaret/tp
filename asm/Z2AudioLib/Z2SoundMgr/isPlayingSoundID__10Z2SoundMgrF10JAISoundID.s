lbl_802AAAC4:
/* 802AAAC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AAAC8  7C 08 02 A6 */	mflr r0
/* 802AAACC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AAAD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AAAD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AAAD8  7C 7E 1B 78 */	mr r30, r3
/* 802AAADC  7C 9F 23 78 */	mr r31, r4
/* 802AAAE0  80 64 00 00 */	lwz r3, 0(r4)
/* 802AAAE4  3C 03 00 01 */	addis r0, r3, 1
/* 802AAAE8  28 00 FF FF */	cmplwi r0, 0xffff
/* 802AAAEC  40 82 00 0C */	bne lbl_802AAAF8
/* 802AAAF0  38 60 00 00 */	li r3, 0
/* 802AAAF4  48 00 00 88 */	b lbl_802AAB7C
lbl_802AAAF8:
/* 802AAAF8  90 61 00 10 */	stw r3, 0x10(r1)
/* 802AAAFC  80 6D 85 CC */	lwz r3, __OSReport_disable-0x4C(r13)
/* 802AAB00  38 81 00 10 */	addi r4, r1, 0x10
/* 802AAB04  81 83 00 00 */	lwz r12, 0(r3)
/* 802AAB08  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AAB0C  7D 89 03 A6 */	mtctr r12
/* 802AAB10  4E 80 04 21 */	bctrl 
/* 802AAB14  2C 03 00 00 */	cmpwi r3, 0
/* 802AAB18  40 82 00 60 */	bne lbl_802AAB78
/* 802AAB1C  80 1F 00 00 */	lwz r0, 0(r31)
/* 802AAB20  90 01 00 0C */	stw r0, 0xc(r1)
/* 802AAB24  80 6D 85 CC */	lwz r3, __OSReport_disable-0x4C(r13)
/* 802AAB28  38 81 00 0C */	addi r4, r1, 0xc
/* 802AAB2C  81 83 00 00 */	lwz r12, 0(r3)
/* 802AAB30  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802AAB34  7D 89 03 A6 */	mtctr r12
/* 802AAB38  4E 80 04 21 */	bctrl 
/* 802AAB3C  1C 03 00 6C */	mulli r0, r3, 0x6c
/* 802AAB40  7C 7E 02 14 */	add r3, r30, r0
/* 802AAB44  80 83 00 70 */	lwz r4, 0x70(r3)
/* 802AAB48  80 1F 00 00 */	lwz r0, 0(r31)
/* 802AAB4C  48 00 00 24 */	b lbl_802AAB70
lbl_802AAB50:
/* 802AAB50  80 64 00 00 */	lwz r3, 0(r4)
/* 802AAB54  80 63 00 28 */	lwz r3, 0x28(r3)
/* 802AAB58  90 61 00 08 */	stw r3, 8(r1)
/* 802AAB5C  7C 03 00 40 */	cmplw r3, r0
/* 802AAB60  40 82 00 0C */	bne lbl_802AAB6C
/* 802AAB64  38 60 00 01 */	li r3, 1
/* 802AAB68  48 00 00 14 */	b lbl_802AAB7C
lbl_802AAB6C:
/* 802AAB6C  80 84 00 0C */	lwz r4, 0xc(r4)
lbl_802AAB70:
/* 802AAB70  28 04 00 00 */	cmplwi r4, 0
/* 802AAB74  40 82 FF DC */	bne lbl_802AAB50
lbl_802AAB78:
/* 802AAB78  38 60 00 00 */	li r3, 0
lbl_802AAB7C:
/* 802AAB7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AAB80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AAB84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AAB88  7C 08 03 A6 */	mtlr r0
/* 802AAB8C  38 21 00 20 */	addi r1, r1, 0x20
/* 802AAB90  4E 80 00 20 */	blr 
