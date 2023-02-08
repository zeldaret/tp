lbl_80BA9F00:
/* 80BA9F00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BA9F04  7C 08 02 A6 */	mflr r0
/* 80BA9F08  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BA9F0C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BA9F10  4B 7B 82 C5 */	bl _savegpr_27
/* 80BA9F14  7C 7F 1B 78 */	mr r31, r3
/* 80BA9F18  3C 60 80 BB */	lis r3, lit_3774@ha /* 0x80BAC970@ha */
/* 80BA9F1C  3B C3 C9 70 */	addi r30, r3, lit_3774@l /* 0x80BAC970@l */
/* 80BA9F20  3C 60 80 BB */	lis r3, d_a_obj_batta__stringBase0@ha /* 0x80BACA64@ha */
/* 80BA9F24  38 63 CA 64 */	addi r3, r3, d_a_obj_batta__stringBase0@l /* 0x80BACA64@l */
/* 80BA9F28  38 80 00 0B */	li r4, 0xb
/* 80BA9F2C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA9F30  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA9F34  3F A5 00 02 */	addis r29, r5, 2
/* 80BA9F38  3B BD C2 F8 */	addi r29, r29, -15624
/* 80BA9F3C  7F A5 EB 78 */	mr r5, r29
/* 80BA9F40  38 C0 00 80 */	li r6, 0x80
/* 80BA9F44  4B 49 23 A9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA9F48  7C 7B 1B 78 */	mr r27, r3
/* 80BA9F4C  38 60 00 58 */	li r3, 0x58
/* 80BA9F50  4B 72 4C FD */	bl __nw__FUl
/* 80BA9F54  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BA9F58  41 82 00 64 */	beq lbl_80BA9FBC
/* 80BA9F5C  3C 60 80 BB */	lis r3, d_a_obj_batta__stringBase0@ha /* 0x80BACA64@ha */
/* 80BA9F60  38 63 CA 64 */	addi r3, r3, d_a_obj_batta__stringBase0@l /* 0x80BACA64@l */
/* 80BA9F64  38 80 00 08 */	li r4, 8
/* 80BA9F68  7F A5 EB 78 */	mr r5, r29
/* 80BA9F6C  38 C0 00 80 */	li r6, 0x80
/* 80BA9F70  4B 49 23 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA9F74  7C 67 1B 78 */	mr r7, r3
/* 80BA9F78  38 1F 05 90 */	addi r0, r31, 0x590
/* 80BA9F7C  90 01 00 08 */	stw r0, 8(r1)
/* 80BA9F80  3C 00 00 08 */	lis r0, 8
/* 80BA9F84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BA9F88  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 80BA9F8C  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 80BA9F90  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BA9F94  7F 83 E3 78 */	mr r3, r28
/* 80BA9F98  7F 64 DB 78 */	mr r4, r27
/* 80BA9F9C  38 A0 00 00 */	li r5, 0
/* 80BA9FA0  38 C0 00 00 */	li r6, 0
/* 80BA9FA4  39 00 00 02 */	li r8, 2
/* 80BA9FA8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80BA9FAC  39 20 00 00 */	li r9, 0
/* 80BA9FB0  39 40 FF FF */	li r10, -1
/* 80BA9FB4  4B 46 68 1D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80BA9FB8  7C 7C 1B 78 */	mr r28, r3
lbl_80BA9FBC:
/* 80BA9FBC  93 9F 06 20 */	stw r28, 0x620(r31)
/* 80BA9FC0  80 7F 06 20 */	lwz r3, 0x620(r31)
/* 80BA9FC4  28 03 00 00 */	cmplwi r3, 0
/* 80BA9FC8  41 82 00 10 */	beq lbl_80BA9FD8
/* 80BA9FCC  83 83 00 04 */	lwz r28, 4(r3)
/* 80BA9FD0  28 1C 00 00 */	cmplwi r28, 0
/* 80BA9FD4  40 82 00 0C */	bne lbl_80BA9FE0
lbl_80BA9FD8:
/* 80BA9FD8  38 60 00 00 */	li r3, 0
/* 80BA9FDC  48 00 01 48 */	b lbl_80BAA124
lbl_80BA9FE0:
/* 80BA9FE0  38 60 00 18 */	li r3, 0x18
/* 80BA9FE4  4B 72 4C 69 */	bl __nw__FUl
/* 80BA9FE8  7C 7B 1B 79 */	or. r27, r3, r3
/* 80BA9FEC  41 82 00 20 */	beq lbl_80BAA00C
/* 80BA9FF0  3C 80 80 BB */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BACC64@ha */
/* 80BA9FF4  38 04 CC 64 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BACC64@l */
/* 80BA9FF8  90 1B 00 00 */	stw r0, 0(r27)
/* 80BA9FFC  38 80 00 00 */	li r4, 0
/* 80BAA000  4B 77 E3 FD */	bl init__12J3DFrameCtrlFs
/* 80BAA004  38 00 00 00 */	li r0, 0
/* 80BAA008  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80BAA00C:
/* 80BAA00C  93 7F 06 24 */	stw r27, 0x624(r31)
/* 80BAA010  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80BAA014  28 00 00 00 */	cmplwi r0, 0
/* 80BAA018  40 82 00 0C */	bne lbl_80BAA024
/* 80BAA01C  38 60 00 00 */	li r3, 0
/* 80BAA020  48 00 01 04 */	b lbl_80BAA124
lbl_80BAA024:
/* 80BAA024  3C 60 80 BB */	lis r3, d_a_obj_batta__stringBase0@ha /* 0x80BACA64@ha */
/* 80BAA028  38 63 CA 64 */	addi r3, r3, d_a_obj_batta__stringBase0@l /* 0x80BACA64@l */
/* 80BAA02C  88 1F 09 F3 */	lbz r0, 0x9f3(r31)
/* 80BAA030  54 00 10 3A */	slwi r0, r0, 2
/* 80BAA034  38 9E 00 08 */	addi r4, r30, 8
/* 80BAA038  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BAA03C  7F A5 EB 78 */	mr r5, r29
/* 80BAA040  38 C0 00 80 */	li r6, 0x80
/* 80BAA044  4B 49 22 A9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAA048  7C 65 1B 78 */	mr r5, r3
/* 80BAA04C  80 9C 00 04 */	lwz r4, 4(r28)
/* 80BAA050  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80BAA054  38 84 00 58 */	addi r4, r4, 0x58
/* 80BAA058  38 C0 00 01 */	li r6, 1
/* 80BAA05C  38 E0 00 02 */	li r7, 2
/* 80BAA060  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80BAA064  39 00 00 00 */	li r8, 0
/* 80BAA068  39 20 FF FF */	li r9, -1
/* 80BAA06C  4B 46 36 A1 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BAA070  2C 03 00 00 */	cmpwi r3, 0
/* 80BAA074  40 82 00 0C */	bne lbl_80BAA080
/* 80BAA078  38 60 00 00 */	li r3, 0
/* 80BAA07C  48 00 00 A8 */	b lbl_80BAA124
lbl_80BAA080:
/* 80BAA080  38 60 00 18 */	li r3, 0x18
/* 80BAA084  4B 72 4B C9 */	bl __nw__FUl
/* 80BAA088  7C 7B 1B 79 */	or. r27, r3, r3
/* 80BAA08C  41 82 00 20 */	beq lbl_80BAA0AC
/* 80BAA090  3C 80 80 BB */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BACC64@ha */
/* 80BAA094  38 04 CC 64 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BACC64@l */
/* 80BAA098  90 1B 00 00 */	stw r0, 0(r27)
/* 80BAA09C  38 80 00 00 */	li r4, 0
/* 80BAA0A0  4B 77 E3 5D */	bl init__12J3DFrameCtrlFs
/* 80BAA0A4  38 00 00 00 */	li r0, 0
/* 80BAA0A8  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80BAA0AC:
/* 80BAA0AC  93 7F 06 28 */	stw r27, 0x628(r31)
/* 80BAA0B0  80 1F 06 28 */	lwz r0, 0x628(r31)
/* 80BAA0B4  28 00 00 00 */	cmplwi r0, 0
/* 80BAA0B8  40 82 00 0C */	bne lbl_80BAA0C4
/* 80BAA0BC  38 60 00 00 */	li r3, 0
/* 80BAA0C0  48 00 00 64 */	b lbl_80BAA124
lbl_80BAA0C4:
/* 80BAA0C4  3C 60 80 BB */	lis r3, d_a_obj_batta__stringBase0@ha /* 0x80BACA64@ha */
/* 80BAA0C8  38 63 CA 64 */	addi r3, r3, d_a_obj_batta__stringBase0@l /* 0x80BACA64@l */
/* 80BAA0CC  88 1F 09 F3 */	lbz r0, 0x9f3(r31)
/* 80BAA0D0  54 00 10 3A */	slwi r0, r0, 2
/* 80BAA0D4  38 9E 00 10 */	addi r4, r30, 0x10
/* 80BAA0D8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BAA0DC  7F A5 EB 78 */	mr r5, r29
/* 80BAA0E0  38 C0 00 80 */	li r6, 0x80
/* 80BAA0E4  4B 49 22 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAA0E8  7C 65 1B 78 */	mr r5, r3
/* 80BAA0EC  80 9C 00 04 */	lwz r4, 4(r28)
/* 80BAA0F0  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80BAA0F4  38 84 00 58 */	addi r4, r4, 0x58
/* 80BAA0F8  38 C0 00 01 */	li r6, 1
/* 80BAA0FC  38 E0 00 02 */	li r7, 2
/* 80BAA100  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80BAA104  39 00 00 00 */	li r8, 0
/* 80BAA108  39 20 FF FF */	li r9, -1
/* 80BAA10C  4B 46 35 31 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BAA110  2C 03 00 00 */	cmpwi r3, 0
/* 80BAA114  40 82 00 0C */	bne lbl_80BAA120
/* 80BAA118  38 60 00 00 */	li r3, 0
/* 80BAA11C  48 00 00 08 */	b lbl_80BAA124
lbl_80BAA120:
/* 80BAA120  38 60 00 01 */	li r3, 1
lbl_80BAA124:
/* 80BAA124  39 61 00 30 */	addi r11, r1, 0x30
/* 80BAA128  4B 7B 80 F9 */	bl _restgpr_27
/* 80BAA12C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BAA130  7C 08 03 A6 */	mtlr r0
/* 80BAA134  38 21 00 30 */	addi r1, r1, 0x30
/* 80BAA138  4E 80 00 20 */	blr 
