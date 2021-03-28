lbl_80CA4B98:
/* 80CA4B98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA4B9C  7C 08 02 A6 */	mflr r0
/* 80CA4BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4BA4  4B 5B E4 EC */	b ModuleUnresolved
/* 80CA4BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA4BAC  7C 08 03 A6 */	mtlr r0
/* 80CA4BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA4BB4  4E 80 00 20 */	blr 
