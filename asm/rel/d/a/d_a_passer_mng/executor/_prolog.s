lbl_80D456A0:
/* 80D456A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D456A4  7C 08 02 A6 */	mflr r0
/* 80D456A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D456AC  3C 60 80 D4 */	lis r3, data_80D46C18@ha
/* 80D456B0  38 63 6C 18 */	addi r3, r3, data_80D46C18@l
/* 80D456B4  4B 51 DA 98 */	b ModuleConstructorsX
/* 80D456B8  4B 51 D9 D0 */	b ModuleProlog
/* 80D456BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D456C0  7C 08 03 A6 */	mtlr r0
/* 80D456C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D456C8  4E 80 00 20 */	blr 
