lbl_80D386E0:
/* 80D386E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D386E4  7C 08 02 A6 */	mflr r0
/* 80D386E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D386EC  3C 60 80 D4 */	lis r3, data_80D39224@ha
/* 80D386F0  38 63 92 24 */	addi r3, r3, data_80D39224@l
/* 80D386F4  4B 52 AA 58 */	b ModuleConstructorsX
/* 80D386F8  4B 52 A9 90 */	b ModuleProlog
/* 80D386FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D38700  7C 08 03 A6 */	mtlr r0
/* 80D38704  38 21 00 10 */	addi r1, r1, 0x10
/* 80D38708  4E 80 00 20 */	blr 
