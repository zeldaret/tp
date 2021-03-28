lbl_80D5D9E0:
/* 80D5D9E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D9E4  7C 08 02 A6 */	mflr r0
/* 80D5D9E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D9EC  3C 60 80 D6 */	lis r3, data_80D5DD48@ha
/* 80D5D9F0  38 63 DD 48 */	addi r3, r3, data_80D5DD48@l
/* 80D5D9F4  4B 50 57 58 */	b ModuleConstructorsX
/* 80D5D9F8  4B 50 56 90 */	b ModuleProlog
/* 80D5D9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DA00  7C 08 03 A6 */	mtlr r0
/* 80D5DA04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DA08  4E 80 00 20 */	blr 
