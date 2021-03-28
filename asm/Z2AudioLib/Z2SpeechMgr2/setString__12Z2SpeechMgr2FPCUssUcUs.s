lbl_802CBD88:
/* 802CBD88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CBD8C  7C 08 02 A6 */	mflr r0
/* 802CBD90  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CBD94  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 802CBD98  28 00 00 71 */	cmplwi r0, 0x71
/* 802CBD9C  41 81 00 AC */	bgt lbl_802CBE48
/* 802CBDA0  3C C0 80 3D */	lis r6, lit_3729@ha
/* 802CBDA4  38 C6 BD 08 */	addi r6, r6, lit_3729@l
/* 802CBDA8  54 00 10 3A */	slwi r0, r0, 2
/* 802CBDAC  7C 06 00 2E */	lwzx r0, r6, r0
/* 802CBDB0  7C 09 03 A6 */	mtctr r0
/* 802CBDB4  4E 80 04 20 */	bctr 
/* 802CBDB8  38 00 00 01 */	li r0, 1
/* 802CBDBC  98 03 03 FE */	stb r0, 0x3fe(r3)
/* 802CBDC0  48 00 00 90 */	b lbl_802CBE50
/* 802CBDC4  38 00 00 02 */	li r0, 2
/* 802CBDC8  98 03 03 FE */	stb r0, 0x3fe(r3)
/* 802CBDCC  48 00 00 84 */	b lbl_802CBE50
/* 802CBDD0  38 00 00 0C */	li r0, 0xc
/* 802CBDD4  98 03 03 FE */	stb r0, 0x3fe(r3)
/* 802CBDD8  48 00 00 78 */	b lbl_802CBE50
/* 802CBDDC  38 00 00 0D */	li r0, 0xd
/* 802CBDE0  98 03 03 FE */	stb r0, 0x3fe(r3)
/* 802CBDE4  48 00 00 6C */	b lbl_802CBE50
/* 802CBDE8  38 00 00 0E */	li r0, 0xe
/* 802CBDEC  98 03 03 FE */	stb r0, 0x3fe(r3)
/* 802CBDF0  48 00 00 60 */	b lbl_802CBE50
/* 802CBDF4  38 00 00 0F */	li r0, 0xf
/* 802CBDF8  98 03 03 FE */	stb r0, 0x3fe(r3)
/* 802CBDFC  48 00 00 54 */	b lbl_802CBE50
/* 802CBE00  38 00 00 10 */	li r0, 0x10
/* 802CBE04  98 03 03 FE */	stb r0, 0x3fe(r3)
/* 802CBE08  48 00 00 48 */	b lbl_802CBE50
/* 802CBE0C  38 00 00 11 */	li r0, 0x11
/* 802CBE10  98 03 03 FE */	stb r0, 0x3fe(r3)
/* 802CBE14  48 00 00 3C */	b lbl_802CBE50
/* 802CBE18  38 00 00 12 */	li r0, 0x12
/* 802CBE1C  98 03 03 FE */	stb r0, 0x3fe(r3)
/* 802CBE20  48 00 00 30 */	b lbl_802CBE50
/* 802CBE24  38 00 00 1E */	li r0, 0x1e
/* 802CBE28  98 03 03 FE */	stb r0, 0x3fe(r3)
/* 802CBE2C  48 00 00 24 */	b lbl_802CBE50
/* 802CBE30  38 00 00 1F */	li r0, 0x1f
/* 802CBE34  98 03 03 FE */	stb r0, 0x3fe(r3)
/* 802CBE38  48 00 00 18 */	b lbl_802CBE50
/* 802CBE3C  38 00 00 63 */	li r0, 0x63
/* 802CBE40  98 03 03 FE */	stb r0, 0x3fe(r3)
/* 802CBE44  48 00 01 0C */	b lbl_802CBF50
lbl_802CBE48:
/* 802CBE48  38 00 00 0B */	li r0, 0xb
/* 802CBE4C  98 03 03 FE */	stb r0, 0x3fe(r3)
lbl_802CBE50:
/* 802CBE50  88 C3 03 FE */	lbz r6, 0x3fe(r3)
/* 802CBE54  28 06 00 01 */	cmplwi r6, 1
/* 802CBE58  41 82 00 0C */	beq lbl_802CBE64
/* 802CBE5C  28 06 00 02 */	cmplwi r6, 2
/* 802CBE60  40 82 00 48 */	bne lbl_802CBEA8
lbl_802CBE64:
/* 802CBE64  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 802CBE68  40 82 00 10 */	bne lbl_802CBE78
/* 802CBE6C  38 00 00 00 */	li r0, 0
/* 802CBE70  B0 03 03 FC */	sth r0, 0x3fc(r3)
/* 802CBE74  48 00 00 38 */	b lbl_802CBEAC
lbl_802CBE78:
/* 802CBE78  28 00 00 11 */	cmplwi r0, 0x11
/* 802CBE7C  40 81 00 20 */	ble lbl_802CBE9C
/* 802CBE80  28 06 00 15 */	cmplwi r6, 0x15
/* 802CBE84  41 82 00 0C */	beq lbl_802CBE90
/* 802CBE88  28 06 00 14 */	cmplwi r6, 0x14
/* 802CBE8C  40 82 00 20 */	bne lbl_802CBEAC
lbl_802CBE90:
/* 802CBE90  38 00 00 00 */	li r0, 0
/* 802CBE94  B0 03 03 FC */	sth r0, 0x3fc(r3)
/* 802CBE98  48 00 00 14 */	b lbl_802CBEAC
lbl_802CBE9C:
/* 802CBE9C  38 07 FF FF */	addi r0, r7, -1
/* 802CBEA0  B0 03 03 FC */	sth r0, 0x3fc(r3)
/* 802CBEA4  48 00 00 08 */	b lbl_802CBEAC
lbl_802CBEA8:
/* 802CBEA8  B0 E3 03 FC */	sth r7, 0x3fc(r3)
lbl_802CBEAC:
/* 802CBEAC  38 C0 00 00 */	li r6, 0
/* 802CBEB0  7C C7 33 78 */	mr r7, r6
/* 802CBEB4  38 00 01 F4 */	li r0, 0x1f4
/* 802CBEB8  7C 09 03 A6 */	mtctr r0
lbl_802CBEBC:
/* 802CBEBC  38 06 00 10 */	addi r0, r6, 0x10
/* 802CBEC0  7C E3 03 2E */	sthx r7, r3, r0
/* 802CBEC4  38 C6 00 02 */	addi r6, r6, 2
/* 802CBEC8  42 00 FF F4 */	bdnz lbl_802CBEBC
/* 802CBECC  7C A0 07 34 */	extsh r0, r5
/* 802CBED0  2C 00 01 F4 */	cmpwi r0, 0x1f4
/* 802CBED4  40 81 00 10 */	ble lbl_802CBEE4
/* 802CBED8  38 00 01 F4 */	li r0, 0x1f4
/* 802CBEDC  B0 03 03 F8 */	sth r0, 0x3f8(r3)
/* 802CBEE0  48 00 00 08 */	b lbl_802CBEE8
lbl_802CBEE4:
/* 802CBEE4  B0 A3 03 F8 */	sth r5, 0x3f8(r3)
lbl_802CBEE8:
/* 802CBEE8  38 E0 00 00 */	li r7, 0
/* 802CBEEC  38 A0 00 00 */	li r5, 0
/* 802CBEF0  48 00 00 18 */	b lbl_802CBF08
lbl_802CBEF4:
/* 802CBEF4  7C C4 2A 2E */	lhzx r6, r4, r5
/* 802CBEF8  38 05 00 10 */	addi r0, r5, 0x10
/* 802CBEFC  7C C3 03 2E */	sthx r6, r3, r0
/* 802CBF00  38 E7 00 01 */	addi r7, r7, 1
/* 802CBF04  38 A5 00 02 */	addi r5, r5, 2
lbl_802CBF08:
/* 802CBF08  A8 03 03 F8 */	lha r0, 0x3f8(r3)
/* 802CBF0C  7C 07 00 00 */	cmpw r7, r0
/* 802CBF10  41 80 FF E4 */	blt lbl_802CBEF4
/* 802CBF14  38 00 00 00 */	li r0, 0
/* 802CBF18  B0 03 03 FA */	sth r0, 0x3fa(r3)
/* 802CBF1C  98 03 03 FF */	stb r0, 0x3ff(r3)
/* 802CBF20  98 03 04 00 */	stb r0, 0x400(r3)
/* 802CBF24  98 03 04 01 */	stb r0, 0x401(r3)
/* 802CBF28  38 A0 00 00 */	li r5, 0
/* 802CBF2C  38 80 FF FF */	li r4, -1
/* 802CBF30  38 00 00 40 */	li r0, 0x40
/* 802CBF34  7C 09 03 A6 */	mtctr r0
lbl_802CBF38:
/* 802CBF38  38 05 04 02 */	addi r0, r5, 0x402
/* 802CBF3C  7C 83 01 AE */	stbx r4, r3, r0
/* 802CBF40  38 A5 00 01 */	addi r5, r5, 1
/* 802CBF44  42 00 FF F4 */	bdnz lbl_802CBF38
/* 802CBF48  38 80 00 00 */	li r4, 0
/* 802CBF4C  48 00 05 75 */	bl selectUnit__12Z2SpeechMgr2Fb
lbl_802CBF50:
/* 802CBF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CBF54  7C 08 03 A6 */	mtlr r0
/* 802CBF58  38 21 00 10 */	addi r1, r1, 0x10
/* 802CBF5C  4E 80 00 20 */	blr 
