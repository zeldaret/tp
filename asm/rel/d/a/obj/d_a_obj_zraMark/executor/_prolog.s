lbl_80D425E0:
/* 80D425E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D425E4  7C 08 02 A6 */	mflr r0
/* 80D425E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D425EC  3C 60 80 D4 */	lis r3, data_80D43D80@ha
/* 80D425F0  38 63 3D 80 */	addi r3, r3, data_80D43D80@l
/* 80D425F4  4B 52 0B 58 */	b ModuleConstructorsX
/* 80D425F8  4B 52 0A 90 */	b ModuleProlog
/* 80D425FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D42600  7C 08 03 A6 */	mtlr r0
/* 80D42604  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42608  4E 80 00 20 */	blr 
