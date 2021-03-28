lbl_807E6860:
/* 807E6860  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807E6864  7C 08 02 A6 */	mflr r0
/* 807E6868  90 01 00 34 */	stw r0, 0x34(r1)
/* 807E686C  39 61 00 30 */	addi r11, r1, 0x30
/* 807E6870  4B B7 B9 5C */	b _savegpr_25
/* 807E6874  7C 7D 1B 78 */	mr r29, r3
/* 807E6878  3C 80 80 7E */	lis r4, lit_3802@ha
/* 807E687C  3B E4 73 00 */	addi r31, r4, lit_3802@l
/* 807E6880  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807E6884  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807E6888  40 82 01 3C */	bne lbl_807E69C4
/* 807E688C  7F A0 EB 79 */	or. r0, r29, r29
/* 807E6890  41 82 01 28 */	beq lbl_807E69B8
/* 807E6894  7C 1E 03 78 */	mr r30, r0
/* 807E6898  4B 83 22 CC */	b __ct__10fopAc_ac_cFv
/* 807E689C  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E68A0  4B AD A6 C4 */	b __ct__15Z2CreatureEnemyFv
/* 807E68A4  38 7E 06 94 */	addi r3, r30, 0x694
/* 807E68A8  4B 88 F6 04 */	b __ct__12dBgS_AcchCirFv
/* 807E68AC  3B 5E 06 D4 */	addi r26, r30, 0x6d4
/* 807E68B0  7F 43 D3 78 */	mr r3, r26
/* 807E68B4  4B 88 F7 EC */	b __ct__9dBgS_AcchFv
/* 807E68B8  3C 60 80 7E */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 807E68BC  38 63 75 70 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 807E68C0  90 7A 00 10 */	stw r3, 0x10(r26)
/* 807E68C4  38 03 00 0C */	addi r0, r3, 0xc
/* 807E68C8  90 1A 00 14 */	stw r0, 0x14(r26)
/* 807E68CC  38 03 00 18 */	addi r0, r3, 0x18
/* 807E68D0  90 1A 00 24 */	stw r0, 0x24(r26)
/* 807E68D4  38 7A 00 14 */	addi r3, r26, 0x14
/* 807E68D8  4B 89 25 90 */	b SetObj__16dBgS_PolyPassChkFv
/* 807E68DC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 807E68E0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 807E68E4  90 1E 08 C4 */	stw r0, 0x8c4(r30)
/* 807E68E8  38 7E 08 C8 */	addi r3, r30, 0x8c8
/* 807E68EC  4B 89 CE 74 */	b __ct__10dCcD_GSttsFv
/* 807E68F0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 807E68F4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 807E68F8  90 7E 08 C4 */	stw r3, 0x8c4(r30)
/* 807E68FC  38 03 00 20 */	addi r0, r3, 0x20
/* 807E6900  90 1E 08 C8 */	stw r0, 0x8c8(r30)
/* 807E6904  3B 3E 08 E8 */	addi r25, r30, 0x8e8
/* 807E6908  7F 23 CB 78 */	mr r3, r25
/* 807E690C  4B 89 D1 1C */	b __ct__12dCcD_GObjInfFv
/* 807E6910  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807E6914  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807E6918  90 19 01 20 */	stw r0, 0x120(r25)
/* 807E691C  3C 60 80 7E */	lis r3, __vt__8cM3dGAab@ha
/* 807E6920  38 03 75 64 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807E6924  90 19 01 1C */	stw r0, 0x11c(r25)
/* 807E6928  3C 60 80 7E */	lis r3, __vt__8cM3dGSph@ha
/* 807E692C  38 03 75 58 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807E6930  90 19 01 34 */	stw r0, 0x134(r25)
/* 807E6934  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807E6938  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 807E693C  90 79 01 20 */	stw r3, 0x120(r25)
/* 807E6940  3B 83 00 58 */	addi r28, r3, 0x58
/* 807E6944  93 99 01 34 */	stw r28, 0x134(r25)
/* 807E6948  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807E694C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807E6950  90 79 00 3C */	stw r3, 0x3c(r25)
/* 807E6954  3B 63 00 2C */	addi r27, r3, 0x2c
/* 807E6958  93 79 01 20 */	stw r27, 0x120(r25)
/* 807E695C  3B 43 00 84 */	addi r26, r3, 0x84
/* 807E6960  93 59 01 34 */	stw r26, 0x134(r25)
/* 807E6964  3B 3E 0A 20 */	addi r25, r30, 0xa20
/* 807E6968  7F 23 CB 78 */	mr r3, r25
/* 807E696C  4B 89 D0 BC */	b __ct__12dCcD_GObjInfFv
/* 807E6970  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807E6974  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807E6978  90 19 01 20 */	stw r0, 0x120(r25)
/* 807E697C  3C 60 80 7E */	lis r3, __vt__8cM3dGAab@ha
/* 807E6980  38 03 75 64 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807E6984  90 19 01 1C */	stw r0, 0x11c(r25)
/* 807E6988  3C 60 80 7E */	lis r3, __vt__8cM3dGSph@ha
/* 807E698C  38 03 75 58 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807E6990  90 19 01 34 */	stw r0, 0x134(r25)
/* 807E6994  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807E6998  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 807E699C  90 19 01 20 */	stw r0, 0x120(r25)
/* 807E69A0  93 99 01 34 */	stw r28, 0x134(r25)
/* 807E69A4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807E69A8  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 807E69AC  90 19 00 3C */	stw r0, 0x3c(r25)
/* 807E69B0  93 79 01 20 */	stw r27, 0x120(r25)
/* 807E69B4  93 59 01 34 */	stw r26, 0x134(r25)
lbl_807E69B8:
/* 807E69B8  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 807E69BC  60 00 00 08 */	ori r0, r0, 8
/* 807E69C0  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_807E69C4:
/* 807E69C4  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 807E69C8  3C 80 80 7E */	lis r4, stringBase0@ha
/* 807E69CC  38 84 74 04 */	addi r4, r4, stringBase0@l
/* 807E69D0  4B 84 64 EC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807E69D4  7C 7E 1B 78 */	mr r30, r3
/* 807E69D8  2C 1E 00 04 */	cmpwi r30, 4
/* 807E69DC  40 82 02 18 */	bne lbl_807E6BF4
/* 807E69E0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807E69E4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 807E69E8  98 1D 06 92 */	stb r0, 0x692(r29)
/* 807E69EC  88 9D 06 92 */	lbz r4, 0x692(r29)
/* 807E69F0  28 04 00 FF */	cmplwi r4, 0xff
/* 807E69F4  41 82 00 28 */	beq lbl_807E6A1C
/* 807E69F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E69FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E6A00  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807E6A04  7C 05 07 74 */	extsb r5, r0
/* 807E6A08  4B 84 E9 58 */	b isSwitch__10dSv_info_cCFii
/* 807E6A0C  2C 03 00 00 */	cmpwi r3, 0
/* 807E6A10  41 82 00 0C */	beq lbl_807E6A1C
/* 807E6A14  38 60 00 05 */	li r3, 5
/* 807E6A18  48 00 01 E0 */	b lbl_807E6BF8
lbl_807E6A1C:
/* 807E6A1C  7F A3 EB 78 */	mr r3, r29
/* 807E6A20  3C 80 80 7E */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 807E6A24  38 84 68 40 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 807E6A28  38 A0 1B 60 */	li r5, 0x1b60
/* 807E6A2C  4B 83 3A 84 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807E6A30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E6A34  40 82 00 0C */	bne lbl_807E6A40
/* 807E6A38  38 60 00 05 */	li r3, 5
/* 807E6A3C  48 00 01 BC */	b lbl_807E6BF8
lbl_807E6A40:
/* 807E6A40  3C 60 80 7E */	lis r3, data_807E75B8@ha
/* 807E6A44  8C 03 75 B8 */	lbzu r0, data_807E75B8@l(r3)
/* 807E6A48  28 00 00 00 */	cmplwi r0, 0
/* 807E6A4C  40 82 00 20 */	bne lbl_807E6A6C
/* 807E6A50  38 00 00 01 */	li r0, 1
/* 807E6A54  98 03 00 00 */	stb r0, 0(r3)
/* 807E6A58  98 1D 0B 7C */	stb r0, 0xb7c(r29)
/* 807E6A5C  38 00 FF FF */	li r0, -1
/* 807E6A60  3C 60 80 7E */	lis r3, l_HIO@ha
/* 807E6A64  38 63 75 C8 */	addi r3, r3, l_HIO@l
/* 807E6A68  98 03 00 04 */	stb r0, 4(r3)
lbl_807E6A6C:
/* 807E6A6C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807E6A70  98 1D 06 91 */	stb r0, 0x691(r29)
/* 807E6A74  88 1D 06 91 */	lbz r0, 0x691(r29)
/* 807E6A78  28 00 00 FF */	cmplwi r0, 0xff
/* 807E6A7C  40 82 00 0C */	bne lbl_807E6A88
/* 807E6A80  38 00 00 00 */	li r0, 0
/* 807E6A84  98 1D 06 91 */	stb r0, 0x691(r29)
lbl_807E6A88:
/* 807E6A88  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807E6A8C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 807E6A90  28 00 00 01 */	cmplwi r0, 1
/* 807E6A94  40 82 00 10 */	bne lbl_807E6AA4
/* 807E6A98  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807E6A9C  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807E6AA0  48 00 00 0C */	b lbl_807E6AAC
lbl_807E6AA4:
/* 807E6AA4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 807E6AA8  D0 1D 06 78 */	stfs f0, 0x678(r29)
lbl_807E6AAC:
/* 807E6AAC  38 00 00 04 */	li r0, 4
/* 807E6AB0  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 807E6AB4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807E6AB8  80 63 00 04 */	lwz r3, 4(r3)
/* 807E6ABC  38 03 00 24 */	addi r0, r3, 0x24
/* 807E6AC0  90 1D 05 04 */	stw r0, 0x504(r29)
/* 807E6AC4  7F A3 EB 78 */	mr r3, r29
/* 807E6AC8  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 807E6ACC  FC 40 08 90 */	fmr f2, f1
/* 807E6AD0  FC 60 08 90 */	fmr f3, f1
/* 807E6AD4  4B 83 3A 54 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807E6AD8  7F A3 EB 78 */	mr r3, r29
/* 807E6ADC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 807E6AE0  FC 40 08 90 */	fmr f2, f1
/* 807E6AE4  FC 60 08 90 */	fmr f3, f1
/* 807E6AE8  4B 83 3A 50 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807E6AEC  38 00 00 00 */	li r0, 0
/* 807E6AF0  90 01 00 08 */	stw r0, 8(r1)
/* 807E6AF4  38 7D 06 D4 */	addi r3, r29, 0x6d4
/* 807E6AF8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807E6AFC  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 807E6B00  7F A6 EB 78 */	mr r6, r29
/* 807E6B04  38 E0 00 01 */	li r7, 1
/* 807E6B08  39 1D 06 94 */	addi r8, r29, 0x694
/* 807E6B0C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 807E6B10  39 40 00 00 */	li r10, 0
/* 807E6B14  4B 88 F7 34 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807E6B18  38 7D 06 94 */	addi r3, r29, 0x694
/* 807E6B1C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E6B20  FC 40 08 90 */	fmr f2, f1
/* 807E6B24  4B 88 F4 34 */	b SetWall__12dBgS_AcchCirFff
/* 807E6B28  38 00 00 0A */	li r0, 0xa
/* 807E6B2C  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 807E6B30  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 807E6B34  38 7D 08 AC */	addi r3, r29, 0x8ac
/* 807E6B38  38 80 00 64 */	li r4, 0x64
/* 807E6B3C  38 A0 00 00 */	li r5, 0
/* 807E6B40  7F A6 EB 78 */	mr r6, r29
/* 807E6B44  4B 89 CD 1C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807E6B48  38 7D 08 E8 */	addi r3, r29, 0x8e8
/* 807E6B4C  3C 80 80 7E */	lis r4, data_807E7448@ha
/* 807E6B50  38 84 74 48 */	addi r4, r4, data_807E7448@l
/* 807E6B54  4B 89 DE E0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807E6B58  38 1D 08 AC */	addi r0, r29, 0x8ac
/* 807E6B5C  90 1D 09 2C */	stw r0, 0x92c(r29)
/* 807E6B60  38 7D 0A 20 */	addi r3, r29, 0xa20
/* 807E6B64  3C 80 80 7E */	lis r4, data_807E7488@ha
/* 807E6B68  38 84 74 88 */	addi r4, r4, data_807E7488@l
/* 807E6B6C  4B 89 DE C8 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807E6B70  38 1D 08 AC */	addi r0, r29, 0x8ac
/* 807E6B74  90 1D 0A 64 */	stw r0, 0xa64(r29)
/* 807E6B78  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807E6B7C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807E6B80  38 BD 05 38 */	addi r5, r29, 0x538
/* 807E6B84  38 C0 00 03 */	li r6, 3
/* 807E6B88  38 E0 00 01 */	li r7, 1
/* 807E6B8C  4B AD A5 08 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807E6B90  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807E6B94  3C 80 80 7E */	lis r4, stringBase0@ha
/* 807E6B98  38 84 74 04 */	addi r4, r4, stringBase0@l
/* 807E6B9C  38 84 00 05 */	addi r4, r4, 5
/* 807E6BA0  4B AD AF F0 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 807E6BA4  38 1D 05 B8 */	addi r0, r29, 0x5b8
/* 807E6BA8  90 1D 0B 60 */	stw r0, 0xb60(r29)
/* 807E6BAC  38 00 00 01 */	li r0, 1
/* 807E6BB0  98 1D 0B 76 */	stb r0, 0xb76(r29)
/* 807E6BB4  7F A3 EB 78 */	mr r3, r29
/* 807E6BB8  38 80 00 00 */	li r4, 0
/* 807E6BBC  4B FF D3 D5 */	bl setActionMode__8daE_WS_cFi
/* 807E6BC0  7F A3 EB 78 */	mr r3, r29
/* 807E6BC4  4B FF F1 15 */	bl checkInitialWall__8daE_WS_cFv
/* 807E6BC8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807E6BCC  D0 1D 06 5C */	stfs f0, 0x65c(r29)
/* 807E6BD0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807E6BD4  D0 1D 06 60 */	stfs f0, 0x660(r29)
/* 807E6BD8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807E6BDC  D0 1D 06 64 */	stfs f0, 0x664(r29)
/* 807E6BE0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E6BE4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807E6BE8  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 807E6BEC  7F A3 EB 78 */	mr r3, r29
/* 807E6BF0  4B FF EE 4D */	bl mtx_set__8daE_WS_cFv
lbl_807E6BF4:
/* 807E6BF4  7F C3 F3 78 */	mr r3, r30
lbl_807E6BF8:
/* 807E6BF8  39 61 00 30 */	addi r11, r1, 0x30
/* 807E6BFC  4B B7 B6 1C */	b _restgpr_25
/* 807E6C00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807E6C04  7C 08 03 A6 */	mtlr r0
/* 807E6C08  38 21 00 30 */	addi r1, r1, 0x30
/* 807E6C0C  4E 80 00 20 */	blr 
