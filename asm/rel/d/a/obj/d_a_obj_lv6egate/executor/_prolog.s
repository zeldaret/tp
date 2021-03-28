lbl_80C82000:
/* 80C82000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82004  7C 08 02 A6 */	mflr r0
/* 80C82008  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8200C  3C 60 80 C8 */	lis r3, data_80C82B68@ha
/* 80C82010  38 63 2B 68 */	addi r3, r3, data_80C82B68@l
/* 80C82014  4B 5E 11 38 */	b ModuleConstructorsX
/* 80C82018  4B 5E 10 70 */	b ModuleProlog
/* 80C8201C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C82020  7C 08 03 A6 */	mtlr r0
/* 80C82024  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82028  4E 80 00 20 */	blr 
