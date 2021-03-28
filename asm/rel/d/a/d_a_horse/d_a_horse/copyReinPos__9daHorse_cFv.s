lbl_8083FDAC:
/* 8083FDAC  80 83 12 00 */	lwz r4, 0x1200(r3)
/* 8083FDB0  80 E4 00 00 */	lwz r7, 0(r4)
/* 8083FDB4  80 03 11 58 */	lwz r0, 0x1158(r3)
/* 8083FDB8  90 03 12 04 */	stw r0, 0x1204(r3)
/* 8083FDBC  38 C0 00 00 */	li r6, 0
/* 8083FDC0  38 80 00 00 */	li r4, 0
/* 8083FDC4  48 00 00 30 */	b lbl_8083FDF4
lbl_8083FDC8:
/* 8083FDC8  80 03 11 50 */	lwz r0, 0x1150(r3)
/* 8083FDCC  7C A0 22 14 */	add r5, r0, r4
/* 8083FDD0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8083FDD4  D0 07 00 00 */	stfs f0, 0(r7)
/* 8083FDD8  C0 05 00 04 */	lfs f0, 4(r5)
/* 8083FDDC  D0 07 00 04 */	stfs f0, 4(r7)
/* 8083FDE0  C0 05 00 08 */	lfs f0, 8(r5)
/* 8083FDE4  D0 07 00 08 */	stfs f0, 8(r7)
/* 8083FDE8  38 C6 00 01 */	addi r6, r6, 1
/* 8083FDEC  38 84 00 0C */	addi r4, r4, 0xc
/* 8083FDF0  38 E7 00 0C */	addi r7, r7, 0xc
lbl_8083FDF4:
/* 8083FDF4  80 03 11 58 */	lwz r0, 0x1158(r3)
/* 8083FDF8  7C 06 00 00 */	cmpw r6, r0
/* 8083FDFC  41 80 FF CC */	blt lbl_8083FDC8
/* 8083FE00  80 83 11 A8 */	lwz r4, 0x11a8(r3)
/* 8083FE04  2C 04 00 01 */	cmpwi r4, 1
/* 8083FE08  40 81 00 54 */	ble lbl_8083FE5C
/* 8083FE0C  80 03 12 04 */	lwz r0, 0x1204(r3)
/* 8083FE10  7C 00 22 14 */	add r0, r0, r4
/* 8083FE14  90 03 12 04 */	stw r0, 0x1204(r3)
/* 8083FE18  38 C0 00 00 */	li r6, 0
/* 8083FE1C  38 80 00 00 */	li r4, 0
/* 8083FE20  48 00 00 30 */	b lbl_8083FE50
lbl_8083FE24:
/* 8083FE24  80 03 11 A0 */	lwz r0, 0x11a0(r3)
/* 8083FE28  7C A0 22 14 */	add r5, r0, r4
/* 8083FE2C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8083FE30  D0 07 00 00 */	stfs f0, 0(r7)
/* 8083FE34  C0 05 00 04 */	lfs f0, 4(r5)
/* 8083FE38  D0 07 00 04 */	stfs f0, 4(r7)
/* 8083FE3C  C0 05 00 08 */	lfs f0, 8(r5)
/* 8083FE40  D0 07 00 08 */	stfs f0, 8(r7)
/* 8083FE44  38 C6 00 01 */	addi r6, r6, 1
/* 8083FE48  38 84 00 0C */	addi r4, r4, 0xc
/* 8083FE4C  38 E7 00 0C */	addi r7, r7, 0xc
lbl_8083FE50:
/* 8083FE50  80 03 11 A8 */	lwz r0, 0x11a8(r3)
/* 8083FE54  7C 06 00 00 */	cmpw r6, r0
/* 8083FE58  41 80 FF CC */	blt lbl_8083FE24
lbl_8083FE5C:
/* 8083FE5C  80 83 12 04 */	lwz r4, 0x1204(r3)
/* 8083FE60  80 03 11 80 */	lwz r0, 0x1180(r3)
/* 8083FE64  7C 04 02 14 */	add r0, r4, r0
/* 8083FE68  90 03 12 04 */	stw r0, 0x1204(r3)
/* 8083FE6C  80 83 11 80 */	lwz r4, 0x1180(r3)
/* 8083FE70  34 A4 FF FF */	addic. r5, r4, -1
/* 8083FE74  1C 85 00 0C */	mulli r4, r5, 0xc
/* 8083FE78  38 05 00 01 */	addi r0, r5, 1
/* 8083FE7C  7C 09 03 A6 */	mtctr r0
/* 8083FE80  4D 80 00 20 */	bltlr 
lbl_8083FE84:
/* 8083FE84  80 03 11 78 */	lwz r0, 0x1178(r3)
/* 8083FE88  7C A0 22 14 */	add r5, r0, r4
/* 8083FE8C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8083FE90  D0 07 00 00 */	stfs f0, 0(r7)
/* 8083FE94  C0 05 00 04 */	lfs f0, 4(r5)
/* 8083FE98  D0 07 00 04 */	stfs f0, 4(r7)
/* 8083FE9C  C0 05 00 08 */	lfs f0, 8(r5)
/* 8083FEA0  D0 07 00 08 */	stfs f0, 8(r7)
/* 8083FEA4  38 84 FF F4 */	addi r4, r4, -12
/* 8083FEA8  38 E7 00 0C */	addi r7, r7, 0xc
/* 8083FEAC  42 00 FF D8 */	bdnz lbl_8083FE84
/* 8083FEB0  4E 80 00 20 */	blr 
