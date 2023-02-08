lbl_8055DAD8:
/* 8055DAD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055DADC  38 E1 00 04 */	addi r7, r1, 4
/* 8055DAE0  38 C5 FF FC */	addi r6, r5, -4
/* 8055DAE4  38 00 00 03 */	li r0, 3
/* 8055DAE8  7C 09 03 A6 */	mtctr r0
lbl_8055DAEC:
/* 8055DAEC  80 A6 00 04 */	lwz r5, 4(r6)
/* 8055DAF0  84 06 00 08 */	lwzu r0, 8(r6)
/* 8055DAF4  90 A7 00 04 */	stw r5, 4(r7)
/* 8055DAF8  94 07 00 08 */	stwu r0, 8(r7)
/* 8055DAFC  42 00 FF F0 */	bdnz lbl_8055DAEC
/* 8055DB00  80 06 00 04 */	lwz r0, 4(r6)
/* 8055DB04  90 07 00 04 */	stw r0, 4(r7)
/* 8055DB08  88 04 0A 89 */	lbz r0, 0xa89(r4)
/* 8055DB0C  28 00 00 00 */	cmplwi r0, 0
/* 8055DB10  41 82 00 20 */	beq lbl_8055DB30
/* 8055DB14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055DB18  2C 00 00 11 */	cmpwi r0, 0x11
/* 8055DB1C  40 82 00 14 */	bne lbl_8055DB30
/* 8055DB20  38 00 00 0B */	li r0, 0xb
/* 8055DB24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055DB28  38 00 00 02 */	li r0, 2
/* 8055DB2C  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_8055DB30:
/* 8055DB30  38 A3 FF FC */	addi r5, r3, -4
/* 8055DB34  38 81 00 04 */	addi r4, r1, 4
/* 8055DB38  38 00 00 03 */	li r0, 3
/* 8055DB3C  7C 09 03 A6 */	mtctr r0
lbl_8055DB40:
/* 8055DB40  80 64 00 04 */	lwz r3, 4(r4)
/* 8055DB44  84 04 00 08 */	lwzu r0, 8(r4)
/* 8055DB48  90 65 00 04 */	stw r3, 4(r5)
/* 8055DB4C  94 05 00 08 */	stwu r0, 8(r5)
/* 8055DB50  42 00 FF F0 */	bdnz lbl_8055DB40
/* 8055DB54  80 04 00 04 */	lwz r0, 4(r4)
/* 8055DB58  90 05 00 04 */	stw r0, 4(r5)
/* 8055DB5C  38 21 00 30 */	addi r1, r1, 0x30
/* 8055DB60  4E 80 00 20 */	blr 
