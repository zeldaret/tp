lbl_807F2B40:
/* 807F2B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F2B44  7C 08 02 A6 */	mflr r0
/* 807F2B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F2B4C  3C 60 80 7F */	lis r3, data_807F79EC@ha
/* 807F2B50  38 63 79 EC */	addi r3, r3, data_807F79EC@l
/* 807F2B54  4B A7 05 F8 */	b ModuleConstructorsX
/* 807F2B58  4B A7 05 30 */	b ModuleProlog
/* 807F2B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F2B60  7C 08 03 A6 */	mtlr r0
/* 807F2B64  38 21 00 10 */	addi r1, r1, 0x10
/* 807F2B68  4E 80 00 20 */	blr 
