lbl_809E400C:
/* 809E400C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E4010  7C 08 02 A6 */	mflr r0
/* 809E4014  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E4018  4B 87 F0 74 */	b ModuleEpilog
/* 809E401C  3C 60 80 9E */	lis r3, __destroy_global_chain_reference@ha
/* 809E4020  38 63 7D C0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 809E4024  4B 87 F1 6C */	b ModuleDestructorsX
/* 809E4028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E402C  7C 08 03 A6 */	mtlr r0
/* 809E4030  38 21 00 10 */	addi r1, r1, 0x10
/* 809E4034  4E 80 00 20 */	blr 
