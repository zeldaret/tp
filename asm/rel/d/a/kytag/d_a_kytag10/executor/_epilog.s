lbl_80528BAC:
/* 80528BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80528BB0  7C 08 02 A6 */	mflr r0
/* 80528BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528BB8  4B D3 A4 D4 */	b ModuleEpilog
/* 80528BBC  3C 60 80 53 */	lis r3, data_805293FC@ha
/* 80528BC0  38 63 93 FC */	addi r3, r3, data_805293FC@l
/* 80528BC4  4B D3 A5 CC */	b ModuleDestructorsX
/* 80528BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528BCC  7C 08 03 A6 */	mtlr r0
/* 80528BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80528BD4  4E 80 00 20 */	blr 
