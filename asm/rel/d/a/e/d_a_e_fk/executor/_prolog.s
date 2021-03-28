lbl_806B92A0:
/* 806B92A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B92A4  7C 08 02 A6 */	mflr r0
/* 806B92A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B92AC  3C 60 80 6C */	lis r3, data_806BB6BC@ha
/* 806B92B0  38 63 B6 BC */	addi r3, r3, data_806BB6BC@l
/* 806B92B4  4B BA 9E 98 */	b ModuleConstructorsX
/* 806B92B8  4B BA 9D D0 */	b ModuleProlog
/* 806B92BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B92C0  7C 08 03 A6 */	mtlr r0
/* 806B92C4  38 21 00 10 */	addi r1, r1, 0x10
/* 806B92C8  4E 80 00 20 */	blr 
