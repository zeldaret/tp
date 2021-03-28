lbl_80AECAC0:
/* 80AECAC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AECAC4  7C 08 02 A6 */	mflr r0
/* 80AECAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AECACC  3C 60 80 AF */	lis r3, data_80AEF0EC@ha
/* 80AECAD0  38 63 F0 EC */	addi r3, r3, data_80AEF0EC@l
/* 80AECAD4  4B 77 66 78 */	b ModuleConstructorsX
/* 80AECAD8  4B 77 65 B0 */	b ModuleProlog
/* 80AECADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AECAE0  7C 08 03 A6 */	mtlr r0
/* 80AECAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AECAE8  4E 80 00 20 */	blr 
