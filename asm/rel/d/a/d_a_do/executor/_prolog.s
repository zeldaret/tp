lbl_80667C60:
/* 80667C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80667C64  7C 08 02 A6 */	mflr r0
/* 80667C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80667C6C  3C 60 80 67 */	lis r3, data_8066EDD4@ha
/* 80667C70  38 63 ED D4 */	addi r3, r3, data_8066EDD4@l
/* 80667C74  4B BF B4 D8 */	b ModuleConstructorsX
/* 80667C78  4B BF B4 10 */	b ModuleProlog
/* 80667C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80667C80  7C 08 03 A6 */	mtlr r0
/* 80667C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80667C88  4E 80 00 20 */	blr 
