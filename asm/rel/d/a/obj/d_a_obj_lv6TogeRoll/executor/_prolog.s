lbl_80C77B40:
/* 80C77B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C77B44  7C 08 02 A6 */	mflr r0
/* 80C77B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C77B4C  3C 60 80 C8 */	lis r3, data_80C799D0@ha
/* 80C77B50  38 63 99 D0 */	addi r3, r3, data_80C799D0@l
/* 80C77B54  4B 5E B5 F8 */	b ModuleConstructorsX
/* 80C77B58  4B 5E B5 30 */	b ModuleProlog
/* 80C77B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C77B60  7C 08 03 A6 */	mtlr r0
/* 80C77B64  38 21 00 10 */	addi r1, r1, 0x10
/* 80C77B68  4E 80 00 20 */	blr 
