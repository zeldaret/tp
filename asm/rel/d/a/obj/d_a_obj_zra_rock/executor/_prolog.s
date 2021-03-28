lbl_80D44C40:
/* 80D44C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D44C44  7C 08 02 A6 */	mflr r0
/* 80D44C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D44C4C  3C 60 80 D4 */	lis r3, data_80D455BC@ha
/* 80D44C50  38 63 55 BC */	addi r3, r3, data_80D455BC@l
/* 80D44C54  4B 51 E4 F8 */	b ModuleConstructorsX
/* 80D44C58  4B 51 E4 30 */	b ModuleProlog
/* 80D44C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D44C60  7C 08 03 A6 */	mtlr r0
/* 80D44C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80D44C68  4E 80 00 20 */	blr 
