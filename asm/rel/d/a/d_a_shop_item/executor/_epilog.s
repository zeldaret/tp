lbl_8059E96C:
/* 8059E96C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E970  7C 08 02 A6 */	mflr r0
/* 8059E974  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E978  4B CC 47 14 */	b ModuleEpilog
/* 8059E97C  3C 60 80 5A */	lis r3, data_8059F434@ha
/* 8059E980  38 63 F4 34 */	addi r3, r3, data_8059F434@l
/* 8059E984  4B CC 48 0C */	b ModuleDestructorsX
/* 8059E988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E98C  7C 08 03 A6 */	mtlr r0
/* 8059E990  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E994  4E 80 00 20 */	blr 
