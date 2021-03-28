lbl_8009DA98:
/* 8009DA98  80 06 00 10 */	lwz r0, 0x10(r6)
/* 8009DA9C  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 8009DAA0  41 82 00 7C */	beq lbl_8009DB1C
/* 8009DAA4  C0 06 00 84 */	lfs f0, 0x84(r6)
/* 8009DAA8  D0 03 36 9C */	stfs f0, 0x369c(r3)
/* 8009DAAC  C0 06 00 88 */	lfs f0, 0x88(r6)
/* 8009DAB0  D0 03 36 A0 */	stfs f0, 0x36a0(r3)
/* 8009DAB4  C0 06 00 8C */	lfs f0, 0x8c(r6)
/* 8009DAB8  D0 03 36 A4 */	stfs f0, 0x36a4(r3)
/* 8009DABC  38 E0 00 00 */	li r7, 0
/* 8009DAC0  38 C0 00 00 */	li r6, 0
/* 8009DAC4  38 00 00 03 */	li r0, 3
/* 8009DAC8  7C 09 03 A6 */	mtctr r0
lbl_8009DACC:
/* 8009DACC  38 06 08 50 */	addi r0, r6, 0x850
/* 8009DAD0  7C 03 02 14 */	add r0, r3, r0
/* 8009DAD4  7C 05 00 40 */	cmplw r5, r0
/* 8009DAD8  40 82 00 34 */	bne lbl_8009DB0C
/* 8009DADC  88 A3 2F B8 */	lbz r5, 0x2fb8(r3)
/* 8009DAE0  38 00 00 01 */	li r0, 1
/* 8009DAE4  7C 00 38 30 */	slw r0, r0, r7
/* 8009DAE8  7C A0 03 78 */	or r0, r5, r0
/* 8009DAEC  98 03 2F B8 */	stb r0, 0x2fb8(r3)
/* 8009DAF0  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 8009DAF4  D0 03 36 B4 */	stfs f0, 0x36b4(r3)
/* 8009DAF8  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 8009DAFC  D0 03 36 B8 */	stfs f0, 0x36b8(r3)
/* 8009DB00  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 8009DB04  D0 03 36 BC */	stfs f0, 0x36bc(r3)
/* 8009DB08  4E 80 00 20 */	blr 
lbl_8009DB0C:
/* 8009DB0C  38 E7 00 01 */	addi r7, r7, 1
/* 8009DB10  38 C6 01 3C */	addi r6, r6, 0x13c
/* 8009DB14  42 00 FF B8 */	bdnz lbl_8009DACC
/* 8009DB18  4E 80 00 20 */	blr 
lbl_8009DB1C:
/* 8009DB1C  38 C0 00 00 */	li r6, 0
/* 8009DB20  38 80 00 00 */	li r4, 0
/* 8009DB24  38 00 00 03 */	li r0, 3
/* 8009DB28  7C 09 03 A6 */	mtctr r0
lbl_8009DB2C:
/* 8009DB2C  38 04 08 50 */	addi r0, r4, 0x850
/* 8009DB30  7C 03 02 14 */	add r0, r3, r0
/* 8009DB34  7C 05 00 40 */	cmplw r5, r0
/* 8009DB38  40 82 00 1C */	bne lbl_8009DB54
/* 8009DB3C  88 83 2F B8 */	lbz r4, 0x2fb8(r3)
/* 8009DB40  38 00 00 01 */	li r0, 1
/* 8009DB44  7C 00 30 30 */	slw r0, r0, r6
/* 8009DB48  7C 80 00 78 */	andc r0, r4, r0
/* 8009DB4C  98 03 2F B8 */	stb r0, 0x2fb8(r3)
/* 8009DB50  4E 80 00 20 */	blr 
lbl_8009DB54:
/* 8009DB54  38 C6 00 01 */	addi r6, r6, 1
/* 8009DB58  38 84 01 3C */	addi r4, r4, 0x13c
/* 8009DB5C  42 00 FF D0 */	bdnz lbl_8009DB2C
/* 8009DB60  4E 80 00 20 */	blr 
