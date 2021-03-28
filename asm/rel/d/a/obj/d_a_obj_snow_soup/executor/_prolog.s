lbl_80CDF7E0:
/* 80CDF7E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF7E4  7C 08 02 A6 */	mflr r0
/* 80CDF7E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF7EC  3C 60 80 CE */	lis r3, data_80CE0234@ha
/* 80CDF7F0  38 63 02 34 */	addi r3, r3, data_80CE0234@l
/* 80CDF7F4  4B 58 39 58 */	b ModuleConstructorsX
/* 80CDF7F8  4B 58 38 90 */	b ModuleProlog
/* 80CDF7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF800  7C 08 03 A6 */	mtlr r0
/* 80CDF804  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF808  4E 80 00 20 */	blr 
