lbl_80AADCC0:
/* 80AADCC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AADCC4  7C 08 02 A6 */	mflr r0
/* 80AADCC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AADCCC  3C 60 80 AB */	lis r3, data_80AB1FEC@ha
/* 80AADCD0  38 63 1F EC */	addi r3, r3, data_80AB1FEC@l
/* 80AADCD4  4B 7B 54 78 */	b ModuleConstructorsX
/* 80AADCD8  4B 7B 53 B0 */	b ModuleProlog
/* 80AADCDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AADCE0  7C 08 03 A6 */	mtlr r0
/* 80AADCE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AADCE8  4E 80 00 20 */	blr 
