lbl_80BE396C:
/* 80BE396C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE3970  7C 08 02 A6 */	mflr r0
/* 80BE3974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE3978  4B 67 F7 14 */	b ModuleEpilog
/* 80BE397C  3C 60 80 BE */	lis r3, data_80BE4AAC@ha
/* 80BE3980  38 63 4A AC */	addi r3, r3, data_80BE4AAC@l
/* 80BE3984  4B 67 F8 0C */	b ModuleDestructorsX
/* 80BE3988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE398C  7C 08 03 A6 */	mtlr r0
/* 80BE3990  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE3994  4E 80 00 20 */	blr 
