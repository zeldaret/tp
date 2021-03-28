lbl_80D638AC:
/* 80D638AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D638B0  7C 08 02 A6 */	mflr r0
/* 80D638B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D638B8  4B 4F F7 D4 */	b ModuleEpilog
/* 80D638BC  3C 60 80 D6 */	lis r3, data_80D63BEC@ha
/* 80D638C0  38 63 3B EC */	addi r3, r3, data_80D63BEC@l
/* 80D638C4  4B 4F F8 CC */	b ModuleDestructorsX
/* 80D638C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D638CC  7C 08 03 A6 */	mtlr r0
/* 80D638D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D638D4  4E 80 00 20 */	blr 
