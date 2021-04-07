lbl_80CC3368:
/* 80CC3368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC336C  7C 08 02 A6 */	mflr r0
/* 80CC3370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC3374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC3378  7C 7F 1B 78 */	mr r31, r3
/* 80CC337C  3C 60 80 CC */	lis r3, d_a_obj_rw__stringBase0@ha /* 0x80CC3B4C@ha */
/* 80CC3380  38 63 3B 4C */	addi r3, r3, d_a_obj_rw__stringBase0@l /* 0x80CC3B4C@l */
/* 80CC3384  38 80 00 03 */	li r4, 3
/* 80CC3388  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC338C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC3390  3C A5 00 02 */	addis r5, r5, 2
/* 80CC3394  38 C0 00 80 */	li r6, 0x80
/* 80CC3398  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CC339C  4B 37 8F 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CC33A0  3C 80 00 08 */	lis r4, 8
/* 80CC33A4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CC33A8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CC33AC  4B 35 18 A9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CC33B0  90 7F 05 B4 */	stw r3, 0x5b4(r31)
/* 80CC33B4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80CC33B8  28 03 00 00 */	cmplwi r3, 0
/* 80CC33BC  40 82 00 0C */	bne lbl_80CC33C8
/* 80CC33C0  38 60 00 00 */	li r3, 0
/* 80CC33C4  48 00 00 28 */	b lbl_80CC33EC
lbl_80CC33C8:
/* 80CC33C8  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80CC33CC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80CC33D0  80 63 00 04 */	lwz r3, 4(r3)
/* 80CC33D4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80CC33D8  80 83 00 04 */	lwz r4, 4(r3)
/* 80CC33DC  3C 60 80 CC */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x80CC29B0@ha */
/* 80CC33E0  38 03 29 B0 */	addi r0, r3, nodeCallBack__FP8J3DJointi@l /* 0x80CC29B0@l */
/* 80CC33E4  90 04 00 04 */	stw r0, 4(r4)
/* 80CC33E8  38 60 00 01 */	li r3, 1
lbl_80CC33EC:
/* 80CC33EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC33F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC33F4  7C 08 03 A6 */	mtlr r0
/* 80CC33F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC33FC  4E 80 00 20 */	blr 
