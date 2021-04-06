lbl_80827A30:
/* 80827A30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80827A34  7C 08 02 A6 */	mflr r0
/* 80827A38  90 01 00 34 */	stw r0, 0x34(r1)
/* 80827A3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80827A40  4B B3 A7 99 */	bl _savegpr_28
/* 80827A44  7C 7D 1B 78 */	mr r29, r3
/* 80827A48  3C 60 80 83 */	lis r3, cNullVec__6Z2Calc@ha /* 0x808289B4@ha */
/* 80827A4C  3B C3 89 B4 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x808289B4@l */
/* 80827A50  3C 60 80 83 */	lis r3, lit_3902@ha /* 0x80828850@ha */
/* 80827A54  3B E3 88 50 */	addi r31, r3, lit_3902@l /* 0x80828850@l */
/* 80827A58  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80827A5C  3C 80 80 83 */	lis r4, d_a_e_yr__stringBase0@ha /* 0x808289A8@ha */
/* 80827A60  38 84 89 A8 */	addi r4, r4, d_a_e_yr__stringBase0@l /* 0x808289A8@l */
/* 80827A64  4B 80 54 59 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80827A68  7C 7C 1B 78 */	mr r28, r3
/* 80827A6C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80827A70  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80827A74  40 82 00 20 */	bne lbl_80827A94
/* 80827A78  28 1D 00 00 */	cmplwi r29, 0
/* 80827A7C  41 82 00 0C */	beq lbl_80827A88
/* 80827A80  7F A3 EB 78 */	mr r3, r29
/* 80827A84  48 00 02 E1 */	bl __ct__10e_yr_classFv
lbl_80827A88:
/* 80827A88  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80827A8C  60 00 00 08 */	ori r0, r0, 8
/* 80827A90  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80827A94:
/* 80827A94  2C 1C 00 04 */	cmpwi r28, 4
/* 80827A98  40 82 02 B0 */	bne lbl_80827D48
/* 80827A9C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80827AA0  98 1D 06 64 */	stb r0, 0x664(r29)
/* 80827AA4  88 1D 06 64 */	lbz r0, 0x664(r29)
/* 80827AA8  98 1D 06 69 */	stb r0, 0x669(r29)
/* 80827AAC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80827AB0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80827AB4  98 1D 06 65 */	stb r0, 0x665(r29)
/* 80827AB8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80827ABC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80827AC0  98 1D 06 66 */	stb r0, 0x666(r29)
/* 80827AC4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80827AC8  54 00 46 3E */	srwi r0, r0, 0x18
/* 80827ACC  98 1D 06 67 */	stb r0, 0x667(r29)
/* 80827AD0  A8 1D 04 B8 */	lha r0, 0x4b8(r29)
/* 80827AD4  98 1D 06 68 */	stb r0, 0x668(r29)
/* 80827AD8  38 00 00 00 */	li r0, 0
/* 80827ADC  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 80827AE0  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80827AE4  88 9D 06 68 */	lbz r4, 0x668(r29)
/* 80827AE8  28 04 00 00 */	cmplwi r4, 0
/* 80827AEC  41 82 00 28 */	beq lbl_80827B14
/* 80827AF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80827AF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80827AF8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80827AFC  7C 05 07 74 */	extsb r5, r0
/* 80827B00  4B 80 D8 61 */	bl isSwitch__10dSv_info_cCFii
/* 80827B04  2C 03 00 00 */	cmpwi r3, 0
/* 80827B08  41 82 00 0C */	beq lbl_80827B14
/* 80827B0C  38 60 00 05 */	li r3, 5
/* 80827B10  48 00 02 3C */	b lbl_80827D4C
lbl_80827B14:
/* 80827B14  7F A3 EB 78 */	mr r3, r29
/* 80827B18  3C 80 80 82 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x808278F4@ha */
/* 80827B1C  38 84 78 F4 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x808278F4@l */
/* 80827B20  38 A0 23 40 */	li r5, 0x2340
/* 80827B24  4B 7F 29 8D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80827B28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80827B2C  40 82 00 0C */	bne lbl_80827B38
/* 80827B30  38 60 00 05 */	li r3, 5
/* 80827B34  48 00 02 18 */	b lbl_80827D4C
lbl_80827B38:
/* 80827B38  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80827B3C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80827B40  EC 01 00 2A */	fadds f0, f1, f0
/* 80827B44  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80827B48  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80827B4C  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 80827B50  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80827B54  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 80827B58  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80827B5C  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
/* 80827B60  88 7D 06 66 */	lbz r3, 0x666(r29)
/* 80827B64  28 03 00 FF */	cmplwi r3, 0xff
/* 80827B68  41 82 00 3C */	beq lbl_80827BA4
/* 80827B6C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80827B70  7C 04 07 74 */	extsb r4, r0
/* 80827B74  4B 82 9C 79 */	bl dPath_GetRoomPath__Fii
/* 80827B78  90 7D 06 EC */	stw r3, 0x6ec(r29)
/* 80827B7C  80 1D 06 EC */	lwz r0, 0x6ec(r29)
/* 80827B80  28 00 00 00 */	cmplwi r0, 0
/* 80827B84  40 82 00 0C */	bne lbl_80827B90
/* 80827B88  38 60 00 05 */	li r3, 5
/* 80827B8C  48 00 01 C0 */	b lbl_80827D4C
lbl_80827B90:
/* 80827B90  88 7D 06 66 */	lbz r3, 0x666(r29)
/* 80827B94  38 03 00 01 */	addi r0, r3, 1
/* 80827B98  98 1D 06 E9 */	stb r0, 0x6e9(r29)
/* 80827B9C  38 00 00 01 */	li r0, 1
/* 80827BA0  98 1D 06 EB */	stb r0, 0x6eb(r29)
lbl_80827BA4:
/* 80827BA4  88 7D 06 67 */	lbz r3, 0x667(r29)
/* 80827BA8  28 03 00 FF */	cmplwi r3, 0xff
/* 80827BAC  41 82 00 0C */	beq lbl_80827BB8
/* 80827BB0  38 03 00 01 */	addi r0, r3, 1
/* 80827BB4  98 1D 06 7E */	stb r0, 0x67e(r29)
lbl_80827BB8:
/* 80827BB8  88 1D 06 69 */	lbz r0, 0x669(r29)
/* 80827BBC  28 00 00 05 */	cmplwi r0, 5
/* 80827BC0  41 82 00 0C */	beq lbl_80827BCC
/* 80827BC4  28 00 00 06 */	cmplwi r0, 6
/* 80827BC8  40 82 00 10 */	bne lbl_80827BD8
lbl_80827BCC:
/* 80827BCC  38 00 00 01 */	li r0, 1
/* 80827BD0  98 1D 06 6B */	stb r0, 0x66b(r29)
/* 80827BD4  48 00 00 18 */	b lbl_80827BEC
lbl_80827BD8:
/* 80827BD8  88 1D 06 64 */	lbz r0, 0x664(r29)
/* 80827BDC  28 00 00 03 */	cmplwi r0, 3
/* 80827BE0  40 82 00 0C */	bne lbl_80827BEC
/* 80827BE4  38 00 00 03 */	li r0, 3
/* 80827BE8  98 1D 06 69 */	stb r0, 0x669(r29)
lbl_80827BEC:
/* 80827BEC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80827BF0  80 63 00 04 */	lwz r3, 4(r3)
/* 80827BF4  38 03 00 24 */	addi r0, r3, 0x24
/* 80827BF8  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80827BFC  7F A3 EB 78 */	mr r3, r29
/* 80827C00  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 80827C04  C0 5F 01 40 */	lfs f2, 0x140(r31)
/* 80827C08  FC 60 08 90 */	fmr f3, f1
/* 80827C0C  4B 7F 29 1D */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80827C10  7F A3 EB 78 */	mr r3, r29
/* 80827C14  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80827C18  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80827C1C  FC 60 08 90 */	fmr f3, f1
/* 80827C20  4B 7F 29 19 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80827C24  38 00 00 00 */	li r0, 0
/* 80827C28  90 01 00 08 */	stw r0, 8(r1)
/* 80827C2C  38 7D 07 4C */	addi r3, r29, 0x74c
/* 80827C30  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80827C34  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80827C38  7F A6 EB 78 */	mr r6, r29
/* 80827C3C  38 E0 00 01 */	li r7, 1
/* 80827C40  39 1D 07 0C */	addi r8, r29, 0x70c
/* 80827C44  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80827C48  39 40 00 00 */	li r10, 0
/* 80827C4C  4B 84 E5 FD */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80827C50  38 7D 07 0C */	addi r3, r29, 0x70c
/* 80827C54  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80827C58  FC 40 08 90 */	fmr f2, f1
/* 80827C5C  4B 84 E2 FD */	bl SetWall__12dBgS_AcchCirFff
/* 80827C60  38 00 00 50 */	li r0, 0x50
/* 80827C64  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80827C68  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 80827C6C  38 7D 09 2C */	addi r3, r29, 0x92c
/* 80827C70  38 80 00 64 */	li r4, 0x64
/* 80827C74  38 A0 00 FF */	li r5, 0xff
/* 80827C78  7F A6 EB 78 */	mr r6, r29
/* 80827C7C  4B 85 BB E5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80827C80  38 7D 09 68 */	addi r3, r29, 0x968
/* 80827C84  38 9E 02 1C */	addi r4, r30, 0x21c
/* 80827C88  4B 85 CD AD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80827C8C  38 7D 0A A0 */	addi r3, r29, 0xaa0
/* 80827C90  38 9E 02 5C */	addi r4, r30, 0x25c
/* 80827C94  4B 85 CD A1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80827C98  38 7D 0B D8 */	addi r3, r29, 0xbd8
/* 80827C9C  38 9E 02 9C */	addi r4, r30, 0x29c
/* 80827CA0  4B 85 CD 95 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80827CA4  38 7D 0D 10 */	addi r3, r29, 0xd10
/* 80827CA8  38 9E 02 DC */	addi r4, r30, 0x2dc
/* 80827CAC  4B 85 CD 89 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80827CB0  38 1D 09 2C */	addi r0, r29, 0x92c
/* 80827CB4  90 1D 09 AC */	stw r0, 0x9ac(r29)
/* 80827CB8  90 1D 0A E4 */	stw r0, 0xae4(r29)
/* 80827CBC  90 1D 0C 1C */	stw r0, 0xc1c(r29)
/* 80827CC0  90 1D 0D 54 */	stw r0, 0xd54(r29)
/* 80827CC4  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80827CC8  4B A3 FC 8D */	bl cM_rndF__Ff
/* 80827CCC  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80827CD0  EC 00 08 2A */	fadds f0, f0, f1
/* 80827CD4  FC 00 00 1E */	fctiwz f0, f0
/* 80827CD8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80827CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80827CE0  B0 1D 06 AA */	sth r0, 0x6aa(r29)
/* 80827CE4  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 80827CE8  4B A3 FC 6D */	bl cM_rndF__Ff
/* 80827CEC  FC 00 08 1E */	fctiwz f0, f1
/* 80827CF0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80827CF4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80827CF8  B0 1D 06 DE */	sth r0, 0x6de(r29)
/* 80827CFC  38 00 00 16 */	li r0, 0x16
/* 80827D00  98 1D 05 46 */	stb r0, 0x546(r29)
/* 80827D04  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 80827D08  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80827D0C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80827D10  38 C0 00 03 */	li r6, 3
/* 80827D14  38 E0 00 01 */	li r7, 1
/* 80827D18  4B A9 93 7D */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80827D1C  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 80827D20  3C 80 80 83 */	lis r4, d_a_e_yr__stringBase0@ha /* 0x808289A8@ha */
/* 80827D24  38 84 89 A8 */	addi r4, r4, d_a_e_yr__stringBase0@l /* 0x808289A8@l */
/* 80827D28  38 84 00 05 */	addi r4, r4, 5
/* 80827D2C  4B A9 9E 65 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80827D30  38 00 00 03 */	li r0, 3
/* 80827D34  98 1D 0E 66 */	stb r0, 0xe66(r29)
/* 80827D38  38 1D 05 C0 */	addi r0, r29, 0x5c0
/* 80827D3C  90 1D 0E 50 */	stw r0, 0xe50(r29)
/* 80827D40  7F A3 EB 78 */	mr r3, r29
/* 80827D44  4B FF ED B9 */	bl daE_Yr_Execute__FP10e_yr_class
lbl_80827D48:
/* 80827D48  7F 83 E3 78 */	mr r3, r28
lbl_80827D4C:
/* 80827D4C  39 61 00 30 */	addi r11, r1, 0x30
/* 80827D50  4B B3 A4 D5 */	bl _restgpr_28
/* 80827D54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80827D58  7C 08 03 A6 */	mtlr r0
/* 80827D5C  38 21 00 30 */	addi r1, r1, 0x30
/* 80827D60  4E 80 00 20 */	blr 
