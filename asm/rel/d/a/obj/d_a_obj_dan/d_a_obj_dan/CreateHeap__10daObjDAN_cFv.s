lbl_80BDA698:
/* 80BDA698  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BDA69C  7C 08 02 A6 */	mflr r0
/* 80BDA6A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BDA6A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80BDA6A8  4B 78 7B 31 */	bl _savegpr_28
/* 80BDA6AC  7C 7F 1B 78 */	mr r31, r3
/* 80BDA6B0  3C 60 80 BE */	lis r3, d_a_obj_dan__stringBase0@ha /* 0x80BDC46C@ha */
/* 80BDA6B4  38 63 C4 6C */	addi r3, r3, d_a_obj_dan__stringBase0@l /* 0x80BDC46C@l */
/* 80BDA6B8  38 80 00 0B */	li r4, 0xb
/* 80BDA6BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDA6C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDA6C4  3F C5 00 02 */	addis r30, r5, 2
/* 80BDA6C8  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BDA6CC  7F C5 F3 78 */	mr r5, r30
/* 80BDA6D0  38 C0 00 80 */	li r6, 0x80
/* 80BDA6D4  4B 46 1C 19 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BDA6D8  7C 7D 1B 78 */	mr r29, r3
/* 80BDA6DC  38 60 00 58 */	li r3, 0x58
/* 80BDA6E0  4B 6F 45 6D */	bl __nw__FUl
/* 80BDA6E4  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BDA6E8  41 82 00 68 */	beq lbl_80BDA750
/* 80BDA6EC  3C 60 80 BE */	lis r3, d_a_obj_dan__stringBase0@ha /* 0x80BDC46C@ha */
/* 80BDA6F0  38 63 C4 6C */	addi r3, r3, d_a_obj_dan__stringBase0@l /* 0x80BDC46C@l */
/* 80BDA6F4  38 80 00 08 */	li r4, 8
/* 80BDA6F8  7F C5 F3 78 */	mr r5, r30
/* 80BDA6FC  38 C0 00 80 */	li r6, 0x80
/* 80BDA700  4B 46 1B ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BDA704  7C 67 1B 78 */	mr r7, r3
/* 80BDA708  38 1F 07 B0 */	addi r0, r31, 0x7b0
/* 80BDA70C  90 01 00 08 */	stw r0, 8(r1)
/* 80BDA710  38 00 00 00 */	li r0, 0
/* 80BDA714  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BDA718  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 80BDA71C  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 80BDA720  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BDA724  7F 83 E3 78 */	mr r3, r28
/* 80BDA728  7F A4 EB 78 */	mr r4, r29
/* 80BDA72C  38 A0 00 00 */	li r5, 0
/* 80BDA730  38 C0 00 00 */	li r6, 0
/* 80BDA734  39 00 00 02 */	li r8, 2
/* 80BDA738  3D 20 80 BE */	lis r9, lit_3775@ha /* 0x80BDC3B0@ha */
/* 80BDA73C  C0 29 C3 B0 */	lfs f1, lit_3775@l(r9)  /* 0x80BDC3B0@l */
/* 80BDA740  39 20 00 00 */	li r9, 0
/* 80BDA744  39 40 FF FF */	li r10, -1
/* 80BDA748  4B 43 60 89 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80BDA74C  7C 7C 1B 78 */	mr r28, r3
lbl_80BDA750:
/* 80BDA750  93 9F 08 44 */	stw r28, 0x844(r31)
/* 80BDA754  80 7F 08 44 */	lwz r3, 0x844(r31)
/* 80BDA758  28 03 00 00 */	cmplwi r3, 0
/* 80BDA75C  41 82 00 10 */	beq lbl_80BDA76C
/* 80BDA760  83 A3 00 04 */	lwz r29, 4(r3)
/* 80BDA764  28 1D 00 00 */	cmplwi r29, 0
/* 80BDA768  40 82 00 0C */	bne lbl_80BDA774
lbl_80BDA76C:
/* 80BDA76C  38 60 00 00 */	li r3, 0
/* 80BDA770  48 00 02 28 */	b lbl_80BDA998
lbl_80BDA774:
/* 80BDA774  38 60 00 18 */	li r3, 0x18
/* 80BDA778  4B 6F 44 D5 */	bl __nw__FUl
/* 80BDA77C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BDA780  41 82 00 20 */	beq lbl_80BDA7A0
/* 80BDA784  3C 80 80 BE */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BDC544@ha */
/* 80BDA788  38 04 C5 44 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BDC544@l */
/* 80BDA78C  90 1C 00 00 */	stw r0, 0(r28)
/* 80BDA790  38 80 00 00 */	li r4, 0
/* 80BDA794  4B 74 DC 69 */	bl init__12J3DFrameCtrlFs
/* 80BDA798  38 00 00 00 */	li r0, 0
/* 80BDA79C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80BDA7A0:
/* 80BDA7A0  93 9F 07 90 */	stw r28, 0x790(r31)
/* 80BDA7A4  80 1F 07 90 */	lwz r0, 0x790(r31)
/* 80BDA7A8  28 00 00 00 */	cmplwi r0, 0
/* 80BDA7AC  40 82 00 0C */	bne lbl_80BDA7B8
/* 80BDA7B0  38 60 00 00 */	li r3, 0
/* 80BDA7B4  48 00 01 E4 */	b lbl_80BDA998
lbl_80BDA7B8:
/* 80BDA7B8  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80BDA7BC  28 00 00 01 */	cmplwi r0, 1
/* 80BDA7C0  40 82 00 58 */	bne lbl_80BDA818
/* 80BDA7C4  3C 60 80 BE */	lis r3, d_a_obj_dan__stringBase0@ha /* 0x80BDC46C@ha */
/* 80BDA7C8  38 63 C4 6C */	addi r3, r3, d_a_obj_dan__stringBase0@l /* 0x80BDC46C@l */
/* 80BDA7CC  38 80 00 0E */	li r4, 0xe
/* 80BDA7D0  7F C5 F3 78 */	mr r5, r30
/* 80BDA7D4  38 C0 00 80 */	li r6, 0x80
/* 80BDA7D8  4B 46 1B 15 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BDA7DC  7C 65 1B 78 */	mr r5, r3
/* 80BDA7E0  80 9D 00 04 */	lwz r4, 4(r29)
/* 80BDA7E4  80 7F 07 90 */	lwz r3, 0x790(r31)
/* 80BDA7E8  38 84 00 58 */	addi r4, r4, 0x58
/* 80BDA7EC  38 C0 00 01 */	li r6, 1
/* 80BDA7F0  38 E0 00 02 */	li r7, 2
/* 80BDA7F4  3D 00 80 BE */	lis r8, lit_3775@ha /* 0x80BDC3B0@ha */
/* 80BDA7F8  C0 28 C3 B0 */	lfs f1, lit_3775@l(r8)  /* 0x80BDC3B0@l */
/* 80BDA7FC  39 00 00 00 */	li r8, 0
/* 80BDA800  39 20 FF FF */	li r9, -1
/* 80BDA804  4B 43 2F 09 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BDA808  2C 03 00 00 */	cmpwi r3, 0
/* 80BDA80C  40 82 00 60 */	bne lbl_80BDA86C
/* 80BDA810  38 60 00 00 */	li r3, 0
/* 80BDA814  48 00 01 84 */	b lbl_80BDA998
lbl_80BDA818:
/* 80BDA818  3C 60 80 BE */	lis r3, d_a_obj_dan__stringBase0@ha /* 0x80BDC46C@ha */
/* 80BDA81C  38 63 C4 6C */	addi r3, r3, d_a_obj_dan__stringBase0@l /* 0x80BDC46C@l */
/* 80BDA820  38 80 00 0F */	li r4, 0xf
/* 80BDA824  7F C5 F3 78 */	mr r5, r30
/* 80BDA828  38 C0 00 80 */	li r6, 0x80
/* 80BDA82C  4B 46 1A C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BDA830  7C 65 1B 78 */	mr r5, r3
/* 80BDA834  80 9D 00 04 */	lwz r4, 4(r29)
/* 80BDA838  80 7F 07 90 */	lwz r3, 0x790(r31)
/* 80BDA83C  38 84 00 58 */	addi r4, r4, 0x58
/* 80BDA840  38 C0 00 01 */	li r6, 1
/* 80BDA844  38 E0 00 02 */	li r7, 2
/* 80BDA848  3D 00 80 BE */	lis r8, lit_3775@ha /* 0x80BDC3B0@ha */
/* 80BDA84C  C0 28 C3 B0 */	lfs f1, lit_3775@l(r8)  /* 0x80BDC3B0@l */
/* 80BDA850  39 00 00 00 */	li r8, 0
/* 80BDA854  39 20 FF FF */	li r9, -1
/* 80BDA858  4B 43 2E B5 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BDA85C  2C 03 00 00 */	cmpwi r3, 0
/* 80BDA860  40 82 00 0C */	bne lbl_80BDA86C
/* 80BDA864  38 60 00 00 */	li r3, 0
/* 80BDA868  48 00 01 30 */	b lbl_80BDA998
lbl_80BDA86C:
/* 80BDA86C  38 60 00 18 */	li r3, 0x18
/* 80BDA870  4B 6F 43 DD */	bl __nw__FUl
/* 80BDA874  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BDA878  41 82 00 20 */	beq lbl_80BDA898
/* 80BDA87C  3C 80 80 BE */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BDC544@ha */
/* 80BDA880  38 04 C5 44 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BDC544@l */
/* 80BDA884  90 1C 00 00 */	stw r0, 0(r28)
/* 80BDA888  38 80 00 00 */	li r4, 0
/* 80BDA88C  4B 74 DB 71 */	bl init__12J3DFrameCtrlFs
/* 80BDA890  38 00 00 00 */	li r0, 0
/* 80BDA894  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80BDA898:
/* 80BDA898  93 9F 07 94 */	stw r28, 0x794(r31)
/* 80BDA89C  80 1F 07 94 */	lwz r0, 0x794(r31)
/* 80BDA8A0  28 00 00 00 */	cmplwi r0, 0
/* 80BDA8A4  40 82 00 0C */	bne lbl_80BDA8B0
/* 80BDA8A8  38 60 00 00 */	li r3, 0
/* 80BDA8AC  48 00 00 EC */	b lbl_80BDA998
lbl_80BDA8B0:
/* 80BDA8B0  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80BDA8B4  28 00 00 01 */	cmplwi r0, 1
/* 80BDA8B8  40 82 00 58 */	bne lbl_80BDA910
/* 80BDA8BC  3C 60 80 BE */	lis r3, d_a_obj_dan__stringBase0@ha /* 0x80BDC46C@ha */
/* 80BDA8C0  38 63 C4 6C */	addi r3, r3, d_a_obj_dan__stringBase0@l /* 0x80BDC46C@l */
/* 80BDA8C4  38 80 00 12 */	li r4, 0x12
/* 80BDA8C8  7F C5 F3 78 */	mr r5, r30
/* 80BDA8CC  38 C0 00 80 */	li r6, 0x80
/* 80BDA8D0  4B 46 1A 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BDA8D4  7C 65 1B 78 */	mr r5, r3
/* 80BDA8D8  80 9D 00 04 */	lwz r4, 4(r29)
/* 80BDA8DC  80 7F 07 94 */	lwz r3, 0x794(r31)
/* 80BDA8E0  38 84 00 58 */	addi r4, r4, 0x58
/* 80BDA8E4  38 C0 00 01 */	li r6, 1
/* 80BDA8E8  38 E0 00 02 */	li r7, 2
/* 80BDA8EC  3D 00 80 BE */	lis r8, lit_3775@ha /* 0x80BDC3B0@ha */
/* 80BDA8F0  C0 28 C3 B0 */	lfs f1, lit_3775@l(r8)  /* 0x80BDC3B0@l */
/* 80BDA8F4  39 00 00 00 */	li r8, 0
/* 80BDA8F8  39 20 FF FF */	li r9, -1
/* 80BDA8FC  4B 43 2D 41 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BDA900  2C 03 00 00 */	cmpwi r3, 0
/* 80BDA904  40 82 00 90 */	bne lbl_80BDA994
/* 80BDA908  38 60 00 00 */	li r3, 0
/* 80BDA90C  48 00 00 8C */	b lbl_80BDA998
lbl_80BDA910:
/* 80BDA910  38 60 00 18 */	li r3, 0x18
/* 80BDA914  4B 6F 43 39 */	bl __nw__FUl
/* 80BDA918  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BDA91C  41 82 00 20 */	beq lbl_80BDA93C
/* 80BDA920  3C 80 80 BE */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BDC544@ha */
/* 80BDA924  38 04 C5 44 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BDC544@l */
/* 80BDA928  90 1C 00 00 */	stw r0, 0(r28)
/* 80BDA92C  38 80 00 00 */	li r4, 0
/* 80BDA930  4B 74 DA CD */	bl init__12J3DFrameCtrlFs
/* 80BDA934  38 00 00 00 */	li r0, 0
/* 80BDA938  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80BDA93C:
/* 80BDA93C  93 9F 07 94 */	stw r28, 0x794(r31)
/* 80BDA940  3C 60 80 BE */	lis r3, d_a_obj_dan__stringBase0@ha /* 0x80BDC46C@ha */
/* 80BDA944  38 63 C4 6C */	addi r3, r3, d_a_obj_dan__stringBase0@l /* 0x80BDC46C@l */
/* 80BDA948  38 80 00 13 */	li r4, 0x13
/* 80BDA94C  7F C5 F3 78 */	mr r5, r30
/* 80BDA950  38 C0 00 80 */	li r6, 0x80
/* 80BDA954  4B 46 19 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BDA958  7C 65 1B 78 */	mr r5, r3
/* 80BDA95C  80 9D 00 04 */	lwz r4, 4(r29)
/* 80BDA960  80 7F 07 94 */	lwz r3, 0x794(r31)
/* 80BDA964  38 84 00 58 */	addi r4, r4, 0x58
/* 80BDA968  38 C0 00 01 */	li r6, 1
/* 80BDA96C  38 E0 00 02 */	li r7, 2
/* 80BDA970  3D 00 80 BE */	lis r8, lit_3775@ha /* 0x80BDC3B0@ha */
/* 80BDA974  C0 28 C3 B0 */	lfs f1, lit_3775@l(r8)  /* 0x80BDC3B0@l */
/* 80BDA978  39 00 00 00 */	li r8, 0
/* 80BDA97C  39 20 FF FF */	li r9, -1
/* 80BDA980  4B 43 2C BD */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BDA984  2C 03 00 00 */	cmpwi r3, 0
/* 80BDA988  40 82 00 0C */	bne lbl_80BDA994
/* 80BDA98C  38 60 00 00 */	li r3, 0
/* 80BDA990  48 00 00 08 */	b lbl_80BDA998
lbl_80BDA994:
/* 80BDA994  38 60 00 01 */	li r3, 1
lbl_80BDA998:
/* 80BDA998  39 61 00 30 */	addi r11, r1, 0x30
/* 80BDA99C  4B 78 78 89 */	bl _restgpr_28
/* 80BDA9A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BDA9A4  7C 08 03 A6 */	mtlr r0
/* 80BDA9A8  38 21 00 30 */	addi r1, r1, 0x30
/* 80BDA9AC  4E 80 00 20 */	blr 
