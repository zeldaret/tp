lbl_80070E90:
/* 80070E90  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80070E94  7C 08 02 A6 */	mflr r0
/* 80070E98  90 01 00 74 */	stw r0, 0x74(r1)
/* 80070E9C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80070EA0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80070EA4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80070EA8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80070EAC  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80070EB0  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80070EB4  39 61 00 40 */	addi r11, r1, 0x40
/* 80070EB8  48 2F 13 05 */	bl _savegpr_21
/* 80070EBC  7C 77 1B 78 */	mr r23, r3
/* 80070EC0  7C B8 2B 78 */	mr r24, r5
/* 80070EC4  FF A0 08 90 */	fmr f29, f1
/* 80070EC8  7C D9 33 78 */	mr r25, r6
/* 80070ECC  7C FA 3B 78 */	mr r26, r7
/* 80070ED0  7D 1B 43 78 */	mr r27, r8
/* 80070ED4  2C 04 00 43 */	cmpwi r4, 0x43
/* 80070ED8  41 82 00 5C */	beq lbl_80070F34
/* 80070EDC  40 80 00 10 */	bge lbl_80070EEC
/* 80070EE0  2C 04 00 41 */	cmpwi r4, 0x41
/* 80070EE4  41 82 00 3C */	beq lbl_80070F20
/* 80070EE8  48 00 00 38 */	b lbl_80070F20
lbl_80070EEC:
/* 80070EEC  2C 04 00 4C */	cmpwi r4, 0x4c
/* 80070EF0  41 82 00 08 */	beq lbl_80070EF8
/* 80070EF4  48 00 00 2C */	b lbl_80070F20
lbl_80070EF8:
/* 80070EF8  80 17 03 34 */	lwz r0, 0x334(r23)
/* 80070EFC  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80070F00  41 82 00 0C */	beq lbl_80070F0C
/* 80070F04  C0 22 8C 50 */	lfs f1, lit_4071(r2)
/* 80070F08  48 00 01 88 */	b lbl_80071090
lbl_80070F0C:
/* 80070F0C  83 CD 80 E0 */	lwz r30, loc_type_num__12dAttention_c(r13)
/* 80070F10  3C 60 80 3B */	lis r3, loc_type_tbl__12dAttention_c@ha
/* 80070F14  38 03 9B F8 */	addi r0, r3, loc_type_tbl__12dAttention_c@l
/* 80070F18  7C 1D 03 78 */	mr r29, r0
/* 80070F1C  48 00 00 20 */	b lbl_80070F3C
lbl_80070F20:
/* 80070F20  83 CD 80 E4 */	lwz r30, act_type_num__12dAttention_c(r13)
/* 80070F24  3C 60 80 3B */	lis r3, act_type_tbl__12dAttention_c@ha
/* 80070F28  38 03 9C 04 */	addi r0, r3, act_type_tbl__12dAttention_c@l
/* 80070F2C  7C 1D 03 78 */	mr r29, r0
/* 80070F30  48 00 00 0C */	b lbl_80070F3C
lbl_80070F34:
/* 80070F34  83 CD 80 EC */	lwz r30, chk_type_num__12dAttention_c(r13)
/* 80070F38  3B AD 80 E8 */	la r29, chk_type_tbl__12dAttention_c(r13) /* 80450668-_SDA_BASE_ */
lbl_80070F3C:
/* 80070F3C  C3 E2 8C 50 */	lfs f31, lit_4071(r2)
/* 80070F40  C3 C2 8C 90 */	lfs f30, lit_4562(r2)
/* 80070F44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80070F48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80070F4C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80070F50  28 03 00 00 */	cmplwi r3, 0
/* 80070F54  41 82 00 38 */	beq lbl_80070F8C
/* 80070F58  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80070F5C  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80070F60  7D 89 03 A6 */	mtctr r12
/* 80070F64  4E 80 04 21 */	bctrl 
/* 80070F68  90 61 00 08 */	stw r3, 8(r1)
/* 80070F6C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80070F70  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80070F74  38 81 00 08 */	addi r4, r1, 8
/* 80070F78  4B FA 88 81 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80070F7C  7C 18 18 40 */	cmplw r24, r3
/* 80070F80  40 82 00 0C */	bne lbl_80070F8C
/* 80070F84  C0 22 8C 50 */	lfs f1, lit_4071(r2)
/* 80070F88  48 00 01 08 */	b lbl_80071090
lbl_80070F8C:
/* 80070F8C  3B E0 00 00 */	li r31, 0
/* 80070F90  3A C0 00 00 */	li r22, 0
/* 80070F94  48 00 00 F0 */	b lbl_80071084
lbl_80070F98:
/* 80070F98  7F 9D B2 14 */	add r28, r29, r22
/* 80070F9C  80 98 05 5C */	lwz r4, 0x55c(r24)
/* 80070FA0  80 77 00 10 */	lwz r3, 0x10(r23)
/* 80070FA4  A0 1C 00 02 */	lhz r0, 2(r28)
/* 80070FA8  7C 60 00 38 */	and r0, r3, r0
/* 80070FAC  7C 80 00 39 */	and. r0, r4, r0
/* 80070FB0  41 82 00 CC */	beq lbl_8007107C
/* 80070FB4  A8 7C 00 00 */	lha r3, 0(r28)
/* 80070FB8  38 03 05 44 */	addi r0, r3, 0x544
/* 80070FBC  7C 18 00 AE */	lbzx r0, r24, r0
/* 80070FC0  1C A0 00 1C */	mulli r5, r0, 0x1c
/* 80070FC4  3C 80 80 3B */	lis r4, dist_table__12dAttention_c@ha
/* 80070FC8  38 04 9C 70 */	addi r0, r4, dist_table__12dAttention_c@l
/* 80070FCC  7E A0 2A 14 */	add r21, r0, r5
/* 80070FD0  80 18 04 9C */	lwz r0, 0x49c(r24)
/* 80070FD4  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80070FD8  40 82 00 14 */	bne lbl_80070FEC
/* 80070FDC  A0 98 00 FA */	lhz r4, 0xfa(r24)
/* 80070FE0  4B FF FA E1 */	bl check_event_condition__FUlUs
/* 80070FE4  2C 03 00 00 */	cmpwi r3, 0
/* 80070FE8  41 82 00 0C */	beq lbl_80070FF4
lbl_80070FEC:
/* 80070FEC  C0 22 8C 50 */	lfs f1, lit_4071(r2)
/* 80070FF0  48 00 00 64 */	b lbl_80071054
lbl_80070FF4:
/* 80070FF4  80 75 00 18 */	lwz r3, 0x18(r21)
/* 80070FF8  7F 24 CB 78 */	mr r4, r25
/* 80070FFC  7F 45 D3 78 */	mr r5, r26
/* 80071000  4B FF FB 2D */	bl check_flontofplayer__FUlss
/* 80071004  2C 03 00 00 */	cmpwi r3, 0
/* 80071008  41 82 00 0C */	beq lbl_80071014
/* 8007100C  C0 22 8C 50 */	lfs f1, lit_4071(r2)
/* 80071010  48 00 00 44 */	b lbl_80071054
lbl_80071014:
/* 80071014  38 77 03 1C */	addi r3, r23, 0x31c
/* 80071018  7F 24 CB 78 */	mr r4, r25
/* 8007101C  38 B8 05 50 */	addi r5, r24, 0x550
/* 80071020  C0 35 00 00 */	lfs f1, 0(r21)
/* 80071024  C0 55 00 08 */	lfs f2, 8(r21)
/* 80071028  C0 75 00 0C */	lfs f3, 0xc(r21)
/* 8007102C  C0 95 00 10 */	lfs f4, 0x10(r21)
/* 80071030  4B FF FC 71 */	bl check_distace__FP4cXyzsP4cXyzffff
/* 80071034  2C 03 00 00 */	cmpwi r3, 0
/* 80071038  40 82 00 0C */	bne lbl_80071044
/* 8007103C  C0 22 8C 50 */	lfs f1, lit_4071(r2)
/* 80071040  48 00 00 14 */	b lbl_80071054
lbl_80071044:
/* 80071044  FC 20 E8 90 */	fmr f1, f29
/* 80071048  7F 23 CB 78 */	mr r3, r25
/* 8007104C  C0 42 8C 94 */	lfs f2, lit_4563(r2)
/* 80071050  4B FF FB A5 */	bl distace_weight__Ffsf
lbl_80071054:
/* 80071054  C0 55 00 14 */	lfs f2, 0x14(r21)
/* 80071058  C0 02 8C 50 */	lfs f0, lit_4071(r2)
/* 8007105C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80071060  40 81 00 1C */	ble lbl_8007107C
/* 80071064  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 80071068  40 81 00 14 */	ble lbl_8007107C
/* 8007106C  FF C0 10 90 */	fmr f30, f2
/* 80071070  EF E1 10 24 */	fdivs f31, f1, f2
/* 80071074  A8 1C 00 00 */	lha r0, 0(r28)
/* 80071078  90 1B 00 00 */	stw r0, 0(r27)
lbl_8007107C:
/* 8007107C  3B FF 00 01 */	addi r31, r31, 1
/* 80071080  3A D6 00 04 */	addi r22, r22, 4
lbl_80071084:
/* 80071084  7C 1F F0 00 */	cmpw r31, r30
/* 80071088  41 80 FF 10 */	blt lbl_80070F98
/* 8007108C  FC 20 F8 90 */	fmr f1, f31
lbl_80071090:
/* 80071090  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80071094  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80071098  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8007109C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 800710A0  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 800710A4  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 800710A8  39 61 00 40 */	addi r11, r1, 0x40
/* 800710AC  48 2F 11 5D */	bl _restgpr_21
/* 800710B0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800710B4  7C 08 03 A6 */	mtlr r0
/* 800710B8  38 21 00 70 */	addi r1, r1, 0x70
/* 800710BC  4E 80 00 20 */	blr 
