lbl_80D60180:
/* 80D60180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60184  7C 08 02 A6 */	mflr r0
/* 80D60188  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6018C  3C 60 80 D6 */	lis r3, data_80D60324@ha
/* 80D60190  38 63 03 24 */	addi r3, r3, data_80D60324@l
/* 80D60194  4B 50 2F B8 */	b ModuleConstructorsX
/* 80D60198  4B 50 2E F0 */	b ModuleProlog
/* 80D6019C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D601A0  7C 08 03 A6 */	mtlr r0
/* 80D601A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D601A8  4E 80 00 20 */	blr 
