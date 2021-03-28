lbl_802DFDD8:
/* 802DFDD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DFDDC  7C 08 02 A6 */	mflr r0
/* 802DFDE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DFDE4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DFDE8  48 08 23 F5 */	bl _savegpr_29
/* 802DFDEC  7C 7D 1B 78 */	mr r29, r3
/* 802DFDF0  7C 9E 23 78 */	mr r30, r4
/* 802DFDF4  80 83 00 4C */	lwz r4, 0x4c(r3)
/* 802DFDF8  A3 E4 00 12 */	lhz r31, 0x12(r4)
/* 802DFDFC  81 83 00 00 */	lwz r12, 0(r3)
/* 802DFE00  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802DFE04  7D 89 03 A6 */	mtctr r12
/* 802DFE08  4E 80 04 21 */	bctrl 
/* 802DFE0C  2C 03 00 02 */	cmpwi r3, 2
/* 802DFE10  40 82 00 34 */	bne lbl_802DFE44
/* 802DFE14  A0 1D 00 68 */	lhz r0, 0x68(r29)
/* 802DFE18  28 00 80 00 */	cmplwi r0, 0x8000
/* 802DFE1C  41 80 00 28 */	blt lbl_802DFE44
/* 802DFE20  2C 1E 00 20 */	cmpwi r30, 0x20
/* 802DFE24  41 80 00 20 */	blt lbl_802DFE44
/* 802DFE28  28 1E 00 7F */	cmplwi r30, 0x7f
/* 802DFE2C  40 80 00 18 */	bge lbl_802DFE44
/* 802DFE30  3C 60 80 3A */	lis r3, halftofull@ha
/* 802DFE34  38 63 D3 9C */	addi r3, r3, halftofull@l
/* 802DFE38  57 C0 08 3C */	slwi r0, r30, 1
/* 802DFE3C  7C 63 02 14 */	add r3, r3, r0
/* 802DFE40  A3 C3 FF C0 */	lhz r30, -0x40(r3)
lbl_802DFE44:
/* 802DFE44  38 60 00 00 */	li r3, 0
/* 802DFE48  A0 1D 00 64 */	lhz r0, 0x64(r29)
/* 802DFE4C  80 9D 00 5C */	lwz r4, 0x5c(r29)
/* 802DFE50  7C 09 03 A6 */	mtctr r0
/* 802DFE54  2C 00 00 00 */	cmpwi r0, 0
/* 802DFE58  40 81 00 EC */	ble lbl_802DFF44
lbl_802DFE5C:
/* 802DFE5C  7C C4 18 2E */	lwzx r6, r4, r3
/* 802DFE60  A0 A6 00 0A */	lhz r5, 0xa(r6)
/* 802DFE64  7C 05 F0 00 */	cmpw r5, r30
/* 802DFE68  41 81 00 D4 */	bgt lbl_802DFF3C
/* 802DFE6C  A0 06 00 0C */	lhz r0, 0xc(r6)
/* 802DFE70  7C 1E 00 00 */	cmpw r30, r0
/* 802DFE74  41 81 00 C8 */	bgt lbl_802DFF3C
/* 802DFE78  A0 06 00 08 */	lhz r0, 8(r6)
/* 802DFE7C  28 00 00 00 */	cmplwi r0, 0
/* 802DFE80  40 82 00 0C */	bne lbl_802DFE8C
/* 802DFE84  7F E5 F0 50 */	subf r31, r5, r30
/* 802DFE88  48 00 00 BC */	b lbl_802DFF44
lbl_802DFE8C:
/* 802DFE8C  28 00 00 02 */	cmplwi r0, 2
/* 802DFE90  40 82 00 18 */	bne lbl_802DFEA8
/* 802DFE94  7C 05 F0 50 */	subf r0, r5, r30
/* 802DFE98  54 00 08 3C */	slwi r0, r0, 1
/* 802DFE9C  7C 66 02 14 */	add r3, r6, r0
/* 802DFEA0  A3 E3 00 10 */	lhz r31, 0x10(r3)
/* 802DFEA4  48 00 00 A0 */	b lbl_802DFF44
lbl_802DFEA8:
/* 802DFEA8  28 00 00 03 */	cmplwi r0, 3
/* 802DFEAC  40 82 00 60 */	bne lbl_802DFF0C
/* 802DFEB0  38 86 00 10 */	addi r4, r6, 0x10
/* 802DFEB4  38 A0 00 00 */	li r5, 0
/* 802DFEB8  A0 66 00 0E */	lhz r3, 0xe(r6)
/* 802DFEBC  38 C3 FF FF */	addi r6, r3, -1
/* 802DFEC0  48 00 00 40 */	b lbl_802DFF00
lbl_802DFEC4:
/* 802DFEC4  7C 06 2A 14 */	add r0, r6, r5
/* 802DFEC8  7C 00 0E 70 */	srawi r0, r0, 1
/* 802DFECC  7C E0 01 94 */	addze r7, r0
/* 802DFED0  54 E3 10 3A */	slwi r3, r7, 2
/* 802DFED4  7C 04 1A 2E */	lhzx r0, r4, r3
/* 802DFED8  7C 1E 00 00 */	cmpw r30, r0
/* 802DFEDC  40 80 00 0C */	bge lbl_802DFEE8
/* 802DFEE0  38 C7 FF FF */	addi r6, r7, -1
/* 802DFEE4  48 00 00 1C */	b lbl_802DFF00
lbl_802DFEE8:
/* 802DFEE8  40 81 00 0C */	ble lbl_802DFEF4
/* 802DFEEC  38 A7 00 01 */	addi r5, r7, 1
/* 802DFEF0  48 00 00 10 */	b lbl_802DFF00
lbl_802DFEF4:
/* 802DFEF4  7C 64 1A 14 */	add r3, r4, r3
/* 802DFEF8  A3 E3 00 02 */	lhz r31, 2(r3)
/* 802DFEFC  48 00 00 48 */	b lbl_802DFF44
lbl_802DFF00:
/* 802DFF00  7C 06 28 00 */	cmpw r6, r5
/* 802DFF04  40 80 FF C0 */	bge lbl_802DFEC4
/* 802DFF08  48 00 00 3C */	b lbl_802DFF44
lbl_802DFF0C:
/* 802DFF0C  28 00 00 01 */	cmplwi r0, 1
/* 802DFF10  40 82 00 34 */	bne lbl_802DFF44
/* 802DFF14  38 A0 00 00 */	li r5, 0
/* 802DFF18  A0 06 00 0E */	lhz r0, 0xe(r6)
/* 802DFF1C  28 00 00 01 */	cmplwi r0, 1
/* 802DFF20  40 82 00 08 */	bne lbl_802DFF28
/* 802DFF24  38 A6 00 10 */	addi r5, r6, 0x10
lbl_802DFF28:
/* 802DFF28  7F A3 EB 78 */	mr r3, r29
/* 802DFF2C  7F C4 F3 78 */	mr r4, r30
/* 802DFF30  48 00 01 95 */	bl convertSjis__10JUTResFontCFiPUs
/* 802DFF34  7C 7F 1B 78 */	mr r31, r3
/* 802DFF38  48 00 00 0C */	b lbl_802DFF44
lbl_802DFF3C:
/* 802DFF3C  38 63 00 04 */	addi r3, r3, 4
/* 802DFF40  42 00 FF 1C */	bdnz lbl_802DFE5C
lbl_802DFF44:
/* 802DFF44  7F E3 FB 78 */	mr r3, r31
/* 802DFF48  39 61 00 20 */	addi r11, r1, 0x20
/* 802DFF4C  48 08 22 DD */	bl _restgpr_29
/* 802DFF50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DFF54  7C 08 03 A6 */	mtlr r0
/* 802DFF58  38 21 00 20 */	addi r1, r1, 0x20
/* 802DFF5C  4E 80 00 20 */	blr 
