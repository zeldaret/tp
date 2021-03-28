lbl_80CA66CC:
/* 80CA66CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA66D0  7C 08 02 A6 */	mflr r0
/* 80CA66D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA66D8  4B 5B C9 B4 */	b ModuleEpilog
/* 80CA66DC  3C 60 80 CA */	lis r3, data_80CA78F0@ha
/* 80CA66E0  38 63 78 F0 */	addi r3, r3, data_80CA78F0@l
/* 80CA66E4  4B 5B CA AC */	b ModuleDestructorsX
/* 80CA66E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA66EC  7C 08 03 A6 */	mtlr r0
/* 80CA66F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA66F4  4E 80 00 20 */	blr 
