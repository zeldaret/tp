lbl_80B4DD28:
/* 80B4DD28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4DD2C  7C 08 02 A6 */	mflr r0
/* 80B4DD30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4DD34  7C 60 1B 78 */	mr r0, r3
/* 80B4DD38  2C 04 00 00 */	cmpwi r4, 0
/* 80B4DD3C  40 82 00 30 */	bne lbl_80B4DD6C
/* 80B4DD40  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80B4DD44  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80B4DD48  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80B4DD4C  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80B4DD50  28 03 00 00 */	cmplwi r3, 0
/* 80B4DD54  41 82 00 18 */	beq lbl_80B4DD6C
/* 80B4DD58  7C 04 03 78 */	mr r4, r0
/* 80B4DD5C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B4DD60  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B4DD64  7D 89 03 A6 */	mtctr r12
/* 80B4DD68  4E 80 04 21 */	bctrl 
lbl_80B4DD6C:
/* 80B4DD6C  38 60 00 01 */	li r3, 1
/* 80B4DD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4DD74  7C 08 03 A6 */	mtlr r0
/* 80B4DD78  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4DD7C  4E 80 00 20 */	blr 
