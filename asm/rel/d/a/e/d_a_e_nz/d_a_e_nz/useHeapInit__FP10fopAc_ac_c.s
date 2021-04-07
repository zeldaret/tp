lbl_8072B680:
/* 8072B680  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8072B684  7C 08 02 A6 */	mflr r0
/* 8072B688  90 01 00 34 */	stw r0, 0x34(r1)
/* 8072B68C  39 61 00 30 */	addi r11, r1, 0x30
/* 8072B690  4B C3 6B 49 */	bl _savegpr_28
/* 8072B694  7C 7F 1B 78 */	mr r31, r3
/* 8072B698  38 60 00 58 */	li r3, 0x58
/* 8072B69C  4B BA 35 B1 */	bl __nw__FUl
/* 8072B6A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8072B6A4  41 82 00 94 */	beq lbl_8072B738
/* 8072B6A8  3C 60 80 73 */	lis r3, d_a_e_nz__stringBase0@ha /* 0x8072C240@ha */
/* 8072B6AC  38 63 C2 40 */	addi r3, r3, d_a_e_nz__stringBase0@l /* 0x8072C240@l */
/* 8072B6B0  38 80 00 0A */	li r4, 0xa
/* 8072B6B4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072B6B8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072B6BC  3F 85 00 02 */	addis r28, r5, 2
/* 8072B6C0  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8072B6C4  7F 85 E3 78 */	mr r5, r28
/* 8072B6C8  38 C0 00 80 */	li r6, 0x80
/* 8072B6CC  4B 91 0C 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8072B6D0  7C 7D 1B 78 */	mr r29, r3
/* 8072B6D4  3C 60 80 73 */	lis r3, d_a_e_nz__stringBase0@ha /* 0x8072C240@ha */
/* 8072B6D8  38 63 C2 40 */	addi r3, r3, d_a_e_nz__stringBase0@l /* 0x8072C240@l */
/* 8072B6DC  38 80 00 0D */	li r4, 0xd
/* 8072B6E0  7F 85 E3 78 */	mr r5, r28
/* 8072B6E4  38 C0 00 80 */	li r6, 0x80
/* 8072B6E8  4B 91 0C 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8072B6EC  7C 64 1B 78 */	mr r4, r3
/* 8072B6F0  38 1F 05 F4 */	addi r0, r31, 0x5f4
/* 8072B6F4  90 01 00 08 */	stw r0, 8(r1)
/* 8072B6F8  3C 00 00 08 */	lis r0, 8
/* 8072B6FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8072B700  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8072B704  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8072B708  90 01 00 10 */	stw r0, 0x10(r1)
/* 8072B70C  7F C3 F3 78 */	mr r3, r30
/* 8072B710  38 A0 00 00 */	li r5, 0
/* 8072B714  38 C0 00 00 */	li r6, 0
/* 8072B718  7F A7 EB 78 */	mr r7, r29
/* 8072B71C  39 00 00 02 */	li r8, 2
/* 8072B720  3D 20 80 73 */	lis r9, lit_3791@ha /* 0x8072C188@ha */
/* 8072B724  C0 29 C1 88 */	lfs f1, lit_3791@l(r9)  /* 0x8072C188@l */
/* 8072B728  39 20 00 00 */	li r9, 0
/* 8072B72C  39 40 FF FF */	li r10, -1
/* 8072B730  4B 8E 50 A1 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8072B734  7C 7E 1B 78 */	mr r30, r3
lbl_8072B738:
/* 8072B738  93 DF 05 E0 */	stw r30, 0x5e0(r31)
/* 8072B73C  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 8072B740  28 03 00 00 */	cmplwi r3, 0
/* 8072B744  41 82 00 10 */	beq lbl_8072B754
/* 8072B748  80 03 00 04 */	lwz r0, 4(r3)
/* 8072B74C  28 00 00 00 */	cmplwi r0, 0
/* 8072B750  40 82 00 0C */	bne lbl_8072B75C
lbl_8072B754:
/* 8072B754  38 60 00 00 */	li r3, 0
/* 8072B758  48 00 00 54 */	b lbl_8072B7AC
lbl_8072B75C:
/* 8072B75C  3C 60 80 73 */	lis r3, lit_3790@ha /* 0x8072C184@ha */
/* 8072B760  C0 23 C1 84 */	lfs f1, lit_3790@l(r3)  /* 0x8072C184@l */
/* 8072B764  FC 40 08 90 */	fmr f2, f1
/* 8072B768  FC 60 08 90 */	fmr f3, f1
/* 8072B76C  38 60 00 00 */	li r3, 0
/* 8072B770  4B B4 57 35 */	bl MtxScale__FfffUc
/* 8072B774  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 8072B778  80 83 00 04 */	lwz r4, 4(r3)
/* 8072B77C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8072B780  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8072B784  80 63 00 00 */	lwz r3, 0(r3)
/* 8072B788  38 84 00 24 */	addi r4, r4, 0x24
/* 8072B78C  4B C1 AD 25 */	bl PSMTXCopy
/* 8072B790  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 8072B794  80 83 00 04 */	lwz r4, 4(r3)
/* 8072B798  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 8072B79C  38 A0 00 01 */	li r5, 1
/* 8072B7A0  4B 8E 2D 9D */	bl create__21mDoExt_invisibleModelFP8J3DModelUc
/* 8072B7A4  30 03 FF FF */	addic r0, r3, -1
/* 8072B7A8  7C 60 19 10 */	subfe r3, r0, r3
lbl_8072B7AC:
/* 8072B7AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8072B7B0  4B C3 6A 75 */	bl _restgpr_28
/* 8072B7B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8072B7B8  7C 08 03 A6 */	mtlr r0
/* 8072B7BC  38 21 00 30 */	addi r1, r1, 0x30
/* 8072B7C0  4E 80 00 20 */	blr 
