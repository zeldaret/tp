lbl_80018CE0:
/* 80018CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018CE4  7C 08 02 A6 */	mflr r0
/* 80018CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018CEC  7C 64 1B 78 */	mr r4, r3
/* 80018CF0  80 6D 87 38 */	lwz r3, g_fopAc_type(r13)
/* 80018CF4  80 84 00 C0 */	lwz r4, 0xc0(r4)
/* 80018CF8  48 00 79 55 */	bl fpcBs_Is_JustOfType__Fii
/* 80018CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018D00  7C 08 03 A6 */	mtlr r0
/* 80018D04  38 21 00 10 */	addi r1, r1, 0x10
/* 80018D08  4E 80 00 20 */	blr 
