lbl_807815B8:
/* 807815B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807815BC  7C 08 02 A6 */	mflr r0
/* 807815C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807815C4  4B AE 1A CC */	b ModuleUnresolved
/* 807815C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807815CC  7C 08 03 A6 */	mtlr r0
/* 807815D0  38 21 00 10 */	addi r1, r1, 0x10
/* 807815D4  4E 80 00 20 */	blr 
