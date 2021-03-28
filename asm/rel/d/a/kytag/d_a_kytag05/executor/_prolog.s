lbl_805289E0:
/* 805289E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805289E4  7C 08 02 A6 */	mflr r0
/* 805289E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805289EC  3C 60 80 53 */	lis r3, data_80528B10@ha
/* 805289F0  38 63 8B 10 */	addi r3, r3, data_80528B10@l
/* 805289F4  4B D3 A7 58 */	b ModuleConstructorsX
/* 805289F8  4B D3 A6 90 */	b ModuleProlog
/* 805289FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528A00  7C 08 03 A6 */	mtlr r0
/* 80528A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80528A08  4E 80 00 20 */	blr 
