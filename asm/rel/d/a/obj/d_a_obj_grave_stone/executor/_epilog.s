lbl_80C125AC:
/* 80C125AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C125B0  7C 08 02 A6 */	mflr r0
/* 80C125B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C125B8  4B 65 0A D4 */	b ModuleEpilog
/* 80C125BC  3C 60 80 C1 */	lis r3, data_80C1324C@ha
/* 80C125C0  38 63 32 4C */	addi r3, r3, data_80C1324C@l
/* 80C125C4  4B 65 0B CC */	b ModuleDestructorsX
/* 80C125C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C125CC  7C 08 03 A6 */	mtlr r0
/* 80C125D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C125D4  4E 80 00 20 */	blr 
