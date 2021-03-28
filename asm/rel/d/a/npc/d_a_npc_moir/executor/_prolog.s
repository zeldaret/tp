lbl_80A7C080:
/* 80A7C080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7C084  7C 08 02 A6 */	mflr r0
/* 80A7C088  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7C08C  3C 60 80 A8 */	lis r3, data_80A83298@ha
/* 80A7C090  38 63 32 98 */	addi r3, r3, data_80A83298@l
/* 80A7C094  4B 7E 70 B8 */	b ModuleConstructorsX
/* 80A7C098  4B 7E 6F F0 */	b ModuleProlog
/* 80A7C09C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7C0A0  7C 08 03 A6 */	mtlr r0
/* 80A7C0A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7C0A8  4E 80 00 20 */	blr 
