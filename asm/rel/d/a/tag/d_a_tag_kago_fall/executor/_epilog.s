lbl_80D59C0C:
/* 80D59C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D59C10  7C 08 02 A6 */	mflr r0
/* 80D59C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D59C18  4B 50 94 74 */	b ModuleEpilog
/* 80D59C1C  3C 60 80 D6 */	lis r3, data_80D5A6E8@ha
/* 80D59C20  38 63 A6 E8 */	addi r3, r3, data_80D5A6E8@l
/* 80D59C24  4B 50 95 6C */	b ModuleDestructorsX
/* 80D59C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D59C2C  7C 08 03 A6 */	mtlr r0
/* 80D59C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80D59C34  4E 80 00 20 */	blr 
