lbl_8057D2D0:
/* 8057D2D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D2D4  7C 08 02 A6 */	mflr r0
/* 8057D2D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D2DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D2E0  7C 7F 1B 78 */	mr r31, r3
/* 8057D2E4  3C 60 80 58 */	lis r3, d_a_obj_gpTaru__stringBase0@ha /* 0x8057F664@ha */
/* 8057D2E8  38 63 F6 64 */	addi r3, r3, d_a_obj_gpTaru__stringBase0@l /* 0x8057F664@l */
/* 8057D2EC  38 80 00 03 */	li r4, 3
/* 8057D2F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057D2F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057D2F8  3C A5 00 02 */	addis r5, r5, 2
/* 8057D2FC  38 C0 00 80 */	li r6, 0x80
/* 8057D300  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8057D304  4B AB EF E9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8057D308  3C 80 00 08 */	lis r4, 8
/* 8057D30C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8057D310  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8057D314  4B A9 79 41 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8057D318  90 7F 05 74 */	stw r3, 0x574(r31)
/* 8057D31C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8057D320  30 03 FF FF */	addic r0, r3, -1
/* 8057D324  7C 60 19 10 */	subfe r3, r0, r3
/* 8057D328  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D32C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D330  7C 08 03 A6 */	mtlr r0
/* 8057D334  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D338  4E 80 00 20 */	blr 
