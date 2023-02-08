lbl_8062C868:
/* 8062C868  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8062C86C  7C 08 02 A6 */	mflr r0
/* 8062C870  90 01 00 44 */	stw r0, 0x44(r1)
/* 8062C874  39 61 00 40 */	addi r11, r1, 0x40
/* 8062C878  4B D3 59 49 */	bl _savegpr_22
/* 8062C87C  7C 7F 1B 78 */	mr r31, r3
/* 8062C880  3C 60 80 63 */	lis r3, cNullVec__6Z2Calc@ha /* 0x8062E904@ha */
/* 8062C884  3B C3 E9 04 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x8062E904@l */
/* 8062C888  88 1F 0A A5 */	lbz r0, 0xaa5(r31)
/* 8062C88C  28 00 00 00 */	cmplwi r0, 0
/* 8062C890  40 82 00 34 */	bne lbl_8062C8C4
/* 8062C894  3C 60 80 63 */	lis r3, d_a_b_tn__stringBase0@ha /* 0x8062E8E8@ha */
/* 8062C898  38 63 E8 E8 */	addi r3, r3, d_a_b_tn__stringBase0@l /* 0x8062E8E8@l */
/* 8062C89C  38 63 00 05 */	addi r3, r3, 5
/* 8062C8A0  38 80 00 03 */	li r4, 3
/* 8062C8A4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062C8A8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062C8AC  3C A5 00 02 */	addis r5, r5, 2
/* 8062C8B0  38 C0 00 80 */	li r6, 0x80
/* 8062C8B4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8062C8B8  4B A0 FA 35 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062C8BC  7C 7A 1B 78 */	mr r26, r3
/* 8062C8C0  48 00 00 30 */	b lbl_8062C8F0
lbl_8062C8C4:
/* 8062C8C4  3C 60 80 63 */	lis r3, d_a_b_tn__stringBase0@ha /* 0x8062E8E8@ha */
/* 8062C8C8  38 63 E8 E8 */	addi r3, r3, d_a_b_tn__stringBase0@l /* 0x8062E8E8@l */
/* 8062C8CC  38 63 00 0B */	addi r3, r3, 0xb
/* 8062C8D0  38 80 00 04 */	li r4, 4
/* 8062C8D4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062C8D8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062C8DC  3C A5 00 02 */	addis r5, r5, 2
/* 8062C8E0  38 C0 00 80 */	li r6, 0x80
/* 8062C8E4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8062C8E8  4B A0 FA 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062C8EC  7C 7A 1B 78 */	mr r26, r3
lbl_8062C8F0:
/* 8062C8F0  38 60 00 58 */	li r3, 0x58
/* 8062C8F4  4B CA 23 59 */	bl __nw__FUl
/* 8062C8F8  7C 77 1B 79 */	or. r23, r3, r3
/* 8062C8FC  41 82 00 74 */	beq lbl_8062C970
/* 8062C900  3C 60 80 63 */	lis r3, d_a_b_tn__stringBase0@ha /* 0x8062E8E8@ha */
/* 8062C904  38 63 E8 E8 */	addi r3, r3, d_a_b_tn__stringBase0@l /* 0x8062E8E8@l */
/* 8062C908  38 80 00 0F */	li r4, 0xf
/* 8062C90C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062C910  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062C914  3C A5 00 02 */	addis r5, r5, 2
/* 8062C918  38 C0 00 80 */	li r6, 0x80
/* 8062C91C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8062C920  4B A0 F9 CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062C924  7C 67 1B 78 */	mr r7, r3
/* 8062C928  38 1F 06 4C */	addi r0, r31, 0x64c
/* 8062C92C  90 01 00 08 */	stw r0, 8(r1)
/* 8062C930  3C 00 00 08 */	lis r0, 8
/* 8062C934  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062C938  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8062C93C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8062C940  90 01 00 10 */	stw r0, 0x10(r1)
/* 8062C944  7E E3 BB 78 */	mr r3, r23
/* 8062C948  7F 44 D3 78 */	mr r4, r26
/* 8062C94C  38 A0 00 00 */	li r5, 0
/* 8062C950  38 C0 00 00 */	li r6, 0
/* 8062C954  39 00 00 00 */	li r8, 0
/* 8062C958  3D 20 80 63 */	lis r9, lit_3922@ha /* 0x8062E63C@ha */
/* 8062C95C  C0 29 E6 3C */	lfs f1, lit_3922@l(r9)  /* 0x8062E63C@l */
/* 8062C960  39 20 00 00 */	li r9, 0
/* 8062C964  39 40 FF FF */	li r10, -1
/* 8062C968  4B 9E 3E 69 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8062C96C  7C 77 1B 78 */	mr r23, r3
lbl_8062C970:
/* 8062C970  92 FF 06 00 */	stw r23, 0x600(r31)
/* 8062C974  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062C978  28 03 00 00 */	cmplwi r3, 0
/* 8062C97C  41 82 00 10 */	beq lbl_8062C98C
/* 8062C980  80 03 00 04 */	lwz r0, 4(r3)
/* 8062C984  28 00 00 00 */	cmplwi r0, 0
/* 8062C988  40 82 00 0C */	bne lbl_8062C994
lbl_8062C98C:
/* 8062C98C  38 60 00 00 */	li r3, 0
/* 8062C990  48 00 03 68 */	b lbl_8062CCF8
lbl_8062C994:
/* 8062C994  88 1F 0A A5 */	lbz r0, 0xaa5(r31)
/* 8062C998  28 00 00 01 */	cmplwi r0, 1
/* 8062C99C  40 82 00 A0 */	bne lbl_8062CA3C
/* 8062C9A0  38 60 00 18 */	li r3, 0x18
/* 8062C9A4  4B CA 22 A9 */	bl __nw__FUl
/* 8062C9A8  7C 77 1B 79 */	or. r23, r3, r3
/* 8062C9AC  41 82 00 20 */	beq lbl_8062C9CC
/* 8062C9B0  3C 80 80 63 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8062EFA8@ha */
/* 8062C9B4  38 04 EF A8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8062EFA8@l */
/* 8062C9B8  90 17 00 00 */	stw r0, 0(r23)
/* 8062C9BC  38 80 00 00 */	li r4, 0
/* 8062C9C0  4B CF BA 3D */	bl init__12J3DFrameCtrlFs
/* 8062C9C4  38 00 00 00 */	li r0, 0
/* 8062C9C8  90 17 00 14 */	stw r0, 0x14(r23)
lbl_8062C9CC:
/* 8062C9CC  92 FF 06 44 */	stw r23, 0x644(r31)
/* 8062C9D0  80 1F 06 44 */	lwz r0, 0x644(r31)
/* 8062C9D4  28 00 00 00 */	cmplwi r0, 0
/* 8062C9D8  40 82 00 0C */	bne lbl_8062C9E4
/* 8062C9DC  38 60 00 00 */	li r3, 0
/* 8062C9E0  48 00 03 18 */	b lbl_8062CCF8
lbl_8062C9E4:
/* 8062C9E4  80 7F 0A B4 */	lwz r3, 0xab4(r31)
/* 8062C9E8  38 80 00 18 */	li r4, 0x18
/* 8062C9EC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062C9F0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062C9F4  3C A5 00 02 */	addis r5, r5, 2
/* 8062C9F8  38 C0 00 80 */	li r6, 0x80
/* 8062C9FC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8062CA00  4B A0 F8 ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062CA04  7C 65 1B 78 */	mr r5, r3
/* 8062CA08  80 7F 06 44 */	lwz r3, 0x644(r31)
/* 8062CA0C  38 9A 00 58 */	addi r4, r26, 0x58
/* 8062CA10  38 C0 00 01 */	li r6, 1
/* 8062CA14  38 E0 00 02 */	li r7, 2
/* 8062CA18  3D 00 80 63 */	lis r8, lit_3921@ha /* 0x8062E638@ha */
/* 8062CA1C  C0 28 E6 38 */	lfs f1, lit_3921@l(r8)  /* 0x8062E638@l */
/* 8062CA20  39 00 00 00 */	li r8, 0
/* 8062CA24  39 20 FF FF */	li r9, -1
/* 8062CA28  4B 9E 0C E5 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8062CA2C  2C 03 00 00 */	cmpwi r3, 0
/* 8062CA30  40 82 00 0C */	bne lbl_8062CA3C
/* 8062CA34  38 60 00 00 */	li r3, 0
/* 8062CA38  48 00 02 C0 */	b lbl_8062CCF8
lbl_8062CA3C:
/* 8062CA3C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062CA40  80 83 00 04 */	lwz r4, 4(r3)
/* 8062CA44  93 E4 00 14 */	stw r31, 0x14(r4)
/* 8062CA48  80 64 00 04 */	lwz r3, 4(r4)
/* 8062CA4C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8062CA50  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8062CA54  3C 60 80 62 */	lis r3, JointCallBack__8daB_TN_cFP8J3DJointi@ha /* 0x8061ED10@ha */
/* 8062CA58  38 03 ED 10 */	addi r0, r3, JointCallBack__8daB_TN_cFP8J3DJointi@l /* 0x8061ED10@l */
/* 8062CA5C  90 05 00 04 */	stw r0, 4(r5)
/* 8062CA60  80 64 00 04 */	lwz r3, 4(r4)
/* 8062CA64  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8062CA68  80 63 00 04 */	lwz r3, 4(r3)
/* 8062CA6C  90 03 00 04 */	stw r0, 4(r3)
/* 8062CA70  3B 20 00 00 */	li r25, 0
/* 8062CA74  3B 00 00 00 */	li r24, 0
/* 8062CA78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062CA7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062CA80  3F A3 00 02 */	addis r29, r3, 2
/* 8062CA84  3B BD C2 F8 */	addi r29, r29, -15624
/* 8062CA88  3F 80 11 00 */	lis r28, 0x1100
lbl_8062CA8C:
/* 8062CA8C  2C 19 00 0D */	cmpwi r25, 0xd
/* 8062CA90  40 82 00 38 */	bne lbl_8062CAC8
/* 8062CA94  88 1F 0A A5 */	lbz r0, 0xaa5(r31)
/* 8062CA98  28 00 00 01 */	cmplwi r0, 1
/* 8062CA9C  40 82 00 2C */	bne lbl_8062CAC8
/* 8062CAA0  88 1F 0A A6 */	lbz r0, 0xaa6(r31)
/* 8062CAA4  28 00 00 01 */	cmplwi r0, 1
/* 8062CAA8  40 82 00 20 */	bne lbl_8062CAC8
/* 8062CAAC  80 7F 0A B4 */	lwz r3, 0xab4(r31)
/* 8062CAB0  38 80 00 13 */	li r4, 0x13
/* 8062CAB4  7F A5 EB 78 */	mr r5, r29
/* 8062CAB8  38 C0 00 80 */	li r6, 0x80
/* 8062CABC  4B A0 F8 31 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062CAC0  7C 7A 1B 78 */	mr r26, r3
/* 8062CAC4  48 00 00 30 */	b lbl_8062CAF4
lbl_8062CAC8:
/* 8062CAC8  80 7F 0A B4 */	lwz r3, 0xab4(r31)
/* 8062CACC  88 1F 0A A5 */	lbz r0, 0xaa5(r31)
/* 8062CAD0  54 00 20 36 */	slwi r0, r0, 4
/* 8062CAD4  7C 19 02 14 */	add r0, r25, r0
/* 8062CAD8  54 00 10 3A */	slwi r0, r0, 2
/* 8062CADC  38 9E 02 24 */	addi r4, r30, 0x224
/* 8062CAE0  7C 84 00 2E */	lwzx r4, r4, r0
/* 8062CAE4  7F A5 EB 78 */	mr r5, r29
/* 8062CAE8  38 C0 00 80 */	li r6, 0x80
/* 8062CAEC  4B A0 F8 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062CAF0  7C 7A 1B 78 */	mr r26, r3
lbl_8062CAF4:
/* 8062CAF4  7F 43 D3 78 */	mr r3, r26
/* 8062CAF8  3C 80 00 08 */	lis r4, 8
/* 8062CAFC  38 BC 00 84 */	addi r5, r28, 0x84
/* 8062CB00  4B 9E 81 55 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8062CB04  7F 7F C2 14 */	add r27, r31, r24
/* 8062CB08  90 7B 05 BC */	stw r3, 0x5bc(r27)
/* 8062CB0C  80 1B 05 BC */	lwz r0, 0x5bc(r27)
/* 8062CB10  28 00 00 00 */	cmplwi r0, 0
/* 8062CB14  40 82 00 0C */	bne lbl_8062CB20
/* 8062CB18  38 60 00 00 */	li r3, 0
/* 8062CB1C  48 00 01 DC */	b lbl_8062CCF8
lbl_8062CB20:
/* 8062CB20  88 1F 0A A5 */	lbz r0, 0xaa5(r31)
/* 8062CB24  28 00 00 01 */	cmplwi r0, 1
/* 8062CB28  40 82 00 C8 */	bne lbl_8062CBF0
/* 8062CB2C  38 7E 02 04 */	addi r3, r30, 0x204
/* 8062CB30  7E C3 C8 AE */	lbzx r22, r3, r25
/* 8062CB34  88 1F 0A A3 */	lbz r0, 0xaa3(r31)
/* 8062CB38  28 00 00 03 */	cmplwi r0, 3
/* 8062CB3C  40 82 00 0C */	bne lbl_8062CB48
/* 8062CB40  38 7E 02 14 */	addi r3, r30, 0x214
/* 8062CB44  7E C3 C8 AE */	lbzx r22, r3, r25
lbl_8062CB48:
/* 8062CB48  7E C0 07 74 */	extsb r0, r22
/* 8062CB4C  2C 00 FF FF */	cmpwi r0, -1
/* 8062CB50  41 82 00 A0 */	beq lbl_8062CBF0
/* 8062CB54  38 60 00 18 */	li r3, 0x18
/* 8062CB58  4B CA 20 F5 */	bl __nw__FUl
/* 8062CB5C  7C 77 1B 79 */	or. r23, r3, r3
/* 8062CB60  41 82 00 20 */	beq lbl_8062CB80
/* 8062CB64  3C 80 80 63 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8062EFA8@ha */
/* 8062CB68  38 04 EF A8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8062EFA8@l */
/* 8062CB6C  90 17 00 00 */	stw r0, 0(r23)
/* 8062CB70  38 80 00 00 */	li r4, 0
/* 8062CB74  4B CF B8 89 */	bl init__12J3DFrameCtrlFs
/* 8062CB78  38 00 00 00 */	li r0, 0
/* 8062CB7C  90 17 00 14 */	stw r0, 0x14(r23)
lbl_8062CB80:
/* 8062CB80  92 FB 06 04 */	stw r23, 0x604(r27)
/* 8062CB84  80 1B 06 04 */	lwz r0, 0x604(r27)
/* 8062CB88  28 00 00 00 */	cmplwi r0, 0
/* 8062CB8C  40 82 00 0C */	bne lbl_8062CB98
/* 8062CB90  38 60 00 00 */	li r3, 0
/* 8062CB94  48 00 01 64 */	b lbl_8062CCF8
lbl_8062CB98:
/* 8062CB98  80 7F 0A B4 */	lwz r3, 0xab4(r31)
/* 8062CB9C  7E C0 07 74 */	extsb r0, r22
/* 8062CBA0  54 00 10 3A */	slwi r0, r0, 2
/* 8062CBA4  38 9E 06 00 */	addi r4, r30, 0x600
/* 8062CBA8  7C 84 00 2E */	lwzx r4, r4, r0
/* 8062CBAC  7F A5 EB 78 */	mr r5, r29
/* 8062CBB0  38 C0 00 80 */	li r6, 0x80
/* 8062CBB4  4B A0 F7 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062CBB8  7C 65 1B 78 */	mr r5, r3
/* 8062CBBC  80 7B 06 04 */	lwz r3, 0x604(r27)
/* 8062CBC0  38 9A 00 58 */	addi r4, r26, 0x58
/* 8062CBC4  38 C0 00 01 */	li r6, 1
/* 8062CBC8  38 E0 00 02 */	li r7, 2
/* 8062CBCC  3D 00 80 63 */	lis r8, lit_3921@ha /* 0x8062E638@ha */
/* 8062CBD0  C0 28 E6 38 */	lfs f1, lit_3921@l(r8)  /* 0x8062E638@l */
/* 8062CBD4  39 00 00 00 */	li r8, 0
/* 8062CBD8  39 20 FF FF */	li r9, -1
/* 8062CBDC  4B 9E 0B 31 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8062CBE0  2C 03 00 00 */	cmpwi r3, 0
/* 8062CBE4  40 82 00 0C */	bne lbl_8062CBF0
/* 8062CBE8  38 60 00 00 */	li r3, 0
/* 8062CBEC  48 00 01 0C */	b lbl_8062CCF8
lbl_8062CBF0:
/* 8062CBF0  3B 39 00 01 */	addi r25, r25, 1
/* 8062CBF4  2C 19 00 0F */	cmpwi r25, 0xf
/* 8062CBF8  3B 18 00 04 */	addi r24, r24, 4
/* 8062CBFC  41 80 FE 90 */	blt lbl_8062CA8C
/* 8062CC00  80 7F 0A B4 */	lwz r3, 0xab4(r31)
/* 8062CC04  38 9E 02 24 */	addi r4, r30, 0x224
/* 8062CC08  88 1F 0A A5 */	lbz r0, 0xaa5(r31)
/* 8062CC0C  54 00 30 32 */	slwi r0, r0, 6
/* 8062CC10  7C 84 02 14 */	add r4, r4, r0
/* 8062CC14  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 8062CC18  7F A5 EB 78 */	mr r5, r29
/* 8062CC1C  38 C0 00 80 */	li r6, 0x80
/* 8062CC20  4B A0 F6 CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062CC24  7C 78 1B 78 */	mr r24, r3
/* 8062CC28  38 60 00 58 */	li r3, 0x58
/* 8062CC2C  4B CA 20 21 */	bl __nw__FUl
/* 8062CC30  7C 77 1B 79 */	or. r23, r3, r3
/* 8062CC34  41 82 00 68 */	beq lbl_8062CC9C
/* 8062CC38  3C 60 80 63 */	lis r3, d_a_b_tn__stringBase0@ha /* 0x8062E8E8@ha */
/* 8062CC3C  38 63 E8 E8 */	addi r3, r3, d_a_b_tn__stringBase0@l /* 0x8062E8E8@l */
/* 8062CC40  38 80 00 27 */	li r4, 0x27
/* 8062CC44  7F A5 EB 78 */	mr r5, r29
/* 8062CC48  38 C0 00 80 */	li r6, 0x80
/* 8062CC4C  4B A0 F6 A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062CC50  7C 67 1B 78 */	mr r7, r3
/* 8062CC54  38 1F 06 4C */	addi r0, r31, 0x64c
/* 8062CC58  90 01 00 08 */	stw r0, 8(r1)
/* 8062CC5C  3C 00 00 08 */	lis r0, 8
/* 8062CC60  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062CC64  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8062CC68  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8062CC6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8062CC70  7E E3 BB 78 */	mr r3, r23
/* 8062CC74  7F 04 C3 78 */	mr r4, r24
/* 8062CC78  38 A0 00 00 */	li r5, 0
/* 8062CC7C  38 C0 00 00 */	li r6, 0
/* 8062CC80  39 00 00 00 */	li r8, 0
/* 8062CC84  3D 20 80 63 */	lis r9, lit_3922@ha /* 0x8062E63C@ha */
/* 8062CC88  C0 29 E6 3C */	lfs f1, lit_3922@l(r9)  /* 0x8062E63C@l */
/* 8062CC8C  39 20 00 00 */	li r9, 0
/* 8062CC90  39 40 FF FF */	li r10, -1
/* 8062CC94  4B 9E 3B 3D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8062CC98  7C 77 1B 78 */	mr r23, r3
lbl_8062CC9C:
/* 8062CC9C  92 FF 05 FC */	stw r23, 0x5fc(r31)
/* 8062CCA0  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 8062CCA4  28 03 00 00 */	cmplwi r3, 0
/* 8062CCA8  41 82 00 10 */	beq lbl_8062CCB8
/* 8062CCAC  80 03 00 04 */	lwz r0, 4(r3)
/* 8062CCB0  28 00 00 00 */	cmplwi r0, 0
/* 8062CCB4  40 82 00 0C */	bne lbl_8062CCC0
lbl_8062CCB8:
/* 8062CCB8  38 60 00 00 */	li r3, 0
/* 8062CCBC  48 00 00 3C */	b lbl_8062CCF8
lbl_8062CCC0:
/* 8062CCC0  3C 60 80 63 */	lis r3, d_a_b_tn__stringBase0@ha /* 0x8062E8E8@ha */
/* 8062CCC4  38 63 E8 E8 */	addi r3, r3, d_a_b_tn__stringBase0@l /* 0x8062E8E8@l */
/* 8062CCC8  38 80 00 30 */	li r4, 0x30
/* 8062CCCC  7F A5 EB 78 */	mr r5, r29
/* 8062CCD0  38 C0 00 80 */	li r6, 0x80
/* 8062CCD4  4B A0 F6 19 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062CCD8  3C 80 00 08 */	lis r4, 8
/* 8062CCDC  3C A0 31 00 */	lis r5, 0x3100 /* 0x31000084@ha */
/* 8062CCE0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x31000084@l */
/* 8062CCE4  4B 9E 7F 71 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8062CCE8  90 7F 06 48 */	stw r3, 0x648(r31)
/* 8062CCEC  80 7F 06 48 */	lwz r3, 0x648(r31)
/* 8062CCF0  30 03 FF FF */	addic r0, r3, -1
/* 8062CCF4  7C 60 19 10 */	subfe r3, r0, r3
lbl_8062CCF8:
/* 8062CCF8  39 61 00 40 */	addi r11, r1, 0x40
/* 8062CCFC  4B D3 55 11 */	bl _restgpr_22
/* 8062CD00  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8062CD04  7C 08 03 A6 */	mtlr r0
/* 8062CD08  38 21 00 40 */	addi r1, r1, 0x40
/* 8062CD0C  4E 80 00 20 */	blr 
