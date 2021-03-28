lbl_8058AEC0:
/* 8058AEC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AEC4  7C 08 02 A6 */	mflr r0
/* 8058AEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AECC  3C 60 80 59 */	lis r3, data_8058C378@ha
/* 8058AED0  38 63 C3 78 */	addi r3, r3, data_8058C378@l
/* 8058AED4  4B CD 82 78 */	b ModuleConstructorsX
/* 8058AED8  4B CD 81 B0 */	b ModuleProlog
/* 8058AEDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AEE0  7C 08 03 A6 */	mtlr r0
/* 8058AEE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AEE8  4E 80 00 20 */	blr 
