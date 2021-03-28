lbl_8059A4A0:
/* 8059A4A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A4A4  7C 08 02 A6 */	mflr r0
/* 8059A4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A4AC  3C 60 80 5A */	lis r3, data_8059B2C0@ha
/* 8059A4B0  38 63 B2 C0 */	addi r3, r3, data_8059B2C0@l
/* 8059A4B4  4B CC 8C 98 */	b ModuleConstructorsX
/* 8059A4B8  4B CC 8B D0 */	b ModuleProlog
/* 8059A4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A4C0  7C 08 03 A6 */	mtlr r0
/* 8059A4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A4C8  4E 80 00 20 */	blr 
