lbl_80C8E860:
/* 80C8E860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8E864  7C 08 02 A6 */	mflr r0
/* 80C8E868  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8E86C  3C 60 80 C9 */	lis r3, data_80C8FAD4@ha
/* 80C8E870  38 63 FA D4 */	addi r3, r3, data_80C8FAD4@l
/* 80C8E874  4B 5D 48 D8 */	b ModuleConstructorsX
/* 80C8E878  4B 5D 48 10 */	b ModuleProlog
/* 80C8E87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8E880  7C 08 03 A6 */	mtlr r0
/* 80C8E884  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8E888  4E 80 00 20 */	blr 
