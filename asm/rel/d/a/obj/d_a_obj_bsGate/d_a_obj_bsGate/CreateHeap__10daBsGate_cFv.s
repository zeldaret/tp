lbl_80BC29AC:
/* 80BC29AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC29B0  7C 08 02 A6 */	mflr r0
/* 80BC29B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC29B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC29BC  7C 7F 1B 78 */	mr r31, r3
/* 80BC29C0  3C 60 80 BC */	lis r3, d_a_obj_bsGate__stringBase0@ha /* 0x80BC31C4@ha */
/* 80BC29C4  38 63 31 C4 */	addi r3, r3, d_a_obj_bsGate__stringBase0@l /* 0x80BC31C4@l */
/* 80BC29C8  38 80 00 04 */	li r4, 4
/* 80BC29CC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC29D0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC29D4  3C A5 00 02 */	addis r5, r5, 2
/* 80BC29D8  38 C0 00 80 */	li r6, 0x80
/* 80BC29DC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BC29E0  4B 47 99 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC29E4  3C 80 00 08 */	lis r4, 8
/* 80BC29E8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BC29EC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BC29F0  4B 45 22 65 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BC29F4  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80BC29F8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BC29FC  30 03 FF FF */	addic r0, r3, -1
/* 80BC2A00  7C 60 19 10 */	subfe r3, r0, r3
/* 80BC2A04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC2A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC2A0C  7C 08 03 A6 */	mtlr r0
/* 80BC2A10  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC2A14  4E 80 00 20 */	blr 
