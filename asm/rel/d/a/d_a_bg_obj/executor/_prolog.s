lbl_804595E0:
/* 804595E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804595E4  7C 08 02 A6 */	mflr r0
/* 804595E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804595EC  3C 60 80 46 */	lis r3, data_8045C9AC@ha
/* 804595F0  38 63 C9 AC */	addi r3, r3, data_8045C9AC@l
/* 804595F4  4B E0 9B 58 */	b ModuleConstructorsX
/* 804595F8  4B E0 9A 90 */	b ModuleProlog
/* 804595FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80459600  7C 08 03 A6 */	mtlr r0
/* 80459604  38 21 00 10 */	addi r1, r1, 0x10
/* 80459608  4E 80 00 20 */	blr 
