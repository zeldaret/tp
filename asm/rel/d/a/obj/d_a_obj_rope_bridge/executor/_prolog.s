lbl_80595DC0:
/* 80595DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80595DC4  7C 08 02 A6 */	mflr r0
/* 80595DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595DCC  3C 60 80 59 */	lis r3, data_80597D74@ha
/* 80595DD0  38 63 7D 74 */	addi r3, r3, data_80597D74@l
/* 80595DD4  4B CC D3 78 */	b ModuleConstructorsX
/* 80595DD8  4B CC D2 B0 */	b ModuleProlog
/* 80595DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595DE0  7C 08 03 A6 */	mtlr r0
/* 80595DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80595DE8  4E 80 00 20 */	blr 
