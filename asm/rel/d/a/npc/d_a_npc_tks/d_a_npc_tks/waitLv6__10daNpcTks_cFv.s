lbl_80B1682C:
/* 80B1682C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B16830  7C 08 02 A6 */	mflr r0
/* 80B16834  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B16838  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80B1683C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80B16840  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80B16844  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80B16848  39 61 00 30 */	addi r11, r1, 0x30
/* 80B1684C  4B 84 B9 90 */	b _savegpr_29
/* 80B16850  7C 7E 1B 78 */	mr r30, r3
/* 80B16854  3C 80 80 B2 */	lis r4, m__16daNpcTks_Param_c@ha
/* 80B16858  3B E4 DD 58 */	addi r31, r4, m__16daNpcTks_Param_c@l
/* 80B1685C  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B16860  2C 00 00 02 */	cmpwi r0, 2
/* 80B16864  41 82 00 58 */	beq lbl_80B168BC
/* 80B16868  40 80 02 E4 */	bge lbl_80B16B4C
/* 80B1686C  2C 00 00 00 */	cmpwi r0, 0
/* 80B16870  41 82 00 0C */	beq lbl_80B1687C
/* 80B16874  48 00 02 D8 */	b lbl_80B16B4C
/* 80B16878  48 00 02 D4 */	b lbl_80B16B4C
lbl_80B1687C:
/* 80B1687C  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80B16880  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B16884  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80B16888  38 80 00 02 */	li r4, 2
/* 80B1688C  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80B16890  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B16894  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B16898  7D 89 03 A6 */	mtctr r12
/* 80B1689C  4E 80 04 21 */	bctrl 
/* 80B168A0  38 00 00 00 */	li r0, 0
/* 80B168A4  98 1E 13 8A */	stb r0, 0x138a(r30)
/* 80B168A8  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B168AC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B168B0  38 00 00 02 */	li r0, 2
/* 80B168B4  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B168B8  48 00 02 94 */	b lbl_80B16B4C
lbl_80B168BC:
/* 80B168BC  38 7E 12 00 */	addi r3, r30, 0x1200
/* 80B168C0  4B 63 9E 2C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B168C4  28 03 00 00 */	cmplwi r3, 0
/* 80B168C8  41 82 00 70 */	beq lbl_80B16938
/* 80B168CC  38 7F 00 00 */	addi r3, r31, 0
/* 80B168D0  C0 23 00 7C */	lfs f1, 0x7c(r3)
/* 80B168D4  C8 5F 01 C8 */	lfd f2, 0x1c8(r31)
/* 80B168D8  4B 85 5E A8 */	b pow
/* 80B168DC  FF C0 08 18 */	frsp f30, f1
/* 80B168E0  7F C3 F3 78 */	mr r3, r30
/* 80B168E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B168E8  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80B168EC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B168F0  4B 50 41 A4 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B168F4  FF E0 08 90 */	fmr f31, f1
/* 80B168F8  38 7E 12 00 */	addi r3, r30, 0x1200
/* 80B168FC  4B 63 9D E4 */	b remove__18daNpcF_ActorMngr_cFv
/* 80B16900  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 80B16904  4C 40 13 82 */	cror 2, 0, 2
/* 80B16908  40 82 00 18 */	bne lbl_80B16920
/* 80B1690C  38 7E 12 00 */	addi r3, r30, 0x1200
/* 80B16910  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B16914  4B 63 9D A8 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B16918  38 00 00 01 */	li r0, 1
/* 80B1691C  48 00 00 08 */	b lbl_80B16924
lbl_80B16920:
/* 80B16920  38 00 00 00 */	li r0, 0
lbl_80B16924:
/* 80B16924  2C 00 00 00 */	cmpwi r0, 0
/* 80B16928  40 82 00 78 */	bne lbl_80B169A0
/* 80B1692C  38 00 00 00 */	li r0, 0
/* 80B16930  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80B16934  48 00 00 6C */	b lbl_80B169A0
lbl_80B16938:
/* 80B16938  38 7F 00 00 */	addi r3, r31, 0
/* 80B1693C  C0 23 00 7C */	lfs f1, 0x7c(r3)
/* 80B16940  C8 5F 01 C8 */	lfd f2, 0x1c8(r31)
/* 80B16944  4B 85 5E 3C */	b pow
/* 80B16948  FF C0 08 18 */	frsp f30, f1
/* 80B1694C  7F C3 F3 78 */	mr r3, r30
/* 80B16950  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B16954  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80B16958  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B1695C  4B 50 41 38 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B16960  FF E0 08 90 */	fmr f31, f1
/* 80B16964  38 7E 12 00 */	addi r3, r30, 0x1200
/* 80B16968  4B 63 9D 78 */	b remove__18daNpcF_ActorMngr_cFv
/* 80B1696C  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 80B16970  4C 40 13 82 */	cror 2, 0, 2
/* 80B16974  40 82 00 18 */	bne lbl_80B1698C
/* 80B16978  38 7E 12 00 */	addi r3, r30, 0x1200
/* 80B1697C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B16980  4B 63 9D 3C */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B16984  38 00 00 01 */	li r0, 1
/* 80B16988  48 00 00 08 */	b lbl_80B16990
lbl_80B1698C:
/* 80B1698C  38 00 00 00 */	li r0, 0
lbl_80B16990:
/* 80B16990  2C 00 00 00 */	cmpwi r0, 0
/* 80B16994  41 82 00 0C */	beq lbl_80B169A0
/* 80B16998  38 00 00 00 */	li r0, 0
/* 80B1699C  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_80B169A0:
/* 80B169A0  38 7E 12 00 */	addi r3, r30, 0x1200
/* 80B169A4  4B 63 9D 48 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B169A8  28 03 00 00 */	cmplwi r3, 0
/* 80B169AC  41 82 00 30 */	beq lbl_80B169DC
/* 80B169B0  A8 1E 13 86 */	lha r0, 0x1386(r30)
/* 80B169B4  2C 00 00 02 */	cmpwi r0, 2
/* 80B169B8  40 82 00 10 */	bne lbl_80B169C8
/* 80B169BC  80 1E 12 08 */	lwz r0, 0x1208(r30)
/* 80B169C0  28 00 00 00 */	cmplwi r0, 0
/* 80B169C4  41 82 00 3C */	beq lbl_80B16A00
lbl_80B169C8:
/* 80B169C8  38 00 00 02 */	li r0, 2
/* 80B169CC  B0 1E 13 86 */	sth r0, 0x1386(r30)
/* 80B169D0  38 00 00 00 */	li r0, 0
/* 80B169D4  90 1E 12 08 */	stw r0, 0x1208(r30)
/* 80B169D8  48 00 00 28 */	b lbl_80B16A00
lbl_80B169DC:
/* 80B169DC  A8 1E 13 86 */	lha r0, 0x1386(r30)
/* 80B169E0  2C 00 00 00 */	cmpwi r0, 0
/* 80B169E4  40 82 00 10 */	bne lbl_80B169F4
/* 80B169E8  80 1E 12 08 */	lwz r0, 0x1208(r30)
/* 80B169EC  28 00 00 00 */	cmplwi r0, 0
/* 80B169F0  41 82 00 10 */	beq lbl_80B16A00
lbl_80B169F4:
/* 80B169F4  38 00 00 00 */	li r0, 0
/* 80B169F8  B0 1E 13 86 */	sth r0, 0x1386(r30)
/* 80B169FC  90 1E 12 08 */	stw r0, 0x1208(r30)
lbl_80B16A00:
/* 80B16A00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B16A04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B16A08  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80B16A0C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B16A10  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80B16A14  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B16A18  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80B16A1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B16A20  40 80 00 40 */	bge lbl_80B16A60
/* 80B16A24  7F C3 F3 78 */	mr r3, r30
/* 80B16A28  4B 50 3F 3C */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B16A2C  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 80B16A30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B16A34  4C 40 13 82 */	cror 2, 0, 2
/* 80B16A38  40 82 00 28 */	bne lbl_80B16A60
/* 80B16A3C  38 00 00 0A */	li r0, 0xa
/* 80B16A40  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80B16A44  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80B16A48  60 00 00 01 */	ori r0, r0, 1
/* 80B16A4C  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 80B16A50  7F C3 F3 78 */	mr r3, r30
/* 80B16A54  38 80 00 00 */	li r4, 0
/* 80B16A58  38 A0 00 00 */	li r5, 0
/* 80B16A5C  4B 50 47 40 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
lbl_80B16A60:
/* 80B16A60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B16A64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B16A68  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B16A6C  28 00 00 00 */	cmplwi r0, 0
/* 80B16A70  41 82 00 DC */	beq lbl_80B16B4C
/* 80B16A74  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80B16A78  28 00 00 01 */	cmplwi r0, 1
/* 80B16A7C  40 82 00 D0 */	bne lbl_80B16B4C
/* 80B16A80  3B A3 09 58 */	addi r29, r3, 0x958
/* 80B16A84  7F A3 EB 78 */	mr r3, r29
/* 80B16A88  38 80 00 06 */	li r4, 6
/* 80B16A8C  4B 51 DE 8C */	b onDungeonItem__12dSv_memBit_cFi
/* 80B16A90  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B16A94  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80B16A98  28 04 00 FF */	cmplwi r4, 0xff
/* 80B16A9C  41 82 00 0C */	beq lbl_80B16AA8
/* 80B16AA0  7F A3 EB 78 */	mr r3, r29
/* 80B16AA4  4B 51 DC FC */	b onTbox__12dSv_memBit_cFi
lbl_80B16AA8:
/* 80B16AA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B16AAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B16AB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80B16AB4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B16AB8  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100006D@ha */
/* 80B16ABC  38 84 00 6D */	addi r4, r4, 0x006D /* 0x0100006D@l */
/* 80B16AC0  4B 79 89 DC */	b subBgmStart__8Z2SeqMgrFUl
/* 80B16AC4  3C 60 80 B2 */	lis r3, lit_5290@ha
/* 80B16AC8  38 83 E2 D0 */	addi r4, r3, lit_5290@l
/* 80B16ACC  80 64 00 00 */	lwz r3, 0(r4)
/* 80B16AD0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B16AD4  90 61 00 08 */	stw r3, 8(r1)
/* 80B16AD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B16ADC  80 04 00 08 */	lwz r0, 8(r4)
/* 80B16AE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B16AE4  38 00 00 03 */	li r0, 3
/* 80B16AE8  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B16AEC  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B16AF0  4B 84 B5 28 */	b __ptmf_test
/* 80B16AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B16AF8  41 82 00 14 */	beq lbl_80B16B0C
/* 80B16AFC  7F C3 F3 78 */	mr r3, r30
/* 80B16B00  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B16B04  4B 84 B5 80 */	b __ptmf_scall
/* 80B16B08  60 00 00 00 */	nop 
lbl_80B16B0C:
/* 80B16B0C  38 00 00 00 */	li r0, 0
/* 80B16B10  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B16B14  80 61 00 08 */	lwz r3, 8(r1)
/* 80B16B18  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B16B1C  90 7E 13 4C */	stw r3, 0x134c(r30)
/* 80B16B20  90 1E 13 50 */	stw r0, 0x1350(r30)
/* 80B16B24  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B16B28  90 1E 13 54 */	stw r0, 0x1354(r30)
/* 80B16B2C  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B16B30  4B 84 B4 E8 */	b __ptmf_test
/* 80B16B34  2C 03 00 00 */	cmpwi r3, 0
/* 80B16B38  41 82 00 14 */	beq lbl_80B16B4C
/* 80B16B3C  7F C3 F3 78 */	mr r3, r30
/* 80B16B40  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B16B44  4B 84 B5 40 */	b __ptmf_scall
/* 80B16B48  60 00 00 00 */	nop 
lbl_80B16B4C:
/* 80B16B4C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80B16B50  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80B16B54  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80B16B58  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80B16B5C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B16B60  4B 84 B6 C8 */	b _restgpr_29
/* 80B16B64  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B16B68  7C 08 03 A6 */	mtlr r0
/* 80B16B6C  38 21 00 50 */	addi r1, r1, 0x50
/* 80B16B70  4E 80 00 20 */	blr 
