lbl_8054E418:
/* 8054E418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E41C  7C 08 02 A6 */	mflr r0
/* 8054E420  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054E428  7C 7F 1B 79 */	or. r31, r3, r3
/* 8054E42C  41 82 00 1C */	beq lbl_8054E448
/* 8054E430  3C A0 80 55 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 8054E434  38 05 F0 98 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 8054E438  90 1F 00 04 */	stw r0, 4(r31)
/* 8054E43C  7C 80 07 35 */	extsh. r0, r4
/* 8054E440  40 81 00 08 */	ble lbl_8054E448
/* 8054E444  4B D8 08 F8 */	b __dl__FPv
lbl_8054E448:
/* 8054E448  7F E3 FB 78 */	mr r3, r31
/* 8054E44C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054E450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E454  7C 08 03 A6 */	mtlr r0
/* 8054E458  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E45C  4E 80 00 20 */	blr 
