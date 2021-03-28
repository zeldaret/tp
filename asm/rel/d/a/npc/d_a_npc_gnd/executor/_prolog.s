lbl_809BB520:
/* 809BB520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BB524  7C 08 02 A6 */	mflr r0
/* 809BB528  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BB52C  3C 60 80 9C */	lis r3, data_809BE48C@ha
/* 809BB530  38 63 E4 8C */	addi r3, r3, data_809BE48C@l
/* 809BB534  4B 8A 7C 18 */	b ModuleConstructorsX
/* 809BB538  4B 8A 7B 50 */	b ModuleProlog
/* 809BB53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BB540  7C 08 03 A6 */	mtlr r0
/* 809BB544  38 21 00 10 */	addi r1, r1, 0x10
/* 809BB548  4E 80 00 20 */	blr 
