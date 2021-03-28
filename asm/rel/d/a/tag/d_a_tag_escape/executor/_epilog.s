lbl_80D5878C:
/* 80D5878C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D58790  7C 08 02 A6 */	mflr r0
/* 80D58794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D58798  4B 50 A8 F4 */	b ModuleEpilog
/* 80D5879C  3C 60 80 D6 */	lis r3, data_80D5885C@ha
/* 80D587A0  38 63 88 5C */	addi r3, r3, data_80D5885C@l
/* 80D587A4  4B 50 A9 EC */	b ModuleDestructorsX
/* 80D587A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D587AC  7C 08 03 A6 */	mtlr r0
/* 80D587B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D587B4  4E 80 00 20 */	blr 
