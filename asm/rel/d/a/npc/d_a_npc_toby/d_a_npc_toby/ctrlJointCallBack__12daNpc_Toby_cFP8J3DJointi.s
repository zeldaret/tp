lbl_80B1F030:
/* 80B1F030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1F034  7C 08 02 A6 */	mflr r0
/* 80B1F038  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1F03C  7C 60 1B 78 */	mr r0, r3
/* 80B1F040  2C 04 00 00 */	cmpwi r4, 0
/* 80B1F044  40 82 00 30 */	bne lbl_80B1F074
/* 80B1F048  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B1F04C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B1F050  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80B1F054  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80B1F058  28 03 00 00 */	cmplwi r3, 0
/* 80B1F05C  41 82 00 18 */	beq lbl_80B1F074
/* 80B1F060  7C 04 03 78 */	mr r4, r0
/* 80B1F064  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B1F068  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1F06C  7D 89 03 A6 */	mtctr r12
/* 80B1F070  4E 80 04 21 */	bctrl 
lbl_80B1F074:
/* 80B1F074  38 60 00 01 */	li r3, 1
/* 80B1F078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1F07C  7C 08 03 A6 */	mtlr r0
/* 80B1F080  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1F084  4E 80 00 20 */	blr 
