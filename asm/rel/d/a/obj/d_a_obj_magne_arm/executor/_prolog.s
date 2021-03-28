lbl_8058F2E0:
/* 8058F2E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058F2E4  7C 08 02 A6 */	mflr r0
/* 8058F2E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058F2EC  3C 60 80 59 */	lis r3, data_80592840@ha
/* 8058F2F0  38 63 28 40 */	addi r3, r3, data_80592840@l
/* 8058F2F4  4B CD 3E 58 */	b ModuleConstructorsX
/* 8058F2F8  4B CD 3D 90 */	b ModuleProlog
/* 8058F2FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058F300  7C 08 03 A6 */	mtlr r0
/* 8058F304  38 21 00 10 */	addi r1, r1, 0x10
/* 8058F308  4E 80 00 20 */	blr 
