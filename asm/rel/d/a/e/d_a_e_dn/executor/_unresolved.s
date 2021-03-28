lbl_804E5118:
/* 804E5118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E511C  7C 08 02 A6 */	mflr r0
/* 804E5120  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5124  4B D7 DF 6C */	b ModuleUnresolved
/* 804E5128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E512C  7C 08 03 A6 */	mtlr r0
/* 804E5130  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5134  4E 80 00 20 */	blr 
