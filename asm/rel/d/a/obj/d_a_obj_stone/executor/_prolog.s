lbl_80CE9000:
/* 80CE9000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE9004  7C 08 02 A6 */	mflr r0
/* 80CE9008  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE900C  3C 60 80 CF */	lis r3, data_80CECAAC@ha
/* 80CE9010  38 63 CA AC */	addi r3, r3, data_80CECAAC@l
/* 80CE9014  4B 57 A1 38 */	b ModuleConstructorsX
/* 80CE9018  4B 57 A0 70 */	b ModuleProlog
/* 80CE901C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE9020  7C 08 03 A6 */	mtlr r0
/* 80CE9024  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE9028  4E 80 00 20 */	blr 
