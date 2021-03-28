lbl_80C95DA0:
/* 80C95DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C95DA4  7C 08 02 A6 */	mflr r0
/* 80C95DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C95DAC  3C 60 80 C9 */	lis r3, data_80C96504@ha
/* 80C95DB0  38 63 65 04 */	addi r3, r3, data_80C96504@l
/* 80C95DB4  4B 5C D3 98 */	b ModuleConstructorsX
/* 80C95DB8  4B 5C D2 D0 */	b ModuleProlog
/* 80C95DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C95DC0  7C 08 03 A6 */	mtlr r0
/* 80C95DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C95DC8  4E 80 00 20 */	blr 
