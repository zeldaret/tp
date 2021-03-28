lbl_80C9B44C:
/* 80C9B44C  A8 05 00 08 */	lha r0, 8(r5)
/* 80C9B450  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C9B454  41 82 00 14 */	beq lbl_80C9B468
/* 80C9B458  2C 00 01 B1 */	cmpwi r0, 0x1b1
/* 80C9B45C  41 82 00 0C */	beq lbl_80C9B468
/* 80C9B460  2C 00 00 F9 */	cmpwi r0, 0xf9
/* 80C9B464  4C 82 00 20 */	bnelr 
lbl_80C9B468:
/* 80C9B468  38 C0 00 00 */	li r6, 0
/* 80C9B46C  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C9B470  41 82 00 08 */	beq lbl_80C9B478
/* 80C9B474  38 C0 00 01 */	li r6, 1
lbl_80C9B478:
/* 80C9B478  28 05 00 00 */	cmplwi r5, 0
/* 80C9B47C  41 82 00 0C */	beq lbl_80C9B488
/* 80C9B480  80 A5 00 04 */	lwz r5, 4(r5)
/* 80C9B484  48 00 00 08 */	b lbl_80C9B48C
lbl_80C9B488:
/* 80C9B488  38 A0 FF FF */	li r5, -1
lbl_80C9B48C:
/* 80C9B48C  54 C0 10 3A */	slwi r0, r6, 2
/* 80C9B490  7C 64 02 14 */	add r3, r4, r0
/* 80C9B494  90 A3 05 BC */	stw r5, 0x5bc(r3)
/* 80C9B498  38 00 00 03 */	li r0, 3
/* 80C9B49C  7C 64 32 14 */	add r3, r4, r6
/* 80C9B4A0  98 03 05 C4 */	stb r0, 0x5c4(r3)
/* 80C9B4A4  4E 80 00 20 */	blr 
