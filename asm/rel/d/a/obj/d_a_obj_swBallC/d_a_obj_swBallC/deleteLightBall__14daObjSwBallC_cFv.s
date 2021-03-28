lbl_80CF68F8:
/* 80CF68F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF68FC  7C 08 02 A6 */	mflr r0
/* 80CF6900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF6904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF6908  7C 7F 1B 78 */	mr r31, r3
/* 80CF690C  48 00 00 21 */	bl deleteLightBallA__14daObjSwBallC_cFv
/* 80CF6910  7F E3 FB 78 */	mr r3, r31
/* 80CF6914  48 00 00 51 */	bl deleteLightBallB__14daObjSwBallC_cFv
/* 80CF6918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF691C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF6920  7C 08 03 A6 */	mtlr r0
/* 80CF6924  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF6928  4E 80 00 20 */	blr 
