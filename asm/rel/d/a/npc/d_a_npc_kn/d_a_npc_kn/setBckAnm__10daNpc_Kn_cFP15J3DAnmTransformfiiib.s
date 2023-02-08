lbl_80A38640:
/* 80A38640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A38644  7C 08 02 A6 */	mflr r0
/* 80A38648  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3864C  7C AB 2B 78 */	mr r11, r5
/* 80A38650  7C CA 33 78 */	mr r10, r6
/* 80A38654  7C E0 3B 78 */	mr r0, r7
/* 80A38658  7D 09 43 78 */	mr r9, r8
/* 80A3865C  38 A0 00 01 */	li r5, 1
/* 80A38660  7D 66 5B 78 */	mr r6, r11
/* 80A38664  7D 47 07 34 */	extsh r7, r10
/* 80A38668  7C 08 07 34 */	extsh r8, r0
/* 80A3866C  38 63 06 54 */	addi r3, r3, 0x654
/* 80A38670  4B 5D 51 6D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80A38674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A38678  7C 08 03 A6 */	mtlr r0
/* 80A3867C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A38680  4E 80 00 20 */	blr 
