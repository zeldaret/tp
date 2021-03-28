lbl_80A29644:
/* 80A29644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A29648  7C 08 02 A6 */	mflr r0
/* 80A2964C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29650  4B FF CF D5 */	bl Create__15daNpcKasiMich_cFv
/* 80A29654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A29658  7C 08 03 A6 */	mtlr r0
/* 80A2965C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A29660  4E 80 00 20 */	blr 
