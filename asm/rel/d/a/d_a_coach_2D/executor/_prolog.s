lbl_806568E0:
/* 806568E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806568E4  7C 08 02 A6 */	mflr r0
/* 806568E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806568EC  3C 60 80 65 */	lis r3, data_80657910@ha
/* 806568F0  38 63 79 10 */	addi r3, r3, data_80657910@l
/* 806568F4  4B C0 C8 58 */	b ModuleConstructorsX
/* 806568F8  4B C0 C7 90 */	b ModuleProlog
/* 806568FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80656900  7C 08 03 A6 */	mtlr r0
/* 80656904  38 21 00 10 */	addi r1, r1, 0x10
/* 80656908  4E 80 00 20 */	blr 
