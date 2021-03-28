lbl_80A74BA0:
/* 80A74BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A74BA4  7C 08 02 A6 */	mflr r0
/* 80A74BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A74BAC  7C 60 1B 78 */	mr r0, r3
/* 80A74BB0  2C 04 00 00 */	cmpwi r4, 0
/* 80A74BB4  40 82 00 30 */	bne lbl_80A74BE4
/* 80A74BB8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80A74BBC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80A74BC0  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80A74BC4  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80A74BC8  28 03 00 00 */	cmplwi r3, 0
/* 80A74BCC  41 82 00 18 */	beq lbl_80A74BE4
/* 80A74BD0  7C 04 03 78 */	mr r4, r0
/* 80A74BD4  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A74BD8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A74BDC  7D 89 03 A6 */	mtctr r12
/* 80A74BE0  4E 80 04 21 */	bctrl 
lbl_80A74BE4:
/* 80A74BE4  38 60 00 01 */	li r3, 1
/* 80A74BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A74BEC  7C 08 03 A6 */	mtlr r0
/* 80A74BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A74BF4  4E 80 00 20 */	blr 
