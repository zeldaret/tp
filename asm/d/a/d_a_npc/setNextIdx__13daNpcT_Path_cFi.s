lbl_80145DD0:
/* 80145DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80145DD4  7C 08 02 A6 */	mflr r0
/* 80145DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80145DDC  7C 66 1B 78 */	mr r6, r3
/* 80145DE0  80 A3 00 00 */	lwz r5, 0(r3)
/* 80145DE4  A0 65 00 00 */	lhz r3, 0(r5)
/* 80145DE8  88 05 00 05 */	lbz r0, 5(r5)
/* 80145DEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80145DF0  41 82 00 24 */	beq lbl_80145E14
/* 80145DF4  7C 03 20 00 */	cmpw r3, r4
/* 80145DF8  40 82 00 1C */	bne lbl_80145E14
/* 80145DFC  7C 83 23 78 */	mr r3, r4
/* 80145E00  38 86 00 1C */	addi r4, r6, 0x1c
/* 80145E04  38 A0 00 01 */	li r5, 1
/* 80145E08  88 C6 00 20 */	lbz r6, 0x20(r6)
/* 80145E0C  4B FF FC B9 */	bl daNpcT_incIdx__FiRUsii
/* 80145E10  48 00 00 18 */	b lbl_80145E28
lbl_80145E14:
/* 80145E14  7C 83 23 78 */	mr r3, r4
/* 80145E18  38 86 00 1C */	addi r4, r6, 0x1c
/* 80145E1C  38 A0 00 00 */	li r5, 0
/* 80145E20  88 C6 00 20 */	lbz r6, 0x20(r6)
/* 80145E24  4B FF FC A1 */	bl daNpcT_incIdx__FiRUsii
lbl_80145E28:
/* 80145E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80145E2C  7C 08 03 A6 */	mtlr r0
/* 80145E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80145E34  4E 80 00 20 */	blr 
