lbl_80A60AB0:
/* 80A60AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A60AB4  7C 08 02 A6 */	mflr r0
/* 80A60AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A60ABC  7C 60 1B 78 */	mr r0, r3
/* 80A60AC0  2C 04 00 00 */	cmpwi r4, 0
/* 80A60AC4  40 82 00 30 */	bne lbl_80A60AF4
/* 80A60AC8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80A60ACC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80A60AD0  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80A60AD4  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80A60AD8  28 03 00 00 */	cmplwi r3, 0
/* 80A60ADC  41 82 00 18 */	beq lbl_80A60AF4
/* 80A60AE0  7C 04 03 78 */	mr r4, r0
/* 80A60AE4  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A60AE8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A60AEC  7D 89 03 A6 */	mtctr r12
/* 80A60AF0  4E 80 04 21 */	bctrl 
lbl_80A60AF4:
/* 80A60AF4  38 60 00 01 */	li r3, 1
/* 80A60AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A60AFC  7C 08 03 A6 */	mtlr r0
/* 80A60B00  38 21 00 10 */	addi r1, r1, 0x10
/* 80A60B04  4E 80 00 20 */	blr 
