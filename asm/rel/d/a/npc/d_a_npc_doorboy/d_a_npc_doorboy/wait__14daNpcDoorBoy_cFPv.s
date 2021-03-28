lbl_809ABA2C:
/* 809ABA2C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809ABA30  7C 08 02 A6 */	mflr r0
/* 809ABA34  90 01 00 64 */	stw r0, 0x64(r1)
/* 809ABA38  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 809ABA3C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 809ABA40  39 61 00 50 */	addi r11, r1, 0x50
/* 809ABA44  4B 9B 67 90 */	b _savegpr_27
/* 809ABA48  7C 7C 1B 78 */	mr r28, r3
/* 809ABA4C  3C 80 80 9B */	lis r4, cNullVec__6Z2Calc@ha
/* 809ABA50  3B A4 DB 28 */	addi r29, r4, cNullVec__6Z2Calc@l
/* 809ABA54  3C 80 80 9B */	lis r4, m__20daNpcDoorBoy_Param_c@ha
/* 809ABA58  3B C4 D9 A8 */	addi r30, r4, m__20daNpcDoorBoy_Param_c@l
/* 809ABA5C  A0 03 0E 04 */	lhz r0, 0xe04(r3)
/* 809ABA60  2C 00 00 02 */	cmpwi r0, 2
/* 809ABA64  41 82 00 50 */	beq lbl_809ABAB4
/* 809ABA68  40 80 05 D8 */	bge lbl_809AC040
/* 809ABA6C  2C 00 00 00 */	cmpwi r0, 0
/* 809ABA70  41 82 00 0C */	beq lbl_809ABA7C
/* 809ABA74  48 00 05 CC */	b lbl_809AC040
/* 809ABA78  48 00 05 C8 */	b lbl_809AC040
lbl_809ABA7C:
/* 809ABA7C  38 80 00 00 */	li r4, 0
/* 809ABA80  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 809ABA84  38 A0 00 00 */	li r5, 0
/* 809ABA88  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809ABA8C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809ABA90  7D 89 03 A6 */	mtctr r12
/* 809ABA94  4E 80 04 21 */	bctrl 
/* 809ABA98  38 00 00 00 */	li r0, 0
/* 809ABA9C  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 809ABAA0  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 809ABAA4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 809ABAA8  38 00 00 02 */	li r0, 2
/* 809ABAAC  B0 1C 0E 04 */	sth r0, 0xe04(r28)
/* 809ABAB0  48 00 05 90 */	b lbl_809AC040
lbl_809ABAB4:
/* 809ABAB4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809ABAB8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 809ABABC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809ABAC0  38 BE 00 00 */	addi r5, r30, 0
/* 809ABAC4  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 809ABAC8  4B 7A 7F 28 */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 809ABACC  2C 03 00 00 */	cmpwi r3, 0
/* 809ABAD0  40 82 00 10 */	bne lbl_809ABAE0
/* 809ABAD4  38 7C 0C 8C */	addi r3, r28, 0xc8c
/* 809ABAD8  4B 7A 4C 08 */	b remove__18daNpcF_ActorMngr_cFv
/* 809ABADC  48 00 00 78 */	b lbl_809ABB54
lbl_809ABAE0:
/* 809ABAE0  38 7C 0C 8C */	addi r3, r28, 0xc8c
/* 809ABAE4  4B 7A 4C 08 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809ABAE8  28 03 00 00 */	cmplwi r3, 0
/* 809ABAEC  40 82 00 28 */	bne lbl_809ABB14
/* 809ABAF0  7F 83 E3 78 */	mr r3, r28
/* 809ABAF4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809ABAF8  7F 85 E3 78 */	mr r5, r28
/* 809ABAFC  88 DC 05 47 */	lbz r6, 0x547(r28)
/* 809ABB00  4B 7A 80 DC */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 809ABB04  30 03 FF FF */	addic r0, r3, -1
/* 809ABB08  7C 00 19 10 */	subfe r0, r0, r3
/* 809ABB0C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809ABB10  48 00 00 24 */	b lbl_809ABB34
lbl_809ABB14:
/* 809ABB14  7F 83 E3 78 */	mr r3, r28
/* 809ABB18  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809ABB1C  7F 85 E3 78 */	mr r5, r28
/* 809ABB20  88 DC 05 45 */	lbz r6, 0x545(r28)
/* 809ABB24  4B 7A 80 B8 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 809ABB28  30 03 FF FF */	addic r0, r3, -1
/* 809ABB2C  7C 00 19 10 */	subfe r0, r0, r3
/* 809ABB30  54 00 06 3E */	clrlwi r0, r0, 0x18
lbl_809ABB34:
/* 809ABB34  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809ABB38  41 82 00 14 */	beq lbl_809ABB4C
/* 809ABB3C  38 7C 0C 8C */	addi r3, r28, 0xc8c
/* 809ABB40  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809ABB44  4B 7A 4B 78 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809ABB48  48 00 00 0C */	b lbl_809ABB54
lbl_809ABB4C:
/* 809ABB4C  38 7C 0C 8C */	addi r3, r28, 0xc8c
/* 809ABB50  4B 7A 4B 90 */	b remove__18daNpcF_ActorMngr_cFv
lbl_809ABB54:
/* 809ABB54  38 7C 0C 8C */	addi r3, r28, 0xc8c
/* 809ABB58  4B 7A 4B 94 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809ABB5C  28 03 00 00 */	cmplwi r3, 0
/* 809ABB60  41 82 00 1C */	beq lbl_809ABB7C
/* 809ABB64  A8 1C 0E 00 */	lha r0, 0xe00(r28)
/* 809ABB68  2C 00 00 02 */	cmpwi r0, 2
/* 809ABB6C  41 82 01 18 */	beq lbl_809ABC84
/* 809ABB70  38 00 00 02 */	li r0, 2
/* 809ABB74  B0 1C 0E 00 */	sth r0, 0xe00(r28)
/* 809ABB78  48 00 01 0C */	b lbl_809ABC84
lbl_809ABB7C:
/* 809ABB7C  A8 1C 0E 00 */	lha r0, 0xe00(r28)
/* 809ABB80  2C 00 00 00 */	cmpwi r0, 0
/* 809ABB84  41 82 00 0C */	beq lbl_809ABB90
/* 809ABB88  38 00 00 00 */	li r0, 0
/* 809ABB8C  B0 1C 0E 00 */	sth r0, 0xe00(r28)
lbl_809ABB90:
/* 809ABB90  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 809ABB94  A8 7C 04 B6 */	lha r3, 0x4b6(r28)
/* 809ABB98  7C 00 18 00 */	cmpw r0, r3
/* 809ABB9C  41 82 00 E8 */	beq lbl_809ABC84
/* 809ABBA0  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 809ABBA4  2C 00 00 00 */	cmpwi r0, 0
/* 809ABBA8  40 82 00 4C */	bne lbl_809ABBF4
/* 809ABBAC  B0 7C 09 96 */	sth r3, 0x996(r28)
/* 809ABBB0  38 00 00 00 */	li r0, 0
/* 809ABBB4  90 1C 09 68 */	stw r0, 0x968(r28)
/* 809ABBB8  A8 7C 08 F2 */	lha r3, 0x8f2(r28)
/* 809ABBBC  A8 1C 09 96 */	lha r0, 0x996(r28)
/* 809ABBC0  7C 03 00 00 */	cmpw r3, r0
/* 809ABBC4  40 82 00 10 */	bne lbl_809ABBD4
/* 809ABBC8  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 809ABBCC  38 03 00 01 */	addi r0, r3, 1
/* 809ABBD0  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_809ABBD4:
/* 809ABBD4  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 809ABBD8  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 809ABBDC  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 809ABBE0  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 809ABBE4  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 809ABBE8  38 03 00 01 */	addi r0, r3, 1
/* 809ABBEC  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 809ABBF0  48 00 00 60 */	b lbl_809ABC50
lbl_809ABBF4:
/* 809ABBF4  2C 00 00 01 */	cmpwi r0, 1
/* 809ABBF8  40 82 00 58 */	bne lbl_809ABC50
/* 809ABBFC  7F 83 E3 78 */	mr r3, r28
/* 809ABC00  A8 9C 09 96 */	lha r4, 0x996(r28)
/* 809ABC04  C0 3E 01 34 */	lfs f1, 0x134(r30)
/* 809ABC08  38 A0 00 00 */	li r5, 0
/* 809ABC0C  4B 7A 82 E8 */	b turn__8daNpcF_cFsfi
/* 809ABC10  2C 03 00 00 */	cmpwi r3, 0
/* 809ABC14  41 82 00 2C */	beq lbl_809ABC40
/* 809ABC18  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 809ABC1C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 809ABC20  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 809ABC24  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 809ABC28  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 809ABC2C  B0 1C 08 F8 */	sth r0, 0x8f8(r28)
/* 809ABC30  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 809ABC34  38 03 00 01 */	addi r0, r3, 1
/* 809ABC38  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 809ABC3C  48 00 00 14 */	b lbl_809ABC50
lbl_809ABC40:
/* 809ABC40  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 809ABC44  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 809ABC48  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 809ABC4C  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
lbl_809ABC50:
/* 809ABC50  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 809ABC54  2C 00 00 01 */	cmpwi r0, 1
/* 809ABC58  40 81 00 2C */	ble lbl_809ABC84
/* 809ABC5C  7F 83 E3 78 */	mr r3, r28
/* 809ABC60  38 80 00 00 */	li r4, 0
/* 809ABC64  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 809ABC68  38 A0 00 00 */	li r5, 0
/* 809ABC6C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809ABC70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809ABC74  7D 89 03 A6 */	mtctr r12
/* 809ABC78  4E 80 04 21 */	bctrl 
/* 809ABC7C  38 00 00 00 */	li r0, 0
/* 809ABC80  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_809ABC84:
/* 809ABC84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809ABC88  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 809ABC8C  88 1B 4F AD */	lbz r0, 0x4fad(r27)
/* 809ABC90  28 00 00 00 */	cmplwi r0, 0
/* 809ABC94  41 82 02 94 */	beq lbl_809ABF28
/* 809ABC98  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 809ABC9C  28 00 00 01 */	cmplwi r0, 1
/* 809ABCA0  40 82 00 C4 */	bne lbl_809ABD64
/* 809ABCA4  38 00 00 00 */	li r0, 0
/* 809ABCA8  88 7B 4F B5 */	lbz r3, 0x4fb5(r27)
/* 809ABCAC  28 03 00 01 */	cmplwi r3, 1
/* 809ABCB0  41 82 00 0C */	beq lbl_809ABCBC
/* 809ABCB4  28 03 00 02 */	cmplwi r3, 2
/* 809ABCB8  40 82 00 08 */	bne lbl_809ABCC0
lbl_809ABCBC:
/* 809ABCBC  38 00 00 01 */	li r0, 1
lbl_809ABCC0:
/* 809ABCC0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809ABCC4  41 82 00 14 */	beq lbl_809ABCD8
/* 809ABCC8  38 7B 4F F8 */	addi r3, r27, 0x4ff8
/* 809ABCCC  4B 69 CB 24 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 809ABCD0  2C 03 00 00 */	cmpwi r3, 0
/* 809ABCD4  41 82 03 6C */	beq lbl_809AC040
lbl_809ABCD8:
/* 809ABCD8  80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 809ABCDC  80 1D 00 A0 */	lwz r0, 0xa0(r29)
/* 809ABCE0  90 61 00 2C */	stw r3, 0x2c(r1)
/* 809ABCE4  90 01 00 30 */	stw r0, 0x30(r1)
/* 809ABCE8  80 1D 00 A4 */	lwz r0, 0xa4(r29)
/* 809ABCEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 809ABCF0  38 00 00 03 */	li r0, 3
/* 809ABCF4  B0 1C 0E 04 */	sth r0, 0xe04(r28)
/* 809ABCF8  38 7C 0D D4 */	addi r3, r28, 0xdd4
/* 809ABCFC  4B 9B 63 1C */	b __ptmf_test
/* 809ABD00  2C 03 00 00 */	cmpwi r3, 0
/* 809ABD04  41 82 00 18 */	beq lbl_809ABD1C
/* 809ABD08  7F 83 E3 78 */	mr r3, r28
/* 809ABD0C  38 80 00 00 */	li r4, 0
/* 809ABD10  39 9C 0D D4 */	addi r12, r28, 0xdd4
/* 809ABD14  4B 9B 63 70 */	b __ptmf_scall
/* 809ABD18  60 00 00 00 */	nop 
lbl_809ABD1C:
/* 809ABD1C  38 00 00 00 */	li r0, 0
/* 809ABD20  B0 1C 0E 04 */	sth r0, 0xe04(r28)
/* 809ABD24  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 809ABD28  80 01 00 30 */	lwz r0, 0x30(r1)
/* 809ABD2C  90 7C 0D D4 */	stw r3, 0xdd4(r28)
/* 809ABD30  90 1C 0D D8 */	stw r0, 0xdd8(r28)
/* 809ABD34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809ABD38  90 1C 0D DC */	stw r0, 0xddc(r28)
/* 809ABD3C  38 7C 0D D4 */	addi r3, r28, 0xdd4
/* 809ABD40  4B 9B 62 D8 */	b __ptmf_test
/* 809ABD44  2C 03 00 00 */	cmpwi r3, 0
/* 809ABD48  41 82 02 F8 */	beq lbl_809AC040
/* 809ABD4C  7F 83 E3 78 */	mr r3, r28
/* 809ABD50  38 80 00 00 */	li r4, 0
/* 809ABD54  39 9C 0D D4 */	addi r12, r28, 0xdd4
/* 809ABD58  4B 9B 63 2C */	b __ptmf_scall
/* 809ABD5C  60 00 00 00 */	nop 
/* 809ABD60  48 00 02 E0 */	b lbl_809AC040
lbl_809ABD64:
/* 809ABD64  4B 88 BD 38 */	b getNowTalkFlowNo__12dMsgObject_cFv
/* 809ABD68  7C 60 07 34 */	extsh r0, r3
/* 809ABD6C  2C 00 04 35 */	cmpwi r0, 0x435
/* 809ABD70  40 82 01 10 */	bne lbl_809ABE80
/* 809ABD74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809ABD78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809ABD7C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 809ABD80  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 809ABD84  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 809ABD88  A0 84 00 F8 */	lhz r4, 0xf8(r4)
/* 809ABD8C  4B 68 8C 30 */	b isEventBit__11dSv_event_cCFUs
/* 809ABD90  2C 03 00 00 */	cmpwi r3, 0
/* 809ABD94  41 82 00 0C */	beq lbl_809ABDA0
/* 809ABD98  38 00 00 00 */	li r0, 0
/* 809ABD9C  48 00 00 50 */	b lbl_809ABDEC
lbl_809ABDA0:
/* 809ABDA0  4B 80 07 DC */	b dKy_darkworld_check__Fv
/* 809ABDA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809ABDA8  41 82 00 0C */	beq lbl_809ABDB4
/* 809ABDAC  4B 7F 3D 48 */	b dKy_getDarktime_hour__Fv
/* 809ABDB0  48 00 00 08 */	b lbl_809ABDB8
lbl_809ABDB4:
/* 809ABDB4  4B 7F 3C 5C */	b dKy_getdaytime_hour__Fv
lbl_809ABDB8:
/* 809ABDB8  2C 03 00 0A */	cmpwi r3, 0xa
/* 809ABDBC  40 81 00 2C */	ble lbl_809ABDE8
/* 809ABDC0  2C 03 00 14 */	cmpwi r3, 0x14
/* 809ABDC4  40 80 00 24 */	bge lbl_809ABDE8
/* 809ABDC8  38 60 00 00 */	li r3, 0
/* 809ABDCC  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 809ABDD0  7C 04 07 74 */	extsb r4, r0
/* 809ABDD4  4B 68 1D 90 */	b dComIfGs_isOneZoneSwitch__Fii
/* 809ABDD8  2C 03 00 00 */	cmpwi r3, 0
/* 809ABDDC  41 82 00 0C */	beq lbl_809ABDE8
/* 809ABDE0  38 00 00 00 */	li r0, 0
/* 809ABDE4  48 00 00 08 */	b lbl_809ABDEC
lbl_809ABDE8:
/* 809ABDE8  38 00 00 01 */	li r0, 1
lbl_809ABDEC:
/* 809ABDEC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809ABDF0  41 82 02 50 */	beq lbl_809AC040
/* 809ABDF4  80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 809ABDF8  80 1D 00 AC */	lwz r0, 0xac(r29)
/* 809ABDFC  90 61 00 20 */	stw r3, 0x20(r1)
/* 809ABE00  90 01 00 24 */	stw r0, 0x24(r1)
/* 809ABE04  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 809ABE08  90 01 00 28 */	stw r0, 0x28(r1)
/* 809ABE0C  38 00 00 03 */	li r0, 3
/* 809ABE10  B0 1C 0E 04 */	sth r0, 0xe04(r28)
/* 809ABE14  38 7C 0D D4 */	addi r3, r28, 0xdd4
/* 809ABE18  4B 9B 62 00 */	b __ptmf_test
/* 809ABE1C  2C 03 00 00 */	cmpwi r3, 0
/* 809ABE20  41 82 00 18 */	beq lbl_809ABE38
/* 809ABE24  7F 83 E3 78 */	mr r3, r28
/* 809ABE28  38 80 00 00 */	li r4, 0
/* 809ABE2C  39 9C 0D D4 */	addi r12, r28, 0xdd4
/* 809ABE30  4B 9B 62 54 */	b __ptmf_scall
/* 809ABE34  60 00 00 00 */	nop 
lbl_809ABE38:
/* 809ABE38  38 00 00 00 */	li r0, 0
/* 809ABE3C  B0 1C 0E 04 */	sth r0, 0xe04(r28)
/* 809ABE40  80 61 00 20 */	lwz r3, 0x20(r1)
/* 809ABE44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809ABE48  90 7C 0D D4 */	stw r3, 0xdd4(r28)
/* 809ABE4C  90 1C 0D D8 */	stw r0, 0xdd8(r28)
/* 809ABE50  80 01 00 28 */	lwz r0, 0x28(r1)
/* 809ABE54  90 1C 0D DC */	stw r0, 0xddc(r28)
/* 809ABE58  38 7C 0D D4 */	addi r3, r28, 0xdd4
/* 809ABE5C  4B 9B 61 BC */	b __ptmf_test
/* 809ABE60  2C 03 00 00 */	cmpwi r3, 0
/* 809ABE64  41 82 01 DC */	beq lbl_809AC040
/* 809ABE68  7F 83 E3 78 */	mr r3, r28
/* 809ABE6C  38 80 00 00 */	li r4, 0
/* 809ABE70  39 9C 0D D4 */	addi r12, r28, 0xdd4
/* 809ABE74  4B 9B 62 10 */	b __ptmf_scall
/* 809ABE78  60 00 00 00 */	nop 
/* 809ABE7C  48 00 01 C4 */	b lbl_809AC040
lbl_809ABE80:
/* 809ABE80  38 7B 4F F8 */	addi r3, r27, 0x4ff8
/* 809ABE84  80 9D 00 80 */	lwz r4, 0x80(r29)
/* 809ABE88  38 A0 00 00 */	li r5, 0
/* 809ABE8C  38 C0 00 00 */	li r6, 0
/* 809ABE90  4B 69 BC 8C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809ABE94  2C 03 FF FF */	cmpwi r3, -1
/* 809ABE98  41 82 01 A8 */	beq lbl_809AC040
/* 809ABE9C  80 7D 00 B4 */	lwz r3, 0xb4(r29)
/* 809ABEA0  80 1D 00 B8 */	lwz r0, 0xb8(r29)
/* 809ABEA4  90 61 00 14 */	stw r3, 0x14(r1)
/* 809ABEA8  90 01 00 18 */	stw r0, 0x18(r1)
/* 809ABEAC  80 1D 00 BC */	lwz r0, 0xbc(r29)
/* 809ABEB0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809ABEB4  38 00 00 03 */	li r0, 3
/* 809ABEB8  B0 1C 0E 04 */	sth r0, 0xe04(r28)
/* 809ABEBC  38 7C 0D D4 */	addi r3, r28, 0xdd4
/* 809ABEC0  4B 9B 61 58 */	b __ptmf_test
/* 809ABEC4  2C 03 00 00 */	cmpwi r3, 0
/* 809ABEC8  41 82 00 18 */	beq lbl_809ABEE0
/* 809ABECC  7F 83 E3 78 */	mr r3, r28
/* 809ABED0  38 80 00 00 */	li r4, 0
/* 809ABED4  39 9C 0D D4 */	addi r12, r28, 0xdd4
/* 809ABED8  4B 9B 61 AC */	b __ptmf_scall
/* 809ABEDC  60 00 00 00 */	nop 
lbl_809ABEE0:
/* 809ABEE0  38 00 00 00 */	li r0, 0
/* 809ABEE4  B0 1C 0E 04 */	sth r0, 0xe04(r28)
/* 809ABEE8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 809ABEEC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 809ABEF0  90 7C 0D D4 */	stw r3, 0xdd4(r28)
/* 809ABEF4  90 1C 0D D8 */	stw r0, 0xdd8(r28)
/* 809ABEF8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 809ABEFC  90 1C 0D DC */	stw r0, 0xddc(r28)
/* 809ABF00  38 7C 0D D4 */	addi r3, r28, 0xdd4
/* 809ABF04  4B 9B 61 14 */	b __ptmf_test
/* 809ABF08  2C 03 00 00 */	cmpwi r3, 0
/* 809ABF0C  41 82 01 34 */	beq lbl_809AC040
/* 809ABF10  7F 83 E3 78 */	mr r3, r28
/* 809ABF14  38 80 00 00 */	li r4, 0
/* 809ABF18  39 9C 0D D4 */	addi r12, r28, 0xdd4
/* 809ABF1C  4B 9B 61 68 */	b __ptmf_scall
/* 809ABF20  60 00 00 00 */	nop 
/* 809ABF24  48 00 01 1C */	b lbl_809AC040
lbl_809ABF28:
/* 809ABF28  4B 80 06 54 */	b dKy_darkworld_check__Fv
/* 809ABF2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809ABF30  40 82 00 CC */	bne lbl_809ABFFC
/* 809ABF34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809ABF38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809ABF3C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809ABF40  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809ABF44  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809ABF48  41 82 00 B4 */	beq lbl_809ABFFC
/* 809ABF4C  C8 3E 01 38 */	lfd f1, 0x138(r30)
/* 809ABF50  C8 5E 01 40 */	lfd f2, 0x140(r30)
/* 809ABF54  4B 9C 08 2C */	b pow
/* 809ABF58  FF E0 08 18 */	frsp f31, f1
/* 809ABF5C  7F 83 E3 78 */	mr r3, r28
/* 809ABF60  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809ABF64  4B 66 EB 30 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809ABF68  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 809ABF6C  40 80 00 90 */	bge lbl_809ABFFC
/* 809ABF70  80 7D 00 C0 */	lwz r3, 0xc0(r29)
/* 809ABF74  80 1D 00 C4 */	lwz r0, 0xc4(r29)
/* 809ABF78  90 61 00 08 */	stw r3, 8(r1)
/* 809ABF7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809ABF80  80 1D 00 C8 */	lwz r0, 0xc8(r29)
/* 809ABF84  90 01 00 10 */	stw r0, 0x10(r1)
/* 809ABF88  38 00 00 03 */	li r0, 3
/* 809ABF8C  B0 1C 0E 04 */	sth r0, 0xe04(r28)
/* 809ABF90  38 7C 0D D4 */	addi r3, r28, 0xdd4
/* 809ABF94  4B 9B 60 84 */	b __ptmf_test
/* 809ABF98  2C 03 00 00 */	cmpwi r3, 0
/* 809ABF9C  41 82 00 18 */	beq lbl_809ABFB4
/* 809ABFA0  7F 83 E3 78 */	mr r3, r28
/* 809ABFA4  38 80 00 00 */	li r4, 0
/* 809ABFA8  39 9C 0D D4 */	addi r12, r28, 0xdd4
/* 809ABFAC  4B 9B 60 D8 */	b __ptmf_scall
/* 809ABFB0  60 00 00 00 */	nop 
lbl_809ABFB4:
/* 809ABFB4  38 00 00 00 */	li r0, 0
/* 809ABFB8  B0 1C 0E 04 */	sth r0, 0xe04(r28)
/* 809ABFBC  80 61 00 08 */	lwz r3, 8(r1)
/* 809ABFC0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809ABFC4  90 7C 0D D4 */	stw r3, 0xdd4(r28)
/* 809ABFC8  90 1C 0D D8 */	stw r0, 0xdd8(r28)
/* 809ABFCC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 809ABFD0  90 1C 0D DC */	stw r0, 0xddc(r28)
/* 809ABFD4  38 7C 0D D4 */	addi r3, r28, 0xdd4
/* 809ABFD8  4B 9B 60 40 */	b __ptmf_test
/* 809ABFDC  2C 03 00 00 */	cmpwi r3, 0
/* 809ABFE0  41 82 00 60 */	beq lbl_809AC040
/* 809ABFE4  7F 83 E3 78 */	mr r3, r28
/* 809ABFE8  38 80 00 00 */	li r4, 0
/* 809ABFEC  39 9C 0D D4 */	addi r12, r28, 0xdd4
/* 809ABFF0  4B 9B 60 94 */	b __ptmf_scall
/* 809ABFF4  60 00 00 00 */	nop 
/* 809ABFF8  48 00 00 48 */	b lbl_809AC040
lbl_809ABFFC:
/* 809ABFFC  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 809AC000  28 00 00 00 */	cmplwi r0, 0
/* 809AC004  41 82 00 0C */	beq lbl_809AC010
/* 809AC008  80 1D 00 74 */	lwz r0, 0x74(r29)
/* 809AC00C  90 1C 01 00 */	stw r0, 0x100(r28)
lbl_809AC010:
/* 809AC010  7F 83 E3 78 */	mr r3, r28
/* 809AC014  88 9C 0E 06 */	lbz r4, 0xe06(r28)
/* 809AC018  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 809AC01C  54 00 10 3A */	slwi r0, r0, 2
/* 809AC020  38 BD 00 7C */	addi r5, r29, 0x7c
/* 809AC024  7C A5 00 2E */	lwzx r5, r5, r0
/* 809AC028  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809AC02C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809AC030  38 E0 00 28 */	li r7, 0x28
/* 809AC034  39 00 00 FF */	li r8, 0xff
/* 809AC038  39 20 00 01 */	li r9, 1
/* 809AC03C  4B 7A 78 40 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_809AC040:
/* 809AC040  38 60 00 01 */	li r3, 1
/* 809AC044  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 809AC048  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 809AC04C  39 61 00 50 */	addi r11, r1, 0x50
/* 809AC050  4B 9B 61 D0 */	b _restgpr_27
/* 809AC054  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809AC058  7C 08 03 A6 */	mtlr r0
/* 809AC05C  38 21 00 60 */	addi r1, r1, 0x60
/* 809AC060  4E 80 00 20 */	blr 
