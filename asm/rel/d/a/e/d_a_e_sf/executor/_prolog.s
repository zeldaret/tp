lbl_80785040:
/* 80785040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80785044  7C 08 02 A6 */	mflr r0
/* 80785048  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078504C  3C 60 80 79 */	lis r3, data_80789C24@ha
/* 80785050  38 63 9C 24 */	addi r3, r3, data_80789C24@l
/* 80785054  4B AD E0 F8 */	b ModuleConstructorsX
/* 80785058  4B AD E0 30 */	b ModuleProlog
/* 8078505C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80785060  7C 08 03 A6 */	mtlr r0
/* 80785064  38 21 00 10 */	addi r1, r1, 0x10
/* 80785068  4E 80 00 20 */	blr 
