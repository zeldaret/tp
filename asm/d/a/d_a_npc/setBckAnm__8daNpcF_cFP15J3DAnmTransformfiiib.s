lbl_80152C80:
/* 80152C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80152C84  7C 08 02 A6 */	mflr r0
/* 80152C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80152C8C  7C AB 2B 78 */	mr r11, r5
/* 80152C90  7C CA 33 78 */	mr r10, r6
/* 80152C94  7C E0 3B 78 */	mr r0, r7
/* 80152C98  7D 09 43 78 */	mr r9, r8
/* 80152C9C  38 A0 00 01 */	li r5, 1
/* 80152CA0  7D 66 5B 78 */	mr r6, r11
/* 80152CA4  7D 47 07 34 */	extsh r7, r10
/* 80152CA8  7C 08 07 34 */	extsh r8, r0
/* 80152CAC  38 63 05 6C */	addi r3, r3, 0x56c
/* 80152CB0  4B EB AB 2D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80152CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80152CB8  7C 08 03 A6 */	mtlr r0
/* 80152CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80152CC0  4E 80 00 20 */	blr 
