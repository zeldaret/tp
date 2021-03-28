lbl_80682780:
/* 80682780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80682784  7C 08 02 A6 */	mflr r0
/* 80682788  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068278C  3C 60 80 68 */	lis r3, data_80685420@ha
/* 80682790  38 63 54 20 */	addi r3, r3, data_80685420@l
/* 80682794  4B BE 09 B8 */	b ModuleConstructorsX
/* 80682798  4B BE 08 F0 */	b ModuleProlog
/* 8068279C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806827A0  7C 08 03 A6 */	mtlr r0
/* 806827A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806827A8  4E 80 00 20 */	blr 
