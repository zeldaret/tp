lbl_801D2C88:
/* 801D2C88  38 E0 00 00 */	li r7, 0
/* 801D2C8C  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 801D2C90  38 00 00 14 */	li r0, 0x14
/* 801D2C94  7C 09 03 A6 */	mtctr r0
lbl_801D2C98:
/* 801D2C98  7C 07 20 00 */	cmpw r7, r4
/* 801D2C9C  40 82 00 20 */	bne lbl_801D2CBC
/* 801D2CA0  54 E0 10 3A */	slwi r0, r7, 2
/* 801D2CA4  7C 63 02 14 */	add r3, r3, r0
/* 801D2CA8  C0 03 10 E4 */	lfs f0, 0x10e4(r3)
/* 801D2CAC  D0 05 00 00 */	stfs f0, 0(r5)
/* 801D2CB0  C0 03 11 34 */	lfs f0, 0x1134(r3)
/* 801D2CB4  D0 06 00 00 */	stfs f0, 0(r6)
/* 801D2CB8  4E 80 00 20 */	blr 
lbl_801D2CBC:
/* 801D2CBC  38 E7 00 01 */	addi r7, r7, 1
/* 801D2CC0  42 00 FF D8 */	bdnz lbl_801D2C98
/* 801D2CC4  4E 80 00 20 */	blr 
