lbl_8048A680:
/* 8048A680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048A684  7C 08 02 A6 */	mflr r0
/* 8048A688  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048A68C  3C 60 80 49 */	lis r3, data_8048AC20@ha
/* 8048A690  38 63 AC 20 */	addi r3, r3, data_8048AC20@l
/* 8048A694  4B DD 8A B8 */	b ModuleConstructorsX
/* 8048A698  4B DD 89 F0 */	b ModuleProlog
/* 8048A69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048A6A0  7C 08 03 A6 */	mtlr r0
/* 8048A6A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048A6A8  4E 80 00 20 */	blr 
