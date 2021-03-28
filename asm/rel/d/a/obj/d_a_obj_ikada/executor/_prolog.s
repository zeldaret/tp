lbl_80C26940:
/* 80C26940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C26944  7C 08 02 A6 */	mflr r0
/* 80C26948  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2694C  3C 60 80 C2 */	lis r3, data_80C274E8@ha
/* 80C26950  38 63 74 E8 */	addi r3, r3, data_80C274E8@l
/* 80C26954  4B 63 C7 F8 */	b ModuleConstructorsX
/* 80C26958  4B 63 C7 30 */	b ModuleProlog
/* 80C2695C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C26960  7C 08 03 A6 */	mtlr r0
/* 80C26964  38 21 00 10 */	addi r1, r1, 0x10
/* 80C26968  4E 80 00 20 */	blr 
