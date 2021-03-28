lbl_80D601AC:
/* 80D601AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D601B0  7C 08 02 A6 */	mflr r0
/* 80D601B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D601B8  4B 50 2E D4 */	b ModuleEpilog
/* 80D601BC  3C 60 80 D6 */	lis r3, data_80D60328@ha
/* 80D601C0  38 63 03 28 */	addi r3, r3, data_80D60328@l
/* 80D601C4  4B 50 2F CC */	b ModuleDestructorsX
/* 80D601C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D601CC  7C 08 03 A6 */	mtlr r0
/* 80D601D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D601D4  4E 80 00 20 */	blr 
