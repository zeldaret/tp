lbl_8029FC88:
/* 8029FC88  80 A3 00 68 */	lwz r5, 0x68(r3)
/* 8029FC8C  2C 05 00 00 */	cmpwi r5, 0
/* 8029FC90  40 82 00 0C */	bne lbl_8029FC9C
/* 8029FC94  38 C0 00 00 */	li r6, 0
/* 8029FC98  48 00 00 0C */	b lbl_8029FCA4
lbl_8029FC9C:
/* 8029FC9C  80 03 00 64 */	lwz r0, 0x64(r3)
/* 8029FCA0  7C C5 02 14 */	add r6, r5, r0
lbl_8029FCA4:
/* 8029FCA4  2C 06 00 00 */	cmpwi r6, 0
/* 8029FCA8  41 81 00 0C */	bgt lbl_8029FCB4
/* 8029FCAC  38 60 00 01 */	li r3, 1
/* 8029FCB0  4E 80 00 20 */	blr 
lbl_8029FCB4:
/* 8029FCB4  39 00 00 00 */	li r8, 0
/* 8029FCB8  81 23 00 58 */	lwz r9, 0x58(r3)
/* 8029FCBC  48 00 00 64 */	b lbl_8029FD20
lbl_8029FCC0:
/* 8029FCC0  80 E9 00 00 */	lwz r7, 0(r9)
/* 8029FCC4  80 07 00 AC */	lwz r0, 0xac(r7)
/* 8029FCC8  7C 04 00 40 */	cmplw r4, r0
/* 8029FCCC  40 80 00 0C */	bge lbl_8029FCD8
/* 8029FCD0  38 60 00 01 */	li r3, 1
/* 8029FCD4  4E 80 00 20 */	blr 
lbl_8029FCD8:
/* 8029FCD8  38 A0 00 00 */	li r5, 0
/* 8029FCDC  88 67 00 2F */	lbz r3, 0x2f(r7)
/* 8029FCE0  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8029FCE4  41 82 00 2C */	beq lbl_8029FD10
/* 8029FCE8  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 8029FCEC  41 82 00 20 */	beq lbl_8029FD0C
/* 8029FCF0  80 07 00 40 */	lwz r0, 0x40(r7)
/* 8029FCF4  28 00 00 00 */	cmplwi r0, 0
/* 8029FCF8  40 82 00 18 */	bne lbl_8029FD10
/* 8029FCFC  C0 27 00 34 */	lfs f1, 0x34(r7)
/* 8029FD00  C0 02 BD 88 */	lfs f0, lit_822(r2)
/* 8029FD04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029FD08  40 80 00 08 */	bge lbl_8029FD10
lbl_8029FD0C:
/* 8029FD0C  38 A0 00 01 */	li r5, 1
lbl_8029FD10:
/* 8029FD10  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8029FD14  40 82 00 08 */	bne lbl_8029FD1C
/* 8029FD18  39 08 00 01 */	addi r8, r8, 1
lbl_8029FD1C:
/* 8029FD1C  81 29 00 0C */	lwz r9, 0xc(r9)
lbl_8029FD20:
/* 8029FD20  28 09 00 00 */	cmplwi r9, 0
/* 8029FD24  40 82 FF 9C */	bne lbl_8029FCC0
/* 8029FD28  7C C0 42 78 */	xor r0, r6, r8
/* 8029FD2C  7C 03 0E 70 */	srawi r3, r0, 1
/* 8029FD30  7C 00 30 38 */	and r0, r0, r6
/* 8029FD34  7C 00 18 50 */	subf r0, r0, r3
/* 8029FD38  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8029FD3C  4E 80 00 20 */	blr 
