lbl_8058DF60:
/* 8058DF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DF64  7C 08 02 A6 */	mflr r0
/* 8058DF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DF6C  3C 60 80 59 */	lis r3, data_8058F11C@ha
/* 8058DF70  38 63 F1 1C */	addi r3, r3, data_8058F11C@l
/* 8058DF74  4B CD 51 D8 */	b ModuleConstructorsX
/* 8058DF78  4B CD 51 10 */	b ModuleProlog
/* 8058DF7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DF80  7C 08 03 A6 */	mtlr r0
/* 8058DF84  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DF88  4E 80 00 20 */	blr 
