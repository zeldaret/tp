lbl_807622A0:
/* 807622A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807622A4  7C 08 02 A6 */	mflr r0
/* 807622A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807622AC  3C 60 80 76 */	lis r3, data_80764CF8@ha
/* 807622B0  38 63 4C F8 */	addi r3, r3, data_80764CF8@l
/* 807622B4  4B B0 0E 98 */	b ModuleConstructorsX
/* 807622B8  4B B0 0D D0 */	b ModuleProlog
/* 807622BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807622C0  7C 08 03 A6 */	mtlr r0
/* 807622C4  38 21 00 10 */	addi r1, r1, 0x10
/* 807622C8  4E 80 00 20 */	blr 
