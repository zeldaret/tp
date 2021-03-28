lbl_80670BEC:
/* 80670BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80670BF0  7C 08 02 A6 */	mflr r0
/* 80670BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80670BF8  4B BF 24 94 */	b ModuleEpilog
/* 80670BFC  3C 60 80 67 */	lis r3, data_806724C4@ha
/* 80670C00  38 63 24 C4 */	addi r3, r3, data_806724C4@l
/* 80670C04  4B BF 25 8C */	b ModuleDestructorsX
/* 80670C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80670C0C  7C 08 03 A6 */	mtlr r0
/* 80670C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80670C14  4E 80 00 20 */	blr 
