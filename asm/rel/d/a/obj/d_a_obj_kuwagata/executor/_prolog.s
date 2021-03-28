lbl_80C4A100:
/* 80C4A100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4A104  7C 08 02 A6 */	mflr r0
/* 80C4A108  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4A10C  3C 60 80 C5 */	lis r3, data_80C4D47C@ha
/* 80C4A110  38 63 D4 7C */	addi r3, r3, data_80C4D47C@l
/* 80C4A114  4B 61 90 38 */	b ModuleConstructorsX
/* 80C4A118  4B 61 8F 70 */	b ModuleProlog
/* 80C4A11C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4A120  7C 08 03 A6 */	mtlr r0
/* 80C4A124  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4A128  4E 80 00 20 */	blr 
