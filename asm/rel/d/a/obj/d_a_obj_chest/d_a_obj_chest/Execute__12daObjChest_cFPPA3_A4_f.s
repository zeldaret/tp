lbl_80BC970C:
/* 80BC970C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC9710  7C 08 02 A6 */	mflr r0
/* 80BC9714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC9718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC971C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC9720  7C 7E 1B 78 */	mr r30, r3
/* 80BC9724  7C 9F 23 78 */	mr r31, r4
/* 80BC9728  80 83 0A 94 */	lwz r4, 0xa94(r3)
/* 80BC972C  38 04 00 01 */	addi r0, r4, 1
/* 80BC9730  90 03 0A 94 */	stw r0, 0xa94(r3)
/* 80BC9734  48 00 00 31 */	bl action__12daObjChest_cFv
/* 80BC9738  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80BC973C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC9740  7F C3 F3 78 */	mr r3, r30
/* 80BC9744  4B FF F7 F1 */	bl setBaseMtx__12daObjChest_cFv
/* 80BC9748  38 60 00 01 */	li r3, 1
/* 80BC974C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC9750  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC9754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC9758  7C 08 03 A6 */	mtlr r0
/* 80BC975C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC9760  4E 80 00 20 */	blr 
