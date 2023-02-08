lbl_80AA973C:
/* 80AA973C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA9740  7C 08 02 A6 */	mflr r0
/* 80AA9744  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA9748  7C 60 1B 78 */	mr r0, r3
/* 80AA974C  2C 04 00 00 */	cmpwi r4, 0
/* 80AA9750  40 82 00 30 */	bne lbl_80AA9780
/* 80AA9754  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80AA9758  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80AA975C  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80AA9760  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80AA9764  28 03 00 00 */	cmplwi r3, 0
/* 80AA9768  41 82 00 18 */	beq lbl_80AA9780
/* 80AA976C  7C 04 03 78 */	mr r4, r0
/* 80AA9770  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AA9774  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AA9778  7D 89 03 A6 */	mtctr r12
/* 80AA977C  4E 80 04 21 */	bctrl 
lbl_80AA9780:
/* 80AA9780  38 60 00 01 */	li r3, 1
/* 80AA9784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA9788  7C 08 03 A6 */	mtlr r0
/* 80AA978C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA9790  4E 80 00 20 */	blr 
