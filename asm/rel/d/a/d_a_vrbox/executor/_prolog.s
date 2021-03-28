lbl_804984A0:
/* 804984A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804984A4  7C 08 02 A6 */	mflr r0
/* 804984A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804984AC  3C 60 80 4A */	lis r3, data_80498988@ha
/* 804984B0  38 63 89 88 */	addi r3, r3, data_80498988@l
/* 804984B4  4B DC AC 98 */	b ModuleConstructorsX
/* 804984B8  4B DC AB D0 */	b ModuleProlog
/* 804984BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804984C0  7C 08 03 A6 */	mtlr r0
/* 804984C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804984C8  4E 80 00 20 */	blr 
