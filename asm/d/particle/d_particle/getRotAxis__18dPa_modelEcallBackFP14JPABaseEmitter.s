lbl_8004AD90:
/* 8004AD90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004AD94  7C 08 02 A6 */	mflr r0
/* 8004AD98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004AD9C  4B FF FF BD */	bl getModel__18dPa_modelEcallBackFP14JPABaseEmitter
/* 8004ADA0  28 03 00 00 */	cmplwi r3, 0
/* 8004ADA4  41 82 00 0C */	beq lbl_8004ADB0
/* 8004ADA8  88 63 03 90 */	lbz r3, 0x390(r3)
/* 8004ADAC  48 00 00 08 */	b lbl_8004ADB4
lbl_8004ADB0:
/* 8004ADB0  38 60 00 00 */	li r3, 0
lbl_8004ADB4:
/* 8004ADB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004ADB8  7C 08 03 A6 */	mtlr r0
/* 8004ADBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8004ADC0  4E 80 00 20 */	blr 
