lbl_80D60020:
/* 80D60020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60024  7C 08 02 A6 */	mflr r0
/* 80D60028  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6002C  3C 60 80 D6 */	lis r3, data_80D60118@ha
/* 80D60030  38 63 01 18 */	addi r3, r3, data_80D60118@l
/* 80D60034  4B 50 31 18 */	b ModuleConstructorsX
/* 80D60038  4B 50 30 50 */	b ModuleProlog
/* 80D6003C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D60040  7C 08 03 A6 */	mtlr r0
/* 80D60044  38 21 00 10 */	addi r1, r1, 0x10
/* 80D60048  4E 80 00 20 */	blr 
