lbl_8055BFC0:
/* 8055BFC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055BFC4  7C 08 02 A6 */	mflr r0
/* 8055BFC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055BFCC  7C 60 1B 78 */	mr r0, r3
/* 8055BFD0  2C 04 00 00 */	cmpwi r4, 0
/* 8055BFD4  40 82 00 30 */	bne lbl_8055C004
/* 8055BFD8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8055BFDC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8055BFE0  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 8055BFE4  80 65 00 14 */	lwz r3, 0x14(r5)
/* 8055BFE8  28 03 00 00 */	cmplwi r3, 0
/* 8055BFEC  41 82 00 18 */	beq lbl_8055C004
/* 8055BFF0  7C 04 03 78 */	mr r4, r0
/* 8055BFF4  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 8055BFF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8055BFFC  7D 89 03 A6 */	mtctr r12
/* 8055C000  4E 80 04 21 */	bctrl 
lbl_8055C004:
/* 8055C004  38 60 00 01 */	li r3, 1
/* 8055C008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C00C  7C 08 03 A6 */	mtlr r0
/* 8055C010  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C014  4E 80 00 20 */	blr 
