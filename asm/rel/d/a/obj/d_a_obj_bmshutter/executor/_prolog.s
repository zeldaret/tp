lbl_80BB99E0:
/* 80BB99E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB99E4  7C 08 02 A6 */	mflr r0
/* 80BB99E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB99EC  3C 60 80 BC */	lis r3, data_80BBA7A8@ha
/* 80BB99F0  38 63 A7 A8 */	addi r3, r3, data_80BBA7A8@l
/* 80BB99F4  4B 6A 97 58 */	b ModuleConstructorsX
/* 80BB99F8  4B 6A 96 90 */	b ModuleProlog
/* 80BB99FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB9A00  7C 08 03 A6 */	mtlr r0
/* 80BB9A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB9A08  4E 80 00 20 */	blr 
