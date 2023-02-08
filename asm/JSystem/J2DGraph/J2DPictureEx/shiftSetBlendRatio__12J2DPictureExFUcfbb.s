lbl_80305DC0:
/* 80305DC0  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80305DC4  41 82 00 0C */	beq lbl_80305DD0
/* 80305DC8  38 E3 01 1C */	addi r7, r3, 0x11c
/* 80305DCC  48 00 00 08 */	b lbl_80305DD4
lbl_80305DD0:
/* 80305DD0  38 E3 01 24 */	addi r7, r3, 0x124
lbl_80305DD4:
/* 80305DD4  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80305DD8  41 82 00 0C */	beq lbl_80305DE4
/* 80305DDC  38 A3 01 60 */	addi r5, r3, 0x160
/* 80305DE0  48 00 00 08 */	b lbl_80305DE8
lbl_80305DE4:
/* 80305DE4  38 A3 01 78 */	addi r5, r3, 0x178
lbl_80305DE8:
/* 80305DE8  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 80305DEC  41 82 00 88 */	beq lbl_80305E74
/* 80305DF0  39 20 00 07 */	li r9, 7
/* 80305DF4  38 60 00 1C */	li r3, 0x1c
/* 80305DF8  54 88 06 3E */	clrlwi r8, r4, 0x18
/* 80305DFC  20 08 00 07 */	subfic r0, r8, 7
/* 80305E00  7C 09 03 A6 */	mtctr r0
/* 80305E04  2C 08 00 07 */	cmpwi r8, 7
/* 80305E08  40 80 00 44 */	bge lbl_80305E4C
lbl_80305E0C:
/* 80305E0C  2C 09 00 02 */	cmpwi r9, 2
/* 80305E10  40 81 00 14 */	ble lbl_80305E24
/* 80305E14  7C C5 1A 14 */	add r6, r5, r3
/* 80305E18  C0 06 FF F4 */	lfs f0, -0xc(r6)
/* 80305E1C  D0 06 FF F8 */	stfs f0, -8(r6)
/* 80305E20  48 00 00 20 */	b lbl_80305E40
lbl_80305E24:
/* 80305E24  40 82 00 10 */	bne lbl_80305E34
/* 80305E28  C0 07 00 04 */	lfs f0, 4(r7)
/* 80305E2C  D0 05 00 00 */	stfs f0, 0(r5)
/* 80305E30  48 00 00 10 */	b lbl_80305E40
lbl_80305E34:
/* 80305E34  7C C7 1A 14 */	add r6, r7, r3
/* 80305E38  C0 06 FF FC */	lfs f0, -4(r6)
/* 80305E3C  D0 06 00 00 */	stfs f0, 0(r6)
lbl_80305E40:
/* 80305E40  39 29 FF FF */	addi r9, r9, -1
/* 80305E44  38 63 FF FC */	addi r3, r3, -4
/* 80305E48  42 00 FF C4 */	bdnz lbl_80305E0C
lbl_80305E4C:
/* 80305E4C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80305E50  28 00 00 02 */	cmplwi r0, 2
/* 80305E54  41 80 00 14 */	blt lbl_80305E68
/* 80305E58  55 00 10 3A */	slwi r0, r8, 2
/* 80305E5C  7C 65 02 14 */	add r3, r5, r0
/* 80305E60  D0 23 FF F8 */	stfs f1, -8(r3)
/* 80305E64  4E 80 00 20 */	blr 
lbl_80305E68:
/* 80305E68  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 80305E6C  7C 27 05 2E */	stfsx f1, r7, r0
/* 80305E70  4E 80 00 20 */	blr 
lbl_80305E74:
/* 80305E74  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 80305E78  38 C3 00 01 */	addi r6, r3, 1
/* 80305E7C  54 C3 10 3A */	slwi r3, r6, 2
/* 80305E80  20 06 00 08 */	subfic r0, r6, 8
/* 80305E84  7C 09 03 A6 */	mtctr r0
/* 80305E88  2C 06 00 08 */	cmpwi r6, 8
/* 80305E8C  4C 80 00 20 */	bgelr 
lbl_80305E90:
/* 80305E90  2C 06 00 02 */	cmpwi r6, 2
/* 80305E94  40 81 00 14 */	ble lbl_80305EA8
/* 80305E98  7C 85 1A 14 */	add r4, r5, r3
/* 80305E9C  C0 04 FF F8 */	lfs f0, -8(r4)
/* 80305EA0  D0 04 FF F4 */	stfs f0, -0xc(r4)
/* 80305EA4  48 00 00 20 */	b lbl_80305EC4
lbl_80305EA8:
/* 80305EA8  40 82 00 10 */	bne lbl_80305EB8
/* 80305EAC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80305EB0  D0 07 00 04 */	stfs f0, 4(r7)
/* 80305EB4  48 00 00 10 */	b lbl_80305EC4
lbl_80305EB8:
/* 80305EB8  7C 87 1A 14 */	add r4, r7, r3
/* 80305EBC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80305EC0  D0 04 FF FC */	stfs f0, -4(r4)
lbl_80305EC4:
/* 80305EC4  38 C6 00 01 */	addi r6, r6, 1
/* 80305EC8  38 63 00 04 */	addi r3, r3, 4
/* 80305ECC  42 00 FF C4 */	bdnz lbl_80305E90
/* 80305ED0  4E 80 00 20 */	blr 
