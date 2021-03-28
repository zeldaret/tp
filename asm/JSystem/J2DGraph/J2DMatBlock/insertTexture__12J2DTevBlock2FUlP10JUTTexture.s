lbl_802ECDE8:
/* 802ECDE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802ECDEC  7C 08 02 A6 */	mflr r0
/* 802ECDF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802ECDF4  39 61 00 20 */	addi r11, r1, 0x20
/* 802ECDF8  48 07 53 E5 */	bl _savegpr_29
/* 802ECDFC  7C 7D 1B 78 */	mr r29, r3
/* 802ECE00  7C 9E 23 78 */	mr r30, r4
/* 802ECE04  7C BF 2B 78 */	mr r31, r5
/* 802ECE08  28 1E 00 02 */	cmplwi r30, 2
/* 802ECE0C  40 80 00 0C */	bge lbl_802ECE18
/* 802ECE10  28 1F 00 00 */	cmplwi r31, 0
/* 802ECE14  40 82 00 0C */	bne lbl_802ECE20
lbl_802ECE18:
/* 802ECE18  38 60 00 00 */	li r3, 0
/* 802ECE1C  48 00 01 14 */	b lbl_802ECF30
lbl_802ECE20:
/* 802ECE20  38 80 00 00 */	li r4, 0
/* 802ECE24  48 00 00 28 */	b lbl_802ECE4C
lbl_802ECE28:
/* 802ECE28  54 83 15 BA */	rlwinm r3, r4, 2, 0x16, 0x1d
/* 802ECE2C  38 03 00 64 */	addi r0, r3, 0x64
/* 802ECE30  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802ECE34  28 03 00 00 */	cmplwi r3, 0
/* 802ECE38  41 82 00 20 */	beq lbl_802ECE58
/* 802ECE3C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802ECE40  28 00 00 00 */	cmplwi r0, 0
/* 802ECE44  41 82 00 14 */	beq lbl_802ECE58
/* 802ECE48  38 84 00 01 */	addi r4, r4, 1
lbl_802ECE4C:
/* 802ECE4C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802ECE50  28 00 00 02 */	cmplwi r0, 2
/* 802ECE54  41 80 FF D4 */	blt lbl_802ECE28
lbl_802ECE58:
/* 802ECE58  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802ECE5C  7C 00 F0 40 */	cmplw r0, r30
/* 802ECE60  40 80 00 0C */	bge lbl_802ECE6C
/* 802ECE64  38 60 00 00 */	li r3, 0
/* 802ECE68  48 00 00 C8 */	b lbl_802ECF30
lbl_802ECE6C:
/* 802ECE6C  28 00 00 02 */	cmplwi r0, 2
/* 802ECE70  40 82 00 0C */	bne lbl_802ECE7C
/* 802ECE74  38 60 00 00 */	li r3, 0
/* 802ECE78  48 00 00 B8 */	b lbl_802ECF30
lbl_802ECE7C:
/* 802ECE7C  80 7D 00 68 */	lwz r3, 0x68(r29)
/* 802ECE80  28 03 00 00 */	cmplwi r3, 0
/* 802ECE84  41 82 00 30 */	beq lbl_802ECEB4
/* 802ECE88  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802ECE8C  28 00 00 00 */	cmplwi r0, 0
/* 802ECE90  40 82 00 24 */	bne lbl_802ECEB4
/* 802ECE94  88 1D 00 78 */	lbz r0, 0x78(r29)
/* 802ECE98  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802ECE9C  41 82 00 0C */	beq lbl_802ECEA8
/* 802ECEA0  38 80 00 01 */	li r4, 1
/* 802ECEA4  4B FF 13 91 */	bl __dt__10JUTTextureFv
lbl_802ECEA8:
/* 802ECEA8  88 1D 00 78 */	lbz r0, 0x78(r29)
/* 802ECEAC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 802ECEB0  98 1D 00 78 */	stb r0, 0x78(r29)
lbl_802ECEB4:
/* 802ECEB4  28 1E 00 00 */	cmplwi r30, 0
/* 802ECEB8  40 82 00 1C */	bne lbl_802ECED4
/* 802ECEBC  80 1D 00 64 */	lwz r0, 0x64(r29)
/* 802ECEC0  90 1D 00 68 */	stw r0, 0x68(r29)
/* 802ECEC4  80 1D 00 6C */	lwz r0, 0x6c(r29)
/* 802ECEC8  90 1D 00 70 */	stw r0, 0x70(r29)
/* 802ECECC  A0 1D 00 04 */	lhz r0, 4(r29)
/* 802ECED0  B0 1D 00 06 */	sth r0, 6(r29)
lbl_802ECED4:
/* 802ECED4  57 C0 10 3A */	slwi r0, r30, 2
/* 802ECED8  7C 7D 02 14 */	add r3, r29, r0
/* 802ECEDC  93 E3 00 64 */	stw r31, 0x64(r3)
/* 802ECEE0  38 00 00 00 */	li r0, 0
/* 802ECEE4  90 03 00 6C */	stw r0, 0x6c(r3)
/* 802ECEE8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802ECEEC  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802ECEF0  57 C0 08 3C */	slwi r0, r30, 1
/* 802ECEF4  7C 7D 02 14 */	add r3, r29, r0
/* 802ECEF8  B0 83 00 04 */	sth r4, 4(r3)
/* 802ECEFC  7F A3 EB 78 */	mr r3, r29
/* 802ECF00  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 802ECF04  38 A0 00 01 */	li r5, 1
/* 802ECF08  81 9D 00 00 */	lwz r12, 0(r29)
/* 802ECF0C  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802ECF10  7D 89 03 A6 */	mtctr r12
/* 802ECF14  4E 80 04 21 */	bctrl 
/* 802ECF18  88 7D 00 78 */	lbz r3, 0x78(r29)
/* 802ECF1C  38 00 00 01 */	li r0, 1
/* 802ECF20  7C 00 F0 30 */	slw r0, r0, r30
/* 802ECF24  7C 60 00 78 */	andc r0, r3, r0
/* 802ECF28  98 1D 00 78 */	stb r0, 0x78(r29)
/* 802ECF2C  38 60 00 01 */	li r3, 1
lbl_802ECF30:
/* 802ECF30  39 61 00 20 */	addi r11, r1, 0x20
/* 802ECF34  48 07 52 F5 */	bl _restgpr_29
/* 802ECF38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ECF3C  7C 08 03 A6 */	mtlr r0
/* 802ECF40  38 21 00 20 */	addi r1, r1, 0x20
/* 802ECF44  4E 80 00 20 */	blr 
