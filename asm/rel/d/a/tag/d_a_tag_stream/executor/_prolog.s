lbl_80D63880:
/* 80D63880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63884  7C 08 02 A6 */	mflr r0
/* 80D63888  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6388C  3C 60 80 D6 */	lis r3, data_80D63BE8@ha
/* 80D63890  38 63 3B E8 */	addi r3, r3, data_80D63BE8@l
/* 80D63894  4B 4F F8 B8 */	b ModuleConstructorsX
/* 80D63898  4B 4F F7 F0 */	b ModuleProlog
/* 80D6389C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D638A0  7C 08 03 A6 */	mtlr r0
/* 80D638A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D638A8  4E 80 00 20 */	blr 
