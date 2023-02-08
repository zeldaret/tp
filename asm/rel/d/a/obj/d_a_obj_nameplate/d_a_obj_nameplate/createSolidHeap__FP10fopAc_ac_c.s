lbl_80594950:
/* 80594950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594954  7C 08 02 A6 */	mflr r0
/* 80594958  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059495C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80594960  7C 7F 1B 78 */	mr r31, r3
/* 80594964  3C 60 80 59 */	lis r3, l_arcName@ha /* 0x80594F28@ha */
/* 80594968  38 63 4F 28 */	addi r3, r3, l_arcName@l /* 0x80594F28@l */
/* 8059496C  80 63 00 00 */	lwz r3, 0(r3)
/* 80594970  3C 80 80 59 */	lis r4, d_a_obj_nameplate__stringBase0@ha /* 0x80594F0C@ha */
/* 80594974  38 84 4F 0C */	addi r4, r4, d_a_obj_nameplate__stringBase0@l /* 0x80594F0C@l */
/* 80594978  38 84 00 0A */	addi r4, r4, 0xa
/* 8059497C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80594980  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80594984  3C A5 00 02 */	addis r5, r5, 2
/* 80594988  38 C0 00 80 */	li r6, 0x80
/* 8059498C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80594990  4B AA 79 ED */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80594994  3C 80 00 08 */	lis r4, 8
/* 80594998  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8059499C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 805949A0  4B A8 02 B5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805949A4  90 7F 05 68 */	stw r3, 0x568(r31)
/* 805949A8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 805949AC  30 03 FF FF */	addic r0, r3, -1
/* 805949B0  7C 60 19 10 */	subfe r3, r0, r3
/* 805949B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805949B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805949BC  7C 08 03 A6 */	mtlr r0
/* 805949C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805949C4  4E 80 00 20 */	blr 
