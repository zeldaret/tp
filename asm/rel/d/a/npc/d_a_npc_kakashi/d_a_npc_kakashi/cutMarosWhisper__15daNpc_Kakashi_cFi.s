lbl_8054D604:
/* 8054D604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D608  7C 08 02 A6 */	mflr r0
/* 8054D60C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D610  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054D614  93 C1 00 08 */	stw r30, 8(r1)
/* 8054D618  7C 9E 23 78 */	mr r30, r4
/* 8054D61C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054D620  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054D624  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8054D628  7F E3 FB 78 */	mr r3, r31
/* 8054D62C  3C A0 80 55 */	lis r5, d_a_npc_kakashi__stringBase0@ha /* 0x8054EBD0@ha */
/* 8054D630  38 A5 EB D0 */	addi r5, r5, d_a_npc_kakashi__stringBase0@l /* 0x8054EBD0@l */
/* 8054D634  38 A5 01 C6 */	addi r5, r5, 0x1c6
/* 8054D638  38 C0 00 03 */	li r6, 3
/* 8054D63C  4B AF AA B1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8054D640  7F E3 FB 78 */	mr r3, r31
/* 8054D644  7F C4 F3 78 */	mr r4, r30
/* 8054D648  4B AF A7 05 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8054D64C  38 60 00 00 */	li r3, 0
/* 8054D650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054D654  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054D658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D65C  7C 08 03 A6 */	mtlr r0
/* 8054D660  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D664  4E 80 00 20 */	blr 
