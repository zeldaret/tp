lbl_80AE8A04:
/* 80AE8A04  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AE8A08  7C 08 02 A6 */	mflr r0
/* 80AE8A0C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AE8A10  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80AE8A14  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80AE8A18  39 61 00 40 */	addi r11, r1, 0x40
/* 80AE8A1C  4B 87 97 BC */	b _savegpr_28
/* 80AE8A20  7C 7C 1B 78 */	mr r28, r3
/* 80AE8A24  3C 80 80 AF */	lis r4, cNullVec__6Z2Calc@ha
/* 80AE8A28  3B A4 A5 38 */	addi r29, r4, cNullVec__6Z2Calc@l
/* 80AE8A2C  3C 80 80 AF */	lis r4, m__17daNpcShoe_Param_c@ha
/* 80AE8A30  3B C4 A3 B0 */	addi r30, r4, m__17daNpcShoe_Param_c@l
/* 80AE8A34  A0 03 0E 18 */	lhz r0, 0xe18(r3)
/* 80AE8A38  2C 00 00 02 */	cmpwi r0, 2
/* 80AE8A3C  41 82 00 48 */	beq lbl_80AE8A84
/* 80AE8A40  40 80 03 C0 */	bge lbl_80AE8E00
/* 80AE8A44  2C 00 00 00 */	cmpwi r0, 0
/* 80AE8A48  41 82 00 0C */	beq lbl_80AE8A54
/* 80AE8A4C  48 00 03 B4 */	b lbl_80AE8E00
/* 80AE8A50  48 00 03 B0 */	b lbl_80AE8E00
lbl_80AE8A54:
/* 80AE8A54  38 80 00 00 */	li r4, 0
/* 80AE8A58  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80AE8A5C  38 A0 00 00 */	li r5, 0
/* 80AE8A60  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AE8A64  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AE8A68  7D 89 03 A6 */	mtctr r12
/* 80AE8A6C  4E 80 04 21 */	bctrl 
/* 80AE8A70  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80AE8A74  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80AE8A78  38 00 00 02 */	li r0, 2
/* 80AE8A7C  B0 1C 0E 18 */	sth r0, 0xe18(r28)
/* 80AE8A80  48 00 03 80 */	b lbl_80AE8E00
lbl_80AE8A84:
/* 80AE8A84  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AE8A88  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80AE8A8C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80AE8A90  38 BE 00 00 */	addi r5, r30, 0
/* 80AE8A94  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80AE8A98  4B 66 AF 58 */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80AE8A9C  2C 03 00 00 */	cmpwi r3, 0
/* 80AE8AA0  40 82 00 10 */	bne lbl_80AE8AB0
/* 80AE8AA4  38 7C 0C 94 */	addi r3, r28, 0xc94
/* 80AE8AA8  4B 66 7C 38 */	b remove__18daNpcF_ActorMngr_cFv
/* 80AE8AAC  48 00 00 78 */	b lbl_80AE8B24
lbl_80AE8AB0:
/* 80AE8AB0  38 7C 0C 94 */	addi r3, r28, 0xc94
/* 80AE8AB4  4B 66 7C 38 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80AE8AB8  28 03 00 00 */	cmplwi r3, 0
/* 80AE8ABC  40 82 00 28 */	bne lbl_80AE8AE4
/* 80AE8AC0  7F 83 E3 78 */	mr r3, r28
/* 80AE8AC4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80AE8AC8  7F 85 E3 78 */	mr r5, r28
/* 80AE8ACC  88 DC 05 47 */	lbz r6, 0x547(r28)
/* 80AE8AD0  4B 66 B1 0C */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80AE8AD4  30 03 FF FF */	addic r0, r3, -1
/* 80AE8AD8  7C 00 19 10 */	subfe r0, r0, r3
/* 80AE8ADC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80AE8AE0  48 00 00 24 */	b lbl_80AE8B04
lbl_80AE8AE4:
/* 80AE8AE4  7F 83 E3 78 */	mr r3, r28
/* 80AE8AE8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80AE8AEC  7F 85 E3 78 */	mr r5, r28
/* 80AE8AF0  88 DC 05 45 */	lbz r6, 0x545(r28)
/* 80AE8AF4  4B 66 B0 E8 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80AE8AF8  30 03 FF FF */	addic r0, r3, -1
/* 80AE8AFC  7C 00 19 10 */	subfe r0, r0, r3
/* 80AE8B00  54 00 06 3E */	clrlwi r0, r0, 0x18
lbl_80AE8B04:
/* 80AE8B04  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AE8B08  41 82 00 14 */	beq lbl_80AE8B1C
/* 80AE8B0C  38 7C 0C 94 */	addi r3, r28, 0xc94
/* 80AE8B10  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80AE8B14  4B 66 7B A8 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AE8B18  48 00 00 0C */	b lbl_80AE8B24
lbl_80AE8B1C:
/* 80AE8B1C  38 7C 0C 94 */	addi r3, r28, 0xc94
/* 80AE8B20  4B 66 7B C0 */	b remove__18daNpcF_ActorMngr_cFv
lbl_80AE8B24:
/* 80AE8B24  38 7C 0C 94 */	addi r3, r28, 0xc94
/* 80AE8B28  4B 66 7B C4 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80AE8B2C  28 03 00 00 */	cmplwi r3, 0
/* 80AE8B30  41 82 00 1C */	beq lbl_80AE8B4C
/* 80AE8B34  A8 1C 0E 10 */	lha r0, 0xe10(r28)
/* 80AE8B38  2C 00 00 02 */	cmpwi r0, 2
/* 80AE8B3C  41 82 00 24 */	beq lbl_80AE8B60
/* 80AE8B40  38 00 00 02 */	li r0, 2
/* 80AE8B44  B0 1C 0E 10 */	sth r0, 0xe10(r28)
/* 80AE8B48  48 00 00 18 */	b lbl_80AE8B60
lbl_80AE8B4C:
/* 80AE8B4C  A8 1C 0E 10 */	lha r0, 0xe10(r28)
/* 80AE8B50  2C 00 00 00 */	cmpwi r0, 0
/* 80AE8B54  41 82 00 0C */	beq lbl_80AE8B60
/* 80AE8B58  38 00 00 00 */	li r0, 0
/* 80AE8B5C  B0 1C 0E 10 */	sth r0, 0xe10(r28)
lbl_80AE8B60:
/* 80AE8B60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AE8B64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AE8B68  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80AE8B6C  28 00 00 00 */	cmplwi r0, 0
/* 80AE8B70  41 82 01 78 */	beq lbl_80AE8CE8
/* 80AE8B74  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80AE8B78  28 00 00 01 */	cmplwi r0, 1
/* 80AE8B7C  40 82 00 C4 */	bne lbl_80AE8C40
/* 80AE8B80  38 00 00 00 */	li r0, 0
/* 80AE8B84  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80AE8B88  28 04 00 01 */	cmplwi r4, 1
/* 80AE8B8C  41 82 00 0C */	beq lbl_80AE8B98
/* 80AE8B90  28 04 00 02 */	cmplwi r4, 2
/* 80AE8B94  40 82 00 08 */	bne lbl_80AE8B9C
lbl_80AE8B98:
/* 80AE8B98  38 00 00 01 */	li r0, 1
lbl_80AE8B9C:
/* 80AE8B9C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AE8BA0  41 82 00 14 */	beq lbl_80AE8BB4
/* 80AE8BA4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AE8BA8  4B 55 FC 48 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80AE8BAC  2C 03 00 00 */	cmpwi r3, 0
/* 80AE8BB0  41 82 02 50 */	beq lbl_80AE8E00
lbl_80AE8BB4:
/* 80AE8BB4  80 7D 00 94 */	lwz r3, 0x94(r29)
/* 80AE8BB8  80 1D 00 98 */	lwz r0, 0x98(r29)
/* 80AE8BBC  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AE8BC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE8BC4  80 1D 00 9C */	lwz r0, 0x9c(r29)
/* 80AE8BC8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80AE8BCC  38 00 00 03 */	li r0, 3
/* 80AE8BD0  B0 1C 0E 18 */	sth r0, 0xe18(r28)
/* 80AE8BD4  38 7C 0D DC */	addi r3, r28, 0xddc
/* 80AE8BD8  4B 87 94 40 */	b __ptmf_test
/* 80AE8BDC  2C 03 00 00 */	cmpwi r3, 0
/* 80AE8BE0  41 82 00 18 */	beq lbl_80AE8BF8
/* 80AE8BE4  7F 83 E3 78 */	mr r3, r28
/* 80AE8BE8  38 80 00 00 */	li r4, 0
/* 80AE8BEC  39 9C 0D DC */	addi r12, r28, 0xddc
/* 80AE8BF0  4B 87 94 94 */	b __ptmf_scall
/* 80AE8BF4  60 00 00 00 */	nop 
lbl_80AE8BF8:
/* 80AE8BF8  38 00 00 00 */	li r0, 0
/* 80AE8BFC  B0 1C 0E 18 */	sth r0, 0xe18(r28)
/* 80AE8C00  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80AE8C04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AE8C08  90 7C 0D DC */	stw r3, 0xddc(r28)
/* 80AE8C0C  90 1C 0D E0 */	stw r0, 0xde0(r28)
/* 80AE8C10  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80AE8C14  90 1C 0D E4 */	stw r0, 0xde4(r28)
/* 80AE8C18  38 7C 0D DC */	addi r3, r28, 0xddc
/* 80AE8C1C  4B 87 93 FC */	b __ptmf_test
/* 80AE8C20  2C 03 00 00 */	cmpwi r3, 0
/* 80AE8C24  41 82 01 DC */	beq lbl_80AE8E00
/* 80AE8C28  7F 83 E3 78 */	mr r3, r28
/* 80AE8C2C  38 80 00 00 */	li r4, 0
/* 80AE8C30  39 9C 0D DC */	addi r12, r28, 0xddc
/* 80AE8C34  4B 87 94 50 */	b __ptmf_scall
/* 80AE8C38  60 00 00 00 */	nop 
/* 80AE8C3C  48 00 01 C4 */	b lbl_80AE8E00
lbl_80AE8C40:
/* 80AE8C40  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AE8C44  80 9D 00 78 */	lwz r4, 0x78(r29)
/* 80AE8C48  38 A0 00 00 */	li r5, 0
/* 80AE8C4C  38 C0 00 00 */	li r6, 0
/* 80AE8C50  4B 55 EE CC */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AE8C54  2C 03 FF FF */	cmpwi r3, -1
/* 80AE8C58  41 82 01 A8 */	beq lbl_80AE8E00
/* 80AE8C5C  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 80AE8C60  80 1D 00 A4 */	lwz r0, 0xa4(r29)
/* 80AE8C64  90 61 00 14 */	stw r3, 0x14(r1)
/* 80AE8C68  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AE8C6C  80 1D 00 A8 */	lwz r0, 0xa8(r29)
/* 80AE8C70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AE8C74  38 00 00 03 */	li r0, 3
/* 80AE8C78  B0 1C 0E 18 */	sth r0, 0xe18(r28)
/* 80AE8C7C  38 7C 0D DC */	addi r3, r28, 0xddc
/* 80AE8C80  4B 87 93 98 */	b __ptmf_test
/* 80AE8C84  2C 03 00 00 */	cmpwi r3, 0
/* 80AE8C88  41 82 00 18 */	beq lbl_80AE8CA0
/* 80AE8C8C  7F 83 E3 78 */	mr r3, r28
/* 80AE8C90  38 80 00 00 */	li r4, 0
/* 80AE8C94  39 9C 0D DC */	addi r12, r28, 0xddc
/* 80AE8C98  4B 87 93 EC */	b __ptmf_scall
/* 80AE8C9C  60 00 00 00 */	nop 
lbl_80AE8CA0:
/* 80AE8CA0  38 00 00 00 */	li r0, 0
/* 80AE8CA4  B0 1C 0E 18 */	sth r0, 0xe18(r28)
/* 80AE8CA8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80AE8CAC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80AE8CB0  90 7C 0D DC */	stw r3, 0xddc(r28)
/* 80AE8CB4  90 1C 0D E0 */	stw r0, 0xde0(r28)
/* 80AE8CB8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80AE8CBC  90 1C 0D E4 */	stw r0, 0xde4(r28)
/* 80AE8CC0  38 7C 0D DC */	addi r3, r28, 0xddc
/* 80AE8CC4  4B 87 93 54 */	b __ptmf_test
/* 80AE8CC8  2C 03 00 00 */	cmpwi r3, 0
/* 80AE8CCC  41 82 01 34 */	beq lbl_80AE8E00
/* 80AE8CD0  7F 83 E3 78 */	mr r3, r28
/* 80AE8CD4  38 80 00 00 */	li r4, 0
/* 80AE8CD8  39 9C 0D DC */	addi r12, r28, 0xddc
/* 80AE8CDC  4B 87 93 A8 */	b __ptmf_scall
/* 80AE8CE0  60 00 00 00 */	nop 
/* 80AE8CE4  48 00 01 1C */	b lbl_80AE8E00
lbl_80AE8CE8:
/* 80AE8CE8  4B 6C 38 94 */	b dKy_darkworld_check__Fv
/* 80AE8CEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AE8CF0  40 82 00 CC */	bne lbl_80AE8DBC
/* 80AE8CF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AE8CF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AE8CFC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80AE8D00  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80AE8D04  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80AE8D08  41 82 00 B4 */	beq lbl_80AE8DBC
/* 80AE8D0C  C8 3E 01 48 */	lfd f1, 0x148(r30)
/* 80AE8D10  C8 5E 01 50 */	lfd f2, 0x150(r30)
/* 80AE8D14  4B 88 3A 6C */	b pow
/* 80AE8D18  FF E0 08 18 */	frsp f31, f1
/* 80AE8D1C  7F 83 E3 78 */	mr r3, r28
/* 80AE8D20  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80AE8D24  4B 53 1D 70 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AE8D28  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80AE8D2C  40 80 00 90 */	bge lbl_80AE8DBC
/* 80AE8D30  80 7D 00 AC */	lwz r3, 0xac(r29)
/* 80AE8D34  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80AE8D38  90 61 00 08 */	stw r3, 8(r1)
/* 80AE8D3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AE8D40  80 1D 00 B4 */	lwz r0, 0xb4(r29)
/* 80AE8D44  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AE8D48  38 00 00 03 */	li r0, 3
/* 80AE8D4C  B0 1C 0E 18 */	sth r0, 0xe18(r28)
/* 80AE8D50  38 7C 0D DC */	addi r3, r28, 0xddc
/* 80AE8D54  4B 87 92 C4 */	b __ptmf_test
/* 80AE8D58  2C 03 00 00 */	cmpwi r3, 0
/* 80AE8D5C  41 82 00 18 */	beq lbl_80AE8D74
/* 80AE8D60  7F 83 E3 78 */	mr r3, r28
/* 80AE8D64  38 80 00 00 */	li r4, 0
/* 80AE8D68  39 9C 0D DC */	addi r12, r28, 0xddc
/* 80AE8D6C  4B 87 93 18 */	b __ptmf_scall
/* 80AE8D70  60 00 00 00 */	nop 
lbl_80AE8D74:
/* 80AE8D74  38 00 00 00 */	li r0, 0
/* 80AE8D78  B0 1C 0E 18 */	sth r0, 0xe18(r28)
/* 80AE8D7C  80 61 00 08 */	lwz r3, 8(r1)
/* 80AE8D80  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AE8D84  90 7C 0D DC */	stw r3, 0xddc(r28)
/* 80AE8D88  90 1C 0D E0 */	stw r0, 0xde0(r28)
/* 80AE8D8C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80AE8D90  90 1C 0D E4 */	stw r0, 0xde4(r28)
/* 80AE8D94  38 7C 0D DC */	addi r3, r28, 0xddc
/* 80AE8D98  4B 87 92 80 */	b __ptmf_test
/* 80AE8D9C  2C 03 00 00 */	cmpwi r3, 0
/* 80AE8DA0  41 82 00 60 */	beq lbl_80AE8E00
/* 80AE8DA4  7F 83 E3 78 */	mr r3, r28
/* 80AE8DA8  38 80 00 00 */	li r4, 0
/* 80AE8DAC  39 9C 0D DC */	addi r12, r28, 0xddc
/* 80AE8DB0  4B 87 92 D4 */	b __ptmf_scall
/* 80AE8DB4  60 00 00 00 */	nop 
/* 80AE8DB8  48 00 00 48 */	b lbl_80AE8E00
lbl_80AE8DBC:
/* 80AE8DBC  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 80AE8DC0  28 00 00 00 */	cmplwi r0, 0
/* 80AE8DC4  41 82 00 0C */	beq lbl_80AE8DD0
/* 80AE8DC8  80 1D 00 68 */	lwz r0, 0x68(r29)
/* 80AE8DCC  90 1C 01 00 */	stw r0, 0x100(r28)
lbl_80AE8DD0:
/* 80AE8DD0  7F 83 E3 78 */	mr r3, r28
/* 80AE8DD4  88 9C 0E 1A */	lbz r4, 0xe1a(r28)
/* 80AE8DD8  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 80AE8DDC  54 00 10 3A */	slwi r0, r0, 2
/* 80AE8DE0  38 BD 00 74 */	addi r5, r29, 0x74
/* 80AE8DE4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80AE8DE8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80AE8DEC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80AE8DF0  38 E0 00 28 */	li r7, 0x28
/* 80AE8DF4  39 00 00 FF */	li r8, 0xff
/* 80AE8DF8  39 20 00 01 */	li r9, 1
/* 80AE8DFC  4B 66 AA 80 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80AE8E00:
/* 80AE8E00  38 60 00 01 */	li r3, 1
/* 80AE8E04  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80AE8E08  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80AE8E0C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AE8E10  4B 87 94 14 */	b _restgpr_28
/* 80AE8E14  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80AE8E18  7C 08 03 A6 */	mtlr r0
/* 80AE8E1C  38 21 00 50 */	addi r1, r1, 0x50
/* 80AE8E20  4E 80 00 20 */	blr 
