lbl_80586604:
/* 80586604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80586608  7C 08 02 A6 */	mflr r0
/* 8058660C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80586610  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80586614  7C 7F 1B 78 */	mr r31, r3
/* 80586618  88 03 09 D0 */	lbz r0, 0x9d0(r3)
/* 8058661C  2C 00 00 01 */	cmpwi r0, 1
/* 80586620  41 82 00 50 */	beq lbl_80586670
/* 80586624  40 80 00 88 */	bge lbl_805866AC
/* 80586628  2C 00 00 00 */	cmpwi r0, 0
/* 8058662C  40 80 00 08 */	bge lbl_80586634
/* 80586630  48 00 00 7C */	b lbl_805866AC
lbl_80586634:
/* 80586634  3C 60 80 58 */	lis r3, l_bmdData@ha /* 0x80587E98@ha */
/* 80586638  38 83 7E 98 */	addi r4, r3, l_bmdData@l /* 0x80587E98@l */
/* 8058663C  80 04 00 04 */	lwz r0, 4(r4)
/* 80586640  54 00 10 3A */	slwi r0, r0, 2
/* 80586644  3C 60 80 58 */	lis r3, l_resNameList@ha /* 0x80587EA8@ha */
/* 80586648  38 63 7E A8 */	addi r3, r3, l_resNameList@l /* 0x80587EA8@l */
/* 8058664C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80586650  80 84 00 00 */	lwz r4, 0(r4)
/* 80586654  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80586658  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8058665C  3C A5 00 02 */	addis r5, r5, 2
/* 80586660  38 C0 00 80 */	li r6, 0x80
/* 80586664  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80586668  4B AB 5C 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058666C  48 00 00 44 */	b lbl_805866B0
lbl_80586670:
/* 80586670  3C 60 80 58 */	lis r3, l_bmdData@ha /* 0x80587E98@ha */
/* 80586674  38 83 7E 98 */	addi r4, r3, l_bmdData@l /* 0x80587E98@l */
/* 80586678  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8058667C  54 00 10 3A */	slwi r0, r0, 2
/* 80586680  3C 60 80 58 */	lis r3, l_resNameList@ha /* 0x80587EA8@ha */
/* 80586684  38 63 7E A8 */	addi r3, r3, l_resNameList@l /* 0x80587EA8@l */
/* 80586688  7C 63 00 2E */	lwzx r3, r3, r0
/* 8058668C  80 84 00 08 */	lwz r4, 8(r4)
/* 80586690  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80586694  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80586698  3C A5 00 02 */	addis r5, r5, 2
/* 8058669C  38 C0 00 80 */	li r6, 0x80
/* 805866A0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805866A4  4B AB 5C 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805866A8  48 00 00 08 */	b lbl_805866B0
lbl_805866AC:
/* 805866AC  38 60 00 00 */	li r3, 0
lbl_805866B0:
/* 805866B0  28 03 00 00 */	cmplwi r3, 0
/* 805866B4  41 82 00 1C */	beq lbl_805866D0
/* 805866B8  3C 80 00 08 */	lis r4, 8
/* 805866BC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 805866C0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 805866C4  4B A8 E5 91 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805866C8  90 7F 05 74 */	stw r3, 0x574(r31)
/* 805866CC  48 00 00 0C */	b lbl_805866D8
lbl_805866D0:
/* 805866D0  38 00 00 00 */	li r0, 0
/* 805866D4  90 1F 05 74 */	stw r0, 0x574(r31)
lbl_805866D8:
/* 805866D8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 805866DC  28 00 00 00 */	cmplwi r0, 0
/* 805866E0  40 82 00 0C */	bne lbl_805866EC
/* 805866E4  38 60 00 00 */	li r3, 0
/* 805866E8  48 00 00 08 */	b lbl_805866F0
lbl_805866EC:
/* 805866EC  38 60 00 01 */	li r3, 1
lbl_805866F0:
/* 805866F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805866F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805866F8  7C 08 03 A6 */	mtlr r0
/* 805866FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80586700  4E 80 00 20 */	blr 
