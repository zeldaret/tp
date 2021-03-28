lbl_80C18B40:
/* 80C18B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18B44  7C 08 02 A6 */	mflr r0
/* 80C18B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C18B4C  3C 60 80 C2 */	lis r3, data_80C19470@ha
/* 80C18B50  38 63 94 70 */	addi r3, r3, data_80C19470@l
/* 80C18B54  4B 64 A5 F8 */	b ModuleConstructorsX
/* 80C18B58  4B 64 A5 30 */	b ModuleProlog
/* 80C18B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18B60  7C 08 03 A6 */	mtlr r0
/* 80C18B64  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18B68  4E 80 00 20 */	blr 
