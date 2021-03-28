lbl_8059E940:
/* 8059E940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E944  7C 08 02 A6 */	mflr r0
/* 8059E948  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E94C  3C 60 80 5A */	lis r3, data_8059F430@ha
/* 8059E950  38 63 F4 30 */	addi r3, r3, data_8059F430@l
/* 8059E954  4B CC 47 F8 */	b ModuleConstructorsX
/* 8059E958  4B CC 47 30 */	b ModuleProlog
/* 8059E95C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E960  7C 08 03 A6 */	mtlr r0
/* 8059E964  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E968  4E 80 00 20 */	blr 
