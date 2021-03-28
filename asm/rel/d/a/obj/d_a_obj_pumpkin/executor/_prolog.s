lbl_80CB56A0:
/* 80CB56A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB56A4  7C 08 02 A6 */	mflr r0
/* 80CB56A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB56AC  3C 60 80 CC */	lis r3, data_80CB835C@ha
/* 80CB56B0  38 63 83 5C */	addi r3, r3, data_80CB835C@l
/* 80CB56B4  4B 5A DA 98 */	b ModuleConstructorsX
/* 80CB56B8  4B 5A D9 D0 */	b ModuleProlog
/* 80CB56BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB56C0  7C 08 03 A6 */	mtlr r0
/* 80CB56C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB56C8  4E 80 00 20 */	blr 
