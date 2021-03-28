lbl_8095DD60:
/* 8095DD60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095DD64  7C 08 02 A6 */	mflr r0
/* 8095DD68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095DD6C  3C 60 80 96 */	lis r3, data_809620D0@ha
/* 8095DD70  38 63 20 D0 */	addi r3, r3, data_809620D0@l
/* 8095DD74  4B 90 53 D8 */	b ModuleConstructorsX
/* 8095DD78  4B 90 53 10 */	b ModuleProlog
/* 8095DD7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095DD80  7C 08 03 A6 */	mtlr r0
/* 8095DD84  38 21 00 10 */	addi r1, r1, 0x10
/* 8095DD88  4E 80 00 20 */	blr 
