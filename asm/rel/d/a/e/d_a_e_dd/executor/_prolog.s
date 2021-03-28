lbl_806A2180:
/* 806A2180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A2184  7C 08 02 A6 */	mflr r0
/* 806A2188  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A218C  3C 60 80 6A */	lis r3, data_806A71B0@ha
/* 806A2190  38 63 71 B0 */	addi r3, r3, data_806A71B0@l
/* 806A2194  4B BC 0F B8 */	b ModuleConstructorsX
/* 806A2198  4B BC 0E F0 */	b ModuleProlog
/* 806A219C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A21A0  7C 08 03 A6 */	mtlr r0
/* 806A21A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806A21A8  4E 80 00 20 */	blr 
