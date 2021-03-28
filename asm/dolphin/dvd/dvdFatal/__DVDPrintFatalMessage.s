lbl_8034BCFC:
/* 8034BCFC  7C 08 02 A6 */	mflr r0
/* 8034BD00  90 01 00 04 */	stw r0, 4(r1)
/* 8034BD04  94 21 FF F8 */	stwu r1, -8(r1)
/* 8034BD08  81 8D 92 48 */	lwz r12, FatalFunc(r13)
/* 8034BD0C  28 0C 00 00 */	cmplwi r12, 0
/* 8034BD10  41 82 00 0C */	beq lbl_8034BD1C
/* 8034BD14  7D 88 03 A6 */	mtlr r12
/* 8034BD18  4E 80 00 21 */	blrl 
lbl_8034BD1C:
/* 8034BD1C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8034BD20  38 21 00 08 */	addi r1, r1, 8
/* 8034BD24  7C 08 03 A6 */	mtlr r0
/* 8034BD28  4E 80 00 20 */	blr 
