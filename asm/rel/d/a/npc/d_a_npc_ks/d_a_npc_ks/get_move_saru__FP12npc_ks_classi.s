lbl_80A4FD7C:
/* 80A4FD7C  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80A4FD80  7C 00 07 75 */	extsb. r0, r0
/* 80A4FD84  40 82 00 60 */	bne lbl_80A4FDE4
/* 80A4FD88  38 80 00 00 */	li r4, 0
/* 80A4FD8C  3C A0 80 A6 */	lis r5, saru_p@ha
/* 80A4FD90  38 E5 E4 78 */	addi r7, r5, saru_p@l
/* 80A4FD94  38 00 00 02 */	li r0, 2
/* 80A4FD98  7C 09 03 A6 */	mtctr r0
lbl_80A4FD9C:
/* 80A4FD9C  7D 07 20 2E */	lwzx r8, r7, r4
/* 80A4FDA0  28 08 00 00 */	cmplwi r8, 0
/* 80A4FDA4  41 82 00 34 */	beq lbl_80A4FDD8
/* 80A4FDA8  A8 08 05 E8 */	lha r0, 0x5e8(r8)
/* 80A4FDAC  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A4FDB0  41 82 00 0C */	beq lbl_80A4FDBC
/* 80A4FDB4  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A4FDB8  40 82 00 20 */	bne lbl_80A4FDD8
lbl_80A4FDBC:
/* 80A4FDBC  88 C3 0B 40 */	lbz r6, 0xb40(r3)
/* 80A4FDC0  80 A8 09 34 */	lwz r5, 0x934(r8)
/* 80A4FDC4  88 05 05 70 */	lbz r0, 0x570(r5)
/* 80A4FDC8  7C 06 00 40 */	cmplw r6, r0
/* 80A4FDCC  40 82 00 0C */	bne lbl_80A4FDD8
/* 80A4FDD0  7D 03 43 78 */	mr r3, r8
/* 80A4FDD4  4E 80 00 20 */	blr 
lbl_80A4FDD8:
/* 80A4FDD8  38 84 00 04 */	addi r4, r4, 4
/* 80A4FDDC  42 00 FF C0 */	bdnz lbl_80A4FD9C
/* 80A4FDE0  48 00 00 64 */	b lbl_80A4FE44
lbl_80A4FDE4:
/* 80A4FDE4  38 A0 00 00 */	li r5, 0
/* 80A4FDE8  3C C0 80 A6 */	lis r6, saru_p@ha
/* 80A4FDEC  38 C6 E4 78 */	addi r6, r6, saru_p@l
/* 80A4FDF0  7C 89 03 A6 */	mtctr r4
/* 80A4FDF4  2C 04 00 00 */	cmpwi r4, 0
/* 80A4FDF8  40 81 00 4C */	ble lbl_80A4FE44
lbl_80A4FDFC:
/* 80A4FDFC  88 E3 0B 40 */	lbz r7, 0xb40(r3)
/* 80A4FE00  7D 06 28 2E */	lwzx r8, r6, r5
/* 80A4FE04  80 88 09 34 */	lwz r4, 0x934(r8)
/* 80A4FE08  88 04 05 70 */	lbz r0, 0x570(r4)
/* 80A4FE0C  7C 07 00 40 */	cmplw r7, r0
/* 80A4FE10  40 82 00 2C */	bne lbl_80A4FE3C
/* 80A4FE14  A8 08 05 E8 */	lha r0, 0x5e8(r8)
/* 80A4FE18  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A4FE1C  41 82 00 18 */	beq lbl_80A4FE34
/* 80A4FE20  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A4FE24  41 82 00 10 */	beq lbl_80A4FE34
/* 80A4FE28  A8 08 05 F4 */	lha r0, 0x5f4(r8)
/* 80A4FE2C  2C 00 00 00 */	cmpwi r0, 0
/* 80A4FE30  41 82 00 0C */	beq lbl_80A4FE3C
lbl_80A4FE34:
/* 80A4FE34  7D 03 43 78 */	mr r3, r8
/* 80A4FE38  4E 80 00 20 */	blr 
lbl_80A4FE3C:
/* 80A4FE3C  38 A5 00 04 */	addi r5, r5, 4
/* 80A4FE40  42 00 FF BC */	bdnz lbl_80A4FDFC
lbl_80A4FE44:
/* 80A4FE44  38 60 00 00 */	li r3, 0
/* 80A4FE48  4E 80 00 20 */	blr 
