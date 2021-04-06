lbl_806B88E0:
/* 806B88E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806B88E4  7C 08 02 A6 */	mflr r0
/* 806B88E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B88EC  39 61 00 20 */	addi r11, r1, 0x20
/* 806B88F0  4B CA 98 E9 */	bl _savegpr_28
/* 806B88F4  7C 7C 1B 78 */	mr r28, r3
/* 806B88F8  3C 80 80 6C */	lis r4, lit_1109@ha /* 0x806B91B0@ha */
/* 806B88FC  3B C4 91 B0 */	addi r30, r4, lit_1109@l /* 0x806B91B0@l */
/* 806B8900  3C 80 80 6C */	lis r4, lit_3662@ha /* 0x806B8F8C@ha */
/* 806B8904  3B E4 8F 8C */	addi r31, r4, lit_3662@l /* 0x806B8F8C@l */
/* 806B8908  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806B890C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806B8910  40 82 00 1C */	bne lbl_806B892C
/* 806B8914  28 1C 00 00 */	cmplwi r28, 0
/* 806B8918  41 82 00 08 */	beq lbl_806B8920
/* 806B891C  48 00 03 01 */	bl __ct__8daE_FB_cFv
lbl_806B8920:
/* 806B8920  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 806B8924  60 00 00 08 */	ori r0, r0, 8
/* 806B8928  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_806B892C:
/* 806B892C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 806B8930  98 1C 06 A0 */	stb r0, 0x6a0(r28)
/* 806B8934  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 806B8938  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 806B893C  98 1C 06 91 */	stb r0, 0x691(r28)
/* 806B8940  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 806B8944  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 806B8948  98 1C 06 92 */	stb r0, 0x692(r28)
/* 806B894C  88 1C 06 A0 */	lbz r0, 0x6a0(r28)
/* 806B8950  28 00 00 FF */	cmplwi r0, 0xff
/* 806B8954  40 82 00 0C */	bne lbl_806B8960
/* 806B8958  38 00 00 00 */	li r0, 0
/* 806B895C  98 1C 06 A0 */	stb r0, 0x6a0(r28)
lbl_806B8960:
/* 806B8960  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 806B8964  3C 80 80 6C */	lis r4, d_a_e_fb__stringBase0@ha /* 0x806B9028@ha */
/* 806B8968  38 84 90 28 */	addi r4, r4, d_a_e_fb__stringBase0@l /* 0x806B9028@l */
/* 806B896C  4B 97 45 51 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806B8970  7C 7D 1B 78 */	mr r29, r3
/* 806B8974  2C 1D 00 04 */	cmpwi r29, 4
/* 806B8978  40 82 02 88 */	bne lbl_806B8C00
/* 806B897C  88 1C 06 A0 */	lbz r0, 0x6a0(r28)
/* 806B8980  28 00 00 0A */	cmplwi r0, 0xa
/* 806B8984  41 82 00 0C */	beq lbl_806B8990
/* 806B8988  28 00 00 0B */	cmplwi r0, 0xb
/* 806B898C  40 82 00 68 */	bne lbl_806B89F4
lbl_806B8990:
/* 806B8990  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 806B8994  54 00 00 3E */	slwi r0, r0, 0
/* 806B8998  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 806B899C  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 806B89A0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806B89A4  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 806B89A8  38 00 00 00 */	li r0, 0
/* 806B89AC  98 1C 05 46 */	stb r0, 0x546(r28)
/* 806B89B0  98 1C 04 96 */	stb r0, 0x496(r28)
/* 806B89B4  38 7C 08 BC */	addi r3, r28, 0x8bc
/* 806B89B8  38 80 00 FF */	li r4, 0xff
/* 806B89BC  38 A0 00 00 */	li r5, 0
/* 806B89C0  7F 86 E3 78 */	mr r6, r28
/* 806B89C4  4B 9C AE 9D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806B89C8  38 7C 0B 68 */	addi r3, r28, 0xb68
/* 806B89CC  3C 80 80 6C */	lis r4, data_806B9074@ha /* 0x806B9074@ha */
/* 806B89D0  38 84 90 74 */	addi r4, r4, data_806B9074@l /* 0x806B9074@l */
/* 806B89D4  4B 9C C0 61 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806B89D8  38 1C 08 BC */	addi r0, r28, 0x8bc
/* 806B89DC  90 1C 0B AC */	stw r0, 0xbac(r28)
/* 806B89E0  7F 83 E3 78 */	mr r3, r28
/* 806B89E4  38 80 00 03 */	li r4, 3
/* 806B89E8  38 A0 00 00 */	li r5, 0
/* 806B89EC  4B FF DE A1 */	bl setActionMode__8daE_FB_cFii
/* 806B89F0  48 00 02 08 */	b lbl_806B8BF8
lbl_806B89F4:
/* 806B89F4  88 9C 06 91 */	lbz r4, 0x691(r28)
/* 806B89F8  28 04 00 FF */	cmplwi r4, 0xff
/* 806B89FC  41 82 00 28 */	beq lbl_806B8A24
/* 806B8A00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B8A04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B8A08  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 806B8A0C  7C 05 07 74 */	extsb r5, r0
/* 806B8A10  4B 97 C9 51 */	bl isSwitch__10dSv_info_cCFii
/* 806B8A14  2C 03 00 00 */	cmpwi r3, 0
/* 806B8A18  41 82 00 0C */	beq lbl_806B8A24
/* 806B8A1C  38 60 00 05 */	li r3, 5
/* 806B8A20  48 00 01 E4 */	b lbl_806B8C04
lbl_806B8A24:
/* 806B8A24  7F 83 E3 78 */	mr r3, r28
/* 806B8A28  3C 80 80 6C */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806B88C0@ha */
/* 806B8A2C  38 84 88 C0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806B88C0@l */
/* 806B8A30  38 A0 28 30 */	li r5, 0x2830
/* 806B8A34  4B 96 1A 7D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806B8A38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B8A3C  40 82 00 0C */	bne lbl_806B8A48
/* 806B8A40  38 60 00 05 */	li r3, 5
/* 806B8A44  48 00 01 C0 */	b lbl_806B8C04
lbl_806B8A48:
/* 806B8A48  88 1E 00 3D */	lbz r0, 0x3d(r30)
/* 806B8A4C  28 00 00 00 */	cmplwi r0, 0
/* 806B8A50  40 82 00 1C */	bne lbl_806B8A6C
/* 806B8A54  38 00 00 01 */	li r0, 1
/* 806B8A58  98 1E 00 3D */	stb r0, 0x3d(r30)
/* 806B8A5C  98 1C 0C E0 */	stb r0, 0xce0(r28)
/* 806B8A60  38 00 FF FF */	li r0, -1
/* 806B8A64  38 7E 00 4C */	addi r3, r30, 0x4c
/* 806B8A68  98 03 00 04 */	stb r0, 4(r3)
lbl_806B8A6C:
/* 806B8A6C  38 00 00 04 */	li r0, 4
/* 806B8A70  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 806B8A74  38 00 00 45 */	li r0, 0x45
/* 806B8A78  98 1C 05 46 */	stb r0, 0x546(r28)
/* 806B8A7C  88 1C 06 A0 */	lbz r0, 0x6a0(r28)
/* 806B8A80  28 00 00 01 */	cmplwi r0, 1
/* 806B8A84  40 82 00 0C */	bne lbl_806B8A90
/* 806B8A88  38 00 00 1D */	li r0, 0x1d
/* 806B8A8C  98 1C 05 46 */	stb r0, 0x546(r28)
lbl_806B8A90:
/* 806B8A90  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806B8A94  80 63 00 04 */	lwz r3, 4(r3)
/* 806B8A98  38 03 00 24 */	addi r0, r3, 0x24
/* 806B8A9C  90 1C 05 04 */	stw r0, 0x504(r28)
/* 806B8AA0  7F 83 E3 78 */	mr r3, r28
/* 806B8AA4  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 806B8AA8  FC 40 08 90 */	fmr f2, f1
/* 806B8AAC  FC 60 08 90 */	fmr f3, f1
/* 806B8AB0  4B 96 1A 79 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806B8AB4  7F 83 E3 78 */	mr r3, r28
/* 806B8AB8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 806B8ABC  FC 40 08 90 */	fmr f2, f1
/* 806B8AC0  FC 60 08 90 */	fmr f3, f1
/* 806B8AC4  4B 96 1A 75 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806B8AC8  38 00 00 00 */	li r0, 0
/* 806B8ACC  90 01 00 08 */	stw r0, 8(r1)
/* 806B8AD0  38 7C 06 E4 */	addi r3, r28, 0x6e4
/* 806B8AD4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806B8AD8  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 806B8ADC  7F 86 E3 78 */	mr r6, r28
/* 806B8AE0  38 E0 00 01 */	li r7, 1
/* 806B8AE4  39 1C 06 A4 */	addi r8, r28, 0x6a4
/* 806B8AE8  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 806B8AEC  39 40 00 00 */	li r10, 0
/* 806B8AF0  4B 9B D7 59 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806B8AF4  A0 1C 05 8E */	lhz r0, 0x58e(r28)
/* 806B8AF8  60 00 02 00 */	ori r0, r0, 0x200
/* 806B8AFC  B0 1C 05 8E */	sth r0, 0x58e(r28)
/* 806B8B00  38 7C 06 A4 */	addi r3, r28, 0x6a4
/* 806B8B04  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806B8B08  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 806B8B0C  4B 9B D4 4D */	bl SetWall__12dBgS_AcchCirFff
/* 806B8B10  38 7C 06 E4 */	addi r3, r28, 0x6e4
/* 806B8B14  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B8B18  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B8B1C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806B8B20  4B 9B DF 8D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806B8B24  38 7C 08 BC */	addi r3, r28, 0x8bc
/* 806B8B28  38 80 00 FA */	li r4, 0xfa
/* 806B8B2C  38 A0 00 00 */	li r5, 0
/* 806B8B30  7F 86 E3 78 */	mr r6, r28
/* 806B8B34  4B 9C AD 2D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806B8B38  38 00 00 C8 */	li r0, 0xc8
/* 806B8B3C  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 806B8B40  B0 1C 05 60 */	sth r0, 0x560(r28)
/* 806B8B44  38 00 00 00 */	li r0, 0
/* 806B8B48  98 1E 00 74 */	stb r0, 0x74(r30)
/* 806B8B4C  38 7C 08 F8 */	addi r3, r28, 0x8f8
/* 806B8B50  3C 80 80 6C */	lis r4, data_806B9034@ha /* 0x806B9034@ha */
/* 806B8B54  38 84 90 34 */	addi r4, r4, data_806B9034@l /* 0x806B9034@l */
/* 806B8B58  4B 9C BE DD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806B8B5C  38 1C 08 BC */	addi r0, r28, 0x8bc
/* 806B8B60  90 1C 09 3C */	stw r0, 0x93c(r28)
/* 806B8B64  38 7C 0A 30 */	addi r3, r28, 0xa30
/* 806B8B68  3C 80 80 6C */	lis r4, data_806B9034@ha /* 0x806B9034@ha */
/* 806B8B6C  38 84 90 34 */	addi r4, r4, data_806B9034@l /* 0x806B9034@l */
/* 806B8B70  4B 9C BE C5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806B8B74  38 1C 08 BC */	addi r0, r28, 0x8bc
/* 806B8B78  90 1C 0A 74 */	stw r0, 0xa74(r28)
/* 806B8B7C  38 7C 0B 68 */	addi r3, r28, 0xb68
/* 806B8B80  3C 80 80 6C */	lis r4, data_806B9074@ha /* 0x806B9074@ha */
/* 806B8B84  38 84 90 74 */	addi r4, r4, data_806B9074@l /* 0x806B9074@l */
/* 806B8B88  4B 9C BE AD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806B8B8C  38 1C 08 BC */	addi r0, r28, 0x8bc
/* 806B8B90  90 1C 0B AC */	stw r0, 0xbac(r28)
/* 806B8B94  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 806B8B98  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806B8B9C  38 BC 05 38 */	addi r5, r28, 0x538
/* 806B8BA0  38 C0 00 03 */	li r6, 3
/* 806B8BA4  38 E0 00 01 */	li r7, 1
/* 806B8BA8  4B C0 84 ED */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806B8BAC  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 806B8BB0  3C 80 80 6C */	lis r4, d_a_e_fb__stringBase0@ha /* 0x806B9028@ha */
/* 806B8BB4  38 84 90 28 */	addi r4, r4, d_a_e_fb__stringBase0@l /* 0x806B9028@l */
/* 806B8BB8  38 84 00 05 */	addi r4, r4, 5
/* 806B8BBC  4B C0 8F D5 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 806B8BC0  38 1C 05 C4 */	addi r0, r28, 0x5c4
/* 806B8BC4  90 1C 0C A8 */	stw r0, 0xca8(r28)
/* 806B8BC8  38 00 00 06 */	li r0, 6
/* 806B8BCC  98 1C 0C BE */	stb r0, 0xcbe(r28)
/* 806B8BD0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806B8BD4  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 806B8BD8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806B8BDC  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 806B8BE0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806B8BE4  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 806B8BE8  7F 83 E3 78 */	mr r3, r28
/* 806B8BEC  38 80 00 00 */	li r4, 0
/* 806B8BF0  38 A0 00 00 */	li r5, 0
/* 806B8BF4  4B FF DC 99 */	bl setActionMode__8daE_FB_cFii
lbl_806B8BF8:
/* 806B8BF8  7F 83 E3 78 */	mr r3, r28
/* 806B8BFC  4B FF F9 A5 */	bl daE_FB_Execute__FP8daE_FB_c
lbl_806B8C00:
/* 806B8C00  7F A3 EB 78 */	mr r3, r29
lbl_806B8C04:
/* 806B8C04  39 61 00 20 */	addi r11, r1, 0x20
/* 806B8C08  4B CA 96 1D */	bl _restgpr_28
/* 806B8C0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B8C10  7C 08 03 A6 */	mtlr r0
/* 806B8C14  38 21 00 20 */	addi r1, r1, 0x20
/* 806B8C18  4E 80 00 20 */	blr 
