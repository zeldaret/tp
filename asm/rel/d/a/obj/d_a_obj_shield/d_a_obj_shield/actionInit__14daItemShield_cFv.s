lbl_80CD77F0:
/* 80CD77F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD77F4  7C 08 02 A6 */	mflr r0
/* 80CD77F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD77FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD7800  7C 7F 1B 78 */	mr r31, r3
/* 80CD7804  4B 36 02 70 */	b show__12daItemBase_cFv
/* 80CD7808  7F E3 FB 78 */	mr r3, r31
/* 80CD780C  48 00 00 1D */	bl actionWaitInit__14daItemShield_cFv
/* 80CD7810  38 60 00 01 */	li r3, 1
/* 80CD7814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD7818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD781C  7C 08 03 A6 */	mtlr r0
/* 80CD7820  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD7824  4E 80 00 20 */	blr 
