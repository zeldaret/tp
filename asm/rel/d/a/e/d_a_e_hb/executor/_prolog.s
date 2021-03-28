lbl_804FBC80:
/* 804FBC80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FBC84  7C 08 02 A6 */	mflr r0
/* 804FBC88  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FBC8C  3C 60 80 50 */	lis r3, data_80500AF0@ha
/* 804FBC90  38 63 0A F0 */	addi r3, r3, data_80500AF0@l
/* 804FBC94  4B D6 74 B8 */	b ModuleConstructorsX
/* 804FBC98  4B D6 73 F0 */	b ModuleProlog
/* 804FBC9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FBCA0  7C 08 03 A6 */	mtlr r0
/* 804FBCA4  38 21 00 10 */	addi r1, r1, 0x10
/* 804FBCA8  4E 80 00 20 */	blr 
