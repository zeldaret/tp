lbl_802EFB48:
/* 802EFB48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EFB4C  7C 08 02 A6 */	mflr r0
/* 802EFB50  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EFB54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EFB58  93 C1 00 08 */	stw r30, 8(r1)
/* 802EFB5C  7C 7E 1B 78 */	mr r30, r3
/* 802EFB60  7C 9F 23 78 */	mr r31, r4
/* 802EFB64  28 1F 00 08 */	cmplwi r31, 8
/* 802EFB68  41 80 00 0C */	blt lbl_802EFB74
/* 802EFB6C  38 60 00 00 */	li r3, 0
/* 802EFB70  48 00 00 B8 */	b lbl_802EFC28
lbl_802EFB74:
/* 802EFB74  88 7E 01 20 */	lbz r3, 0x120(r30)
/* 802EFB78  38 00 00 01 */	li r0, 1
/* 802EFB7C  7C 00 F8 30 */	slw r0, r0, r31
/* 802EFB80  7C 60 00 39 */	and. r0, r3, r0
/* 802EFB84  41 82 00 18 */	beq lbl_802EFB9C
/* 802EFB88  57 E0 10 3A */	slwi r0, r31, 2
/* 802EFB8C  7C 7E 02 14 */	add r3, r30, r0
/* 802EFB90  80 63 00 DC */	lwz r3, 0xdc(r3)
/* 802EFB94  38 80 00 01 */	li r4, 1
/* 802EFB98  4B FE E6 9D */	bl __dt__10JUTTextureFv
lbl_802EFB9C:
/* 802EFB9C  57 E0 10 3A */	slwi r0, r31, 2
/* 802EFBA0  7C 7E 02 14 */	add r3, r30, r0
/* 802EFBA4  80 63 00 FC */	lwz r3, 0xfc(r3)
/* 802EFBA8  4B FD F1 95 */	bl __dl__FPv
/* 802EFBAC  57 E4 10 3A */	slwi r4, r31, 2
/* 802EFBB0  57 E3 08 3C */	slwi r3, r31, 1
/* 802EFBB4  20 1F 00 07 */	subfic r0, r31, 7
/* 802EFBB8  7C 09 03 A6 */	mtctr r0
/* 802EFBBC  28 1F 00 07 */	cmplwi r31, 7
/* 802EFBC0  40 80 00 30 */	bge lbl_802EFBF0
lbl_802EFBC4:
/* 802EFBC4  7C BE 22 14 */	add r5, r30, r4
/* 802EFBC8  80 05 00 E0 */	lwz r0, 0xe0(r5)
/* 802EFBCC  90 05 00 DC */	stw r0, 0xdc(r5)
/* 802EFBD0  80 05 01 00 */	lwz r0, 0x100(r5)
/* 802EFBD4  90 05 00 FC */	stw r0, 0xfc(r5)
/* 802EFBD8  7C BE 1A 14 */	add r5, r30, r3
/* 802EFBDC  A0 05 00 06 */	lhz r0, 6(r5)
/* 802EFBE0  B0 05 00 04 */	sth r0, 4(r5)
/* 802EFBE4  38 63 00 02 */	addi r3, r3, 2
/* 802EFBE8  38 84 00 04 */	addi r4, r4, 4
/* 802EFBEC  42 00 FF D8 */	bdnz lbl_802EFBC4
lbl_802EFBF0:
/* 802EFBF0  38 00 00 00 */	li r0, 0
/* 802EFBF4  90 1E 00 F8 */	stw r0, 0xf8(r30)
/* 802EFBF8  90 1E 01 18 */	stw r0, 0x118(r30)
/* 802EFBFC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EFC00  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EFC04  B0 1E 00 12 */	sth r0, 0x12(r30)
/* 802EFC08  7F C3 F3 78 */	mr r3, r30
/* 802EFC0C  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 802EFC10  38 A0 00 00 */	li r5, 0
/* 802EFC14  81 9E 00 00 */	lwz r12, 0(r30)
/* 802EFC18  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802EFC1C  7D 89 03 A6 */	mtctr r12
/* 802EFC20  4E 80 04 21 */	bctrl 
/* 802EFC24  38 60 00 01 */	li r3, 1
lbl_802EFC28:
/* 802EFC28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EFC2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EFC30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EFC34  7C 08 03 A6 */	mtlr r0
/* 802EFC38  38 21 00 10 */	addi r1, r1, 0x10
/* 802EFC3C  4E 80 00 20 */	blr 
