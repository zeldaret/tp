lbl_804CC78C:
/* 804CC78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CC790  7C 08 02 A6 */	mflr r0
/* 804CC794  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CC798  4B D9 68 F4 */	b ModuleEpilog
/* 804CC79C  3C 60 80 4D */	lis r3, data_804CE3F0@ha
/* 804CC7A0  38 63 E3 F0 */	addi r3, r3, data_804CE3F0@l
/* 804CC7A4  4B D9 69 EC */	b ModuleDestructorsX
/* 804CC7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CC7AC  7C 08 03 A6 */	mtlr r0
/* 804CC7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804CC7B4  4E 80 00 20 */	blr 
