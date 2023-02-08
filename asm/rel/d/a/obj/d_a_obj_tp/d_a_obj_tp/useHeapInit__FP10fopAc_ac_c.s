lbl_80D1E4C0:
/* 80D1E4C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D1E4C4  7C 08 02 A6 */	mflr r0
/* 80D1E4C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D1E4CC  39 61 00 50 */	addi r11, r1, 0x50
/* 80D1E4D0  4B 64 3C E5 */	bl _savegpr_19
/* 80D1E4D4  7C 7F 1B 78 */	mr r31, r3
/* 80D1E4D8  3C 60 80 D2 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80D1EEA0@ha */
/* 80D1E4DC  3B C3 EE A0 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80D1EEA0@l */
/* 80D1E4E0  38 60 00 54 */	li r3, 0x54
/* 80D1E4E4  4B 5B 07 69 */	bl __nw__FUl
/* 80D1E4E8  7C 74 1B 79 */	or. r20, r3, r3
/* 80D1E4EC  41 82 00 A8 */	beq lbl_80D1E594
/* 80D1E4F0  3C 60 80 D2 */	lis r3, d_a_obj_tp__stringBase0@ha /* 0x80D1EE98@ha */
/* 80D1E4F4  38 63 EE 98 */	addi r3, r3, d_a_obj_tp__stringBase0@l /* 0x80D1EE98@l */
/* 80D1E4F8  38 80 00 07 */	li r4, 7
/* 80D1E4FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1E500  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1E504  3E A5 00 02 */	addis r21, r5, 2
/* 80D1E508  3A B5 C2 F8 */	addi r21, r21, -15624
/* 80D1E50C  7E A5 AB 78 */	mr r5, r21
/* 80D1E510  38 C0 00 80 */	li r6, 0x80
/* 80D1E514  4B 31 DD D9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1E518  7C 73 1B 78 */	mr r19, r3
/* 80D1E51C  3C 60 80 D2 */	lis r3, d_a_obj_tp__stringBase0@ha /* 0x80D1EE98@ha */
/* 80D1E520  38 63 EE 98 */	addi r3, r3, d_a_obj_tp__stringBase0@l /* 0x80D1EE98@l */
/* 80D1E524  88 1F 05 94 */	lbz r0, 0x594(r31)
/* 80D1E528  54 00 10 3A */	slwi r0, r0, 2
/* 80D1E52C  38 9E 00 40 */	addi r4, r30, 0x40
/* 80D1E530  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D1E534  7E A5 AB 78 */	mr r5, r21
/* 80D1E538  38 C0 00 80 */	li r6, 0x80
/* 80D1E53C  4B 31 DD B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1E540  7C 64 1B 78 */	mr r4, r3
/* 80D1E544  38 00 00 01 */	li r0, 1
/* 80D1E548  90 01 00 08 */	stw r0, 8(r1)
/* 80D1E54C  38 00 00 00 */	li r0, 0
/* 80D1E550  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D1E554  3C 00 00 08 */	lis r0, 8
/* 80D1E558  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D1E55C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80D1E560  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80D1E564  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1E568  7E 83 A3 78 */	mr r3, r20
/* 80D1E56C  38 A0 00 00 */	li r5, 0
/* 80D1E570  38 C0 00 00 */	li r6, 0
/* 80D1E574  7E 67 9B 78 */	mr r7, r19
/* 80D1E578  39 00 00 00 */	li r8, 0
/* 80D1E57C  3D 20 80 D2 */	lis r9, lit_3879@ha /* 0x80D1EE2C@ha */
/* 80D1E580  C0 29 EE 2C */	lfs f1, lit_3879@l(r9)  /* 0x80D1EE2C@l */
/* 80D1E584  39 20 00 00 */	li r9, 0
/* 80D1E588  39 40 FF FF */	li r10, -1
/* 80D1E58C  4B 2F 16 C1 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 80D1E590  7C 74 1B 78 */	mr r20, r3
lbl_80D1E594:
/* 80D1E594  92 9F 05 70 */	stw r20, 0x570(r31)
/* 80D1E598  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D1E59C  28 03 00 00 */	cmplwi r3, 0
/* 80D1E5A0  41 82 00 10 */	beq lbl_80D1E5B0
/* 80D1E5A4  80 03 00 04 */	lwz r0, 4(r3)
/* 80D1E5A8  28 00 00 00 */	cmplwi r0, 0
/* 80D1E5AC  40 82 00 0C */	bne lbl_80D1E5B8
lbl_80D1E5B0:
/* 80D1E5B0  38 60 00 00 */	li r3, 0
/* 80D1E5B4  48 00 03 3C */	b lbl_80D1E8F0
lbl_80D1E5B8:
/* 80D1E5B8  38 60 00 18 */	li r3, 0x18
/* 80D1E5BC  4B 5B 06 91 */	bl __nw__FUl
/* 80D1E5C0  7C 73 1B 79 */	or. r19, r3, r3
/* 80D1E5C4  41 82 00 20 */	beq lbl_80D1E5E4
/* 80D1E5C8  3C 80 80 D2 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D1EFCC@ha */
/* 80D1E5CC  38 04 EF CC */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D1EFCC@l */
/* 80D1E5D0  90 13 00 00 */	stw r0, 0(r19)
/* 80D1E5D4  38 80 00 00 */	li r4, 0
/* 80D1E5D8  4B 60 9E 25 */	bl init__12J3DFrameCtrlFs
/* 80D1E5DC  38 00 00 00 */	li r0, 0
/* 80D1E5E0  90 13 00 14 */	stw r0, 0x14(r19)
lbl_80D1E5E4:
/* 80D1E5E4  92 7F 05 78 */	stw r19, 0x578(r31)
/* 80D1E5E8  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80D1E5EC  28 00 00 00 */	cmplwi r0, 0
/* 80D1E5F0  40 82 00 0C */	bne lbl_80D1E5FC
/* 80D1E5F4  38 60 00 00 */	li r3, 0
/* 80D1E5F8  48 00 02 F8 */	b lbl_80D1E8F0
lbl_80D1E5FC:
/* 80D1E5FC  3C 60 80 D2 */	lis r3, d_a_obj_tp__stringBase0@ha /* 0x80D1EE98@ha */
/* 80D1E600  38 63 EE 98 */	addi r3, r3, d_a_obj_tp__stringBase0@l /* 0x80D1EE98@l */
/* 80D1E604  88 1F 05 94 */	lbz r0, 0x594(r31)
/* 80D1E608  54 00 10 3A */	slwi r0, r0, 2
/* 80D1E60C  38 9E 00 48 */	addi r4, r30, 0x48
/* 80D1E610  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D1E614  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1E618  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1E61C  3F A5 00 02 */	addis r29, r5, 2
/* 80D1E620  3B BD C2 F8 */	addi r29, r29, -15624
/* 80D1E624  7F A5 EB 78 */	mr r5, r29
/* 80D1E628  38 C0 00 80 */	li r6, 0x80
/* 80D1E62C  4B 31 DC C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1E630  7C 65 1B 78 */	mr r5, r3
/* 80D1E634  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D1E638  80 63 00 04 */	lwz r3, 4(r3)
/* 80D1E63C  80 83 00 04 */	lwz r4, 4(r3)
/* 80D1E640  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D1E644  38 84 00 58 */	addi r4, r4, 0x58
/* 80D1E648  38 C0 00 01 */	li r6, 1
/* 80D1E64C  38 E0 00 02 */	li r7, 2
/* 80D1E650  3D 00 80 D2 */	lis r8, lit_3879@ha /* 0x80D1EE2C@ha */
/* 80D1E654  C0 28 EE 2C */	lfs f1, lit_3879@l(r8)  /* 0x80D1EE2C@l */
/* 80D1E658  39 00 00 00 */	li r8, 0
/* 80D1E65C  39 20 FF FF */	li r9, -1
/* 80D1E660  4B 2E F0 AD */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D1E664  2C 03 00 00 */	cmpwi r3, 0
/* 80D1E668  40 82 00 0C */	bne lbl_80D1E674
/* 80D1E66C  38 60 00 00 */	li r3, 0
/* 80D1E670  48 00 02 80 */	b lbl_80D1E8F0
lbl_80D1E674:
/* 80D1E674  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80D1E678  2C 00 00 0F */	cmpwi r0, 0xf
/* 80D1E67C  41 82 02 70 */	beq lbl_80D1E8EC
/* 80D1E680  3B 80 00 00 */	li r28, 0
/* 80D1E684  3B 60 00 00 */	li r27, 0
/* 80D1E688  3C 60 80 D2 */	lis r3, d_a_obj_tp__stringBase0@ha /* 0x80D1EE98@ha */
/* 80D1E68C  3A C3 EE 98 */	addi r22, r3, d_a_obj_tp__stringBase0@l /* 0x80D1EE98@l */
/* 80D1E690  3A FE 00 50 */	addi r23, r30, 0x50
/* 80D1E694  3E 80 11 00 */	lis r20, 0x1100
/* 80D1E698  3B 1E 00 58 */	addi r24, r30, 0x58
/* 80D1E69C  3C 60 80 D2 */	lis r3, lit_3879@ha /* 0x80D1EE2C@ha */
/* 80D1E6A0  3B 23 EE 2C */	addi r25, r3, lit_3879@l /* 0x80D1EE2C@l */
/* 80D1E6A4  7E DA B3 78 */	mr r26, r22
/* 80D1E6A8  3B DE 00 60 */	addi r30, r30, 0x60
lbl_80D1E6AC:
/* 80D1E6AC  7E C3 B3 78 */	mr r3, r22
/* 80D1E6B0  7C 97 D8 2E */	lwzx r4, r23, r27
/* 80D1E6B4  7F A5 EB 78 */	mr r5, r29
/* 80D1E6B8  38 C0 00 80 */	li r6, 0x80
/* 80D1E6BC  4B 31 DC 31 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1E6C0  3C 80 00 08 */	lis r4, 8
/* 80D1E6C4  38 B4 02 84 */	addi r5, r20, 0x284
/* 80D1E6C8  4B 2F 65 8D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D1E6CC  7E BF DA 14 */	add r21, r31, r27
/* 80D1E6D0  90 75 05 7C */	stw r3, 0x57c(r21)
/* 80D1E6D4  80 15 05 7C */	lwz r0, 0x57c(r21)
/* 80D1E6D8  28 00 00 00 */	cmplwi r0, 0
/* 80D1E6DC  40 82 00 0C */	bne lbl_80D1E6E8
/* 80D1E6E0  38 60 00 00 */	li r3, 0
/* 80D1E6E4  48 00 02 0C */	b lbl_80D1E8F0
lbl_80D1E6E8:
/* 80D1E6E8  38 60 00 18 */	li r3, 0x18
/* 80D1E6EC  4B 5B 05 61 */	bl __nw__FUl
/* 80D1E6F0  7C 73 1B 79 */	or. r19, r3, r3
/* 80D1E6F4  41 82 00 20 */	beq lbl_80D1E714
/* 80D1E6F8  3C 80 80 D2 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D1EFCC@ha */
/* 80D1E6FC  38 04 EF CC */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D1EFCC@l */
/* 80D1E700  90 13 00 00 */	stw r0, 0(r19)
/* 80D1E704  38 80 00 00 */	li r4, 0
/* 80D1E708  4B 60 9C F5 */	bl init__12J3DFrameCtrlFs
/* 80D1E70C  38 00 00 00 */	li r0, 0
/* 80D1E710  90 13 00 14 */	stw r0, 0x14(r19)
lbl_80D1E714:
/* 80D1E714  92 75 05 84 */	stw r19, 0x584(r21)
/* 80D1E718  80 15 05 84 */	lwz r0, 0x584(r21)
/* 80D1E71C  28 00 00 00 */	cmplwi r0, 0
/* 80D1E720  40 82 00 0C */	bne lbl_80D1E72C
/* 80D1E724  38 60 00 00 */	li r3, 0
/* 80D1E728  48 00 01 C8 */	b lbl_80D1E8F0
lbl_80D1E72C:
/* 80D1E72C  7E C3 B3 78 */	mr r3, r22
/* 80D1E730  7C 98 D8 2E */	lwzx r4, r24, r27
/* 80D1E734  7F A5 EB 78 */	mr r5, r29
/* 80D1E738  38 C0 00 80 */	li r6, 0x80
/* 80D1E73C  4B 31 DB B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1E740  7C 65 1B 78 */	mr r5, r3
/* 80D1E744  80 75 05 7C */	lwz r3, 0x57c(r21)
/* 80D1E748  80 83 00 04 */	lwz r4, 4(r3)
/* 80D1E74C  80 75 05 84 */	lwz r3, 0x584(r21)
/* 80D1E750  38 84 00 58 */	addi r4, r4, 0x58
/* 80D1E754  38 C0 00 01 */	li r6, 1
/* 80D1E758  38 E0 00 02 */	li r7, 2
/* 80D1E75C  C0 39 00 00 */	lfs f1, 0(r25)
/* 80D1E760  39 00 00 00 */	li r8, 0
/* 80D1E764  39 20 FF FF */	li r9, -1
/* 80D1E768  4B 2E EE D5 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D1E76C  2C 03 00 00 */	cmpwi r3, 0
/* 80D1E770  40 82 00 0C */	bne lbl_80D1E77C
/* 80D1E774  38 60 00 00 */	li r3, 0
/* 80D1E778  48 00 01 78 */	b lbl_80D1E8F0
lbl_80D1E77C:
/* 80D1E77C  38 60 00 18 */	li r3, 0x18
/* 80D1E780  4B 5B 04 CD */	bl __nw__FUl
/* 80D1E784  7C 73 1B 79 */	or. r19, r3, r3
/* 80D1E788  41 82 00 20 */	beq lbl_80D1E7A8
/* 80D1E78C  3C 80 80 D2 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D1EFCC@ha */
/* 80D1E790  38 04 EF CC */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D1EFCC@l */
/* 80D1E794  90 13 00 00 */	stw r0, 0(r19)
/* 80D1E798  38 80 00 00 */	li r4, 0
/* 80D1E79C  4B 60 9C 61 */	bl init__12J3DFrameCtrlFs
/* 80D1E7A0  38 00 00 00 */	li r0, 0
/* 80D1E7A4  90 13 00 14 */	stw r0, 0x14(r19)
lbl_80D1E7A8:
/* 80D1E7A8  92 75 05 8C */	stw r19, 0x58c(r21)
/* 80D1E7AC  80 15 05 8C */	lwz r0, 0x58c(r21)
/* 80D1E7B0  28 00 00 00 */	cmplwi r0, 0
/* 80D1E7B4  40 82 00 0C */	bne lbl_80D1E7C0
/* 80D1E7B8  38 60 00 00 */	li r3, 0
/* 80D1E7BC  48 00 01 34 */	b lbl_80D1E8F0
lbl_80D1E7C0:
/* 80D1E7C0  7F 43 D3 78 */	mr r3, r26
/* 80D1E7C4  7C 9E D8 2E */	lwzx r4, r30, r27
/* 80D1E7C8  7F A5 EB 78 */	mr r5, r29
/* 80D1E7CC  38 C0 00 80 */	li r6, 0x80
/* 80D1E7D0  4B 31 DB 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1E7D4  7C 65 1B 78 */	mr r5, r3
/* 80D1E7D8  80 75 05 7C */	lwz r3, 0x57c(r21)
/* 80D1E7DC  80 83 00 04 */	lwz r4, 4(r3)
/* 80D1E7E0  80 75 05 8C */	lwz r3, 0x58c(r21)
/* 80D1E7E4  38 84 00 58 */	addi r4, r4, 0x58
/* 80D1E7E8  38 C0 00 01 */	li r6, 1
/* 80D1E7EC  38 E0 00 02 */	li r7, 2
/* 80D1E7F0  C0 39 00 00 */	lfs f1, 0(r25)
/* 80D1E7F4  39 00 00 00 */	li r8, 0
/* 80D1E7F8  39 20 FF FF */	li r9, -1
/* 80D1E7FC  4B 2E EF 11 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D1E800  2C 03 00 00 */	cmpwi r3, 0
/* 80D1E804  40 82 00 0C */	bne lbl_80D1E810
/* 80D1E808  38 60 00 00 */	li r3, 0
/* 80D1E80C  48 00 00 E4 */	b lbl_80D1E8F0
lbl_80D1E810:
/* 80D1E810  3B 9C 00 01 */	addi r28, r28, 1
/* 80D1E814  2C 1C 00 02 */	cmpwi r28, 2
/* 80D1E818  3B 7B 00 04 */	addi r27, r27, 4
/* 80D1E81C  41 80 FE 90 */	blt lbl_80D1E6AC
/* 80D1E820  38 60 00 C0 */	li r3, 0xc0
/* 80D1E824  4B 5B 04 29 */	bl __nw__FUl
/* 80D1E828  7C 60 1B 79 */	or. r0, r3, r3
/* 80D1E82C  41 82 00 0C */	beq lbl_80D1E838
/* 80D1E830  4B 35 D1 41 */	bl __ct__4dBgWFv
/* 80D1E834  7C 60 1B 78 */	mr r0, r3
lbl_80D1E838:
/* 80D1E838  90 1F 06 04 */	stw r0, 0x604(r31)
/* 80D1E83C  80 1F 06 04 */	lwz r0, 0x604(r31)
/* 80D1E840  28 00 00 00 */	cmplwi r0, 0
/* 80D1E844  40 82 00 0C */	bne lbl_80D1E850
/* 80D1E848  38 60 00 00 */	li r3, 0
/* 80D1E84C  48 00 00 A4 */	b lbl_80D1E8F0
lbl_80D1E850:
/* 80D1E850  88 1F 05 98 */	lbz r0, 0x598(r31)
/* 80D1E854  28 00 00 00 */	cmplwi r0, 0
/* 80D1E858  40 82 00 44 */	bne lbl_80D1E89C
/* 80D1E85C  3C 60 80 D2 */	lis r3, d_a_obj_tp__stringBase0@ha /* 0x80D1EE98@ha */
/* 80D1E860  38 63 EE 98 */	addi r3, r3, d_a_obj_tp__stringBase0@l /* 0x80D1EE98@l */
/* 80D1E864  38 80 00 1F */	li r4, 0x1f
/* 80D1E868  7F A5 EB 78 */	mr r5, r29
/* 80D1E86C  38 C0 00 80 */	li r6, 0x80
/* 80D1E870  4B 31 DA 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1E874  7C 64 1B 78 */	mr r4, r3
/* 80D1E878  80 7F 06 04 */	lwz r3, 0x604(r31)
/* 80D1E87C  38 A0 00 01 */	li r5, 1
/* 80D1E880  38 DF 05 D4 */	addi r6, r31, 0x5d4
/* 80D1E884  4B 35 B6 B5 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D1E888  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D1E88C  28 00 00 01 */	cmplwi r0, 1
/* 80D1E890  40 82 00 4C */	bne lbl_80D1E8DC
/* 80D1E894  38 60 00 00 */	li r3, 0
/* 80D1E898  48 00 00 58 */	b lbl_80D1E8F0
lbl_80D1E89C:
/* 80D1E89C  3C 60 80 D2 */	lis r3, d_a_obj_tp__stringBase0@ha /* 0x80D1EE98@ha */
/* 80D1E8A0  38 63 EE 98 */	addi r3, r3, d_a_obj_tp__stringBase0@l /* 0x80D1EE98@l */
/* 80D1E8A4  38 80 00 20 */	li r4, 0x20
/* 80D1E8A8  7F A5 EB 78 */	mr r5, r29
/* 80D1E8AC  38 C0 00 80 */	li r6, 0x80
/* 80D1E8B0  4B 31 DA 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1E8B4  7C 64 1B 78 */	mr r4, r3
/* 80D1E8B8  80 7F 06 04 */	lwz r3, 0x604(r31)
/* 80D1E8BC  38 A0 00 01 */	li r5, 1
/* 80D1E8C0  38 DF 05 D4 */	addi r6, r31, 0x5d4
/* 80D1E8C4  4B 35 B6 75 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D1E8C8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D1E8CC  28 00 00 01 */	cmplwi r0, 1
/* 80D1E8D0  40 82 00 0C */	bne lbl_80D1E8DC
/* 80D1E8D4  38 60 00 00 */	li r3, 0
/* 80D1E8D8  48 00 00 18 */	b lbl_80D1E8F0
lbl_80D1E8DC:
/* 80D1E8DC  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80D1E8E0  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80D1E8E4  80 7F 06 04 */	lwz r3, 0x604(r31)
/* 80D1E8E8  90 03 00 B0 */	stw r0, 0xb0(r3)
lbl_80D1E8EC:
/* 80D1E8EC  38 60 00 01 */	li r3, 1
lbl_80D1E8F0:
/* 80D1E8F0  39 61 00 50 */	addi r11, r1, 0x50
/* 80D1E8F4  4B 64 39 0D */	bl _restgpr_19
/* 80D1E8F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D1E8FC  7C 08 03 A6 */	mtlr r0
/* 80D1E900  38 21 00 50 */	addi r1, r1, 0x50
/* 80D1E904  4E 80 00 20 */	blr 
