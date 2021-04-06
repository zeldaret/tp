lbl_80CE7298:
/* 80CE7298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE729C  7C 08 02 A6 */	mflr r0
/* 80CE72A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE72A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE72A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE72AC  7C 7F 1B 78 */	mr r31, r3
/* 80CE72B0  88 03 0B 0E */	lbz r0, 0xb0e(r3)
/* 80CE72B4  54 00 10 3A */	slwi r0, r0, 2
/* 80CE72B8  3C 80 80 CE */	lis r4, l_bmdIdxName@ha /* 0x80CE7F40@ha */
/* 80CE72BC  38 84 7F 40 */	addi r4, r4, l_bmdIdxName@l /* 0x80CE7F40@l */
/* 80CE72C0  7F C4 00 2E */	lwzx r30, r4, r0
/* 80CE72C4  2C 1E 00 00 */	cmpwi r30, 0
/* 80CE72C8  41 82 00 28 */	beq lbl_80CE72F0
/* 80CE72CC  48 00 05 6D */	bl getResName__14daObj_SSItem_cFv
/* 80CE72D0  7F C4 F3 78 */	mr r4, r30
/* 80CE72D4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE72D8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE72DC  3C A5 00 02 */	addis r5, r5, 2
/* 80CE72E0  38 C0 00 80 */	li r6, 0x80
/* 80CE72E4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CE72E8  4B 35 50 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CE72EC  48 00 00 30 */	b lbl_80CE731C
lbl_80CE72F0:
/* 80CE72F0  3C 80 80 CE */	lis r4, l_bmdFileName@ha /* 0x80CE7F4C@ha */
/* 80CE72F4  38 84 7F 4C */	addi r4, r4, l_bmdFileName@l /* 0x80CE7F4C@l */
/* 80CE72F8  7F C4 00 2E */	lwzx r30, r4, r0
/* 80CE72FC  48 00 05 3D */	bl getResName__14daObj_SSItem_cFv
/* 80CE7300  7F C4 F3 78 */	mr r4, r30
/* 80CE7304  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE7308  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE730C  3C A5 00 02 */	addis r5, r5, 2
/* 80CE7310  38 C0 00 80 */	li r6, 0x80
/* 80CE7314  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CE7318  4B 35 50 65 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
lbl_80CE731C:
/* 80CE731C  3C 80 00 08 */	lis r4, 8
/* 80CE7320  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CE7324  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CE7328  4B 32 D9 2D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CE732C  90 7F 05 80 */	stw r3, 0x580(r31)
/* 80CE7330  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80CE7334  30 03 FF FF */	addic r0, r3, -1
/* 80CE7338  7C 00 19 10 */	subfe r0, r0, r3
/* 80CE733C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80CE7340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE7344  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE7348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE734C  7C 08 03 A6 */	mtlr r0
/* 80CE7350  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7354  4E 80 00 20 */	blr 
