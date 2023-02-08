lbl_807A586C:
/* 807A586C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807A5870  7C 08 02 A6 */	mflr r0
/* 807A5874  90 01 00 34 */	stw r0, 0x34(r1)
/* 807A5878  39 61 00 30 */	addi r11, r1, 0x30
/* 807A587C  4B BB C9 59 */	bl _savegpr_27
/* 807A5880  7C 7C 1B 78 */	mr r28, r3
/* 807A5884  3C 80 80 7A */	lis r4, lit_1109@ha /* 0x807A6DA0@ha */
/* 807A5888  3B A4 6D A0 */	addi r29, r4, lit_1109@l /* 0x807A6DA0@l */
/* 807A588C  3C 80 80 7A */	lis r4, cNullVec__6Z2Calc@ha /* 0x807A69EC@ha */
/* 807A5890  3B C4 69 EC */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x807A69EC@l */
/* 807A5894  3C 80 80 7A */	lis r4, lit_3903@ha /* 0x807A6824@ha */
/* 807A5898  3B E4 68 24 */	addi r31, r4, lit_3903@l /* 0x807A6824@l */
/* 807A589C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807A58A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807A58A4  40 82 00 1C */	bne lbl_807A58C0
/* 807A58A8  28 1C 00 00 */	cmplwi r28, 0
/* 807A58AC  41 82 00 08 */	beq lbl_807A58B4
/* 807A58B0  48 00 04 45 */	bl __ct__10e_st_classFv
lbl_807A58B4:
/* 807A58B4  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 807A58B8  60 00 00 08 */	ori r0, r0, 8
/* 807A58BC  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_807A58C0:
/* 807A58C0  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 807A58C4  3C 80 80 7A */	lis r4, d_a_e_st__stringBase0@ha /* 0x807A69E0@ha */
/* 807A58C8  38 84 69 E0 */	addi r4, r4, d_a_e_st__stringBase0@l /* 0x807A69E0@l */
/* 807A58CC  4B 88 75 F1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807A58D0  7C 7B 1B 78 */	mr r27, r3
/* 807A58D4  2C 1B 00 04 */	cmpwi r27, 4
/* 807A58D8  40 82 04 00 */	bne lbl_807A5CD8
/* 807A58DC  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 807A58E0  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 807A58E4  98 1C 05 B4 */	stb r0, 0x5b4(r28)
/* 807A58E8  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 807A58EC  28 00 00 0F */	cmplwi r0, 0xf
/* 807A58F0  40 82 00 0C */	bne lbl_807A58FC
/* 807A58F4  38 00 00 00 */	li r0, 0
/* 807A58F8  98 1C 05 B4 */	stb r0, 0x5b4(r28)
lbl_807A58FC:
/* 807A58FC  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 807A5900  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 807A5904  98 1C 05 B5 */	stb r0, 0x5b5(r28)
/* 807A5908  88 1C 05 B5 */	lbz r0, 0x5b5(r28)
/* 807A590C  28 00 00 0F */	cmplwi r0, 0xf
/* 807A5910  40 82 00 0C */	bne lbl_807A591C
/* 807A5914  38 00 00 00 */	li r0, 0
/* 807A5918  98 1C 05 B5 */	stb r0, 0x5b5(r28)
lbl_807A591C:
/* 807A591C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 807A5920  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 807A5924  98 1C 05 B6 */	stb r0, 0x5b6(r28)
/* 807A5928  88 1C 05 B6 */	lbz r0, 0x5b6(r28)
/* 807A592C  28 00 00 FF */	cmplwi r0, 0xff
/* 807A5930  40 82 00 0C */	bne lbl_807A593C
/* 807A5934  38 00 00 00 */	li r0, 0
/* 807A5938  98 1C 05 B6 */	stb r0, 0x5b6(r28)
lbl_807A593C:
/* 807A593C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 807A5940  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 807A5944  98 1C 05 B7 */	stb r0, 0x5b7(r28)
/* 807A5948  88 1C 05 B7 */	lbz r0, 0x5b7(r28)
/* 807A594C  28 00 00 FF */	cmplwi r0, 0xff
/* 807A5950  40 82 00 0C */	bne lbl_807A595C
/* 807A5954  38 00 00 00 */	li r0, 0
/* 807A5958  98 1C 05 B7 */	stb r0, 0x5b7(r28)
lbl_807A595C:
/* 807A595C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 807A5960  54 00 46 3E */	srwi r0, r0, 0x18
/* 807A5964  98 1C 05 B8 */	stb r0, 0x5b8(r28)
/* 807A5968  88 9C 05 B8 */	lbz r4, 0x5b8(r28)
/* 807A596C  28 04 00 FF */	cmplwi r4, 0xff
/* 807A5970  41 82 00 28 */	beq lbl_807A5998
/* 807A5974  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A5978  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A597C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807A5980  7C 05 07 74 */	extsb r5, r0
/* 807A5984  4B 88 F9 DD */	bl isSwitch__10dSv_info_cCFii
/* 807A5988  2C 03 00 00 */	cmpwi r3, 0
/* 807A598C  41 82 00 0C */	beq lbl_807A5998
/* 807A5990  38 60 00 05 */	li r3, 5
/* 807A5994  48 00 03 48 */	b lbl_807A5CDC
lbl_807A5998:
/* 807A5998  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 807A599C  28 00 00 00 */	cmplwi r0, 0
/* 807A59A0  40 82 00 28 */	bne lbl_807A59C8
/* 807A59A4  7F 83 E3 78 */	mr r3, r28
/* 807A59A8  4B FF FC 71 */	bl kabe_initial_pos_set__FP10e_st_class
/* 807A59AC  2C 03 00 00 */	cmpwi r3, 0
/* 807A59B0  40 82 00 0C */	bne lbl_807A59BC
/* 807A59B4  38 60 00 05 */	li r3, 5
/* 807A59B8  48 00 03 24 */	b lbl_807A5CDC
lbl_807A59BC:
/* 807A59BC  38 00 00 00 */	li r0, 0
/* 807A59C0  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 807A59C4  48 00 00 C0 */	b lbl_807A5A84
lbl_807A59C8:
/* 807A59C8  28 00 00 01 */	cmplwi r0, 1
/* 807A59CC  40 82 00 A8 */	bne lbl_807A5A74
/* 807A59D0  7F 83 E3 78 */	mr r3, r28
/* 807A59D4  4B FF FD B9 */	bl roof_initial_pos_set__FP10e_st_class
/* 807A59D8  2C 03 00 00 */	cmpwi r3, 0
/* 807A59DC  40 82 00 0C */	bne lbl_807A59E8
/* 807A59E0  38 60 00 05 */	li r3, 5
/* 807A59E4  48 00 02 F8 */	b lbl_807A5CDC
lbl_807A59E8:
/* 807A59E8  88 1C 05 B5 */	lbz r0, 0x5b5(r28)
/* 807A59EC  28 00 00 02 */	cmplwi r0, 2
/* 807A59F0  41 82 00 0C */	beq lbl_807A59FC
/* 807A59F4  28 00 00 04 */	cmplwi r0, 4
/* 807A59F8  40 82 00 38 */	bne lbl_807A5A30
lbl_807A59FC:
/* 807A59FC  38 00 00 0D */	li r0, 0xd
/* 807A5A00  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 807A5A04  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 807A5A08  88 1C 05 B6 */	lbz r0, 0x5b6(r28)
/* 807A5A0C  C8 3F 01 B0 */	lfd f1, 0x1b0(r31)
/* 807A5A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A5A14  3C 00 43 30 */	lis r0, 0x4330
/* 807A5A18  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A5A1C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 807A5A20  EC 00 08 28 */	fsubs f0, f0, f1
/* 807A5A24  EC 02 00 32 */	fmuls f0, f2, f0
/* 807A5A28  D0 1C 07 D8 */	stfs f0, 0x7d8(r28)
/* 807A5A2C  48 00 00 34 */	b lbl_807A5A60
lbl_807A5A30:
/* 807A5A30  38 00 00 0A */	li r0, 0xa
/* 807A5A34  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 807A5A38  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 807A5A3C  88 1C 05 B6 */	lbz r0, 0x5b6(r28)
/* 807A5A40  C8 3F 01 B0 */	lfd f1, 0x1b0(r31)
/* 807A5A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A5A48  3C 00 43 30 */	lis r0, 0x4330
/* 807A5A4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A5A50  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 807A5A54  EC 00 08 28 */	fsubs f0, f0, f1
/* 807A5A58  EC 02 00 32 */	fmuls f0, f2, f0
/* 807A5A5C  D0 1C 07 D8 */	stfs f0, 0x7d8(r28)
lbl_807A5A60:
/* 807A5A60  38 00 00 01 */	li r0, 1
/* 807A5A64  98 1C 07 20 */	stb r0, 0x720(r28)
/* 807A5A68  38 00 40 00 */	li r0, 0x4000
/* 807A5A6C  B0 1C 04 DC */	sth r0, 0x4dc(r28)
/* 807A5A70  48 00 00 14 */	b lbl_807A5A84
lbl_807A5A74:
/* 807A5A74  28 00 00 02 */	cmplwi r0, 2
/* 807A5A78  40 82 00 0C */	bne lbl_807A5A84
/* 807A5A7C  38 00 00 32 */	li r0, 0x32
/* 807A5A80  B0 1C 06 7E */	sth r0, 0x67e(r28)
lbl_807A5A84:
/* 807A5A84  38 00 00 00 */	li r0, 0
/* 807A5A88  90 1D 00 40 */	stw r0, 0x40(r29)
/* 807A5A8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A5A90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A5A94  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 807A5A98  3C 80 80 7A */	lis r4, d_a_e_st__stringBase0@ha /* 0x807A69E0@ha */
/* 807A5A9C  38 84 69 E0 */	addi r4, r4, d_a_e_st__stringBase0@l /* 0x807A69E0@l */
/* 807A5AA0  38 84 00 05 */	addi r4, r4, 5
/* 807A5AA4  4B BC 2E F1 */	bl strcmp
/* 807A5AA8  2C 03 00 00 */	cmpwi r3, 0
/* 807A5AAC  40 82 00 18 */	bne lbl_807A5AC4
/* 807A5AB0  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807A5AB4  2C 00 00 01 */	cmpwi r0, 1
/* 807A5AB8  40 82 00 0C */	bne lbl_807A5AC4
/* 807A5ABC  38 00 00 01 */	li r0, 1
/* 807A5AC0  90 1D 00 40 */	stw r0, 0x40(r29)
lbl_807A5AC4:
/* 807A5AC4  7F 83 E3 78 */	mr r3, r28
/* 807A5AC8  3C 80 80 7A */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x807A542C@ha */
/* 807A5ACC  38 84 54 2C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x807A542C@l */
/* 807A5AD0  38 A0 28 00 */	li r5, 0x2800
/* 807A5AD4  4B 87 49 DD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807A5AD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A5ADC  40 82 00 0C */	bne lbl_807A5AE8
/* 807A5AE0  38 60 00 05 */	li r3, 5
/* 807A5AE4  48 00 01 F8 */	b lbl_807A5CDC
lbl_807A5AE8:
/* 807A5AE8  88 1D 00 44 */	lbz r0, 0x44(r29)
/* 807A5AEC  28 00 00 00 */	cmplwi r0, 0
/* 807A5AF0  40 82 00 1C */	bne lbl_807A5B0C
/* 807A5AF4  38 00 00 01 */	li r0, 1
/* 807A5AF8  98 1C 10 64 */	stb r0, 0x1064(r28)
/* 807A5AFC  98 1D 00 44 */	stb r0, 0x44(r29)
/* 807A5B00  38 00 FF FF */	li r0, -1
/* 807A5B04  38 7D 00 54 */	addi r3, r29, 0x54
/* 807A5B08  98 03 00 04 */	stb r0, 4(r3)
lbl_807A5B0C:
/* 807A5B0C  38 00 00 04 */	li r0, 4
/* 807A5B10  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 807A5B14  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 807A5B18  80 63 00 04 */	lwz r3, 4(r3)
/* 807A5B1C  38 03 00 24 */	addi r0, r3, 0x24
/* 807A5B20  90 1C 05 04 */	stw r0, 0x504(r28)
/* 807A5B24  7F 83 E3 78 */	mr r3, r28
/* 807A5B28  C0 3F 01 54 */	lfs f1, 0x154(r31)
/* 807A5B2C  C0 5F 01 A8 */	lfs f2, 0x1a8(r31)
/* 807A5B30  FC 60 08 90 */	fmr f3, f1
/* 807A5B34  4B 87 49 F5 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807A5B38  7F 83 E3 78 */	mr r3, r28
/* 807A5B3C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 807A5B40  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 807A5B44  FC 60 08 90 */	fmr f3, f1
/* 807A5B48  4B 87 49 F1 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807A5B4C  88 1C 05 B7 */	lbz r0, 0x5b7(r28)
/* 807A5B50  28 00 00 00 */	cmplwi r0, 0
/* 807A5B54  40 82 00 10 */	bne lbl_807A5B64
/* 807A5B58  38 00 00 03 */	li r0, 3
/* 807A5B5C  98 1C 05 46 */	stb r0, 0x546(r28)
/* 807A5B60  48 00 00 0C */	b lbl_807A5B6C
lbl_807A5B64:
/* 807A5B64  38 00 00 04 */	li r0, 4
/* 807A5B68  98 1C 05 46 */	stb r0, 0x546(r28)
lbl_807A5B6C:
/* 807A5B6C  38 7C 0A 1C */	addi r3, r28, 0xa1c
/* 807A5B70  38 80 00 64 */	li r4, 0x64
/* 807A5B74  38 A0 00 00 */	li r5, 0
/* 807A5B78  7F 86 E3 78 */	mr r6, r28
/* 807A5B7C  4B 8D DC E5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807A5B80  38 7C 0A 5C */	addi r3, r28, 0xa5c
/* 807A5B84  38 9E 01 98 */	addi r4, r30, 0x198
/* 807A5B88  4B 8D EE AD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807A5B8C  38 1C 0A 1C */	addi r0, r28, 0xa1c
/* 807A5B90  90 1C 0A A0 */	stw r0, 0xaa0(r28)
/* 807A5B94  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 807A5B98  38 9E 01 D8 */	addi r4, r30, 0x1d8
/* 807A5B9C  4B 8D EE 99 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807A5BA0  38 1C 0A 1C */	addi r0, r28, 0xa1c
/* 807A5BA4  90 1C 0B DC */	stw r0, 0xbdc(r28)
/* 807A5BA8  38 7C 0C F8 */	addi r3, r28, 0xcf8
/* 807A5BAC  38 9E 02 5C */	addi r4, r30, 0x25c
/* 807A5BB0  4B 8D EE 85 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807A5BB4  38 1C 0A 1C */	addi r0, r28, 0xa1c
/* 807A5BB8  90 1C 0D 3C */	stw r0, 0xd3c(r28)
/* 807A5BBC  88 1C 07 20 */	lbz r0, 0x720(r28)
/* 807A5BC0  7C 00 07 75 */	extsb. r0, r0
/* 807A5BC4  41 82 00 24 */	beq lbl_807A5BE8
/* 807A5BC8  38 7C 0E 30 */	addi r3, r28, 0xe30
/* 807A5BCC  38 9E 02 18 */	addi r4, r30, 0x218
/* 807A5BD0  4B 8D EC E5 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 807A5BD4  38 1C 0A 1C */	addi r0, r28, 0xa1c
/* 807A5BD8  90 1C 0E 74 */	stw r0, 0xe74(r28)
/* 807A5BDC  80 1C 0E CC */	lwz r0, 0xecc(r28)
/* 807A5BE0  60 00 00 04 */	ori r0, r0, 4
/* 807A5BE4  90 1C 0E CC */	stw r0, 0xecc(r28)
lbl_807A5BE8:
/* 807A5BE8  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 807A5BEC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807A5BF0  38 BC 05 38 */	addi r5, r28, 0x538
/* 807A5BF4  38 C0 00 03 */	li r6, 3
/* 807A5BF8  38 E0 00 01 */	li r7, 1
/* 807A5BFC  4B B1 B4 99 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807A5C00  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 807A5C04  3C 80 80 7A */	lis r4, d_a_e_st__stringBase0@ha /* 0x807A69E0@ha */
/* 807A5C08  38 84 69 E0 */	addi r4, r4, d_a_e_st__stringBase0@l /* 0x807A69E0@l */
/* 807A5C0C  4B B1 BF 85 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 807A5C10  38 1C 05 D0 */	addi r0, r28, 0x5d0
/* 807A5C14  90 1C 0C D8 */	stw r0, 0xcd8(r28)
/* 807A5C18  38 00 00 07 */	li r0, 7
/* 807A5C1C  98 1C 0C EE */	stb r0, 0xcee(r28)
/* 807A5C20  38 00 00 64 */	li r0, 0x64
/* 807A5C24  B0 1C 06 84 */	sth r0, 0x684(r28)
/* 807A5C28  38 00 00 00 */	li r0, 0
/* 807A5C2C  90 1C 00 B0 */	stw r0, 0xb0(r28)
/* 807A5C30  90 01 00 08 */	stw r0, 8(r1)
/* 807A5C34  38 7C 08 40 */	addi r3, r28, 0x840
/* 807A5C38  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807A5C3C  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 807A5C40  7F 86 E3 78 */	mr r6, r28
/* 807A5C44  38 E0 00 01 */	li r7, 1
/* 807A5C48  39 1C 08 00 */	addi r8, r28, 0x800
/* 807A5C4C  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 807A5C50  39 40 00 00 */	li r10, 0
/* 807A5C54  4B 8D 05 F5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807A5C58  38 7C 08 00 */	addi r3, r28, 0x800
/* 807A5C5C  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 807A5C60  FC 40 08 90 */	fmr f2, f1
/* 807A5C64  4B 8D 02 F5 */	bl SetWall__12dBgS_AcchCirFff
/* 807A5C68  80 1D 00 40 */	lwz r0, 0x40(r29)
/* 807A5C6C  2C 00 00 00 */	cmpwi r0, 0
/* 807A5C70  41 82 00 14 */	beq lbl_807A5C84
/* 807A5C74  38 00 00 00 */	li r0, 0
/* 807A5C78  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 807A5C7C  B0 1C 05 60 */	sth r0, 0x560(r28)
/* 807A5C80  48 00 00 10 */	b lbl_807A5C90
lbl_807A5C84:
/* 807A5C84  38 00 00 50 */	li r0, 0x50
/* 807A5C88  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 807A5C8C  B0 1C 05 60 */	sth r0, 0x560(r28)
lbl_807A5C90:
/* 807A5C90  C0 3F 01 AC */	lfs f1, 0x1ac(r31)
/* 807A5C94  4B AC 1C C1 */	bl cM_rndF__Ff
/* 807A5C98  FC 00 08 1E */	fctiwz f0, f1
/* 807A5C9C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807A5CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A5CA4  B0 1C 06 7C */	sth r0, 0x67c(r28)
/* 807A5CA8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807A5CAC  D0 1C 07 24 */	stfs f0, 0x724(r28)
/* 807A5CB0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807A5CB4  D0 1C 06 B0 */	stfs f0, 0x6b0(r28)
/* 807A5CB8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807A5CBC  D0 1C 06 B4 */	stfs f0, 0x6b4(r28)
/* 807A5CC0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807A5CC4  D0 1C 06 B8 */	stfs f0, 0x6b8(r28)
/* 807A5CC8  7F 83 E3 78 */	mr r3, r28
/* 807A5CCC  4B FF ED 75 */	bl daE_ST_Execute__FP10e_st_class
/* 807A5CD0  7F 83 E3 78 */	mr r3, r28
/* 807A5CD4  4B FF ED 6D */	bl daE_ST_Execute__FP10e_st_class
lbl_807A5CD8:
/* 807A5CD8  7F 63 DB 78 */	mr r3, r27
lbl_807A5CDC:
/* 807A5CDC  39 61 00 30 */	addi r11, r1, 0x30
/* 807A5CE0  4B BB C5 41 */	bl _restgpr_27
/* 807A5CE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807A5CE8  7C 08 03 A6 */	mtlr r0
/* 807A5CEC  38 21 00 30 */	addi r1, r1, 0x30
/* 807A5CF0  4E 80 00 20 */	blr 
