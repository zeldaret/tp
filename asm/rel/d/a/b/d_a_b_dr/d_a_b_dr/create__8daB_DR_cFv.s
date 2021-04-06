lbl_805C5974:
/* 805C5974  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805C5978  7C 08 02 A6 */	mflr r0
/* 805C597C  90 01 00 74 */	stw r0, 0x74(r1)
/* 805C5980  39 61 00 70 */	addi r11, r1, 0x70
/* 805C5984  4B D9 C8 45 */	bl _savegpr_24
/* 805C5988  7C 7F 1B 78 */	mr r31, r3
/* 805C598C  3C 80 80 5C */	lis r4, cNullVec__6Z2Calc@ha /* 0x805C7248@ha */
/* 805C5990  3B 84 72 48 */	addi r28, r4, cNullVec__6Z2Calc@l /* 0x805C7248@l */
/* 805C5994  3C 80 80 5C */	lis r4, lit_3800@ha /* 0x805C6C74@ha */
/* 805C5998  3B C4 6C 74 */	addi r30, r4, lit_3800@l /* 0x805C6C74@l */
/* 805C599C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805C59A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805C59A4  40 82 00 1C */	bne lbl_805C59C0
/* 805C59A8  28 1F 00 00 */	cmplwi r31, 0
/* 805C59AC  41 82 00 08 */	beq lbl_805C59B4
/* 805C59B0  48 00 09 01 */	bl __ct__8daB_DR_cFv
lbl_805C59B4:
/* 805C59B4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805C59B8  60 00 00 08 */	ori r0, r0, 8
/* 805C59BC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805C59C0:
/* 805C59C0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 805C59C4  3C 80 80 5C */	lis r4, d_a_b_dr__stringBase0@ha /* 0x805C7240@ha */
/* 805C59C8  38 84 72 40 */	addi r4, r4, d_a_b_dr__stringBase0@l /* 0x805C7240@l */
/* 805C59CC  4B A6 74 F1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805C59D0  7C 7D 1B 78 */	mr r29, r3
/* 805C59D4  2C 1D 00 04 */	cmpwi r29, 4
/* 805C59D8  40 82 08 BC */	bne lbl_805C6294
/* 805C59DC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805C59E0  98 1F 07 EA */	stb r0, 0x7ea(r31)
/* 805C59E4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805C59E8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 805C59EC  98 1F 07 EC */	stb r0, 0x7ec(r31)
/* 805C59F0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805C59F4  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 805C59F8  98 1F 07 ED */	stb r0, 0x7ed(r31)
/* 805C59FC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805C5A00  54 00 46 3E */	srwi r0, r0, 0x18
/* 805C5A04  98 1F 07 EE */	stb r0, 0x7ee(r31)
/* 805C5A08  88 1F 07 EA */	lbz r0, 0x7ea(r31)
/* 805C5A0C  28 00 00 FF */	cmplwi r0, 0xff
/* 805C5A10  40 82 00 0C */	bne lbl_805C5A1C
/* 805C5A14  38 00 00 00 */	li r0, 0
/* 805C5A18  98 1F 07 EA */	stb r0, 0x7ea(r31)
lbl_805C5A1C:
/* 805C5A1C  88 1F 07 EA */	lbz r0, 0x7ea(r31)
/* 805C5A20  2C 00 00 14 */	cmpwi r0, 0x14
/* 805C5A24  40 80 00 10 */	bge lbl_805C5A34
/* 805C5A28  2C 00 00 0A */	cmpwi r0, 0xa
/* 805C5A2C  41 82 00 34 */	beq lbl_805C5A60
/* 805C5A30  48 00 01 B4 */	b lbl_805C5BE4
lbl_805C5A34:
/* 805C5A34  2C 00 00 16 */	cmpwi r0, 0x16
/* 805C5A38  40 80 01 AC */	bge lbl_805C5BE4
/* 805C5A3C  88 1F 07 EC */	lbz r0, 0x7ec(r31)
/* 805C5A40  98 1F 07 EB */	stb r0, 0x7eb(r31)
/* 805C5A44  88 1F 07 EB */	lbz r0, 0x7eb(r31)
/* 805C5A48  28 00 00 05 */	cmplwi r0, 5
/* 805C5A4C  40 81 00 0C */	ble lbl_805C5A58
/* 805C5A50  38 00 00 00 */	li r0, 0
/* 805C5A54  98 1F 07 EB */	stb r0, 0x7eb(r31)
lbl_805C5A58:
/* 805C5A58  38 00 00 FF */	li r0, 0xff
/* 805C5A5C  98 1F 07 EC */	stb r0, 0x7ec(r31)
lbl_805C5A60:
/* 805C5A60  38 60 00 00 */	li r3, 0
/* 805C5A64  98 7F 05 46 */	stb r3, 0x546(r31)
/* 805C5A68  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 805C5A6C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 805C5A70  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 805C5A74  98 7F 04 96 */	stb r3, 0x496(r31)
/* 805C5A78  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805C5A7C  54 00 00 3E */	slwi r0, r0, 0
/* 805C5A80  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 805C5A84  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C5A88  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805C5A8C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805C5A90  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 805C5A94  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 805C5A98  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 805C5A9C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 805C5AA0  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 805C5AA4  88 1F 07 EA */	lbz r0, 0x7ea(r31)
/* 805C5AA8  28 00 00 0A */	cmplwi r0, 0xa
/* 805C5AAC  40 82 00 40 */	bne lbl_805C5AEC
/* 805C5AB0  38 7F 0A 08 */	addi r3, r31, 0xa08
/* 805C5AB4  38 80 00 FF */	li r4, 0xff
/* 805C5AB8  38 A0 00 00 */	li r5, 0
/* 805C5ABC  7F E6 FB 78 */	mr r6, r31
/* 805C5AC0  4B AB DD A1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805C5AC4  38 7F 0F 28 */	addi r3, r31, 0xf28
/* 805C5AC8  38 9C 00 A4 */	addi r4, r28, 0xa4
/* 805C5ACC  4B AB EF 69 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805C5AD0  38 1F 0A 08 */	addi r0, r31, 0xa08
/* 805C5AD4  90 1F 0F 6C */	stw r0, 0xf6c(r31)
/* 805C5AD8  7F E3 FB 78 */	mr r3, r31
/* 805C5ADC  38 80 00 0E */	li r4, 0xe
/* 805C5AE0  38 A0 00 00 */	li r5, 0
/* 805C5AE4  4B FF 59 D1 */	bl setActionMode__8daB_DR_cFii
/* 805C5AE8  48 00 07 A4 */	b lbl_805C628C
lbl_805C5AEC:
/* 805C5AEC  41 82 00 34 */	beq lbl_805C5B20
/* 805C5AF0  7F E3 FB 78 */	mr r3, r31
/* 805C5AF4  3C 80 80 5C */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x805C5954@ha */
/* 805C5AF8  38 84 59 54 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x805C5954@l */
/* 805C5AFC  88 1F 07 EB */	lbz r0, 0x7eb(r31)
/* 805C5B00  54 00 10 3A */	slwi r0, r0, 2
/* 805C5B04  38 BC 05 84 */	addi r5, r28, 0x584
/* 805C5B08  7C A5 00 2E */	lwzx r5, r5, r0
/* 805C5B0C  4B A5 49 A5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805C5B10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C5B14  40 82 00 0C */	bne lbl_805C5B20
/* 805C5B18  38 60 00 05 */	li r3, 5
/* 805C5B1C  48 00 07 7C */	b lbl_805C6298
lbl_805C5B20:
/* 805C5B20  38 00 00 00 */	li r0, 0
/* 805C5B24  90 01 00 08 */	stw r0, 8(r1)
/* 805C5B28  38 7F 08 30 */	addi r3, r31, 0x830
/* 805C5B2C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805C5B30  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 805C5B34  7F E6 FB 78 */	mr r6, r31
/* 805C5B38  38 E0 00 01 */	li r7, 1
/* 805C5B3C  39 1F 07 F0 */	addi r8, r31, 0x7f0
/* 805C5B40  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 805C5B44  39 40 00 00 */	li r10, 0
/* 805C5B48  4B AB 07 01 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 805C5B4C  38 7F 07 F0 */	addi r3, r31, 0x7f0
/* 805C5B50  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805C5B54  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 805C5B58  4B AB 04 01 */	bl SetWall__12dBgS_AcchCirFff
/* 805C5B5C  38 7F 08 30 */	addi r3, r31, 0x830
/* 805C5B60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C5B64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C5B68  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805C5B6C  4B AB 0F 41 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805C5B70  C0 1E 04 4C */	lfs f0, 0x44c(r30)
/* 805C5B74  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805C5B78  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805C5B7C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805C5B80  38 BF 05 38 */	addi r5, r31, 0x538
/* 805C5B84  38 C0 00 03 */	li r6, 3
/* 805C5B88  38 E0 00 01 */	li r7, 1
/* 805C5B8C  4B CF B5 09 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 805C5B90  38 7F 0A 08 */	addi r3, r31, 0xa08
/* 805C5B94  38 80 00 19 */	li r4, 0x19
/* 805C5B98  38 A0 00 00 */	li r5, 0
/* 805C5B9C  7F E6 FB 78 */	mr r6, r31
/* 805C5BA0  4B AB DC C1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805C5BA4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805C5BA8  60 00 40 00 */	ori r0, r0, 0x4000
/* 805C5BAC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 805C5BB0  88 1F 07 EA */	lbz r0, 0x7ea(r31)
/* 805C5BB4  28 00 00 14 */	cmplwi r0, 0x14
/* 805C5BB8  40 82 00 18 */	bne lbl_805C5BD0
/* 805C5BBC  7F E3 FB 78 */	mr r3, r31
/* 805C5BC0  38 80 00 0F */	li r4, 0xf
/* 805C5BC4  38 A0 00 00 */	li r5, 0
/* 805C5BC8  4B FF 58 ED */	bl setActionMode__8daB_DR_cFii
/* 805C5BCC  48 00 06 C0 */	b lbl_805C628C
lbl_805C5BD0:
/* 805C5BD0  7F E3 FB 78 */	mr r3, r31
/* 805C5BD4  38 80 00 0F */	li r4, 0xf
/* 805C5BD8  38 A0 00 0A */	li r5, 0xa
/* 805C5BDC  4B FF 58 D9 */	bl setActionMode__8daB_DR_cFii
/* 805C5BE0  48 00 06 AC */	b lbl_805C628C
lbl_805C5BE4:
/* 805C5BE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C5BE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C5BEC  3B 43 09 58 */	addi r26, r3, 0x958
/* 805C5BF0  7F 43 D3 78 */	mr r3, r26
/* 805C5BF4  38 80 00 03 */	li r4, 3
/* 805C5BF8  4B A6 ED 3D */	bl isDungeonItem__12dSv_memBit_cCFi
/* 805C5BFC  2C 03 00 00 */	cmpwi r3, 0
/* 805C5C00  41 82 00 C4 */	beq lbl_805C5CC4
/* 805C5C04  C0 1E 05 B4 */	lfs f0, 0x5b4(r30)
/* 805C5C08  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C5C0C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C5C10  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805C5C14  C0 1E 05 B8 */	lfs f0, 0x5b8(r30)
/* 805C5C18  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805C5C1C  38 61 00 30 */	addi r3, r1, 0x30
/* 805C5C20  38 9F 04 E4 */	addi r4, r31, 0x4e4
/* 805C5C24  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805C5C28  7C 05 07 74 */	extsb r5, r0
/* 805C5C2C  38 C0 00 02 */	li r6, 2
/* 805C5C30  38 E0 00 00 */	li r7, 0
/* 805C5C34  39 00 00 FF */	li r8, 0xff
/* 805C5C38  4B A5 6D 25 */	bl fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc
/* 805C5C3C  7F 43 D3 78 */	mr r3, r26
/* 805C5C40  38 80 00 04 */	li r4, 4
/* 805C5C44  4B A6 EC F1 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 805C5C48  2C 03 00 00 */	cmpwi r3, 0
/* 805C5C4C  40 82 00 60 */	bne lbl_805C5CAC
/* 805C5C50  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805C5C54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805C5C58  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805C5C5C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805C5C60  38 00 00 00 */	li r0, 0
/* 805C5C64  B0 01 00 14 */	sth r0, 0x14(r1)
/* 805C5C68  B0 01 00 12 */	sth r0, 0x12(r1)
/* 805C5C6C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 805C5C70  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 805C5C74  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C5C78  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805C5C7C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805C5C80  C0 1E 05 C0 */	lfs f0, 0x5c0(r30)
/* 805C5C84  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C5C88  38 61 00 18 */	addi r3, r1, 0x18
/* 805C5C8C  38 80 00 22 */	li r4, 0x22
/* 805C5C90  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805C5C94  7C 05 07 74 */	extsb r5, r0
/* 805C5C98  38 C1 00 10 */	addi r6, r1, 0x10
/* 805C5C9C  38 E1 00 24 */	addi r7, r1, 0x24
/* 805C5CA0  FC 40 08 90 */	fmr f2, f1
/* 805C5CA4  39 00 FF FF */	li r8, -1
/* 805C5CA8  4B A5 64 2D */	bl fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
lbl_805C5CAC:
/* 805C5CAC  38 00 00 00 */	li r0, 0
/* 805C5CB0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805C5CB4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805C5CB8  98 03 12 CC */	stb r0, 0x12cc(r3)
/* 805C5CBC  38 60 00 05 */	li r3, 5
/* 805C5CC0  48 00 05 D8 */	b lbl_805C6298
lbl_805C5CC4:
/* 805C5CC4  7F E3 FB 78 */	mr r3, r31
/* 805C5CC8  3C 80 80 5C */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x805C5954@ha */
/* 805C5CCC  38 84 59 54 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x805C5954@l */
/* 805C5CD0  38 A0 68 E0 */	li r5, 0x68e0
/* 805C5CD4  4B A5 47 DD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805C5CD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C5CDC  40 82 00 0C */	bne lbl_805C5CE8
/* 805C5CE0  38 60 00 05 */	li r3, 5
/* 805C5CE4  48 00 05 B4 */	b lbl_805C6298
lbl_805C5CE8:
/* 805C5CE8  88 9F 07 EC */	lbz r4, 0x7ec(r31)
/* 805C5CEC  28 04 00 FF */	cmplwi r4, 0xff
/* 805C5CF0  41 82 00 18 */	beq lbl_805C5D08
/* 805C5CF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C5CF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C5CFC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805C5D00  7C 05 07 74 */	extsb r5, r0
/* 805C5D04  4B A6 F5 AD */	bl offSwitch__10dSv_info_cFii
lbl_805C5D08:
/* 805C5D08  88 9F 07 ED */	lbz r4, 0x7ed(r31)
/* 805C5D0C  28 04 00 FF */	cmplwi r4, 0xff
/* 805C5D10  41 82 00 18 */	beq lbl_805C5D28
/* 805C5D14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C5D18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C5D1C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805C5D20  7C 05 07 74 */	extsb r5, r0
/* 805C5D24  4B A6 F5 8D */	bl offSwitch__10dSv_info_cFii
lbl_805C5D28:
/* 805C5D28  88 9F 07 EE */	lbz r4, 0x7ee(r31)
/* 805C5D2C  28 04 00 FF */	cmplwi r4, 0xff
/* 805C5D30  41 82 00 18 */	beq lbl_805C5D48
/* 805C5D34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C5D38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C5D3C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805C5D40  7C 05 07 74 */	extsb r5, r0
/* 805C5D44  4B A6 F5 6D */	bl offSwitch__10dSv_info_cFii
lbl_805C5D48:
/* 805C5D48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C5D4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C5D50  38 63 09 78 */	addi r3, r3, 0x978
/* 805C5D54  38 80 00 16 */	li r4, 0x16
/* 805C5D58  4B A6 EE 69 */	bl offSwitch__12dSv_danBit_cFi
/* 805C5D5C  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 805C5D60  60 00 02 00 */	ori r0, r0, 0x200
/* 805C5D64  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 805C5D68  38 00 00 18 */	li r0, 0x18
/* 805C5D6C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 805C5D70  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 805C5D74  3C 60 80 5C */	lis r3, struct_805C78FC+0x1@ha /* 0x805C78FD@ha */
/* 805C5D78  8C 03 78 FD */	lbzu r0, struct_805C78FC+0x1@l(r3)  /* 0x805C78FD@l */
/* 805C5D7C  28 00 00 00 */	cmplwi r0, 0
/* 805C5D80  40 82 00 20 */	bne lbl_805C5DA0
/* 805C5D84  38 00 00 01 */	li r0, 1
/* 805C5D88  98 03 00 00 */	stb r0, 0(r3)
/* 805C5D8C  98 1F 28 10 */	stb r0, 0x2810(r31)
/* 805C5D90  38 00 FF FF */	li r0, -1
/* 805C5D94  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805C5D98  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805C5D9C  98 03 00 04 */	stb r0, 4(r3)
lbl_805C5DA0:
/* 805C5DA0  38 00 00 00 */	li r0, 0
/* 805C5DA4  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 805C5DA8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 805C5DAC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 805C5DB0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 805C5DB4  38 00 00 55 */	li r0, 0x55
/* 805C5DB8  98 1F 05 46 */	stb r0, 0x546(r31)
/* 805C5DBC  38 00 00 04 */	li r0, 4
/* 805C5DC0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 805C5DC4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805C5DC8  80 63 00 04 */	lwz r3, 4(r3)
/* 805C5DCC  38 03 00 24 */	addi r0, r3, 0x24
/* 805C5DD0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 805C5DD4  7F E3 FB 78 */	mr r3, r31
/* 805C5DD8  C0 3E 05 C4 */	lfs f1, 0x5c4(r30)
/* 805C5DDC  FC 40 08 90 */	fmr f2, f1
/* 805C5DE0  FC 60 08 90 */	fmr f3, f1
/* 805C5DE4  4B A5 47 45 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 805C5DE8  7F E3 FB 78 */	mr r3, r31
/* 805C5DEC  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 805C5DF0  FC 40 08 90 */	fmr f2, f1
/* 805C5DF4  FC 60 08 90 */	fmr f3, f1
/* 805C5DF8  4B A5 47 41 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 805C5DFC  38 00 00 00 */	li r0, 0
/* 805C5E00  90 01 00 08 */	stw r0, 8(r1)
/* 805C5E04  38 7F 08 30 */	addi r3, r31, 0x830
/* 805C5E08  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805C5E0C  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 805C5E10  7F E6 FB 78 */	mr r6, r31
/* 805C5E14  38 E0 00 01 */	li r7, 1
/* 805C5E18  39 1F 07 F0 */	addi r8, r31, 0x7f0
/* 805C5E1C  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 805C5E20  39 40 00 00 */	li r10, 0
/* 805C5E24  4B AB 04 25 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 805C5E28  38 7F 07 F0 */	addi r3, r31, 0x7f0
/* 805C5E2C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805C5E30  C0 5E 03 6C */	lfs f2, 0x36c(r30)
/* 805C5E34  4B AB 01 25 */	bl SetWall__12dBgS_AcchCirFff
/* 805C5E38  38 7F 08 30 */	addi r3, r31, 0x830
/* 805C5E3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C5E40  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C5E44  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805C5E48  4B AB 0C 65 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805C5E4C  38 7F 0A 08 */	addi r3, r31, 0xa08
/* 805C5E50  38 80 00 FF */	li r4, 0xff
/* 805C5E54  38 A0 00 00 */	li r5, 0
/* 805C5E58  7F E6 FB 78 */	mr r6, r31
/* 805C5E5C  4B AB DA 05 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805C5E60  38 7F 15 40 */	addi r3, r31, 0x1540
/* 805C5E64  38 9C 01 64 */	addi r4, r28, 0x164
/* 805C5E68  4B AB EA 4D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 805C5E6C  38 1F 0A 08 */	addi r0, r31, 0xa08
/* 805C5E70  90 1F 15 84 */	stw r0, 0x1584(r31)
/* 805C5E74  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 805C5E78  38 9C 00 20 */	addi r4, r28, 0x20
/* 805C5E7C  4B AB EA 39 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 805C5E80  38 1F 0A 08 */	addi r0, r31, 0xa08
/* 805C5E84  90 1F 0A 88 */	stw r0, 0xa88(r31)
/* 805C5E88  80 1F 0A 5C */	lwz r0, 0xa5c(r31)
/* 805C5E8C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805C5E90  90 1F 0A 5C */	stw r0, 0xa5c(r31)
/* 805C5E94  38 7F 10 60 */	addi r3, r31, 0x1060
/* 805C5E98  38 9C 00 E4 */	addi r4, r28, 0xe4
/* 805C5E9C  4B AB EB 99 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805C5EA0  38 1F 0A 08 */	addi r0, r31, 0xa08
/* 805C5EA4  90 1F 10 A4 */	stw r0, 0x10a4(r31)
/* 805C5EA8  38 7F 11 98 */	addi r3, r31, 0x1198
/* 805C5EAC  38 9C 00 E4 */	addi r4, r28, 0xe4
/* 805C5EB0  4B AB EB 85 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805C5EB4  38 1F 0A 08 */	addi r0, r31, 0xa08
/* 805C5EB8  90 1F 11 DC */	stw r0, 0x11dc(r31)
/* 805C5EBC  38 7F 12 D0 */	addi r3, r31, 0x12d0
/* 805C5EC0  38 9C 00 E4 */	addi r4, r28, 0xe4
/* 805C5EC4  4B AB EB 71 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805C5EC8  38 1F 0A 08 */	addi r0, r31, 0xa08
/* 805C5ECC  90 1F 13 14 */	stw r0, 0x1314(r31)
/* 805C5ED0  38 7F 14 08 */	addi r3, r31, 0x1408
/* 805C5ED4  38 9C 00 64 */	addi r4, r28, 0x64
/* 805C5ED8  4B AB EB 5D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805C5EDC  3B 5F 0A 08 */	addi r26, r31, 0xa08
/* 805C5EE0  93 5F 14 4C */	stw r26, 0x144c(r31)
/* 805C5EE4  3B 00 00 00 */	li r24, 0
/* 805C5EE8  3B 60 00 00 */	li r27, 0
lbl_805C5EEC:
/* 805C5EEC  7F 3F DA 14 */	add r25, r31, r27
/* 805C5EF0  38 79 21 74 */	addi r3, r25, 0x2174
/* 805C5EF4  38 9C 01 A8 */	addi r4, r28, 0x1a8
/* 805C5EF8  4B AB E9 BD */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 805C5EFC  93 59 21 B8 */	stw r26, 0x21b8(r25)
/* 805C5F00  3B 18 00 01 */	addi r24, r24, 1
/* 805C5F04  2C 18 00 05 */	cmpwi r24, 5
/* 805C5F08  3B 7B 01 3C */	addi r27, r27, 0x13c
/* 805C5F0C  41 80 FF E0 */	blt lbl_805C5EEC
/* 805C5F10  3B 00 00 00 */	li r24, 0
/* 805C5F14  3B 60 00 00 */	li r27, 0
/* 805C5F18  3B 5F 0A 08 */	addi r26, r31, 0xa08
lbl_805C5F1C:
/* 805C5F1C  7F 3F DA 14 */	add r25, r31, r27
/* 805C5F20  38 79 16 7C */	addi r3, r25, 0x167c
/* 805C5F24  38 9C 01 EC */	addi r4, r28, 0x1ec
/* 805C5F28  4B AB EB 0D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805C5F2C  93 59 16 C0 */	stw r26, 0x16c0(r25)
/* 805C5F30  3B 18 00 01 */	addi r24, r24, 1
/* 805C5F34  2C 18 00 09 */	cmpwi r24, 9
/* 805C5F38  3B 7B 01 38 */	addi r27, r27, 0x138
/* 805C5F3C  41 80 FF E0 */	blt lbl_805C5F1C
/* 805C5F40  3B 00 00 00 */	li r24, 0
/* 805C5F44  3B 60 00 00 */	li r27, 0
/* 805C5F48  3B 5F 0A 08 */	addi r26, r31, 0xa08
lbl_805C5F4C:
/* 805C5F4C  7F 3F DA 14 */	add r25, r31, r27
/* 805C5F50  38 79 0B 80 */	addi r3, r25, 0xb80
/* 805C5F54  38 9C 01 24 */	addi r4, r28, 0x124
/* 805C5F58  4B AB EA DD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805C5F5C  93 59 0B C4 */	stw r26, 0xbc4(r25)
/* 805C5F60  3B 18 00 01 */	addi r24, r24, 1
/* 805C5F64  2C 18 00 02 */	cmpwi r24, 2
/* 805C5F68  3B 7B 01 38 */	addi r27, r27, 0x138
/* 805C5F6C  41 80 FF E0 */	blt lbl_805C5F4C
/* 805C5F70  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805C5F74  D0 1F 07 84 */	stfs f0, 0x784(r31)
/* 805C5F78  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805C5F7C  D0 1F 07 88 */	stfs f0, 0x788(r31)
/* 805C5F80  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805C5F84  D0 1F 07 8C */	stfs f0, 0x78c(r31)
/* 805C5F88  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805C5F8C  D0 1F 07 90 */	stfs f0, 0x790(r31)
/* 805C5F90  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805C5F94  D0 1F 07 94 */	stfs f0, 0x794(r31)
/* 805C5F98  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805C5F9C  D0 1F 07 98 */	stfs f0, 0x798(r31)
/* 805C5FA0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805C5FA4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805C5FA8  38 BF 07 90 */	addi r5, r31, 0x790
/* 805C5FAC  38 DF 05 38 */	addi r6, r31, 0x538
/* 805C5FB0  38 E0 00 03 */	li r7, 3
/* 805C5FB4  39 00 00 01 */	li r8, 1
/* 805C5FB8  39 20 00 01 */	li r9, 1
/* 805C5FBC  4B CF B0 F9 */	bl init__15Z2CreatureEnemyFP3VecP3VecP3VecUcUcUc
/* 805C5FC0  38 7F 06 64 */	addi r3, r31, 0x664
/* 805C5FC4  38 9F 07 84 */	addi r4, r31, 0x784
/* 805C5FC8  38 BF 05 38 */	addi r5, r31, 0x538
/* 805C5FCC  38 C0 00 03 */	li r6, 3
/* 805C5FD0  38 E0 00 01 */	li r7, 1
/* 805C5FD4  4B CF B0 C1 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 805C5FD8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805C5FDC  D0 1F 07 A8 */	stfs f0, 0x7a8(r31)
/* 805C5FE0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805C5FE4  D0 1F 07 AC */	stfs f0, 0x7ac(r31)
/* 805C5FE8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805C5FEC  D0 1F 07 B0 */	stfs f0, 0x7b0(r31)
/* 805C5FF0  38 1F 05 C0 */	addi r0, r31, 0x5c0
/* 805C5FF4  90 1F 27 A8 */	stw r0, 0x27a8(r31)
/* 805C5FF8  38 00 00 0B */	li r0, 0xb
/* 805C5FFC  98 1F 27 BE */	stb r0, 0x27be(r31)
/* 805C6000  C0 3E 03 B4 */	lfs f1, 0x3b4(r30)
/* 805C6004  4B CA 19 89 */	bl cM_rndFX__Ff
/* 805C6008  C0 1E 03 B0 */	lfs f0, 0x3b0(r30)
/* 805C600C  EC 00 08 2A */	fadds f0, f0, f1
/* 805C6010  FC 00 00 1E */	fctiwz f0, f0
/* 805C6014  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 805C6018  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805C601C  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 805C6020  C0 1E 03 74 */	lfs f0, 0x374(r30)
/* 805C6024  D0 1F 07 24 */	stfs f0, 0x724(r31)
/* 805C6028  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 805C602C  C0 1E 03 7C */	lfs f0, 0x37c(r30)
/* 805C6030  EC 01 00 2A */	fadds f0, f1, f0
/* 805C6034  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805C6038  7F E3 FB 78 */	mr r3, r31
/* 805C603C  38 80 00 2F */	li r4, 0x2f
/* 805C6040  38 A0 00 02 */	li r5, 2
/* 805C6044  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805C6048  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C604C  4B FF 53 BD */	bl setBck__8daB_DR_cFiUcff
/* 805C6050  7F E3 FB 78 */	mr r3, r31
/* 805C6054  38 80 00 07 */	li r4, 7
/* 805C6058  38 A0 00 00 */	li r5, 0
/* 805C605C  4B FF 54 59 */	bl setActionMode__8daB_DR_cFii
/* 805C6060  C0 5E 03 7C */	lfs f2, 0x37c(r30)
/* 805C6064  C0 1F 08 C8 */	lfs f0, 0x8c8(r31)
/* 805C6068  EC 02 00 2A */	fadds f0, f2, f0
/* 805C606C  D0 1F 07 20 */	stfs f0, 0x720(r31)
/* 805C6070  C0 3E 03 68 */	lfs f1, 0x368(r30)
/* 805C6074  C0 1F 08 C8 */	lfs f0, 0x8c8(r31)
/* 805C6078  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C607C  40 82 00 10 */	bne lbl_805C608C
/* 805C6080  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805C6084  EC 02 00 2A */	fadds f0, f2, f0
/* 805C6088  D0 1F 07 20 */	stfs f0, 0x720(r31)
lbl_805C608C:
/* 805C608C  38 60 00 01 */	li r3, 1
/* 805C6090  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805C6094  7C 04 07 74 */	extsb r4, r0
/* 805C6098  4B A6 79 99 */	bl dComIfGs_isZoneSwitch__Fii
/* 805C609C  2C 03 00 00 */	cmpwi r3, 0
/* 805C60A0  41 82 00 14 */	beq lbl_805C60B4
/* 805C60A4  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 805C60A8  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 805C60AC  EC 01 00 2A */	fadds f0, f1, f0
/* 805C60B0  D0 1F 07 20 */	stfs f0, 0x720(r31)
lbl_805C60B4:
/* 805C60B4  38 60 00 02 */	li r3, 2
/* 805C60B8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805C60BC  7C 04 07 74 */	extsb r4, r0
/* 805C60C0  4B A6 79 71 */	bl dComIfGs_isZoneSwitch__Fii
/* 805C60C4  2C 03 00 00 */	cmpwi r3, 0
/* 805C60C8  41 82 00 64 */	beq lbl_805C612C
/* 805C60CC  C0 1E 03 74 */	lfs f0, 0x374(r30)
/* 805C60D0  D0 1F 07 24 */	stfs f0, 0x724(r31)
/* 805C60D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C60D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C60DC  38 80 00 10 */	li r4, 0x10
/* 805C60E0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805C60E4  7C 05 07 74 */	extsb r5, r0
/* 805C60E8  4B A6 F1 19 */	bl onSwitch__10dSv_info_cFii
/* 805C60EC  38 00 00 01 */	li r0, 1
/* 805C60F0  98 1F 07 EA */	stb r0, 0x7ea(r31)
/* 805C60F4  38 00 00 02 */	li r0, 2
/* 805C60F8  98 1F 07 D1 */	stb r0, 0x7d1(r31)
/* 805C60FC  38 00 00 03 */	li r0, 3
/* 805C6100  98 1F 07 D2 */	stb r0, 0x7d2(r31)
/* 805C6104  38 00 00 C8 */	li r0, 0xc8
/* 805C6108  B0 1F 07 50 */	sth r0, 0x750(r31)
/* 805C610C  7F E3 FB 78 */	mr r3, r31
/* 805C6110  38 80 00 01 */	li r4, 1
/* 805C6114  38 A0 00 00 */	li r5, 0
/* 805C6118  4B FF 53 9D */	bl setActionMode__8daB_DR_cFii
/* 805C611C  38 00 00 02 */	li r0, 2
/* 805C6120  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805C6124  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805C6128  98 03 12 CC */	stb r0, 0x12cc(r3)
lbl_805C612C:
/* 805C612C  88 1F 07 EA */	lbz r0, 0x7ea(r31)
/* 805C6130  28 00 00 00 */	cmplwi r0, 0
/* 805C6134  40 82 01 58 */	bne lbl_805C628C
/* 805C6138  7F E3 FB 78 */	mr r3, r31
/* 805C613C  4B FF E0 69 */	bl mtx_set__8daB_DR_cFv
/* 805C6140  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 805C6144  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 805C6148  28 00 00 00 */	cmplwi r0, 0
/* 805C614C  40 82 00 94 */	bne lbl_805C61E0
/* 805C6150  38 60 00 00 */	li r3, 0
/* 805C6154  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805C6158  7C 04 07 74 */	extsb r4, r0
/* 805C615C  4B A6 78 D5 */	bl dComIfGs_isZoneSwitch__Fii
/* 805C6160  2C 03 00 00 */	cmpwi r3, 0
/* 805C6164  40 82 00 7C */	bne lbl_805C61E0
/* 805C6168  38 00 00 FF */	li r0, 0xff
/* 805C616C  98 1F 07 EA */	stb r0, 0x7ea(r31)
/* 805C6170  38 00 00 0B */	li r0, 0xb
/* 805C6174  98 1F 07 D5 */	stb r0, 0x7d5(r31)
/* 805C6178  38 00 00 02 */	li r0, 2
/* 805C617C  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 805C6180  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805C6184  7C 07 07 74 */	extsb r7, r0
/* 805C6188  38 00 00 00 */	li r0, 0
/* 805C618C  90 01 00 08 */	stw r0, 8(r1)
/* 805C6190  38 60 02 05 */	li r3, 0x205
/* 805C6194  28 1F 00 00 */	cmplwi r31, 0
/* 805C6198  41 82 00 0C */	beq lbl_805C61A4
/* 805C619C  80 9F 00 04 */	lwz r4, 4(r31)
/* 805C61A0  48 00 00 08 */	b lbl_805C61A8
lbl_805C61A4:
/* 805C61A4  38 80 FF FF */	li r4, -1
lbl_805C61A8:
/* 805C61A8  38 A0 00 00 */	li r5, 0
/* 805C61AC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 805C61B0  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 805C61B4  39 20 00 00 */	li r9, 0
/* 805C61B8  39 40 FF FF */	li r10, -1
/* 805C61BC  4B A5 3D 35 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 805C61C0  90 7F 04 A4 */	stw r3, 0x4a4(r31)
/* 805C61C4  7F E3 FB 78 */	mr r3, r31
/* 805C61C8  38 80 00 00 */	li r4, 0
/* 805C61CC  4B FF 54 81 */	bl mStatusONOFF__8daB_DR_cFi
/* 805C61D0  38 00 00 00 */	li r0, 0
/* 805C61D4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805C61D8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805C61DC  98 03 12 CC */	stb r0, 0x12cc(r3)
lbl_805C61E0:
/* 805C61E0  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 805C61E4  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 805C61E8  28 00 00 00 */	cmplwi r0, 0
/* 805C61EC  40 82 00 1C */	bne lbl_805C6208
/* 805C61F0  38 60 00 00 */	li r3, 0
/* 805C61F4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805C61F8  7C 04 07 74 */	extsb r4, r0
/* 805C61FC  4B A6 78 35 */	bl dComIfGs_isZoneSwitch__Fii
/* 805C6200  2C 03 00 00 */	cmpwi r3, 0
/* 805C6204  41 82 00 88 */	beq lbl_805C628C
lbl_805C6208:
/* 805C6208  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805C620C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805C6210  80 63 00 00 */	lwz r3, 0(r3)
/* 805C6214  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805C6218  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100008F@ha */
/* 805C621C  38 84 00 8F */	addi r4, r4, 0x008F /* 0x0100008F@l */
/* 805C6220  38 A0 00 00 */	li r5, 0
/* 805C6224  38 C0 00 00 */	li r6, 0
/* 805C6228  4B CE 8D E9 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 805C622C  38 00 00 0C */	li r0, 0xc
/* 805C6230  98 1F 07 D5 */	stb r0, 0x7d5(r31)
/* 805C6234  38 00 00 00 */	li r0, 0
/* 805C6238  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 805C623C  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 805C6240  38 60 00 00 */	li r3, 0
/* 805C6244  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805C6248  7C 04 07 74 */	extsb r4, r0
/* 805C624C  4B A6 77 01 */	bl dComIfGs_onZoneSwitch__Fii
/* 805C6250  38 60 00 14 */	li r3, 0x14
/* 805C6254  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805C6258  7C 04 07 74 */	extsb r4, r0
/* 805C625C  4B A6 76 F1 */	bl dComIfGs_onZoneSwitch__Fii
/* 805C6260  38 60 00 01 */	li r3, 1
/* 805C6264  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805C6268  7C 04 07 74 */	extsb r4, r0
/* 805C626C  4B A6 77 C5 */	bl dComIfGs_isZoneSwitch__Fii
/* 805C6270  2C 03 00 00 */	cmpwi r3, 0
/* 805C6274  41 82 00 18 */	beq lbl_805C628C
/* 805C6278  38 00 00 01 */	li r0, 1
/* 805C627C  98 1F 07 D1 */	stb r0, 0x7d1(r31)
/* 805C6280  88 7F 07 D2 */	lbz r3, 0x7d2(r31)
/* 805C6284  38 03 00 01 */	addi r0, r3, 1
/* 805C6288  98 1F 07 D2 */	stb r0, 0x7d2(r31)
lbl_805C628C:
/* 805C628C  7F E3 FB 78 */	mr r3, r31
/* 805C6290  4B FF F2 F9 */	bl daB_DR_Execute__FP8daB_DR_c
lbl_805C6294:
/* 805C6294  7F A3 EB 78 */	mr r3, r29
lbl_805C6298:
/* 805C6298  39 61 00 70 */	addi r11, r1, 0x70
/* 805C629C  4B D9 BF 79 */	bl _restgpr_24
/* 805C62A0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805C62A4  7C 08 03 A6 */	mtlr r0
/* 805C62A8  38 21 00 70 */	addi r1, r1, 0x70
/* 805C62AC  4E 80 00 20 */	blr 
