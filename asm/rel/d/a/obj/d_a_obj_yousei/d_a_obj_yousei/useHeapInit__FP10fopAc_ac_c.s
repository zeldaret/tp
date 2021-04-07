lbl_804CE7FC:
/* 804CE7FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CE800  7C 08 02 A6 */	mflr r0
/* 804CE804  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CE808  39 61 00 30 */	addi r11, r1, 0x30
/* 804CE80C  4B E9 39 CD */	bl _savegpr_28
/* 804CE810  7C 7F 1B 78 */	mr r31, r3
/* 804CE814  3C 60 80 4D */	lis r3, d_a_obj_yousei__stringBase0@ha /* 0x804D1720@ha */
/* 804CE818  38 63 17 20 */	addi r3, r3, d_a_obj_yousei__stringBase0@l /* 0x804D1720@l */
/* 804CE81C  38 80 00 21 */	li r4, 0x21
/* 804CE820  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CE824  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CE828  3F 85 00 02 */	addis r28, r5, 2
/* 804CE82C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 804CE830  7F 85 E3 78 */	mr r5, r28
/* 804CE834  38 C0 00 80 */	li r6, 0x80
/* 804CE838  4B B6 DA B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804CE83C  7C 7E 1B 78 */	mr r30, r3
/* 804CE840  38 60 00 58 */	li r3, 0x58
/* 804CE844  4B E0 04 09 */	bl __nw__FUl
/* 804CE848  7C 7D 1B 79 */	or. r29, r3, r3
/* 804CE84C  41 82 00 68 */	beq lbl_804CE8B4
/* 804CE850  3C 60 80 4D */	lis r3, d_a_obj_yousei__stringBase0@ha /* 0x804D1720@ha */
/* 804CE854  38 63 17 20 */	addi r3, r3, d_a_obj_yousei__stringBase0@l /* 0x804D1720@l */
/* 804CE858  38 80 00 0F */	li r4, 0xf
/* 804CE85C  7F 85 E3 78 */	mr r5, r28
/* 804CE860  38 C0 00 80 */	li r6, 0x80
/* 804CE864  4B B6 DA 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804CE868  7C 67 1B 78 */	mr r7, r3
/* 804CE86C  38 1F 06 1C */	addi r0, r31, 0x61c
/* 804CE870  90 01 00 08 */	stw r0, 8(r1)
/* 804CE874  3C 00 00 08 */	lis r0, 8
/* 804CE878  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CE87C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 804CE880  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 804CE884  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CE888  7F A3 EB 78 */	mr r3, r29
/* 804CE88C  7F C4 F3 78 */	mr r4, r30
/* 804CE890  38 A0 00 00 */	li r5, 0
/* 804CE894  38 C0 00 00 */	li r6, 0
/* 804CE898  39 00 00 02 */	li r8, 2
/* 804CE89C  3D 20 80 4D */	lis r9, lit_3680@ha /* 0x804D1634@ha */
/* 804CE8A0  C0 29 16 34 */	lfs f1, lit_3680@l(r9)  /* 0x804D1634@l */
/* 804CE8A4  39 20 00 00 */	li r9, 0
/* 804CE8A8  39 40 FF FF */	li r10, -1
/* 804CE8AC  4B B4 1F 25 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 804CE8B0  7C 7D 1B 78 */	mr r29, r3
lbl_804CE8B4:
/* 804CE8B4  93 BF 06 B0 */	stw r29, 0x6b0(r31)
/* 804CE8B8  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 804CE8BC  30 03 FF FF */	addic r0, r3, -1
/* 804CE8C0  7C 60 19 10 */	subfe r3, r0, r3
/* 804CE8C4  39 61 00 30 */	addi r11, r1, 0x30
/* 804CE8C8  4B E9 39 5D */	bl _restgpr_28
/* 804CE8CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CE8D0  7C 08 03 A6 */	mtlr r0
/* 804CE8D4  38 21 00 30 */	addi r1, r1, 0x30
/* 804CE8D8  4E 80 00 20 */	blr 
