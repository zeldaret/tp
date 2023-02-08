lbl_80CB5F88:
/* 80CB5F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB5F8C  7C 08 02 A6 */	mflr r0
/* 80CB5F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5F94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB5F98  7C 7F 1B 78 */	mr r31, r3
/* 80CB5F9C  3C 60 80 CC */	lis r3, l_bmdData@ha /* 0x80CB848C@ha */
/* 80CB5FA0  38 83 84 8C */	addi r4, r3, l_bmdData@l /* 0x80CB848C@l */
/* 80CB5FA4  80 04 00 04 */	lwz r0, 4(r4)
/* 80CB5FA8  54 00 10 3A */	slwi r0, r0, 2
/* 80CB5FAC  3C 60 80 CC */	lis r3, l_resNameList@ha /* 0x80CB8494@ha */
/* 80CB5FB0  38 63 84 94 */	addi r3, r3, l_resNameList@l /* 0x80CB8494@l */
/* 80CB5FB4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CB5FB8  80 84 00 00 */	lwz r4, 0(r4)
/* 80CB5FBC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB5FC0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB5FC4  3C A5 00 02 */	addis r5, r5, 2
/* 80CB5FC8  38 C0 00 80 */	li r6, 0x80
/* 80CB5FCC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CB5FD0  4B 38 63 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB5FD4  28 03 00 00 */	cmplwi r3, 0
/* 80CB5FD8  40 82 00 0C */	bne lbl_80CB5FE4
/* 80CB5FDC  38 60 00 00 */	li r3, 0
/* 80CB5FE0  48 00 00 24 */	b lbl_80CB6004
lbl_80CB5FE4:
/* 80CB5FE4  3C 80 00 08 */	lis r4, 8
/* 80CB5FE8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CB5FEC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CB5FF0  4B 35 EC 65 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CB5FF4  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80CB5FF8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80CB5FFC  30 03 FF FF */	addic r0, r3, -1
/* 80CB6000  7C 60 19 10 */	subfe r3, r0, r3
lbl_80CB6004:
/* 80CB6004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB6008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB600C  7C 08 03 A6 */	mtlr r0
/* 80CB6010  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB6014  4E 80 00 20 */	blr 
