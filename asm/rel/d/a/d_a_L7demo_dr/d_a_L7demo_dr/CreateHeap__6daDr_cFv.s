lbl_805AA084:
/* 805AA084  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AA088  7C 08 02 A6 */	mflr r0
/* 805AA08C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AA090  39 61 00 30 */	addi r11, r1, 0x30
/* 805AA094  4B DB 81 45 */	bl _savegpr_28
/* 805AA098  7C 7F 1B 78 */	mr r31, r3
/* 805AA09C  3C 60 80 5B */	lis r3, d_a_L7demo_dr__stringBase0@ha /* 0x805AA4C8@ha */
/* 805AA0A0  38 63 A4 C8 */	addi r3, r3, d_a_L7demo_dr__stringBase0@l /* 0x805AA4C8@l */
/* 805AA0A4  38 80 00 49 */	li r4, 0x49
/* 805AA0A8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AA0AC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AA0B0  3F A5 00 02 */	addis r29, r5, 2
/* 805AA0B4  3B BD C2 F8 */	addi r29, r29, -15624
/* 805AA0B8  7F A5 EB 78 */	mr r5, r29
/* 805AA0BC  38 C0 00 80 */	li r6, 0x80
/* 805AA0C0  4B A9 22 2D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AA0C4  7C 7C 1B 78 */	mr r28, r3
/* 805AA0C8  38 60 00 58 */	li r3, 0x58
/* 805AA0CC  4B D2 4B 81 */	bl __nw__FUl
/* 805AA0D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 805AA0D4  41 82 00 68 */	beq lbl_805AA13C
/* 805AA0D8  3C 60 80 5B */	lis r3, d_a_L7demo_dr__stringBase0@ha /* 0x805AA4C8@ha */
/* 805AA0DC  38 63 A4 C8 */	addi r3, r3, d_a_L7demo_dr__stringBase0@l /* 0x805AA4C8@l */
/* 805AA0E0  38 80 00 1E */	li r4, 0x1e
/* 805AA0E4  7F A5 EB 78 */	mr r5, r29
/* 805AA0E8  38 C0 00 80 */	li r6, 0x80
/* 805AA0EC  4B A9 22 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AA0F0  7C 67 1B 78 */	mr r7, r3
/* 805AA0F4  38 1F 05 74 */	addi r0, r31, 0x574
/* 805AA0F8  90 01 00 08 */	stw r0, 8(r1)
/* 805AA0FC  38 00 00 00 */	li r0, 0
/* 805AA100  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AA104  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 805AA108  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 805AA10C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AA110  7F C3 F3 78 */	mr r3, r30
/* 805AA114  7F 84 E3 78 */	mr r4, r28
/* 805AA118  38 A0 00 00 */	li r5, 0
/* 805AA11C  38 C0 00 00 */	li r6, 0
/* 805AA120  39 00 00 00 */	li r8, 0
/* 805AA124  3D 20 80 5B */	lis r9, lit_3951@ha /* 0x805AA474@ha */
/* 805AA128  C0 29 A4 74 */	lfs f1, lit_3951@l(r9)  /* 0x805AA474@l */
/* 805AA12C  39 20 00 00 */	li r9, 0
/* 805AA130  39 40 FF FF */	li r10, -1
/* 805AA134  4B A6 66 9D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805AA138  7C 7E 1B 78 */	mr r30, r3
lbl_805AA13C:
/* 805AA13C  93 DF 05 70 */	stw r30, 0x570(r31)
/* 805AA140  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 805AA144  28 03 00 00 */	cmplwi r3, 0
/* 805AA148  41 82 00 10 */	beq lbl_805AA158
/* 805AA14C  80 03 00 04 */	lwz r0, 4(r3)
/* 805AA150  28 00 00 00 */	cmplwi r0, 0
/* 805AA154  40 82 00 0C */	bne lbl_805AA160
lbl_805AA158:
/* 805AA158  38 60 00 00 */	li r3, 0
/* 805AA15C  48 00 00 08 */	b lbl_805AA164
lbl_805AA160:
/* 805AA160  38 60 00 01 */	li r3, 1
lbl_805AA164:
/* 805AA164  39 61 00 30 */	addi r11, r1, 0x30
/* 805AA168  4B DB 80 BD */	bl _restgpr_28
/* 805AA16C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AA170  7C 08 03 A6 */	mtlr r0
/* 805AA174  38 21 00 30 */	addi r1, r1, 0x30
/* 805AA178  4E 80 00 20 */	blr 
