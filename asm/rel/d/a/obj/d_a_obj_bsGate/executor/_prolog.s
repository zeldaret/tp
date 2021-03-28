lbl_80BC27A0:
/* 80BC27A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC27A4  7C 08 02 A6 */	mflr r0
/* 80BC27A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC27AC  3C 60 80 BC */	lis r3, data_80BC318C@ha
/* 80BC27B0  38 63 31 8C */	addi r3, r3, data_80BC318C@l
/* 80BC27B4  4B 6A 09 98 */	b ModuleConstructorsX
/* 80BC27B8  4B 6A 08 D0 */	b ModuleProlog
/* 80BC27BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC27C0  7C 08 03 A6 */	mtlr r0
/* 80BC27C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC27C8  4E 80 00 20 */	blr 
