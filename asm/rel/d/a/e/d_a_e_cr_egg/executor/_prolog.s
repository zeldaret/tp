lbl_80699EC0:
/* 80699EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80699EC4  7C 08 02 A6 */	mflr r0
/* 80699EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80699ECC  3C 60 80 6A */	lis r3, data_8069A8C4@ha
/* 80699ED0  38 63 A8 C4 */	addi r3, r3, data_8069A8C4@l
/* 80699ED4  4B BC 92 78 */	b ModuleConstructorsX
/* 80699ED8  4B BC 91 B0 */	b ModuleProlog
/* 80699EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80699EE0  7C 08 03 A6 */	mtlr r0
/* 80699EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80699EE8  4E 80 00 20 */	blr 
