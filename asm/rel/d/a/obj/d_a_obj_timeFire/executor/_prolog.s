lbl_80D0E800:
/* 80D0E800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E804  7C 08 02 A6 */	mflr r0
/* 80D0E808  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E80C  3C 60 80 D1 */	lis r3, data_80D0F0D0@ha
/* 80D0E810  38 63 F0 D0 */	addi r3, r3, data_80D0F0D0@l
/* 80D0E814  4B 55 49 38 */	b ModuleConstructorsX
/* 80D0E818  4B 55 48 70 */	b ModuleProlog
/* 80D0E81C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E820  7C 08 03 A6 */	mtlr r0
/* 80D0E824  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E828  4E 80 00 20 */	blr 
