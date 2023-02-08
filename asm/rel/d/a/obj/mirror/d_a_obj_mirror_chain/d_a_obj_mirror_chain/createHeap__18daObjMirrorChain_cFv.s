lbl_80C96E40:
/* 80C96E40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C96E44  7C 08 02 A6 */	mflr r0
/* 80C96E48  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C96E4C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C96E50  4B 6C B3 81 */	bl _savegpr_26
/* 80C96E54  7C 7F 1B 78 */	mr r31, r3
/* 80C96E58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C96E5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C96E60  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 80C96E64  7F A3 EB 78 */	mr r3, r29
/* 80C96E68  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C96E6C  3B C4 72 88 */	addi r30, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C96E70  A0 9E 02 C4 */	lhz r4, 0x2c4(r30)
/* 80C96E74  4B 39 DB 49 */	bl isEventBit__11dSv_event_cCFUs
/* 80C96E78  2C 03 00 00 */	cmpwi r3, 0
/* 80C96E7C  41 82 00 DC */	beq lbl_80C96F58
/* 80C96E80  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80C98080@ha */
/* 80C96E84  38 63 80 80 */	addi r3, r3, l_arcName@l /* 0x80C98080@l */
/* 80C96E88  80 63 00 00 */	lwz r3, 0(r3)
/* 80C96E8C  38 80 00 10 */	li r4, 0x10
/* 80C96E90  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C96E94  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C96E98  3F 45 00 02 */	addis r26, r5, 2
/* 80C96E9C  3B 5A C2 F8 */	addi r26, r26, -15624
/* 80C96EA0  7F 45 D3 78 */	mr r5, r26
/* 80C96EA4  38 C0 00 80 */	li r6, 0x80
/* 80C96EA8  4B 3A 54 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C96EAC  7C 60 1B 78 */	mr r0, r3
/* 80C96EB0  7C 1C 03 78 */	mr r28, r0
/* 80C96EB4  3C 80 00 08 */	lis r4, 8
/* 80C96EB8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C96EBC  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C96EC0  4B 37 DD 95 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C96EC4  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80C96EC8  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80C98080@ha */
/* 80C96ECC  38 63 80 80 */	addi r3, r3, l_arcName@l /* 0x80C98080@l */
/* 80C96ED0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C96ED4  38 80 00 15 */	li r4, 0x15
/* 80C96ED8  7F 45 D3 78 */	mr r5, r26
/* 80C96EDC  38 C0 00 80 */	li r6, 0x80
/* 80C96EE0  4B 3A 54 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C96EE4  7C 7B 1B 78 */	mr r27, r3
/* 80C96EE8  38 60 00 18 */	li r3, 0x18
/* 80C96EEC  4B 63 7D 61 */	bl __nw__FUl
/* 80C96EF0  7C 7A 1B 79 */	or. r26, r3, r3
/* 80C96EF4  41 82 00 20 */	beq lbl_80C96F14
/* 80C96EF8  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C98104@ha */
/* 80C96EFC  38 04 81 04 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C98104@l */
/* 80C96F00  90 1A 00 00 */	stw r0, 0(r26)
/* 80C96F04  38 80 00 00 */	li r4, 0
/* 80C96F08  4B 69 14 F5 */	bl init__12J3DFrameCtrlFs
/* 80C96F0C  38 00 00 00 */	li r0, 0
/* 80C96F10  90 1A 00 14 */	stw r0, 0x14(r26)
lbl_80C96F14:
/* 80C96F14  93 5F 05 74 */	stw r26, 0x574(r31)
/* 80C96F18  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C96F1C  28 03 00 00 */	cmplwi r3, 0
/* 80C96F20  41 82 00 30 */	beq lbl_80C96F50
/* 80C96F24  38 9C 00 58 */	addi r4, r28, 0x58
/* 80C96F28  7F 65 DB 78 */	mr r5, r27
/* 80C96F2C  38 C0 00 01 */	li r6, 1
/* 80C96F30  38 E0 00 02 */	li r7, 2
/* 80C96F34  3D 00 80 CA */	lis r8, lit_3923@ha /* 0x80C98048@ha */
/* 80C96F38  C0 28 80 48 */	lfs f1, lit_3923@l(r8)  /* 0x80C98048@l */
/* 80C96F3C  39 00 00 00 */	li r8, 0
/* 80C96F40  39 20 FF FF */	li r9, -1
/* 80C96F44  4B 37 67 C9 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C96F48  2C 03 00 00 */	cmpwi r3, 0
/* 80C96F4C  40 82 00 58 */	bne lbl_80C96FA4
lbl_80C96F50:
/* 80C96F50  38 60 00 00 */	li r3, 0
/* 80C96F54  48 00 06 38 */	b lbl_80C9758C
lbl_80C96F58:
/* 80C96F58  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80C98080@ha */
/* 80C96F5C  38 63 80 80 */	addi r3, r3, l_arcName@l /* 0x80C98080@l */
/* 80C96F60  80 63 00 00 */	lwz r3, 0(r3)
/* 80C96F64  38 80 00 0F */	li r4, 0xf
/* 80C96F68  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C96F6C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C96F70  3C A5 00 02 */	addis r5, r5, 2
/* 80C96F74  38 C0 00 80 */	li r6, 0x80
/* 80C96F78  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C96F7C  4B 3A 53 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C96F80  7C 60 1B 78 */	mr r0, r3
/* 80C96F84  7C 1C 03 78 */	mr r28, r0
/* 80C96F88  3C 80 00 08 */	lis r4, 8
/* 80C96F8C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C96F90  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C96F94  4B 37 DC C1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C96F98  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80C96F9C  38 00 00 00 */	li r0, 0
/* 80C96FA0  90 1F 05 74 */	stw r0, 0x574(r31)
lbl_80C96FA4:
/* 80C96FA4  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 80C96FA8  28 00 00 00 */	cmplwi r0, 0
/* 80C96FAC  40 82 00 0C */	bne lbl_80C96FB8
/* 80C96FB0  38 60 00 00 */	li r3, 0
/* 80C96FB4  48 00 05 D8 */	b lbl_80C9758C
lbl_80C96FB8:
/* 80C96FB8  7F A3 EB 78 */	mr r3, r29
/* 80C96FBC  A0 9E 02 C4 */	lhz r4, 0x2c4(r30)
/* 80C96FC0  4B 39 D9 FD */	bl isEventBit__11dSv_event_cCFUs
/* 80C96FC4  2C 03 00 00 */	cmpwi r3, 0
/* 80C96FC8  41 82 03 30 */	beq lbl_80C972F8
/* 80C96FCC  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80C98080@ha */
/* 80C96FD0  38 63 80 80 */	addi r3, r3, l_arcName@l /* 0x80C98080@l */
/* 80C96FD4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C96FD8  38 80 00 0C */	li r4, 0xc
/* 80C96FDC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C96FE0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C96FE4  3F A5 00 02 */	addis r29, r5, 2
/* 80C96FE8  3B BD C2 F8 */	addi r29, r29, -15624
/* 80C96FEC  7F A5 EB 78 */	mr r5, r29
/* 80C96FF0  38 C0 00 80 */	li r6, 0x80
/* 80C96FF4  4B 3A 52 F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C96FF8  7C 7C 1B 78 */	mr r28, r3
/* 80C96FFC  38 80 00 00 */	li r4, 0
/* 80C97000  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C97004  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C97008  4B 37 DC 4D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C9700C  90 7F 05 6C */	stw r3, 0x56c(r31)
/* 80C97010  80 1F 05 6C */	lwz r0, 0x56c(r31)
/* 80C97014  28 00 00 00 */	cmplwi r0, 0
/* 80C97018  40 82 00 0C */	bne lbl_80C97024
/* 80C9701C  38 60 00 00 */	li r3, 0
/* 80C97020  48 00 05 6C */	b lbl_80C9758C
lbl_80C97024:
/* 80C97024  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80C98080@ha */
/* 80C97028  38 63 80 80 */	addi r3, r3, l_arcName@l /* 0x80C98080@l */
/* 80C9702C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C97030  38 80 00 09 */	li r4, 9
/* 80C97034  7F A5 EB 78 */	mr r5, r29
/* 80C97038  38 C0 00 80 */	li r6, 0x80
/* 80C9703C  4B 3A 52 B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C97040  7C 7B 1B 78 */	mr r27, r3
/* 80C97044  38 60 00 1C */	li r3, 0x1c
/* 80C97048  4B 63 7C 05 */	bl __nw__FUl
/* 80C9704C  7C 7A 1B 79 */	or. r26, r3, r3
/* 80C97050  41 82 00 20 */	beq lbl_80C97070
/* 80C97054  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C98104@ha */
/* 80C97058  38 04 81 04 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C98104@l */
/* 80C9705C  90 1A 00 00 */	stw r0, 0(r26)
/* 80C97060  38 80 00 00 */	li r4, 0
/* 80C97064  4B 69 13 99 */	bl init__12J3DFrameCtrlFs
/* 80C97068  38 00 00 00 */	li r0, 0
/* 80C9706C  90 1A 00 18 */	stw r0, 0x18(r26)
lbl_80C97070:
/* 80C97070  93 5F 05 70 */	stw r26, 0x570(r31)
/* 80C97074  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C97078  28 03 00 00 */	cmplwi r3, 0
/* 80C9707C  41 82 00 30 */	beq lbl_80C970AC
/* 80C97080  7F 64 DB 78 */	mr r4, r27
/* 80C97084  38 A0 00 01 */	li r5, 1
/* 80C97088  38 C0 00 02 */	li r6, 2
/* 80C9708C  3C E0 80 CA */	lis r7, lit_3923@ha /* 0x80C98048@ha */
/* 80C97090  C0 27 80 48 */	lfs f1, lit_3923@l(r7)  /* 0x80C98048@l */
/* 80C97094  38 E0 00 00 */	li r7, 0
/* 80C97098  39 00 FF FF */	li r8, -1
/* 80C9709C  39 20 00 00 */	li r9, 0
/* 80C970A0  4B 37 67 3D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C970A4  2C 03 00 00 */	cmpwi r3, 0
/* 80C970A8  40 82 00 0C */	bne lbl_80C970B4
lbl_80C970AC:
/* 80C970AC  38 60 00 00 */	li r3, 0
/* 80C970B0  48 00 04 DC */	b lbl_80C9758C
lbl_80C970B4:
/* 80C970B4  38 00 01 2C */	li r0, 0x12c
/* 80C970B8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C970BC  B0 03 00 08 */	sth r0, 8(r3)
/* 80C970C0  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80C98080@ha */
/* 80C970C4  38 63 80 80 */	addi r3, r3, l_arcName@l /* 0x80C98080@l */
/* 80C970C8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C970CC  38 80 00 14 */	li r4, 0x14
/* 80C970D0  7F A5 EB 78 */	mr r5, r29
/* 80C970D4  38 C0 00 80 */	li r6, 0x80
/* 80C970D8  4B 3A 52 15 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C970DC  7C 7B 1B 78 */	mr r27, r3
/* 80C970E0  38 60 00 18 */	li r3, 0x18
/* 80C970E4  4B 63 7B 69 */	bl __nw__FUl
/* 80C970E8  7C 7A 1B 79 */	or. r26, r3, r3
/* 80C970EC  41 82 00 20 */	beq lbl_80C9710C
/* 80C970F0  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C98104@ha */
/* 80C970F4  38 04 81 04 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C98104@l */
/* 80C970F8  90 1A 00 00 */	stw r0, 0(r26)
/* 80C970FC  38 80 00 00 */	li r4, 0
/* 80C97100  4B 69 12 FD */	bl init__12J3DFrameCtrlFs
/* 80C97104  38 00 00 00 */	li r0, 0
/* 80C97108  90 1A 00 14 */	stw r0, 0x14(r26)
lbl_80C9710C:
/* 80C9710C  93 5F 05 78 */	stw r26, 0x578(r31)
/* 80C97110  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80C97114  28 03 00 00 */	cmplwi r3, 0
/* 80C97118  41 82 00 30 */	beq lbl_80C97148
/* 80C9711C  38 9C 00 58 */	addi r4, r28, 0x58
/* 80C97120  7F 65 DB 78 */	mr r5, r27
/* 80C97124  38 C0 00 01 */	li r6, 1
/* 80C97128  38 E0 00 00 */	li r7, 0
/* 80C9712C  3D 00 80 CA */	lis r8, lit_3923@ha /* 0x80C98048@ha */
/* 80C97130  C0 28 80 48 */	lfs f1, lit_3923@l(r8)  /* 0x80C98048@l */
/* 80C97134  39 00 00 00 */	li r8, 0
/* 80C97138  39 20 FF FF */	li r9, -1
/* 80C9713C  4B 37 65 D1 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C97140  2C 03 00 00 */	cmpwi r3, 0
/* 80C97144  40 82 00 0C */	bne lbl_80C97150
lbl_80C97148:
/* 80C97148  38 60 00 00 */	li r3, 0
/* 80C9714C  48 00 04 40 */	b lbl_80C9758C
lbl_80C97150:
/* 80C97150  A8 1B 00 06 */	lha r0, 6(r27)
/* 80C97154  3C 60 80 CA */	lis r3, lit_4164@ha /* 0x80C98058@ha */
/* 80C97158  C8 23 80 58 */	lfd f1, lit_4164@l(r3)  /* 0x80C98058@l */
/* 80C9715C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C97160  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C97164  3C 00 43 30 */	lis r0, 0x4330
/* 80C97168  90 01 00 08 */	stw r0, 8(r1)
/* 80C9716C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C97170  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C97174  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80C97178  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C9717C  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80C98080@ha */
/* 80C97180  38 63 80 80 */	addi r3, r3, l_arcName@l /* 0x80C98080@l */
/* 80C97184  80 63 00 00 */	lwz r3, 0(r3)
/* 80C97188  38 80 00 1A */	li r4, 0x1a
/* 80C9718C  7F A5 EB 78 */	mr r5, r29
/* 80C97190  38 C0 00 80 */	li r6, 0x80
/* 80C97194  4B 3A 51 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C97198  7C 64 1B 78 */	mr r4, r3
/* 80C9719C  38 7F 06 48 */	addi r3, r31, 0x648
/* 80C971A0  38 A0 00 01 */	li r5, 1
/* 80C971A4  38 DF 07 0C */	addi r6, r31, 0x70c
/* 80C971A8  4B 3E 2D 91 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C971AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C971B0  41 82 00 0C */	beq lbl_80C971BC
/* 80C971B4  38 60 00 00 */	li r3, 0
/* 80C971B8  48 00 03 D4 */	b lbl_80C9758C
lbl_80C971BC:
/* 80C971BC  A0 1F 06 48 */	lhz r0, 0x648(r31)
/* 80C971C0  B0 1F 05 88 */	sth r0, 0x588(r31)
/* 80C971C4  88 1F 06 50 */	lbz r0, 0x650(r31)
/* 80C971C8  98 1F 05 90 */	stb r0, 0x590(r31)
/* 80C971CC  88 1F 06 51 */	lbz r0, 0x651(r31)
/* 80C971D0  98 1F 05 91 */	stb r0, 0x591(r31)
/* 80C971D4  88 1F 06 52 */	lbz r0, 0x652(r31)
/* 80C971D8  98 1F 05 92 */	stb r0, 0x592(r31)
/* 80C971DC  88 1F 06 53 */	lbz r0, 0x653(r31)
/* 80C971E0  98 1F 05 93 */	stb r0, 0x593(r31)
/* 80C971E4  A8 1F 06 54 */	lha r0, 0x654(r31)
/* 80C971E8  B0 1F 05 94 */	sth r0, 0x594(r31)
/* 80C971EC  A8 1F 06 56 */	lha r0, 0x656(r31)
/* 80C971F0  B0 1F 05 96 */	sth r0, 0x596(r31)
/* 80C971F4  80 1F 06 58 */	lwz r0, 0x658(r31)
/* 80C971F8  90 1F 05 98 */	stw r0, 0x598(r31)
/* 80C971FC  88 1F 06 5C */	lbz r0, 0x65c(r31)
/* 80C97200  98 1F 05 9C */	stb r0, 0x59c(r31)
/* 80C97204  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 80C97208  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80C9720C  38 BF 05 A0 */	addi r5, r31, 0x5a0
/* 80C97210  38 9F 06 60 */	addi r4, r31, 0x660
/* 80C97214  38 00 00 06 */	li r0, 6
/* 80C97218  7C 09 03 A6 */	mtctr r0
lbl_80C9721C:
/* 80C9721C  80 64 00 04 */	lwz r3, 4(r4)
/* 80C97220  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C97224  90 65 00 04 */	stw r3, 4(r5)
/* 80C97228  94 05 00 08 */	stwu r0, 8(r5)
/* 80C9722C  42 00 FF F0 */	bdnz lbl_80C9721C
/* 80C97230  38 BF 05 D0 */	addi r5, r31, 0x5d0
/* 80C97234  38 9F 06 90 */	addi r4, r31, 0x690
/* 80C97238  38 00 00 06 */	li r0, 6
/* 80C9723C  7C 09 03 A6 */	mtctr r0
lbl_80C97240:
/* 80C97240  80 64 00 04 */	lwz r3, 4(r4)
/* 80C97244  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C97248  90 65 00 04 */	stw r3, 4(r5)
/* 80C9724C  94 05 00 08 */	stwu r0, 8(r5)
/* 80C97250  42 00 FF F0 */	bdnz lbl_80C97240
/* 80C97254  C0 1F 06 C4 */	lfs f0, 0x6c4(r31)
/* 80C97258  D0 1F 06 04 */	stfs f0, 0x604(r31)
/* 80C9725C  C0 1F 06 C8 */	lfs f0, 0x6c8(r31)
/* 80C97260  D0 1F 06 08 */	stfs f0, 0x608(r31)
/* 80C97264  C0 1F 06 CC */	lfs f0, 0x6cc(r31)
/* 80C97268  D0 1F 06 0C */	stfs f0, 0x60c(r31)
/* 80C9726C  88 1F 06 D0 */	lbz r0, 0x6d0(r31)
/* 80C97270  98 1F 06 10 */	stb r0, 0x610(r31)
/* 80C97274  88 1F 06 D1 */	lbz r0, 0x6d1(r31)
/* 80C97278  98 1F 06 11 */	stb r0, 0x611(r31)
/* 80C9727C  80 1F 06 D4 */	lwz r0, 0x6d4(r31)
/* 80C97280  90 1F 06 14 */	stw r0, 0x614(r31)
/* 80C97284  88 1F 06 D8 */	lbz r0, 0x6d8(r31)
/* 80C97288  98 1F 06 18 */	stb r0, 0x618(r31)
/* 80C9728C  88 1F 06 D9 */	lbz r0, 0x6d9(r31)
/* 80C97290  98 1F 06 19 */	stb r0, 0x619(r31)
/* 80C97294  A0 1F 06 DA */	lhz r0, 0x6da(r31)
/* 80C97298  B0 1F 06 1A */	sth r0, 0x61a(r31)
/* 80C9729C  80 1F 06 DC */	lwz r0, 0x6dc(r31)
/* 80C972A0  90 1F 06 1C */	stw r0, 0x61c(r31)
/* 80C972A4  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 80C972A8  90 1F 06 20 */	stw r0, 0x620(r31)
/* 80C972AC  80 1F 06 E4 */	lwz r0, 0x6e4(r31)
/* 80C972B0  90 1F 06 24 */	stw r0, 0x624(r31)
/* 80C972B4  80 1F 06 E8 */	lwz r0, 0x6e8(r31)
/* 80C972B8  90 1F 06 28 */	stw r0, 0x628(r31)
/* 80C972BC  80 1F 06 EC */	lwz r0, 0x6ec(r31)
/* 80C972C0  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80C972C4  80 1F 06 F0 */	lwz r0, 0x6f0(r31)
/* 80C972C8  90 1F 06 30 */	stw r0, 0x630(r31)
/* 80C972CC  80 1F 06 F4 */	lwz r0, 0x6f4(r31)
/* 80C972D0  90 1F 06 34 */	stw r0, 0x634(r31)
/* 80C972D4  80 1F 06 F8 */	lwz r0, 0x6f8(r31)
/* 80C972D8  90 1F 06 38 */	stw r0, 0x638(r31)
/* 80C972DC  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 80C972E0  90 1F 06 3C */	stw r0, 0x63c(r31)
/* 80C972E4  80 1F 07 00 */	lwz r0, 0x700(r31)
/* 80C972E8  90 1F 06 40 */	stw r0, 0x640(r31)
/* 80C972EC  88 1F 07 04 */	lbz r0, 0x704(r31)
/* 80C972F0  98 1F 06 44 */	stb r0, 0x644(r31)
/* 80C972F4  48 00 02 94 */	b lbl_80C97588
lbl_80C972F8:
/* 80C972F8  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80C98080@ha */
/* 80C972FC  38 63 80 80 */	addi r3, r3, l_arcName@l /* 0x80C98080@l */
/* 80C97300  80 63 00 00 */	lwz r3, 0(r3)
/* 80C97304  38 80 00 08 */	li r4, 8
/* 80C97308  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9730C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C97310  3F C5 00 02 */	addis r30, r5, 2
/* 80C97314  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C97318  7F C5 F3 78 */	mr r5, r30
/* 80C9731C  38 C0 00 80 */	li r6, 0x80
/* 80C97320  4B 3A 4F CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C97324  7C 7B 1B 78 */	mr r27, r3
/* 80C97328  38 60 00 1C */	li r3, 0x1c
/* 80C9732C  4B 63 79 21 */	bl __nw__FUl
/* 80C97330  7C 7A 1B 79 */	or. r26, r3, r3
/* 80C97334  41 82 00 20 */	beq lbl_80C97354
/* 80C97338  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C98104@ha */
/* 80C9733C  38 04 81 04 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C98104@l */
/* 80C97340  90 1A 00 00 */	stw r0, 0(r26)
/* 80C97344  38 80 00 00 */	li r4, 0
/* 80C97348  4B 69 10 B5 */	bl init__12J3DFrameCtrlFs
/* 80C9734C  38 00 00 00 */	li r0, 0
/* 80C97350  90 1A 00 18 */	stw r0, 0x18(r26)
lbl_80C97354:
/* 80C97354  93 5F 05 70 */	stw r26, 0x570(r31)
/* 80C97358  3B 40 00 01 */	li r26, 1
/* 80C9735C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C97360  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C97364  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C97368  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C9736C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C97370  7C 05 07 74 */	extsb r5, r0
/* 80C97374  4B 39 DF ED */	bl isSwitch__10dSv_info_cCFii
/* 80C97378  2C 03 00 00 */	cmpwi r3, 0
/* 80C9737C  40 82 00 24 */	bne lbl_80C973A0
/* 80C97380  7F A3 EB 78 */	mr r3, r29
/* 80C97384  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C97388  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C9738C  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 80C97390  4B 39 D6 2D */	bl isEventBit__11dSv_event_cCFUs
/* 80C97394  2C 03 00 00 */	cmpwi r3, 0
/* 80C97398  40 82 00 08 */	bne lbl_80C973A0
/* 80C9739C  3B 40 00 00 */	li r26, 0
lbl_80C973A0:
/* 80C973A0  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80C973A4  41 82 00 10 */	beq lbl_80C973B4
/* 80C973A8  3C 60 80 CA */	lis r3, lit_3923@ha /* 0x80C98048@ha */
/* 80C973AC  C0 23 80 48 */	lfs f1, lit_3923@l(r3)  /* 0x80C98048@l */
/* 80C973B0  48 00 00 0C */	b lbl_80C973BC
lbl_80C973B4:
/* 80C973B4  3C 60 80 CA */	lis r3, lit_3917@ha /* 0x80C98030@ha */
/* 80C973B8  C0 23 80 30 */	lfs f1, lit_3917@l(r3)  /* 0x80C98030@l */
lbl_80C973BC:
/* 80C973BC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C973C0  28 03 00 00 */	cmplwi r3, 0
/* 80C973C4  41 82 00 28 */	beq lbl_80C973EC
/* 80C973C8  7F 64 DB 78 */	mr r4, r27
/* 80C973CC  38 A0 00 01 */	li r5, 1
/* 80C973D0  38 C0 00 00 */	li r6, 0
/* 80C973D4  38 E0 00 00 */	li r7, 0
/* 80C973D8  39 00 FF FF */	li r8, -1
/* 80C973DC  39 20 00 00 */	li r9, 0
/* 80C973E0  4B 37 63 FD */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C973E4  2C 03 00 00 */	cmpwi r3, 0
/* 80C973E8  40 82 00 0C */	bne lbl_80C973F4
lbl_80C973EC:
/* 80C973EC  38 60 00 00 */	li r3, 0
/* 80C973F0  48 00 01 9C */	b lbl_80C9758C
lbl_80C973F4:
/* 80C973F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C973F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C973FC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C97400  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C97404  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C97408  7C 05 07 74 */	extsb r5, r0
/* 80C9740C  4B 39 DF 55 */	bl isSwitch__10dSv_info_cCFii
/* 80C97410  2C 03 00 00 */	cmpwi r3, 0
/* 80C97414  40 82 00 20 */	bne lbl_80C97434
/* 80C97418  7F A3 EB 78 */	mr r3, r29
/* 80C9741C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C97420  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C97424  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 80C97428  4B 39 D5 95 */	bl isEventBit__11dSv_event_cCFUs
/* 80C9742C  2C 03 00 00 */	cmpwi r3, 0
/* 80C97430  41 82 00 30 */	beq lbl_80C97460
lbl_80C97434:
/* 80C97434  A8 1B 00 06 */	lha r0, 6(r27)
/* 80C97438  3C 60 80 CA */	lis r3, lit_4164@ha /* 0x80C98058@ha */
/* 80C9743C  C8 23 80 58 */	lfd f1, lit_4164@l(r3)  /* 0x80C98058@l */
/* 80C97440  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C97444  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C97448  3C 00 43 30 */	lis r0, 0x4330
/* 80C9744C  90 01 00 08 */	stw r0, 8(r1)
/* 80C97450  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C97454  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C97458  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C9745C  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_80C97460:
/* 80C97460  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80C98080@ha */
/* 80C97464  38 63 80 80 */	addi r3, r3, l_arcName@l /* 0x80C98080@l */
/* 80C97468  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9746C  38 80 00 13 */	li r4, 0x13
/* 80C97470  7F C5 F3 78 */	mr r5, r30
/* 80C97474  38 C0 00 80 */	li r6, 0x80
/* 80C97478  4B 3A 4E 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9747C  7C 7A 1B 78 */	mr r26, r3
/* 80C97480  38 60 00 18 */	li r3, 0x18
/* 80C97484  4B 63 77 C9 */	bl __nw__FUl
/* 80C97488  7C 7B 1B 79 */	or. r27, r3, r3
/* 80C9748C  41 82 00 20 */	beq lbl_80C974AC
/* 80C97490  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C98104@ha */
/* 80C97494  38 04 81 04 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C98104@l */
/* 80C97498  90 1B 00 00 */	stw r0, 0(r27)
/* 80C9749C  38 80 00 00 */	li r4, 0
/* 80C974A0  4B 69 0F 5D */	bl init__12J3DFrameCtrlFs
/* 80C974A4  38 00 00 00 */	li r0, 0
/* 80C974A8  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80C974AC:
/* 80C974AC  93 7F 05 74 */	stw r27, 0x574(r31)
/* 80C974B0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C974B4  28 03 00 00 */	cmplwi r3, 0
/* 80C974B8  41 82 00 30 */	beq lbl_80C974E8
/* 80C974BC  38 9C 00 58 */	addi r4, r28, 0x58
/* 80C974C0  7F 45 D3 78 */	mr r5, r26
/* 80C974C4  38 C0 00 01 */	li r6, 1
/* 80C974C8  38 E0 00 00 */	li r7, 0
/* 80C974CC  3D 00 80 CA */	lis r8, lit_3917@ha /* 0x80C98030@ha */
/* 80C974D0  C0 28 80 30 */	lfs f1, lit_3917@l(r8)  /* 0x80C98030@l */
/* 80C974D4  39 00 00 00 */	li r8, 0
/* 80C974D8  39 20 FF FF */	li r9, -1
/* 80C974DC  4B 37 62 31 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C974E0  2C 03 00 00 */	cmpwi r3, 0
/* 80C974E4  40 82 00 0C */	bne lbl_80C974F0
lbl_80C974E8:
/* 80C974E8  38 60 00 00 */	li r3, 0
/* 80C974EC  48 00 00 A0 */	b lbl_80C9758C
lbl_80C974F0:
/* 80C974F0  3C 60 80 CA */	lis r3, lit_3917@ha /* 0x80C98030@ha */
/* 80C974F4  C0 03 80 30 */	lfs f0, lit_3917@l(r3)  /* 0x80C98030@l */
/* 80C974F8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C974FC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C97500  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80C98080@ha */
/* 80C97504  38 63 80 80 */	addi r3, r3, l_arcName@l /* 0x80C98080@l */
/* 80C97508  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9750C  38 80 00 18 */	li r4, 0x18
/* 80C97510  7F C5 F3 78 */	mr r5, r30
/* 80C97514  38 C0 00 80 */	li r6, 0x80
/* 80C97518  4B 3A 4D D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9751C  7C 64 1B 78 */	mr r4, r3
/* 80C97520  38 7F 05 88 */	addi r3, r31, 0x588
/* 80C97524  38 A0 00 01 */	li r5, 1
/* 80C97528  38 DF 07 0C */	addi r6, r31, 0x70c
/* 80C9752C  4B 3E 2A 0D */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C97530  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C97534  41 82 00 0C */	beq lbl_80C97540
/* 80C97538  38 60 00 00 */	li r3, 0
/* 80C9753C  48 00 00 50 */	b lbl_80C9758C
lbl_80C97540:
/* 80C97540  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80C98080@ha */
/* 80C97544  38 63 80 80 */	addi r3, r3, l_arcName@l /* 0x80C98080@l */
/* 80C97548  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9754C  38 80 00 19 */	li r4, 0x19
/* 80C97550  7F C5 F3 78 */	mr r5, r30
/* 80C97554  38 C0 00 80 */	li r6, 0x80
/* 80C97558  4B 3A 4D 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9755C  7C 64 1B 78 */	mr r4, r3
/* 80C97560  38 7F 06 48 */	addi r3, r31, 0x648
/* 80C97564  38 A0 00 01 */	li r5, 1
/* 80C97568  38 DF 07 0C */	addi r6, r31, 0x70c
/* 80C9756C  4B 3E 29 CD */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C97570  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C97574  41 82 00 0C */	beq lbl_80C97580
/* 80C97578  38 60 00 00 */	li r3, 0
/* 80C9757C  48 00 00 10 */	b lbl_80C9758C
lbl_80C97580:
/* 80C97580  38 00 00 00 */	li r0, 0
/* 80C97584  90 1F 05 6C */	stw r0, 0x56c(r31)
lbl_80C97588:
/* 80C97588  38 60 00 01 */	li r3, 1
lbl_80C9758C:
/* 80C9758C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C97590  4B 6C AC 8D */	bl _restgpr_26
/* 80C97594  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C97598  7C 08 03 A6 */	mtlr r0
/* 80C9759C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C975A0  4E 80 00 20 */	blr 
