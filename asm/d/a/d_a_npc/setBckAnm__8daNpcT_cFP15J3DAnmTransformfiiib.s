lbl_801481C0:
/* 801481C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801481C4  7C 08 02 A6 */	mflr r0
/* 801481C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801481CC  7C AB 2B 78 */	mr r11, r5
/* 801481D0  7C CA 33 78 */	mr r10, r6
/* 801481D4  7C E0 3B 78 */	mr r0, r7
/* 801481D8  7D 09 43 78 */	mr r9, r8
/* 801481DC  38 A0 00 01 */	li r5, 1
/* 801481E0  7D 66 5B 78 */	mr r6, r11
/* 801481E4  7D 47 07 34 */	extsh r7, r10
/* 801481E8  7C 08 07 34 */	extsh r8, r0
/* 801481EC  38 63 06 10 */	addi r3, r3, 0x610
/* 801481F0  4B EC 55 ED */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 801481F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801481F8  7C 08 03 A6 */	mtlr r0
/* 801481FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80148200  4E 80 00 20 */	blr 
