lbl_806752BC:
/* 806752BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806752C0  7C 08 02 A6 */	mflr r0
/* 806752C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806752C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806752CC  93 C1 00 08 */	stw r30, 8(r1)
/* 806752D0  7C 7E 1B 78 */	mr r30, r3
/* 806752D4  80 63 05 88 */	lwz r3, 0x588(r3)
/* 806752D8  4B 99 81 50 */	b play__14mDoExt_baseAnmFv
/* 806752DC  7C 7F 1B 78 */	mr r31, r3
/* 806752E0  7F C3 F3 78 */	mr r3, r30
/* 806752E4  4B FF E3 15 */	bl calcMtx__12daMBdoorL1_cFv
/* 806752E8  7F E3 FB 78 */	mr r3, r31
/* 806752EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806752F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806752F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806752F8  7C 08 03 A6 */	mtlr r0
/* 806752FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80675300  4E 80 00 20 */	blr 
