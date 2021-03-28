lbl_80B75040:
/* 80B75040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B75044  7C 08 02 A6 */	mflr r0
/* 80B75048  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7504C  3C 60 80 B7 */	lis r3, data_80B77FB4@ha
/* 80B75050  38 63 7F B4 */	addi r3, r3, data_80B77FB4@l
/* 80B75054  4B 6E E0 F8 */	b ModuleConstructorsX
/* 80B75058  4B 6E E0 30 */	b ModuleProlog
/* 80B7505C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B75060  7C 08 03 A6 */	mtlr r0
/* 80B75064  38 21 00 10 */	addi r1, r1, 0x10
/* 80B75068  4E 80 00 20 */	blr 
