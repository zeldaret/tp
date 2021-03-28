lbl_809BE860:
/* 809BE860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BE864  7C 08 02 A6 */	mflr r0
/* 809BE868  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BE86C  3C 60 80 9D */	lis r3, data_809C9D84@ha
/* 809BE870  38 63 9D 84 */	addi r3, r3, data_809C9D84@l
/* 809BE874  4B 8A 48 D8 */	b ModuleConstructorsX
/* 809BE878  4B 8A 48 10 */	b ModuleProlog
/* 809BE87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BE880  7C 08 03 A6 */	mtlr r0
/* 809BE884  38 21 00 10 */	addi r1, r1, 0x10
/* 809BE888  4E 80 00 20 */	blr 
