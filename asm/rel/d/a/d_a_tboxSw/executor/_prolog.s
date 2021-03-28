lbl_80D667E0:
/* 80D667E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D667E4  7C 08 02 A6 */	mflr r0
/* 80D667E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D667EC  3C 60 80 D6 */	lis r3, data_80D669C8@ha
/* 80D667F0  38 63 69 C8 */	addi r3, r3, data_80D669C8@l
/* 80D667F4  4B 4F C9 58 */	b ModuleConstructorsX
/* 80D667F8  4B 4F C8 90 */	b ModuleProlog
/* 80D667FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D66800  7C 08 03 A6 */	mtlr r0
/* 80D66804  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66808  4E 80 00 20 */	blr 
