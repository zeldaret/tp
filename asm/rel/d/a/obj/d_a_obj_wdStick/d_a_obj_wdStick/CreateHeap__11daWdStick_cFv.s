lbl_80D31C58:
/* 80D31C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D31C5C  7C 08 02 A6 */	mflr r0
/* 80D31C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D31C64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D31C68  7C 7F 1B 78 */	mr r31, r3
/* 80D31C6C  3C 60 80 D3 */	lis r3, stringBase0@ha
/* 80D31C70  38 63 42 10 */	addi r3, r3, stringBase0@l
/* 80D31C74  38 80 00 04 */	li r4, 4
/* 80D31C78  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D31C7C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D31C80  3C A5 00 02 */	addis r5, r5, 2
/* 80D31C84  38 C0 00 80 */	li r6, 0x80
/* 80D31C88  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D31C8C  4B 30 A6 60 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D31C90  3C 80 00 08 */	lis r4, 8
/* 80D31C94  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D31C98  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D31C9C  4B 2E 2F B8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D31CA0  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80D31CA4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D31CA8  30 03 FF FF */	addic r0, r3, -1
/* 80D31CAC  7C 60 19 10 */	subfe r3, r0, r3
/* 80D31CB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D31CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D31CB8  7C 08 03 A6 */	mtlr r0
/* 80D31CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D31CC0  4E 80 00 20 */	blr 
