lbl_80D5FA80:
/* 80D5FA80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5FA84  7C 08 02 A6 */	mflr r0
/* 80D5FA88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5FA8C  3C 60 80 D6 */	lis r3, data_80D5FFA0@ha
/* 80D5FA90  38 63 FF A0 */	addi r3, r3, data_80D5FFA0@l
/* 80D5FA94  4B 50 36 B8 */	b ModuleConstructorsX
/* 80D5FA98  4B 50 35 F0 */	b ModuleProlog
/* 80D5FA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5FAA0  7C 08 03 A6 */	mtlr r0
/* 80D5FAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5FAA8  4E 80 00 20 */	blr 
