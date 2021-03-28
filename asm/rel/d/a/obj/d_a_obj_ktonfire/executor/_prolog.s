lbl_8058C520:
/* 8058C520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C524  7C 08 02 A6 */	mflr r0
/* 8058C528  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C52C  3C 60 80 59 */	lis r3, data_8058CF74@ha
/* 8058C530  38 63 CF 74 */	addi r3, r3, data_8058CF74@l
/* 8058C534  4B CD 6C 18 */	b ModuleConstructorsX
/* 8058C538  4B CD 6B 50 */	b ModuleProlog
/* 8058C53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C540  7C 08 03 A6 */	mtlr r0
/* 8058C544  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C548  4E 80 00 20 */	blr 
