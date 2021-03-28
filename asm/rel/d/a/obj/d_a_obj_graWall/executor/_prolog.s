lbl_80C10B80:
/* 80C10B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C10B84  7C 08 02 A6 */	mflr r0
/* 80C10B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C10B8C  3C 60 80 C1 */	lis r3, data_80C10FA8@ha
/* 80C10B90  38 63 0F A8 */	addi r3, r3, data_80C10FA8@l
/* 80C10B94  4B 65 25 B8 */	b ModuleConstructorsX
/* 80C10B98  4B 65 24 F0 */	b ModuleProlog
/* 80C10B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C10BA0  7C 08 03 A6 */	mtlr r0
/* 80C10BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C10BA8  4E 80 00 20 */	blr 
