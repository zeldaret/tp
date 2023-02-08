lbl_80BFD7C0:
/* 80BFD7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFD7C4  7C 08 02 A6 */	mflr r0
/* 80BFD7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFD7CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFD7D0  7C 7F 1B 78 */	mr r31, r3
/* 80BFD7D4  3C 60 80 C0 */	lis r3, d_a_obj_goGate__stringBase0@ha /* 0x80BFE008@ha */
/* 80BFD7D8  38 63 E0 08 */	addi r3, r3, d_a_obj_goGate__stringBase0@l /* 0x80BFE008@l */
/* 80BFD7DC  38 80 00 04 */	li r4, 4
/* 80BFD7E0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFD7E4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFD7E8  3C A5 00 02 */	addis r5, r5, 2
/* 80BFD7EC  38 C0 00 80 */	li r6, 0x80
/* 80BFD7F0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BFD7F4  4B 43 EA F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BFD7F8  3C 80 00 08 */	lis r4, 8
/* 80BFD7FC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BFD800  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BFD804  4B 41 74 51 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BFD808  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80BFD80C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BFD810  30 03 FF FF */	addic r0, r3, -1
/* 80BFD814  7C 60 19 10 */	subfe r3, r0, r3
/* 80BFD818  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFD81C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFD820  7C 08 03 A6 */	mtlr r0
/* 80BFD824  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFD828  4E 80 00 20 */	blr 
