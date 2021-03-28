lbl_809DF7E0:
/* 809DF7E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DF7E4  7C 08 02 A6 */	mflr r0
/* 809DF7E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DF7EC  3C 60 80 9E */	lis r3, data_809E38C4@ha
/* 809DF7F0  38 63 38 C4 */	addi r3, r3, data_809E38C4@l
/* 809DF7F4  4B 88 39 58 */	b ModuleConstructorsX
/* 809DF7F8  4B 88 38 90 */	b ModuleProlog
/* 809DF7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DF800  7C 08 03 A6 */	mtlr r0
/* 809DF804  38 21 00 10 */	addi r1, r1, 0x10
/* 809DF808  4E 80 00 20 */	blr 
