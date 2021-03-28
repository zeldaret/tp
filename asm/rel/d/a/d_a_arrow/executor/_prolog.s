lbl_80499B80:
/* 80499B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80499B84  7C 08 02 A6 */	mflr r0
/* 80499B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80499B8C  3C 60 80 4A */	lis r3, data_8049DC74@ha
/* 80499B90  38 63 DC 74 */	addi r3, r3, data_8049DC74@l
/* 80499B94  4B DC 95 B8 */	b ModuleConstructorsX
/* 80499B98  4B DC 94 F0 */	b ModuleProlog
/* 80499B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80499BA0  7C 08 03 A6 */	mtlr r0
/* 80499BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80499BA8  4E 80 00 20 */	blr 
