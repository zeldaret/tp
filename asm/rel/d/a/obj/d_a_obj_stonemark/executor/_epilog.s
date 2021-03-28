lbl_80599FCC:
/* 80599FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599FD0  7C 08 02 A6 */	mflr r0
/* 80599FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599FD8  4B CC 90 B4 */	b ModuleEpilog
/* 80599FDC  3C 60 80 5A */	lis r3, data_8059A3E4@ha
/* 80599FE0  38 63 A3 E4 */	addi r3, r3, data_8059A3E4@l
/* 80599FE4  4B CC 91 AC */	b ModuleDestructorsX
/* 80599FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599FEC  7C 08 03 A6 */	mtlr r0
/* 80599FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80599FF4  4E 80 00 20 */	blr 
