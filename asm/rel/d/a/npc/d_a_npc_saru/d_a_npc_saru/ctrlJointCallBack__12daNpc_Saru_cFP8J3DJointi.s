lbl_80AC0B0C:
/* 80AC0B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC0B10  7C 08 02 A6 */	mflr r0
/* 80AC0B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC0B18  7C 60 1B 78 */	mr r0, r3
/* 80AC0B1C  2C 04 00 00 */	cmpwi r4, 0
/* 80AC0B20  40 82 00 30 */	bne lbl_80AC0B50
/* 80AC0B24  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80AC0B28  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80AC0B2C  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80AC0B30  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80AC0B34  28 03 00 00 */	cmplwi r3, 0
/* 80AC0B38  41 82 00 18 */	beq lbl_80AC0B50
/* 80AC0B3C  7C 04 03 78 */	mr r4, r0
/* 80AC0B40  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AC0B44  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AC0B48  7D 89 03 A6 */	mtctr r12
/* 80AC0B4C  4E 80 04 21 */	bctrl 
lbl_80AC0B50:
/* 80AC0B50  38 60 00 01 */	li r3, 1
/* 80AC0B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC0B58  7C 08 03 A6 */	mtlr r0
/* 80AC0B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC0B60  4E 80 00 20 */	blr 
