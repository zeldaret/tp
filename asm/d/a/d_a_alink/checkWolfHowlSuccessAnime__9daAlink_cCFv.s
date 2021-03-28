lbl_800D0AA4:
/* 800D0AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D0AA8  7C 08 02 A6 */	mflr r0
/* 800D0AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D0AB0  38 80 00 5E */	li r4, 0x5e
/* 800D0AB4  48 05 7D 59 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 800D0AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D0ABC  7C 08 03 A6 */	mtlr r0
/* 800D0AC0  38 21 00 10 */	addi r1, r1, 0x10
/* 800D0AC4  4E 80 00 20 */	blr 
