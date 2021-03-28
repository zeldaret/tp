lbl_80270EEC:
/* 80270EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80270EF0  7C 08 02 A6 */	mflr r0
/* 80270EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80270EF8  7C 60 1B 78 */	mr r0, r3
/* 80270EFC  7C 85 23 78 */	mr r5, r4
/* 80270F00  80 6D 81 E8 */	lwz r3, calc_mtx(r13)
/* 80270F04  7C 04 03 78 */	mr r4, r0
/* 80270F08  48 0D 5E 65 */	bl PSMTXMultVec
/* 80270F0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80270F10  7C 08 03 A6 */	mtlr r0
/* 80270F14  38 21 00 10 */	addi r1, r1, 0x10
/* 80270F18  4E 80 00 20 */	blr 
