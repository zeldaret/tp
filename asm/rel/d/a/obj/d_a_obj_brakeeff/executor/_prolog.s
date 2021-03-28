lbl_8046DC40:
/* 8046DC40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046DC44  7C 08 02 A6 */	mflr r0
/* 8046DC48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046DC4C  3C 60 80 47 */	lis r3, data_8046E520@ha
/* 8046DC50  38 63 E5 20 */	addi r3, r3, data_8046E520@l
/* 8046DC54  4B DF 54 F8 */	b ModuleConstructorsX
/* 8046DC58  4B DF 54 30 */	b ModuleProlog
/* 8046DC5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046DC60  7C 08 03 A6 */	mtlr r0
/* 8046DC64  38 21 00 10 */	addi r1, r1, 0x10
/* 8046DC68  4E 80 00 20 */	blr 
