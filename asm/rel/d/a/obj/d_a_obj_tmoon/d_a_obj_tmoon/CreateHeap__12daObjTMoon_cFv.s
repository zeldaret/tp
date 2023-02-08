lbl_80D12C9C:
/* 80D12C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D12CA0  7C 08 02 A6 */	mflr r0
/* 80D12CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D12CAC  7C 7F 1B 78 */	mr r31, r3
/* 80D12CB0  3C 60 80 D1 */	lis r3, l_arcName@ha /* 0x80D12FA0@ha */
/* 80D12CB4  38 63 2F A0 */	addi r3, r3, l_arcName@l /* 0x80D12FA0@l */
/* 80D12CB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D12CBC  38 80 00 03 */	li r4, 3
/* 80D12CC0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D12CC4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D12CC8  3C A5 00 02 */	addis r5, r5, 2
/* 80D12CCC  38 C0 00 80 */	li r6, 0x80
/* 80D12CD0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D12CD4  4B 32 96 19 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D12CD8  3C 80 00 08 */	lis r4, 8
/* 80D12CDC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D12CE0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D12CE4  4B 30 1F 71 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D12CE8  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80D12CEC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D12CF0  30 03 FF FF */	addic r0, r3, -1
/* 80D12CF4  7C 60 19 10 */	subfe r3, r0, r3
/* 80D12CF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D12CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D12D00  7C 08 03 A6 */	mtlr r0
/* 80D12D04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12D08  4E 80 00 20 */	blr 
