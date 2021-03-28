lbl_809F26F8:
/* 809F26F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F26FC  7C 08 02 A6 */	mflr r0
/* 809F2700  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F2704  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F2708  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F270C  41 82 00 1C */	beq lbl_809F2728
/* 809F2710  3C A0 80 9F */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 809F2714  38 05 2F 4C */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 809F2718  90 1F 00 04 */	stw r0, 4(r31)
/* 809F271C  7C 80 07 35 */	extsh. r0, r4
/* 809F2720  40 81 00 08 */	ble lbl_809F2728
/* 809F2724  4B 8D C6 18 */	b __dl__FPv
lbl_809F2728:
/* 809F2728  7F E3 FB 78 */	mr r3, r31
/* 809F272C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F2730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F2734  7C 08 03 A6 */	mtlr r0
/* 809F2738  38 21 00 10 */	addi r1, r1, 0x10
/* 809F273C  4E 80 00 20 */	blr 
