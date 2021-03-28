lbl_80D4D740:
/* 80D4D740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D744  7C 08 02 A6 */	mflr r0
/* 80D4D748  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D74C  3C 60 80 D5 */	lis r3, data_80D4DEB0@ha
/* 80D4D750  38 63 DE B0 */	addi r3, r3, data_80D4DEB0@l
/* 80D4D754  4B 51 59 F8 */	b ModuleConstructorsX
/* 80D4D758  4B 51 59 30 */	b ModuleProlog
/* 80D4D75C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D760  7C 08 03 A6 */	mtlr r0
/* 80D4D764  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D768  4E 80 00 20 */	blr 
