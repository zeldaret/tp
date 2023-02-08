lbl_804C7114:
/* 804C7114  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C7118  7C 08 02 A6 */	mflr r0
/* 804C711C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C7120  39 61 00 20 */	addi r11, r1, 0x20
/* 804C7124  4B E9 B0 B5 */	bl _savegpr_28
/* 804C7128  7C 7E 1B 78 */	mr r30, r3
/* 804C712C  3C 60 80 4D */	lis r3, lit_3767@ha /* 0x804CC340@ha */
/* 804C7130  3B E3 C3 40 */	addi r31, r3, lit_3767@l /* 0x804CC340@l */
/* 804C7134  88 9E 0B 54 */	lbz r4, 0xb54(r30)
/* 804C7138  54 80 10 3A */	slwi r0, r4, 2
/* 804C713C  3C 60 80 4D */	lis r3, m_arcNameList__9daNbomb_c@ha /* 0x804CC518@ha */
/* 804C7140  38 63 C5 18 */	addi r3, r3, m_arcNameList__9daNbomb_c@l /* 0x804CC518@l */
/* 804C7144  7C 63 00 2E */	lwzx r3, r3, r0
/* 804C7148  54 80 08 3C */	slwi r0, r4, 1
/* 804C714C  38 9F 00 4C */	addi r4, r31, 0x4c
/* 804C7150  7C 84 02 2E */	lhzx r4, r4, r0
/* 804C7154  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C7158  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C715C  3F A5 00 02 */	addis r29, r5, 2
/* 804C7160  3B BD C2 F8 */	addi r29, r29, -15624
/* 804C7164  7F A5 EB 78 */	mr r5, r29
/* 804C7168  38 C0 00 80 */	li r6, 0x80
/* 804C716C  4B B7 51 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804C7170  3C 80 00 08 */	lis r4, 8
/* 804C7174  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804C7178  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804C717C  4B B4 DA D9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804C7180  90 7E 05 74 */	stw r3, 0x574(r30)
/* 804C7184  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 804C7188  28 00 00 00 */	cmplwi r0, 0
/* 804C718C  40 82 00 0C */	bne lbl_804C7198
/* 804C7190  38 60 00 00 */	li r3, 0
/* 804C7194  48 00 01 10 */	b lbl_804C72A4
lbl_804C7198:
/* 804C7198  3B 80 00 00 */	li r28, 0
/* 804C719C  88 1E 0B 54 */	lbz r0, 0xb54(r30)
/* 804C71A0  28 00 00 04 */	cmplwi r0, 4
/* 804C71A4  40 82 00 20 */	bne lbl_804C71C4
/* 804C71A8  38 7F 00 20 */	addi r3, r31, 0x20
/* 804C71AC  38 80 00 06 */	li r4, 6
/* 804C71B0  7F A5 EB 78 */	mr r5, r29
/* 804C71B4  38 C0 00 80 */	li r6, 0x80
/* 804C71B8  4B B7 51 35 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804C71BC  7C 7C 1B 78 */	mr r28, r3
/* 804C71C0  48 00 00 48 */	b lbl_804C7208
lbl_804C71C4:
/* 804C71C4  28 00 00 05 */	cmplwi r0, 5
/* 804C71C8  40 82 00 20 */	bne lbl_804C71E8
/* 804C71CC  38 7F 00 28 */	addi r3, r31, 0x28
/* 804C71D0  38 80 00 05 */	li r4, 5
/* 804C71D4  7F A5 EB 78 */	mr r5, r29
/* 804C71D8  38 C0 00 80 */	li r6, 0x80
/* 804C71DC  4B B7 51 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804C71E0  7C 7C 1B 78 */	mr r28, r3
/* 804C71E4  48 00 00 24 */	b lbl_804C7208
lbl_804C71E8:
/* 804C71E8  28 00 00 02 */	cmplwi r0, 2
/* 804C71EC  40 82 00 1C */	bne lbl_804C7208
/* 804C71F0  4B BD 66 95 */	bl getAlinkArcName__9daAlink_cFv
/* 804C71F4  38 80 00 15 */	li r4, 0x15
/* 804C71F8  7F A5 EB 78 */	mr r5, r29
/* 804C71FC  38 C0 00 80 */	li r6, 0x80
/* 804C7200  4B B7 50 ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804C7204  7C 7C 1B 78 */	mr r28, r3
lbl_804C7208:
/* 804C7208  28 1C 00 00 */	cmplwi r28, 0
/* 804C720C  41 82 00 78 */	beq lbl_804C7284
/* 804C7210  38 60 00 1C */	li r3, 0x1c
/* 804C7214  4B E0 7A 39 */	bl __nw__FUl
/* 804C7218  7C 7D 1B 79 */	or. r29, r3, r3
/* 804C721C  41 82 00 20 */	beq lbl_804C723C
/* 804C7220  3C 80 80 4D */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x804CC674@ha */
/* 804C7224  38 04 C6 74 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x804CC674@l */
/* 804C7228  90 1D 00 00 */	stw r0, 0(r29)
/* 804C722C  38 80 00 00 */	li r4, 0
/* 804C7230  4B E6 11 CD */	bl init__12J3DFrameCtrlFs
/* 804C7234  38 00 00 00 */	li r0, 0
/* 804C7238  90 1D 00 18 */	stw r0, 0x18(r29)
lbl_804C723C:
/* 804C723C  93 BE 0A 3C */	stw r29, 0xa3c(r30)
/* 804C7240  80 7E 0A 3C */	lwz r3, 0xa3c(r30)
/* 804C7244  28 03 00 00 */	cmplwi r3, 0
/* 804C7248  40 82 00 0C */	bne lbl_804C7254
/* 804C724C  38 60 00 00 */	li r3, 0
/* 804C7250  48 00 00 54 */	b lbl_804C72A4
lbl_804C7254:
/* 804C7254  7F 84 E3 78 */	mr r4, r28
/* 804C7258  38 A0 00 01 */	li r5, 1
/* 804C725C  38 C0 00 00 */	li r6, 0
/* 804C7260  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804C7264  38 E0 00 00 */	li r7, 0
/* 804C7268  39 00 FF FF */	li r8, -1
/* 804C726C  39 20 00 00 */	li r9, 0
/* 804C7270  4B B4 65 6D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804C7274  2C 03 00 00 */	cmpwi r3, 0
/* 804C7278  40 82 00 0C */	bne lbl_804C7284
/* 804C727C  38 60 00 00 */	li r3, 0
/* 804C7280  48 00 00 24 */	b lbl_804C72A4
lbl_804C7284:
/* 804C7284  38 7E 0B 20 */	addi r3, r30, 0xb20
/* 804C7288  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804C728C  38 A0 00 02 */	li r5, 2
/* 804C7290  81 9E 0B 30 */	lwz r12, 0xb30(r30)
/* 804C7294  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804C7298  7D 89 03 A6 */	mtctr r12
/* 804C729C  4E 80 04 21 */	bctrl 
/* 804C72A0  38 60 00 01 */	li r3, 1
lbl_804C72A4:
/* 804C72A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804C72A8  4B E9 AF 7D */	bl _restgpr_28
/* 804C72AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C72B0  7C 08 03 A6 */	mtlr r0
/* 804C72B4  38 21 00 20 */	addi r1, r1, 0x20
/* 804C72B8  4E 80 00 20 */	blr 
