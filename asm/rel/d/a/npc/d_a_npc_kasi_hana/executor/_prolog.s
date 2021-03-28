lbl_80A1AEC0:
/* 80A1AEC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1AEC4  7C 08 02 A6 */	mflr r0
/* 80A1AEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1AECC  3C 60 80 A2 */	lis r3, data_80A2106C@ha
/* 80A1AED0  38 63 10 6C */	addi r3, r3, data_80A2106C@l
/* 80A1AED4  4B 84 82 78 */	b ModuleConstructorsX
/* 80A1AED8  4B 84 81 B0 */	b ModuleProlog
/* 80A1AEDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1AEE0  7C 08 03 A6 */	mtlr r0
/* 80A1AEE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1AEE8  4E 80 00 20 */	blr 
