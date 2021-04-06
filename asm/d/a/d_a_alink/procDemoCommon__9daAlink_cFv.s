lbl_801195C0:
/* 801195C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801195C4  7C 08 02 A6 */	mflr r0
/* 801195C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801195CC  7C 64 1B 78 */	mr r4, r3
/* 801195D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801195D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801195D8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 801195DC  80 84 31 84 */	lwz r4, 0x3184(r4)
/* 801195E0  4B F2 EB 9D */	bl cutEnd__16dEvent_manager_cFi
/* 801195E4  38 60 00 01 */	li r3, 1
/* 801195E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801195EC  7C 08 03 A6 */	mtlr r0
/* 801195F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801195F4  4E 80 00 20 */	blr 
