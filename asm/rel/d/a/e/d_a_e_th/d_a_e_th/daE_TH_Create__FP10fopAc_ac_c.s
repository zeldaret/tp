lbl_807B36D0:
/* 807B36D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807B36D4  7C 08 02 A6 */	mflr r0
/* 807B36D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 807B36DC  39 61 00 40 */	addi r11, r1, 0x40
/* 807B36E0  4B BA EA E9 */	bl _savegpr_24
/* 807B36E4  7C 7E 1B 78 */	mr r30, r3
/* 807B36E8  3C 80 80 7B */	lis r4, lit_3906@ha /* 0x807B449C@ha */
/* 807B36EC  3B E4 44 9C */	addi r31, r4, lit_3906@l /* 0x807B449C@l */
/* 807B36F0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807B36F4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807B36F8  40 82 00 E0 */	bne lbl_807B37D8
/* 807B36FC  7F C0 F3 79 */	or. r0, r30, r30
/* 807B3700  41 82 00 CC */	beq lbl_807B37CC
/* 807B3704  7C 1D 03 78 */	mr r29, r0
/* 807B3708  4B 86 54 5D */	bl __ct__10fopAc_ac_cFv
/* 807B370C  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 807B3710  4B B0 D8 55 */	bl __ct__15Z2CreatureEnemyFv
/* 807B3714  38 7D 06 F4 */	addi r3, r29, 0x6f4
/* 807B3718  4B 8C 27 95 */	bl __ct__12dBgS_AcchCirFv
/* 807B371C  3B 1D 07 34 */	addi r24, r29, 0x734
/* 807B3720  7F 03 C3 78 */	mr r3, r24
/* 807B3724  4B 8C 29 7D */	bl __ct__9dBgS_AcchFv
/* 807B3728  3C 60 80 7B */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x807B4834@ha */
/* 807B372C  38 63 48 34 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x807B4834@l */
/* 807B3730  90 78 00 10 */	stw r3, 0x10(r24)
/* 807B3734  38 03 00 0C */	addi r0, r3, 0xc
/* 807B3738  90 18 00 14 */	stw r0, 0x14(r24)
/* 807B373C  38 03 00 18 */	addi r0, r3, 0x18
/* 807B3740  90 18 00 24 */	stw r0, 0x24(r24)
/* 807B3744  38 78 00 14 */	addi r3, r24, 0x14
/* 807B3748  4B 8C 57 21 */	bl SetObj__16dBgS_PolyPassChkFv
/* 807B374C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 807B3750  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 807B3754  90 1D 09 24 */	stw r0, 0x924(r29)
/* 807B3758  38 7D 09 28 */	addi r3, r29, 0x928
/* 807B375C  4B 8D 00 05 */	bl __ct__10dCcD_GSttsFv
/* 807B3760  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 807B3764  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 807B3768  90 7D 09 24 */	stw r3, 0x924(r29)
/* 807B376C  38 03 00 20 */	addi r0, r3, 0x20
/* 807B3770  90 1D 09 28 */	stw r0, 0x928(r29)
/* 807B3774  38 7D 09 48 */	addi r3, r29, 0x948
/* 807B3778  3C 80 80 7B */	lis r4, __ct__8dCcD_SphFv@ha /* 0x807B3D0C@ha */
/* 807B377C  38 84 3D 0C */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x807B3D0C@l */
/* 807B3780  3C A0 80 7B */	lis r5, __dt__8dCcD_SphFv@ha /* 0x807B3C40@ha */
/* 807B3784  38 A5 3C 40 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x807B3C40@l */
/* 807B3788  38 C0 01 38 */	li r6, 0x138
/* 807B378C  38 E0 00 03 */	li r7, 3
/* 807B3790  4B BA E5 D1 */	bl __construct_array
/* 807B3794  38 7D 0D 9C */	addi r3, r29, 0xd9c
/* 807B3798  3C 80 80 7B */	lis r4, __ct__7th_ke_sFv@ha /* 0x807B3BD4@ha */
/* 807B379C  38 84 3B D4 */	addi r4, r4, __ct__7th_ke_sFv@l /* 0x807B3BD4@l */
/* 807B37A0  3C A0 80 7B */	lis r5, __dt__7th_ke_sFv@ha /* 0x807B3B58@ha */
/* 807B37A4  38 A5 3B 58 */	addi r5, r5, __dt__7th_ke_sFv@l /* 0x807B3B58@l */
/* 807B37A8  38 C0 01 7C */	li r6, 0x17c
/* 807B37AC  38 E0 00 03 */	li r7, 3
/* 807B37B0  4B BA E5 B1 */	bl __construct_array
/* 807B37B4  3C 60 80 7B */	lis r3, __vt__18mDoExt_3DlineMat_c@ha /* 0x807B4820@ha */
/* 807B37B8  38 03 48 20 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l /* 0x807B4820@l */
/* 807B37BC  90 1D 12 10 */	stw r0, 0x1210(r29)
/* 807B37C0  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat0_c@ha /* 0x803A325C@ha */
/* 807B37C4  38 03 32 5C */	addi r0, r3, __vt__19mDoExt_3DlineMat0_c@l /* 0x803A325C@l */
/* 807B37C8  90 1D 12 10 */	stw r0, 0x1210(r29)
lbl_807B37CC:
/* 807B37CC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 807B37D0  60 00 00 08 */	ori r0, r0, 8
/* 807B37D4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_807B37D8:
/* 807B37D8  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 807B37DC  3C 80 80 7B */	lis r4, d_a_e_th__stringBase0@ha /* 0x807B4644@ha */
/* 807B37E0  38 84 46 44 */	addi r4, r4, d_a_e_th__stringBase0@l /* 0x807B4644@l */
/* 807B37E4  4B 87 96 D9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807B37E8  7C 7D 1B 78 */	mr r29, r3
/* 807B37EC  2C 1D 00 04 */	cmpwi r29, 4
/* 807B37F0  40 82 03 4C */	bne lbl_807B3B3C
/* 807B37F4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807B37F8  98 1E 05 B6 */	stb r0, 0x5b6(r30)
/* 807B37FC  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 807B3800  28 00 00 02 */	cmplwi r0, 2
/* 807B3804  40 82 00 3C */	bne lbl_807B3840
/* 807B3808  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B380C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B3810  38 63 09 58 */	addi r3, r3, 0x958
/* 807B3814  38 80 00 07 */	li r4, 7
/* 807B3818  4B 88 11 1D */	bl isDungeonItem__12dSv_memBit_cCFi
/* 807B381C  2C 03 00 00 */	cmpwi r3, 0
/* 807B3820  41 82 00 20 */	beq lbl_807B3840
/* 807B3824  38 60 00 42 */	li r3, 0x42
/* 807B3828  38 80 00 01 */	li r4, 1
/* 807B382C  4B 8E 46 B5 */	bl checkItemGet__FUci
/* 807B3830  2C 03 00 00 */	cmpwi r3, 0
/* 807B3834  41 82 00 0C */	beq lbl_807B3840
/* 807B3838  38 60 00 05 */	li r3, 5
/* 807B383C  48 00 03 04 */	b lbl_807B3B40
lbl_807B3840:
/* 807B3840  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807B3844  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 807B3848  98 1E 05 B7 */	stb r0, 0x5b7(r30)
/* 807B384C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807B3850  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 807B3854  98 1E 05 B8 */	stb r0, 0x5b8(r30)
/* 807B3858  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 807B385C  28 00 00 FF */	cmplwi r0, 0xff
/* 807B3860  40 82 00 0C */	bne lbl_807B386C
/* 807B3864  38 00 00 00 */	li r0, 0
/* 807B3868  98 1E 05 B6 */	stb r0, 0x5b6(r30)
lbl_807B386C:
/* 807B386C  88 1E 05 B7 */	lbz r0, 0x5b7(r30)
/* 807B3870  28 00 00 0F */	cmplwi r0, 0xf
/* 807B3874  40 82 00 0C */	bne lbl_807B3880
/* 807B3878  38 00 00 00 */	li r0, 0
/* 807B387C  98 1E 05 B7 */	stb r0, 0x5b7(r30)
lbl_807B3880:
/* 807B3880  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807B3884  54 00 46 3E */	srwi r0, r0, 0x18
/* 807B3888  98 1E 05 B9 */	stb r0, 0x5b9(r30)
/* 807B388C  7F C3 F3 78 */	mr r3, r30
/* 807B3890  3C 80 80 7B */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x807B3584@ha */
/* 807B3894  38 84 35 84 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x807B3584@l */
/* 807B3898  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 807B389C  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 807B38A0  4B 86 6C 11 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807B38A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807B38A8  40 82 00 0C */	bne lbl_807B38B4
/* 807B38AC  38 60 00 05 */	li r3, 5
/* 807B38B0  48 00 02 90 */	b lbl_807B3B40
lbl_807B38B4:
/* 807B38B4  3C 60 80 7B */	lis r3, data_807B4870@ha /* 0x807B4870@ha */
/* 807B38B8  8C 03 48 70 */	lbzu r0, data_807B4870@l(r3)  /* 0x807B4870@l */
/* 807B38BC  28 00 00 00 */	cmplwi r0, 0
/* 807B38C0  40 82 00 20 */	bne lbl_807B38E0
/* 807B38C4  38 00 00 01 */	li r0, 1
/* 807B38C8  98 1E 12 38 */	stb r0, 0x1238(r30)
/* 807B38CC  98 03 00 00 */	stb r0, 0(r3)
/* 807B38D0  38 00 FF FF */	li r0, -1
/* 807B38D4  3C 60 80 7B */	lis r3, l_HIO@ha /* 0x807B4880@ha */
/* 807B38D8  38 63 48 80 */	addi r3, r3, l_HIO@l /* 0x807B4880@l */
/* 807B38DC  98 03 00 04 */	stb r0, 4(r3)
lbl_807B38E0:
/* 807B38E0  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807B38E4  80 63 00 04 */	lwz r3, 4(r3)
/* 807B38E8  38 03 00 24 */	addi r0, r3, 0x24
/* 807B38EC  90 1E 05 04 */	stw r0, 0x504(r30)
/* 807B38F0  7F C3 F3 78 */	mr r3, r30
/* 807B38F4  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 807B38F8  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 807B38FC  FC 60 08 90 */	fmr f3, f1
/* 807B3900  4B 86 6C 29 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807B3904  7F C3 F3 78 */	mr r3, r30
/* 807B3908  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 807B390C  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 807B3910  FC 60 08 90 */	fmr f3, f1
/* 807B3914  4B 86 6C 25 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807B3918  38 00 00 00 */	li r0, 0
/* 807B391C  90 01 00 08 */	stw r0, 8(r1)
/* 807B3920  38 7E 07 34 */	addi r3, r30, 0x734
/* 807B3924  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807B3928  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 807B392C  7F C6 F3 78 */	mr r6, r30
/* 807B3930  38 E0 00 01 */	li r7, 1
/* 807B3934  39 1E 06 F4 */	addi r8, r30, 0x6f4
/* 807B3938  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 807B393C  39 40 00 00 */	li r10, 0
/* 807B3940  4B 8C 29 09 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807B3944  38 7E 06 F4 */	addi r3, r30, 0x6f4
/* 807B3948  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807B394C  C0 5F 01 50 */	lfs f2, 0x150(r31)
/* 807B3950  4B 8C 26 09 */	bl SetWall__12dBgS_AcchCirFff
/* 807B3954  38 00 01 2C */	li r0, 0x12c
/* 807B3958  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 807B395C  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 807B3960  38 7E 09 0C */	addi r3, r30, 0x90c
/* 807B3964  38 80 00 FA */	li r4, 0xfa
/* 807B3968  38 A0 00 00 */	li r5, 0
/* 807B396C  7F C6 F3 78 */	mr r6, r30
/* 807B3970  4B 8C FE F1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807B3974  3B 00 00 00 */	li r24, 0
/* 807B3978  3B 80 00 00 */	li r28, 0
/* 807B397C  3C 60 80 7B */	lis r3, cc_sph_src@ha /* 0x807B4754@ha */
/* 807B3980  3B 43 47 54 */	addi r26, r3, cc_sph_src@l /* 0x807B4754@l */
/* 807B3984  3B 7E 09 0C */	addi r27, r30, 0x90c
lbl_807B3988:
/* 807B3988  7F 3E E2 14 */	add r25, r30, r28
/* 807B398C  38 79 09 48 */	addi r3, r25, 0x948
/* 807B3990  7F 44 D3 78 */	mr r4, r26
/* 807B3994  4B 8D 10 A1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807B3998  93 79 09 8C */	stw r27, 0x98c(r25)
/* 807B399C  3B 18 00 01 */	addi r24, r24, 1
/* 807B39A0  2C 18 00 02 */	cmpwi r24, 2
/* 807B39A4  3B 9C 01 38 */	addi r28, r28, 0x138
/* 807B39A8  40 81 FF E0 */	ble lbl_807B3988
/* 807B39AC  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 807B39B0  4B AB 3F A5 */	bl cM_rndF__Ff
/* 807B39B4  FC 00 08 1E */	fctiwz f0, f1
/* 807B39B8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807B39BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B39C0  54 00 04 2E */	rlwinm r0, r0, 0, 0x10, 0x17
/* 807B39C4  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 807B39C8  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 807B39CC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807B39D0  38 BE 05 38 */	addi r5, r30, 0x538
/* 807B39D4  38 C0 00 03 */	li r6, 3
/* 807B39D8  38 E0 00 01 */	li r7, 1
/* 807B39DC  4B B0 D6 B9 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807B39E0  38 1E 05 E0 */	addi r0, r30, 0x5e0
/* 807B39E4  90 1E 0C F8 */	stw r0, 0xcf8(r30)
/* 807B39E8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807B39EC  7C 07 07 74 */	extsb r7, r0
/* 807B39F0  38 00 00 00 */	li r0, 0
/* 807B39F4  90 01 00 08 */	stw r0, 8(r1)
/* 807B39F8  38 60 02 E8 */	li r3, 0x2e8
/* 807B39FC  28 1E 00 00 */	cmplwi r30, 0
/* 807B3A00  41 82 00 0C */	beq lbl_807B3A0C
/* 807B3A04  80 9E 00 04 */	lwz r4, 4(r30)
/* 807B3A08  48 00 00 08 */	b lbl_807B3A10
lbl_807B3A0C:
/* 807B3A0C  38 80 FF FF */	li r4, -1
lbl_807B3A10:
/* 807B3A10  38 A0 00 00 */	li r5, 0
/* 807B3A14  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 807B3A18  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807B3A1C  39 20 00 00 */	li r9, 0
/* 807B3A20  39 40 FF FF */	li r10, -1
/* 807B3A24  4B 86 64 CD */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 807B3A28  90 7E 06 F0 */	stw r3, 0x6f0(r30)
/* 807B3A2C  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 807B3A30  28 00 00 02 */	cmplwi r0, 2
/* 807B3A34  40 82 00 60 */	bne lbl_807B3A94
/* 807B3A38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B3A3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B3A40  38 63 09 58 */	addi r3, r3, 0x958
/* 807B3A44  38 80 00 07 */	li r4, 7
/* 807B3A48  4B 88 0E ED */	bl isDungeonItem__12dSv_memBit_cCFi
/* 807B3A4C  2C 03 00 00 */	cmpwi r3, 0
/* 807B3A50  41 82 00 44 */	beq lbl_807B3A94
/* 807B3A54  38 00 00 19 */	li r0, 0x19
/* 807B3A58  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807B3A5C  38 00 00 03 */	li r0, 3
/* 807B3A60  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807B3A64  88 1E 06 8A */	lbz r0, 0x68a(r30)
/* 807B3A68  60 00 00 04 */	ori r0, r0, 4
/* 807B3A6C  98 1E 06 8A */	stb r0, 0x68a(r30)
/* 807B3A70  38 00 00 01 */	li r0, 1
/* 807B3A74  98 1E 0D 8E */	stb r0, 0xd8e(r30)
/* 807B3A78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B3A7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B3A80  38 80 00 6A */	li r4, 0x6a
/* 807B3A84  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807B3A88  7C 05 07 74 */	extsb r5, r0
/* 807B3A8C  4B 88 18 25 */	bl offSwitch__10dSv_info_cFii
/* 807B3A90  48 00 00 9C */	b lbl_807B3B2C
lbl_807B3A94:
/* 807B3A94  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 807B3A98  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 807B3A9C  28 00 00 00 */	cmplwi r0, 0
/* 807B3AA0  41 82 00 50 */	beq lbl_807B3AF0
/* 807B3AA4  38 00 00 00 */	li r0, 0
/* 807B3AA8  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807B3AAC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807B3AB0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807B3AB4  80 63 00 00 */	lwz r3, 0(r3)
/* 807B3AB8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807B3ABC  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000061@ha */
/* 807B3AC0  38 84 00 61 */	addi r4, r4, 0x0061 /* 0x01000061@l */
/* 807B3AC4  4B AF B9 D9 */	bl subBgmStart__8Z2SeqMgrFUl
/* 807B3AC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B3ACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B3AD0  38 80 00 6A */	li r4, 0x6a
/* 807B3AD4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807B3AD8  7C 05 07 74 */	extsb r5, r0
/* 807B3ADC  4B 88 17 25 */	bl onSwitch__10dSv_info_cFii
/* 807B3AE0  38 60 00 01 */	li r3, 1
/* 807B3AE4  38 80 FF FF */	li r4, -1
/* 807B3AE8  4B 87 9F B5 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 807B3AEC  48 00 00 34 */	b lbl_807B3B20
lbl_807B3AF0:
/* 807B3AF0  38 00 00 16 */	li r0, 0x16
/* 807B3AF4  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807B3AF8  38 00 00 01 */	li r0, 1
/* 807B3AFC  98 1E 0D 8E */	stb r0, 0xd8e(r30)
/* 807B3B00  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 807B3B04  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 807B3B08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B3B0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B3B10  38 80 00 6A */	li r4, 0x6a
/* 807B3B14  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807B3B18  7C 05 07 74 */	extsb r5, r0
/* 807B3B1C  4B 88 17 95 */	bl offSwitch__10dSv_info_cFii
lbl_807B3B20:
/* 807B3B20  38 00 80 00 */	li r0, -32768
/* 807B3B24  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807B3B28  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_807B3B2C:
/* 807B3B2C  38 00 00 3C */	li r0, 0x3c
/* 807B3B30  98 1E 05 46 */	stb r0, 0x546(r30)
/* 807B3B34  7F C3 F3 78 */	mr r3, r30
/* 807B3B38  4B FF F4 D5 */	bl daE_TH_Execute__FP10e_th_class
lbl_807B3B3C:
/* 807B3B3C  7F A3 EB 78 */	mr r3, r29
lbl_807B3B40:
/* 807B3B40  39 61 00 40 */	addi r11, r1, 0x40
/* 807B3B44  4B BA E6 D1 */	bl _restgpr_24
/* 807B3B48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807B3B4C  7C 08 03 A6 */	mtlr r0
/* 807B3B50  38 21 00 40 */	addi r1, r1, 0x40
/* 807B3B54  4E 80 00 20 */	blr 
