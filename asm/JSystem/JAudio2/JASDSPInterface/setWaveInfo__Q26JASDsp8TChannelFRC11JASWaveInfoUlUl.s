lbl_8029DD8C:
/* 8029DD8C  90 A3 01 18 */	stw r5, 0x118(r3)
/* 8029DD90  88 E4 00 00 */	lbz r7, 0(r4)
/* 8029DD94  38 A2 BD 4C */	la r5, COMP_BLOCKSAMPLES(r2) /* 8045574C-_SDA2_BASE_ */
/* 8029DD98  7C 05 38 AE */	lbzx r0, r5, r7
/* 8029DD9C  B0 03 00 64 */	sth r0, 0x64(r3)
/* 8029DDA0  38 A2 BD 54 */	la r5, COMP_BLOCKBYTES(r2) /* 80455754-_SDA2_BASE_ */
/* 8029DDA4  7C 05 38 AE */	lbzx r0, r5, r7
/* 8029DDA8  B0 03 01 00 */	sth r0, 0x100(r3)
/* 8029DDAC  38 00 00 00 */	li r0, 0
/* 8029DDB0  90 03 00 68 */	stw r0, 0x68(r3)
/* 8029DDB4  A0 03 01 00 */	lhz r0, 0x100(r3)
/* 8029DDB8  28 00 00 04 */	cmplwi r0, 4
/* 8029DDBC  4D 80 00 20 */	bltlr 
/* 8029DDC0  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8029DDC4  90 03 01 1C */	stw r0, 0x11c(r3)
/* 8029DDC8  88 04 00 02 */	lbz r0, 2(r4)
/* 8029DDCC  B0 03 01 02 */	sth r0, 0x102(r3)
/* 8029DDD0  A0 03 01 02 */	lhz r0, 0x102(r3)
/* 8029DDD4  28 00 00 00 */	cmplwi r0, 0
/* 8029DDD8  41 82 00 34 */	beq lbl_8029DE0C
/* 8029DDDC  28 06 00 01 */	cmplwi r6, 1
/* 8029DDE0  40 82 00 08 */	bne lbl_8029DDE8
/* 8029DDE4  80 C4 00 10 */	lwz r6, 0x10(r4)
lbl_8029DDE8:
/* 8029DDE8  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8029DDEC  90 03 01 10 */	stw r0, 0x110(r3)
/* 8029DDF0  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8029DDF4  90 03 01 14 */	stw r0, 0x114(r3)
/* 8029DDF8  A8 04 00 1C */	lha r0, 0x1c(r4)
/* 8029DDFC  B0 03 01 04 */	sth r0, 0x104(r3)
/* 8029DE00  A8 04 00 1E */	lha r0, 0x1e(r4)
/* 8029DE04  B0 03 01 06 */	sth r0, 0x106(r3)
/* 8029DE08  48 00 00 0C */	b lbl_8029DE14
lbl_8029DE0C:
/* 8029DE0C  80 03 01 1C */	lwz r0, 0x11c(r3)
/* 8029DE10  90 03 01 14 */	stw r0, 0x114(r3)
lbl_8029DE14:
/* 8029DE14  28 06 00 00 */	cmplwi r6, 0
/* 8029DE18  41 82 00 70 */	beq lbl_8029DE88
/* 8029DE1C  80 03 01 14 */	lwz r0, 0x114(r3)
/* 8029DE20  7C 00 30 40 */	cmplw r0, r6
/* 8029DE24  40 81 00 64 */	ble lbl_8029DE88
/* 8029DE28  88 04 00 00 */	lbz r0, 0(r4)
/* 8029DE2C  2C 00 00 02 */	cmpwi r0, 2
/* 8029DE30  40 80 00 10 */	bge lbl_8029DE40
/* 8029DE34  2C 00 00 00 */	cmpwi r0, 0
/* 8029DE38  40 80 00 14 */	bge lbl_8029DE4C
/* 8029DE3C  48 00 00 4C */	b lbl_8029DE88
lbl_8029DE40:
/* 8029DE40  2C 00 00 04 */	cmpwi r0, 4
/* 8029DE44  40 80 00 44 */	bge lbl_8029DE88
/* 8029DE48  48 00 00 3C */	b lbl_8029DE84
lbl_8029DE4C:
/* 8029DE4C  90 C3 00 68 */	stw r6, 0x68(r3)
/* 8029DE50  80 83 01 18 */	lwz r4, 0x118(r3)
/* 8029DE54  A0 03 01 00 */	lhz r0, 0x100(r3)
/* 8029DE58  7C 06 01 D6 */	mullw r0, r6, r0
/* 8029DE5C  54 00 E1 3E */	srwi r0, r0, 4
/* 8029DE60  7C 04 02 14 */	add r0, r4, r0
/* 8029DE64  90 03 01 18 */	stw r0, 0x118(r3)
/* 8029DE68  80 03 01 10 */	lwz r0, 0x110(r3)
/* 8029DE6C  7C 06 00 50 */	subf r0, r6, r0
/* 8029DE70  90 03 01 10 */	stw r0, 0x110(r3)
/* 8029DE74  80 03 01 14 */	lwz r0, 0x114(r3)
/* 8029DE78  7C 06 00 50 */	subf r0, r6, r0
/* 8029DE7C  90 03 01 14 */	stw r0, 0x114(r3)
/* 8029DE80  48 00 00 08 */	b lbl_8029DE88
lbl_8029DE84:
/* 8029DE84  90 C3 00 68 */	stw r6, 0x68(r3)
lbl_8029DE88:
/* 8029DE88  38 80 00 00 */	li r4, 0
/* 8029DE8C  7C 85 23 78 */	mr r5, r4
/* 8029DE90  38 00 00 10 */	li r0, 0x10
/* 8029DE94  7C 09 03 A6 */	mtctr r0
lbl_8029DE98:
/* 8029DE98  38 04 00 B0 */	addi r0, r4, 0xb0
/* 8029DE9C  7C A3 03 2E */	sthx r5, r3, r0
/* 8029DEA0  38 84 00 02 */	addi r4, r4, 2
/* 8029DEA4  42 00 FF F4 */	bdnz lbl_8029DE98
/* 8029DEA8  4E 80 00 20 */	blr 
