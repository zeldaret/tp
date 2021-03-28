lbl_806030C0:
/* 806030C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806030C4  7C 08 02 A6 */	mflr r0
/* 806030C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806030CC  3C 60 80 60 */	lis r3, data_80604030@ha
/* 806030D0  38 63 40 30 */	addi r3, r3, data_80604030@l
/* 806030D4  4B C6 00 78 */	b ModuleConstructorsX
/* 806030D8  4B C5 FF B0 */	b ModuleProlog
/* 806030DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806030E0  7C 08 03 A6 */	mtlr r0
/* 806030E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806030E8  4E 80 00 20 */	blr 
