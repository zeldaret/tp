lbl_802EAB0C:
/* 802EAB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EAB10  7C 08 02 A6 */	mflr r0
/* 802EAB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EAB18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EAB1C  93 C1 00 08 */	stw r30, 8(r1)
/* 802EAB20  7C 7E 1B 78 */	mr r30, r3
/* 802EAB24  7C 9F 23 79 */	or. r31, r4, r4
/* 802EAB28  40 82 00 10 */	bne lbl_802EAB38
/* 802EAB2C  80 1E 00 84 */	lwz r0, 0x84(r30)
/* 802EAB30  28 00 00 00 */	cmplwi r0, 0
/* 802EAB34  41 82 01 2C */	beq lbl_802EAC60
lbl_802EAB38:
/* 802EAB38  7F C3 F3 78 */	mr r3, r30
/* 802EAB3C  4B FF FD 11 */	bl makeAnmPointer__11J2DMaterialFv
/* 802EAB40  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 802EAB44  93 E3 00 0C */	stw r31, 0xc(r3)
/* 802EAB48  38 60 00 00 */	li r3, 0
/* 802EAB4C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 802EAB50  38 A4 FF FF */	addi r5, r4, 0xFFFF /* 0x0000FFFF@l */
/* 802EAB54  38 00 00 04 */	li r0, 4
/* 802EAB58  7C 09 03 A6 */	mtctr r0
lbl_802EAB5C:
/* 802EAB5C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 802EAB60  38 03 00 32 */	addi r0, r3, 0x32
/* 802EAB64  7C A4 03 2E */	sthx r5, r4, r0
/* 802EAB68  38 63 00 02 */	addi r3, r3, 2
/* 802EAB6C  42 00 FF F0 */	bdnz lbl_802EAB5C
/* 802EAB70  28 1F 00 00 */	cmplwi r31, 0
/* 802EAB74  41 82 00 60 */	beq lbl_802EABD4
/* 802EAB78  A0 7F 00 10 */	lhz r3, 0x10(r31)
/* 802EAB7C  A0 BE 00 0C */	lhz r5, 0xc(r30)
/* 802EAB80  39 00 00 00 */	li r8, 0
/* 802EAB84  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802EAB88  48 00 00 40 */	b lbl_802EABC8
lbl_802EAB8C:
/* 802EAB8C  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 802EAB90  55 07 04 3E */	clrlwi r7, r8, 0x10
/* 802EAB94  55 03 0B FC */	rlwinm r3, r8, 1, 0xf, 0x1e
/* 802EAB98  7C 64 1A 2E */	lhzx r3, r4, r3
/* 802EAB9C  7C 05 18 40 */	cmplw r5, r3
/* 802EABA0  40 82 00 24 */	bne lbl_802EABC4
/* 802EABA4  80 DF 00 4C */	lwz r6, 0x4c(r31)
/* 802EABA8  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 802EABAC  1C 67 00 1C */	mulli r3, r7, 0x1c
/* 802EABB0  38 63 00 18 */	addi r3, r3, 0x18
/* 802EABB4  7C 66 18 AE */	lbzx r3, r6, r3
/* 802EABB8  54 63 08 3C */	slwi r3, r3, 1
/* 802EABBC  38 63 00 32 */	addi r3, r3, 0x32
/* 802EABC0  7D 04 1B 2E */	sthx r8, r4, r3
lbl_802EABC4:
/* 802EABC4  39 08 00 01 */	addi r8, r8, 1
lbl_802EABC8:
/* 802EABC8  55 03 04 3E */	clrlwi r3, r8, 0x10
/* 802EABCC  7C 03 00 40 */	cmplw r3, r0
/* 802EABD0  41 80 FF BC */	blt lbl_802EAB8C
lbl_802EABD4:
/* 802EABD4  38 60 00 00 */	li r3, 0
/* 802EABD8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 802EABDC  38 A4 FF FF */	addi r5, r4, 0xFFFF /* 0x0000FFFF@l */
/* 802EABE0  38 00 00 04 */	li r0, 4
/* 802EABE4  7C 09 03 A6 */	mtctr r0
lbl_802EABE8:
/* 802EABE8  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 802EABEC  38 03 00 3A */	addi r0, r3, 0x3a
/* 802EABF0  7C A4 03 2E */	sthx r5, r4, r0
/* 802EABF4  38 63 00 02 */	addi r3, r3, 2
/* 802EABF8  42 00 FF F0 */	bdnz lbl_802EABE8
/* 802EABFC  28 1F 00 00 */	cmplwi r31, 0
/* 802EAC00  41 82 00 60 */	beq lbl_802EAC60
/* 802EAC04  A0 7F 00 12 */	lhz r3, 0x12(r31)
/* 802EAC08  A0 BE 00 0C */	lhz r5, 0xc(r30)
/* 802EAC0C  39 00 00 00 */	li r8, 0
/* 802EAC10  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802EAC14  48 00 00 40 */	b lbl_802EAC54
lbl_802EAC18:
/* 802EAC18  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 802EAC1C  55 07 04 3E */	clrlwi r7, r8, 0x10
/* 802EAC20  55 03 0B FC */	rlwinm r3, r8, 1, 0xf, 0x1e
/* 802EAC24  7C 64 1A 2E */	lhzx r3, r4, r3
/* 802EAC28  7C 05 18 40 */	cmplw r5, r3
/* 802EAC2C  40 82 00 24 */	bne lbl_802EAC50
/* 802EAC30  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 802EAC34  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 802EAC38  1C 67 00 1C */	mulli r3, r7, 0x1c
/* 802EAC3C  38 63 00 18 */	addi r3, r3, 0x18
/* 802EAC40  7C 66 18 AE */	lbzx r3, r6, r3
/* 802EAC44  54 63 08 3C */	slwi r3, r3, 1
/* 802EAC48  38 63 00 3A */	addi r3, r3, 0x3a
/* 802EAC4C  7D 04 1B 2E */	sthx r8, r4, r3
lbl_802EAC50:
/* 802EAC50  39 08 00 01 */	addi r8, r8, 1
lbl_802EAC54:
/* 802EAC54  55 03 04 3E */	clrlwi r3, r8, 0x10
/* 802EAC58  7C 03 00 40 */	cmplw r3, r0
/* 802EAC5C  41 80 FF BC */	blt lbl_802EAC18
lbl_802EAC60:
/* 802EAC60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EAC64  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EAC68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EAC6C  7C 08 03 A6 */	mtlr r0
/* 802EAC70  38 21 00 10 */	addi r1, r1, 0x10
/* 802EAC74  4E 80 00 20 */	blr 
