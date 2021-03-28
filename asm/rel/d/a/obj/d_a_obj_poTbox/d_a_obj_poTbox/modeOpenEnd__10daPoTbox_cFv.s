lbl_80CB4C60:
/* 80CB4C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB4C64  7C 08 02 A6 */	mflr r0
/* 80CB4C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB4C6C  38 63 05 D4 */	addi r3, r3, 0x5d4
/* 80CB4C70  4B 35 87 B8 */	b play__14mDoExt_baseAnmFv
/* 80CB4C74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB4C78  7C 08 03 A6 */	mtlr r0
/* 80CB4C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB4C80  4E 80 00 20 */	blr 
