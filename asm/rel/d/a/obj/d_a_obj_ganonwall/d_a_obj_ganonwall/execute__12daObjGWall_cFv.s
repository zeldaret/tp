lbl_80BF50A4:
/* 80BF50A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF50A8  7C 08 02 A6 */	mflr r0
/* 80BF50AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF50B0  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80BF50B4  4B 41 83 74 */	b play__14mDoExt_baseAnmFv
/* 80BF50B8  38 60 00 01 */	li r3, 1
/* 80BF50BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF50C0  7C 08 03 A6 */	mtlr r0
/* 80BF50C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF50C8  4E 80 00 20 */	blr 
