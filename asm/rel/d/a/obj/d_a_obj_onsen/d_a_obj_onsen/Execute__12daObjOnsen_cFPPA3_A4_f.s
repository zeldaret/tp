lbl_80CA7EEC:
/* 80CA7EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA7EF0  7C 08 02 A6 */	mflr r0
/* 80CA7EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7EF8  38 03 05 6C */	addi r0, r3, 0x56c
/* 80CA7EFC  90 04 00 00 */	stw r0, 0(r4)
/* 80CA7F00  80 63 05 B0 */	lwz r3, 0x5b0(r3)
/* 80CA7F04  4B 36 55 24 */	b play__14mDoExt_baseAnmFv
/* 80CA7F08  38 60 00 01 */	li r3, 1
/* 80CA7F0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA7F10  7C 08 03 A6 */	mtlr r0
/* 80CA7F14  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA7F18  4E 80 00 20 */	blr 
