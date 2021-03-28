lbl_80D566E0:
/* 80D566E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D566E4  7C 08 02 A6 */	mflr r0
/* 80D566E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D566EC  3C 60 80 D5 */	lis r3, data_80D56AEC@ha
/* 80D566F0  38 63 6A EC */	addi r3, r3, data_80D56AEC@l
/* 80D566F4  4B 50 CA 58 */	b ModuleConstructorsX
/* 80D566F8  4B 50 C9 90 */	b ModuleProlog
/* 80D566FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D56700  7C 08 03 A6 */	mtlr r0
/* 80D56704  38 21 00 10 */	addi r1, r1, 0x10
/* 80D56708  4E 80 00 20 */	blr 
