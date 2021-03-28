lbl_8094BB40:
/* 8094BB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8094BB44  7C 08 02 A6 */	mflr r0
/* 8094BB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8094BB4C  3C 60 80 95 */	lis r3, data_809511AC@ha
/* 8094BB50  38 63 11 AC */	addi r3, r3, data_809511AC@l
/* 8094BB54  4B 91 75 F8 */	b ModuleConstructorsX
/* 8094BB58  4B 91 75 30 */	b ModuleProlog
/* 8094BB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8094BB60  7C 08 03 A6 */	mtlr r0
/* 8094BB64  38 21 00 10 */	addi r1, r1, 0x10
/* 8094BB68  4E 80 00 20 */	blr 
