lbl_805194A0:
/* 805194A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805194A4  7C 08 02 A6 */	mflr r0
/* 805194A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805194AC  3C 60 80 52 */	lis r3, data_80519774@ha
/* 805194B0  38 63 97 74 */	addi r3, r3, data_80519774@l
/* 805194B4  4B D4 9C 98 */	b ModuleConstructorsX
/* 805194B8  4B D4 9B D0 */	b ModuleProlog
/* 805194BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805194C0  7C 08 03 A6 */	mtlr r0
/* 805194C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805194C8  4E 80 00 20 */	blr 
