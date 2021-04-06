lbl_80BF682C:
/* 80BF682C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF6830  7C 08 02 A6 */	mflr r0
/* 80BF6834  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF6838  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF683C  4B 76 B9 9D */	bl _savegpr_28
/* 80BF6840  7C 7D 1B 78 */	mr r29, r3
/* 80BF6844  3C 60 80 BF */	lis r3, cNullVec__6Z2Calc@ha /* 0x80BF6DFC@ha */
/* 80BF6848  3B E3 6D FC */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80BF6DFC@l */
/* 80BF684C  3C 60 80 BF */	lis r3, d_a_obj_gb__stringBase0@ha /* 0x80BF6DEC@ha */
/* 80BF6850  38 63 6D EC */	addi r3, r3, d_a_obj_gb__stringBase0@l /* 0x80BF6DEC@l */
/* 80BF6854  38 63 00 08 */	addi r3, r3, 8
/* 80BF6858  88 1D 05 7C */	lbz r0, 0x57c(r29)
/* 80BF685C  54 00 10 3A */	slwi r0, r0, 2
/* 80BF6860  38 9F 00 20 */	addi r4, r31, 0x20
/* 80BF6864  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BF6868  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF686C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF6870  3F C5 00 02 */	addis r30, r5, 2
/* 80BF6874  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BF6878  7F C5 F3 78 */	mr r5, r30
/* 80BF687C  38 C0 00 80 */	li r6, 0x80
/* 80BF6880  4B 44 5A 6D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF6884  3C 80 00 08 */	lis r4, 8
/* 80BF6888  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80BF688C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80BF6890  4B 41 E3 C5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BF6894  90 7D 05 70 */	stw r3, 0x570(r29)
/* 80BF6898  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80BF689C  28 00 00 00 */	cmplwi r0, 0
/* 80BF68A0  40 82 00 0C */	bne lbl_80BF68AC
/* 80BF68A4  38 60 00 00 */	li r3, 0
/* 80BF68A8  48 00 01 D8 */	b lbl_80BF6A80
lbl_80BF68AC:
/* 80BF68AC  38 60 00 18 */	li r3, 0x18
/* 80BF68B0  4B 6D 83 9D */	bl __nw__FUl
/* 80BF68B4  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BF68B8  41 82 00 20 */	beq lbl_80BF68D8
/* 80BF68BC  3C 80 80 BF */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BF6E8C@ha */
/* 80BF68C0  38 04 6E 8C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BF6E8C@l */
/* 80BF68C4  90 1C 00 00 */	stw r0, 0(r28)
/* 80BF68C8  38 80 00 00 */	li r4, 0
/* 80BF68CC  4B 73 1B 31 */	bl init__12J3DFrameCtrlFs
/* 80BF68D0  38 00 00 00 */	li r0, 0
/* 80BF68D4  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80BF68D8:
/* 80BF68D8  93 9D 05 74 */	stw r28, 0x574(r29)
/* 80BF68DC  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80BF68E0  28 00 00 00 */	cmplwi r0, 0
/* 80BF68E4  40 82 00 0C */	bne lbl_80BF68F0
/* 80BF68E8  38 60 00 00 */	li r3, 0
/* 80BF68EC  48 00 01 94 */	b lbl_80BF6A80
lbl_80BF68F0:
/* 80BF68F0  3C 60 80 BF */	lis r3, d_a_obj_gb__stringBase0@ha /* 0x80BF6DEC@ha */
/* 80BF68F4  38 63 6D EC */	addi r3, r3, d_a_obj_gb__stringBase0@l /* 0x80BF6DEC@l */
/* 80BF68F8  38 63 00 08 */	addi r3, r3, 8
/* 80BF68FC  88 1D 05 7C */	lbz r0, 0x57c(r29)
/* 80BF6900  54 00 10 3A */	slwi r0, r0, 2
/* 80BF6904  38 9F 00 30 */	addi r4, r31, 0x30
/* 80BF6908  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BF690C  7F C5 F3 78 */	mr r5, r30
/* 80BF6910  38 C0 00 80 */	li r6, 0x80
/* 80BF6914  4B 44 59 D9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF6918  7C 65 1B 78 */	mr r5, r3
/* 80BF691C  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80BF6920  80 83 00 04 */	lwz r4, 4(r3)
/* 80BF6924  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80BF6928  38 84 00 58 */	addi r4, r4, 0x58
/* 80BF692C  38 C0 00 01 */	li r6, 1
/* 80BF6930  38 E0 00 02 */	li r7, 2
/* 80BF6934  3D 00 80 BF */	lis r8, lit_3891@ha /* 0x80BF6DC0@ha */
/* 80BF6938  C0 28 6D C0 */	lfs f1, lit_3891@l(r8)  /* 0x80BF6DC0@l */
/* 80BF693C  39 00 00 00 */	li r8, 0
/* 80BF6940  39 20 FF FF */	li r9, -1
/* 80BF6944  4B 41 6C F9 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BF6948  2C 03 00 00 */	cmpwi r3, 0
/* 80BF694C  40 82 00 0C */	bne lbl_80BF6958
/* 80BF6950  38 60 00 00 */	li r3, 0
/* 80BF6954  48 00 01 2C */	b lbl_80BF6A80
lbl_80BF6958:
/* 80BF6958  38 60 00 18 */	li r3, 0x18
/* 80BF695C  4B 6D 82 F1 */	bl __nw__FUl
/* 80BF6960  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BF6964  41 82 00 20 */	beq lbl_80BF6984
/* 80BF6968  3C 80 80 BF */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BF6E8C@ha */
/* 80BF696C  38 04 6E 8C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BF6E8C@l */
/* 80BF6970  90 1C 00 00 */	stw r0, 0(r28)
/* 80BF6974  38 80 00 00 */	li r4, 0
/* 80BF6978  4B 73 1A 85 */	bl init__12J3DFrameCtrlFs
/* 80BF697C  38 00 00 00 */	li r0, 0
/* 80BF6980  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80BF6984:
/* 80BF6984  93 9D 05 78 */	stw r28, 0x578(r29)
/* 80BF6988  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 80BF698C  28 00 00 00 */	cmplwi r0, 0
/* 80BF6990  40 82 00 0C */	bne lbl_80BF699C
/* 80BF6994  38 60 00 00 */	li r3, 0
/* 80BF6998  48 00 00 E8 */	b lbl_80BF6A80
lbl_80BF699C:
/* 80BF699C  3C 60 80 BF */	lis r3, d_a_obj_gb__stringBase0@ha /* 0x80BF6DEC@ha */
/* 80BF69A0  38 63 6D EC */	addi r3, r3, d_a_obj_gb__stringBase0@l /* 0x80BF6DEC@l */
/* 80BF69A4  38 63 00 08 */	addi r3, r3, 8
/* 80BF69A8  88 1D 05 7C */	lbz r0, 0x57c(r29)
/* 80BF69AC  54 00 10 3A */	slwi r0, r0, 2
/* 80BF69B0  38 9F 00 28 */	addi r4, r31, 0x28
/* 80BF69B4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BF69B8  7F C5 F3 78 */	mr r5, r30
/* 80BF69BC  38 C0 00 80 */	li r6, 0x80
/* 80BF69C0  4B 44 59 2D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF69C4  7C 65 1B 78 */	mr r5, r3
/* 80BF69C8  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80BF69CC  80 83 00 04 */	lwz r4, 4(r3)
/* 80BF69D0  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80BF69D4  38 84 00 58 */	addi r4, r4, 0x58
/* 80BF69D8  38 C0 00 01 */	li r6, 1
/* 80BF69DC  38 E0 00 02 */	li r7, 2
/* 80BF69E0  3D 00 80 BF */	lis r8, lit_3894@ha /* 0x80BF6DCC@ha */
/* 80BF69E4  C0 28 6D CC */	lfs f1, lit_3894@l(r8)  /* 0x80BF6DCC@l */
/* 80BF69E8  39 00 00 00 */	li r8, 0
/* 80BF69EC  39 20 FF FF */	li r9, -1
/* 80BF69F0  4B 41 6D 1D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BF69F4  2C 03 00 00 */	cmpwi r3, 0
/* 80BF69F8  40 82 00 0C */	bne lbl_80BF6A04
/* 80BF69FC  38 60 00 00 */	li r3, 0
/* 80BF6A00  48 00 00 80 */	b lbl_80BF6A80
lbl_80BF6A04:
/* 80BF6A04  38 60 00 C0 */	li r3, 0xc0
/* 80BF6A08  4B 6D 82 45 */	bl __nw__FUl
/* 80BF6A0C  7C 60 1B 79 */	or. r0, r3, r3
/* 80BF6A10  41 82 00 0C */	beq lbl_80BF6A1C
/* 80BF6A14  4B 48 4F 5D */	bl __ct__4dBgWFv
/* 80BF6A18  7C 60 1B 78 */	mr r0, r3
lbl_80BF6A1C:
/* 80BF6A1C  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80BF6A20  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80BF6A24  28 00 00 00 */	cmplwi r0, 0
/* 80BF6A28  40 82 00 0C */	bne lbl_80BF6A34
/* 80BF6A2C  38 60 00 00 */	li r3, 0
/* 80BF6A30  48 00 00 50 */	b lbl_80BF6A80
lbl_80BF6A34:
/* 80BF6A34  3C 60 80 BF */	lis r3, d_a_obj_gb__stringBase0@ha /* 0x80BF6DEC@ha */
/* 80BF6A38  38 63 6D EC */	addi r3, r3, d_a_obj_gb__stringBase0@l /* 0x80BF6DEC@l */
/* 80BF6A3C  38 63 00 08 */	addi r3, r3, 8
/* 80BF6A40  88 1D 05 7C */	lbz r0, 0x57c(r29)
/* 80BF6A44  54 00 10 3A */	slwi r0, r0, 2
/* 80BF6A48  38 9F 00 38 */	addi r4, r31, 0x38
/* 80BF6A4C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BF6A50  7F C5 F3 78 */	mr r5, r30
/* 80BF6A54  38 C0 00 80 */	li r6, 0x80
/* 80BF6A58  4B 44 58 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF6A5C  7C 64 1B 78 */	mr r4, r3
/* 80BF6A60  80 7D 06 B8 */	lwz r3, 0x6b8(r29)
/* 80BF6A64  38 A0 00 01 */	li r5, 1
/* 80BF6A68  38 DD 06 88 */	addi r6, r29, 0x688
/* 80BF6A6C  4B 48 34 CD */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80BF6A70  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80BF6A74  20 60 00 01 */	subfic r3, r0, 1
/* 80BF6A78  30 03 FF FF */	addic r0, r3, -1
/* 80BF6A7C  7C 60 19 10 */	subfe r3, r0, r3
lbl_80BF6A80:
/* 80BF6A80  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF6A84  4B 76 B7 A1 */	bl _restgpr_28
/* 80BF6A88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF6A8C  7C 08 03 A6 */	mtlr r0
/* 80BF6A90  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF6A94  4E 80 00 20 */	blr 
