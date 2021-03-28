lbl_80549724:
/* 80549724  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80549728  7C 08 02 A6 */	mflr r0
/* 8054972C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80549730  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80549734  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80549738  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8054973C  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 80549740  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 80549744  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 80549748  39 61 00 70 */	addi r11, r1, 0x70
/* 8054974C  4B E1 8A 7C */	b _savegpr_24
/* 80549750  7C 7E 1B 78 */	mr r30, r3
/* 80549754  3C 80 80 55 */	lis r4, lit_1109@ha
/* 80549758  3B E4 AF 80 */	addi r31, r4, lit_1109@l
/* 8054975C  3C 80 80 55 */	lis r4, lit_3905@ha
/* 80549760  3B 64 A9 64 */	addi r27, r4, lit_3905@l
/* 80549764  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80549768  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8054976C  40 82 00 28 */	bne lbl_80549794
/* 80549770  7F C0 F3 79 */	or. r0, r30, r30
/* 80549774  41 82 00 14 */	beq lbl_80549788
/* 80549778  7C 18 03 78 */	mr r24, r0
/* 8054977C  4B AC F3 E8 */	b __ct__10fopAc_ac_cFv
/* 80549780  38 78 05 C0 */	addi r3, r24, 0x5c0
/* 80549784  4B D0 07 7C */	b __ct__10dMsgFlow_cFv
lbl_80549788:
/* 80549788  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8054978C  60 00 00 08 */	ori r0, r0, 8
/* 80549790  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80549794:
/* 80549794  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80549798  3C 80 80 55 */	lis r4, stringBase0@ha
/* 8054979C  38 84 AC 70 */	addi r4, r4, stringBase0@l
/* 805497A0  4B AE 37 1C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805497A4  7C 7D 1B 78 */	mr r29, r3
/* 805497A8  2C 1D 00 04 */	cmpwi r29, 4
/* 805497AC  40 82 06 60 */	bne lbl_80549E0C
/* 805497B0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805497B4  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 805497B8  7F C3 F3 78 */	mr r3, r30
/* 805497BC  3C 80 80 55 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 805497C0  38 84 93 00 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 805497C4  38 A0 45 00 */	li r5, 0x4500
/* 805497C8  4B AD 0C E8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805497CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805497D0  40 82 00 0C */	bne lbl_805497DC
/* 805497D4  38 60 00 05 */	li r3, 5
/* 805497D8  48 00 06 38 */	b lbl_80549E10
lbl_805497DC:
/* 805497DC  88 1F 00 3D */	lbz r0, 0x3d(r31)
/* 805497E0  28 00 00 00 */	cmplwi r0, 0
/* 805497E4  40 82 00 1C */	bne lbl_80549800
/* 805497E8  38 00 00 01 */	li r0, 1
/* 805497EC  98 1E 07 F8 */	stb r0, 0x7f8(r30)
/* 805497F0  98 1F 00 3D */	stb r0, 0x3d(r31)
/* 805497F4  38 00 FF FF */	li r0, -1
/* 805497F8  38 7F 00 4C */	addi r3, r31, 0x4c
/* 805497FC  98 03 00 04 */	stb r0, 4(r3)
lbl_80549800:
/* 80549800  38 00 00 0A */	li r0, 0xa
/* 80549804  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80549808  38 00 00 00 */	li r0, 0
/* 8054980C  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 80549810  80 7E 06 24 */	lwz r3, 0x624(r30)
/* 80549814  80 63 00 04 */	lwz r3, 4(r3)
/* 80549818  38 63 00 24 */	addi r3, r3, 0x24
/* 8054981C  90 7E 05 04 */	stw r3, 0x504(r30)
/* 80549820  98 1F 00 88 */	stb r0, 0x88(r31)
/* 80549824  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80549828  28 00 00 01 */	cmplwi r0, 1
/* 8054982C  40 82 01 E4 */	bne lbl_80549A10
/* 80549830  38 00 00 01 */	li r0, 1
/* 80549834  98 1E 07 0C */	stb r0, 0x70c(r30)
/* 80549838  38 00 00 32 */	li r0, 0x32
/* 8054983C  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 80549840  C0 3B 00 70 */	lfs f1, 0x70(r27)
/* 80549844  4B D1 E1 10 */	b cM_rndF__Ff
/* 80549848  C0 1B 00 70 */	lfs f0, 0x70(r27)
/* 8054984C  EC 00 08 2A */	fadds f0, f0, f1
/* 80549850  FC 00 00 1E */	fctiwz f0, f0
/* 80549854  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80549858  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8054985C  B0 1E 07 46 */	sth r0, 0x746(r30)
/* 80549860  C0 1B 02 44 */	lfs f0, 0x244(r27)
/* 80549864  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80549868  C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 8054986C  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 80549870  C0 1B 02 48 */	lfs f0, 0x248(r27)
/* 80549874  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80549878  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8054987C  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80549880  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80549884  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80549888  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8054988C  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80549890  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80549894  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 80549898  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8054989C  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 805498A0  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 805498A4  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 805498A8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805498AC  98 1E 04 CE */	stb r0, 0x4ce(r30)
/* 805498B0  88 1E 04 E3 */	lbz r0, 0x4e3(r30)
/* 805498B4  98 1E 04 CF */	stb r0, 0x4cf(r30)
/* 805498B8  3B 40 60 00 */	li r26, 0x6000
/* 805498BC  3C 60 80 45 */	lis r3, struct_80450C9C+0x0@ha
/* 805498C0  88 03 0C 9C */	lbz r0, struct_80450C9C+0x0@l(r3)
/* 805498C4  28 00 00 00 */	cmplwi r0, 0
/* 805498C8  41 82 00 24 */	beq lbl_805498EC
/* 805498CC  7F C3 F3 78 */	mr r3, r30
/* 805498D0  38 80 00 20 */	li r4, 0x20
/* 805498D4  38 A0 00 02 */	li r5, 2
/* 805498D8  C0 5B 00 00 */	lfs f2, 0(r27)
/* 805498DC  4B FF 96 BD */	bl anm_init__FP15npc_henna_classifUcf
/* 805498E0  38 00 00 05 */	li r0, 5
/* 805498E4  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 805498E8  48 00 00 A0 */	b lbl_80549988
lbl_805498EC:
/* 805498EC  7F C3 F3 78 */	mr r3, r30
/* 805498F0  38 80 00 1A */	li r4, 0x1a
/* 805498F4  C0 3B 00 00 */	lfs f1, 0(r27)
/* 805498F8  38 A0 00 02 */	li r5, 2
/* 805498FC  FC 40 08 90 */	fmr f2, f1
/* 80549900  4B FF 96 99 */	bl anm_init__FP15npc_henna_classifUcf
/* 80549904  38 00 00 04 */	li r0, 4
/* 80549908  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 8054990C  3C 60 80 45 */	lis r3, struct_80450C98+0x1@ha
/* 80549910  8C 03 0C 99 */	lbzu r0, struct_80450C98+0x1@l(r3)
/* 80549914  28 00 00 00 */	cmplwi r0, 0
/* 80549918  41 82 00 70 */	beq lbl_80549988
/* 8054991C  38 00 00 00 */	li r0, 0
/* 80549920  98 03 00 00 */	stb r0, 0(r3)
/* 80549924  38 00 00 32 */	li r0, 0x32
/* 80549928  B0 1E 07 52 */	sth r0, 0x752(r30)
/* 8054992C  3B 40 80 00 */	li r26, -32768
/* 80549930  38 00 00 0A */	li r0, 0xa
/* 80549934  98 1E 07 0A */	stb r0, 0x70a(r30)
/* 80549938  38 00 00 02 */	li r0, 2
/* 8054993C  98 1E 07 0B */	stb r0, 0x70b(r30)
/* 80549940  3C 60 80 45 */	lis r3, data_80450CA0@ha
/* 80549944  88 03 0C A0 */	lbz r0, data_80450CA0@l(r3)
/* 80549948  28 00 00 00 */	cmplwi r0, 0
/* 8054994C  41 82 00 34 */	beq lbl_80549980
/* 80549950  7F C3 F3 78 */	mr r3, r30
/* 80549954  38 80 00 20 */	li r4, 0x20
/* 80549958  C0 3B 00 6C */	lfs f1, 0x6c(r27)
/* 8054995C  38 A0 00 02 */	li r5, 2
/* 80549960  C0 5B 00 00 */	lfs f2, 0(r27)
/* 80549964  4B FF 96 35 */	bl anm_init__FP15npc_henna_classifUcf
/* 80549968  38 00 00 05 */	li r0, 5
/* 8054996C  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80549970  38 00 00 00 */	li r0, 0
/* 80549974  3C 60 80 45 */	lis r3, data_80450CA0@ha
/* 80549978  98 03 0C A0 */	stb r0, data_80450CA0@l(r3)
/* 8054997C  48 00 00 0C */	b lbl_80549988
lbl_80549980:
/* 80549980  38 00 00 46 */	li r0, 0x46
/* 80549984  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
lbl_80549988:
/* 80549988  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054998C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80549990  3B 63 07 F0 */	addi r27, r3, 0x7f0
/* 80549994  7F 63 DB 78 */	mr r3, r27
/* 80549998  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8054999C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 805499A0  A0 84 03 9E */	lhz r4, 0x39e(r4)
/* 805499A4  4B AE B0 00 */	b offEventBit__11dSv_event_cFUs
/* 805499A8  7F 63 DB 78 */	mr r3, r27
/* 805499AC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 805499B0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 805499B4  A0 84 03 A0 */	lhz r4, 0x3a0(r4)
/* 805499B8  4B AE AF EC */	b offEventBit__11dSv_event_cFUs
/* 805499BC  B3 5E 04 DE */	sth r26, 0x4de(r30)
/* 805499C0  B3 5E 04 E6 */	sth r26, 0x4e6(r30)
/* 805499C4  B3 5E 06 18 */	sth r26, 0x618(r30)
/* 805499C8  7F 63 DB 78 */	mr r3, r27
/* 805499CC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F63F@ha */
/* 805499D0  38 84 F6 3F */	addi r4, r4, 0xF63F /* 0x0000F63F@l */
/* 805499D4  4B AE B0 30 */	b getEventReg__11dSv_event_cCFUs
/* 805499D8  98 7F 00 89 */	stb r3, 0x89(r31)
/* 805499DC  7F C3 F3 78 */	mr r3, r30
/* 805499E0  4B FF EE D9 */	bl daNpc_Henna_Execute__FP15npc_henna_class
/* 805499E4  38 60 01 37 */	li r3, 0x137
/* 805499E8  38 80 FF FF */	li r4, -1
/* 805499EC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805499F0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805499F4  7C 06 07 74 */	extsb r6, r0
/* 805499F8  38 E0 00 00 */	li r7, 0
/* 805499FC  39 00 00 00 */	li r8, 0
/* 80549A00  39 20 FF FF */	li r9, -1
/* 80549A04  4B AD 03 94 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80549A08  7F A3 EB 78 */	mr r3, r29
/* 80549A0C  48 00 04 04 */	b lbl_80549E10
lbl_80549A10:
/* 80549A10  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80549A14  3B 83 CA 54 */	addi r28, r3, g_env_light@l
/* 80549A18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80549A1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80549A20  3B 43 4E 00 */	addi r26, r3, 0x4e00
/* 80549A24  7F 43 D3 78 */	mr r3, r26
/* 80549A28  3C 80 80 55 */	lis r4, stringBase0@ha
/* 80549A2C  38 84 AC 70 */	addi r4, r4, stringBase0@l
/* 80549A30  38 84 00 06 */	addi r4, r4, 6
/* 80549A34  4B E1 EF 60 */	b strcmp
/* 80549A38  2C 03 00 00 */	cmpwi r3, 0
/* 80549A3C  40 82 02 28 */	bne lbl_80549C64
/* 80549A40  38 00 00 3C */	li r0, 0x3c
/* 80549A44  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 80549A48  38 00 00 64 */	li r0, 0x64
/* 80549A4C  B0 1E 07 52 */	sth r0, 0x752(r30)
/* 80549A50  38 00 00 01 */	li r0, 1
/* 80549A54  98 1F 00 88 */	stb r0, 0x88(r31)
/* 80549A58  88 1C 12 FE */	lbz r0, 0x12fe(r28)
/* 80549A5C  28 00 00 03 */	cmplwi r0, 3
/* 80549A60  40 82 00 54 */	bne lbl_80549AB4
/* 80549A64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80549A68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80549A6C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80549A70  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80549A74  C0 3B 00 2C */	lfs f1, 0x2c(r27)
/* 80549A78  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80549A7C  EC 21 00 2A */	fadds f1, f1, f0
/* 80549A80  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80549A84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80549A88  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80549A8C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80549A90  38 60 03 07 */	li r3, 0x307
/* 80549A94  38 80 FF 0C */	li r4, -244
/* 80549A98  38 A1 00 28 */	addi r5, r1, 0x28
/* 80549A9C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80549AA0  7C 06 07 74 */	extsb r6, r0
/* 80549AA4  38 E0 00 00 */	li r7, 0
/* 80549AA8  39 00 00 00 */	li r8, 0
/* 80549AAC  39 20 FF FF */	li r9, -1
/* 80549AB0  4B AD 02 E8 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_80549AB4:
/* 80549AB4  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80549AB8  4B D1 DE 9C */	b cM_rndF__Ff
/* 80549ABC  C0 1B 02 4C */	lfs f0, 0x24c(r27)
/* 80549AC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80549AC4  40 80 00 20 */	bge lbl_80549AE4
/* 80549AC8  C0 1B 02 50 */	lfs f0, 0x250(r27)
/* 80549ACC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80549AD0  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80549AD4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80549AD8  C0 1B 02 54 */	lfs f0, 0x254(r27)
/* 80549ADC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80549AE0  48 00 00 44 */	b lbl_80549B24
lbl_80549AE4:
/* 80549AE4  C0 1B 02 58 */	lfs f0, 0x258(r27)
/* 80549AE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80549AEC  40 80 00 20 */	bge lbl_80549B0C
/* 80549AF0  C0 1B 02 5C */	lfs f0, 0x25c(r27)
/* 80549AF4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80549AF8  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80549AFC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80549B00  C0 1B 02 60 */	lfs f0, 0x260(r27)
/* 80549B04  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80549B08  48 00 00 1C */	b lbl_80549B24
lbl_80549B0C:
/* 80549B0C  C0 1B 02 64 */	lfs f0, 0x264(r27)
/* 80549B10  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80549B14  C0 1B 01 34 */	lfs f0, 0x134(r27)
/* 80549B18  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80549B1C  C0 1B 02 68 */	lfs f0, 0x268(r27)
/* 80549B20  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_80549B24:
/* 80549B24  38 60 01 38 */	li r3, 0x138
/* 80549B28  38 80 FF 00 */	li r4, -256
/* 80549B2C  38 A1 00 28 */	addi r5, r1, 0x28
/* 80549B30  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80549B34  7C 06 07 74 */	extsb r6, r0
/* 80549B38  38 E0 00 00 */	li r7, 0
/* 80549B3C  39 00 00 00 */	li r8, 0
/* 80549B40  39 20 FF FF */	li r9, -1
/* 80549B44  4B AD 02 54 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80549B48  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80549B4C  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 80549B50  EC 01 00 28 */	fsubs f0, f1, f0
/* 80549B54  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80549B58  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80549B5C  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 80549B60  EC 01 00 2A */	fadds f0, f1, f0
/* 80549B64  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80549B68  38 60 01 38 */	li r3, 0x138
/* 80549B6C  38 80 FF 01 */	li r4, -255
/* 80549B70  38 A1 00 28 */	addi r5, r1, 0x28
/* 80549B74  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80549B78  7C 06 07 74 */	extsb r6, r0
/* 80549B7C  38 E0 00 00 */	li r7, 0
/* 80549B80  39 00 00 00 */	li r8, 0
/* 80549B84  39 20 FF FF */	li r9, -1
/* 80549B88  4B AD 02 10 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80549B8C  3B 20 00 00 */	li r25, 0
/* 80549B90  C3 FB 00 0C */	lfs f31, 0xc(r27)
/* 80549B94  C3 DB 02 6C */	lfs f30, 0x26c(r27)
/* 80549B98  C3 BB 02 70 */	lfs f29, 0x270(r27)
lbl_80549B9C:
/* 80549B9C  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80549BA0  D3 C1 00 2C */	stfs f30, 0x2c(r1)
/* 80549BA4  D3 A1 00 30 */	stfs f29, 0x30(r1)
/* 80549BA8  38 60 03 00 */	li r3, 0x300
/* 80549BAC  38 80 FF FF */	li r4, -1
/* 80549BB0  38 A1 00 28 */	addi r5, r1, 0x28
/* 80549BB4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80549BB8  7C 06 07 74 */	extsb r6, r0
/* 80549BBC  38 E0 00 00 */	li r7, 0
/* 80549BC0  39 00 00 00 */	li r8, 0
/* 80549BC4  39 20 FF FF */	li r9, -1
/* 80549BC8  4B AD 01 D0 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80549BCC  3B 39 00 01 */	addi r25, r25, 1
/* 80549BD0  2C 19 00 05 */	cmpwi r25, 5
/* 80549BD4  41 80 FF C8 */	blt lbl_80549B9C
/* 80549BD8  C0 1B 02 74 */	lfs f0, 0x274(r27)
/* 80549BDC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80549BE0  C0 1B 02 78 */	lfs f0, 0x278(r27)
/* 80549BE4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80549BE8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80549BEC  38 60 01 00 */	li r3, 0x100
/* 80549BF0  38 80 FF FF */	li r4, -1
/* 80549BF4  38 A1 00 28 */	addi r5, r1, 0x28
/* 80549BF8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80549BFC  7C 06 07 74 */	extsb r6, r0
/* 80549C00  38 E0 00 00 */	li r7, 0
/* 80549C04  39 00 00 00 */	li r8, 0
/* 80549C08  39 20 FF FF */	li r9, -1
/* 80549C0C  4B AD 01 8C */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80549C10  38 00 00 00 */	li r0, 0
/* 80549C14  3C 60 80 45 */	lis r3, struct_80450C98+0x1@ha
/* 80549C18  98 03 0C 99 */	stb r0, struct_80450C98+0x1@l(r3)
/* 80549C1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80549C20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80549C24  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80549C28  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80549C2C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80549C30  A0 84 03 9E */	lhz r4, 0x39e(r4)
/* 80549C34  4B AE AD 88 */	b isEventBit__11dSv_event_cCFUs
/* 80549C38  2C 03 00 00 */	cmpwi r3, 0
/* 80549C3C  40 82 00 18 */	bne lbl_80549C54
/* 80549C40  38 00 00 04 */	li r0, 4
/* 80549C44  98 1E 07 0A */	stb r0, 0x70a(r30)
/* 80549C48  38 00 00 01 */	li r0, 1
/* 80549C4C  98 1E 07 34 */	stb r0, 0x734(r30)
/* 80549C50  48 00 00 14 */	b lbl_80549C64
lbl_80549C54:
/* 80549C54  38 00 00 14 */	li r0, 0x14
/* 80549C58  98 1E 07 0A */	stb r0, 0x70a(r30)
/* 80549C5C  38 00 00 01 */	li r0, 1
/* 80549C60  98 1E 07 0B */	stb r0, 0x70b(r30)
lbl_80549C64:
/* 80549C64  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80549C68  2C 00 00 04 */	cmpwi r0, 4
/* 80549C6C  40 82 01 20 */	bne lbl_80549D8C
/* 80549C70  7F 43 D3 78 */	mr r3, r26
/* 80549C74  3C 80 80 55 */	lis r4, stringBase0@ha
/* 80549C78  38 84 AC 70 */	addi r4, r4, stringBase0@l
/* 80549C7C  38 84 00 0E */	addi r4, r4, 0xe
/* 80549C80  4B E1 ED 14 */	b strcmp
/* 80549C84  2C 03 00 00 */	cmpwi r3, 0
/* 80549C88  40 82 01 04 */	bne lbl_80549D8C
/* 80549C8C  38 61 00 08 */	addi r3, r1, 8
/* 80549C90  38 80 00 00 */	li r4, 0
/* 80549C94  38 A0 00 00 */	li r5, 0
/* 80549C98  38 C0 00 00 */	li r6, 0
/* 80549C9C  4B D1 D7 58 */	b __ct__5csXyzFsss
/* 80549CA0  3B 00 00 00 */	li r24, 0
/* 80549CA4  C3 BB 00 34 */	lfs f29, 0x34(r27)
/* 80549CA8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80549CAC  3B 43 07 68 */	addi r26, r3, calc_mtx@l
/* 80549CB0  C3 DB 00 0C */	lfs f30, 0xc(r27)
/* 80549CB4  C3 FB 02 80 */	lfs f31, 0x280(r27)
lbl_80549CB8:
/* 80549CB8  C0 3B 00 90 */	lfs f1, 0x90(r27)
/* 80549CBC  4B D1 DC D0 */	b cM_rndFX__Ff
/* 80549CC0  EC 1D 08 2A */	fadds f0, f29, f1
/* 80549CC4  FC 00 00 1E */	fctiwz f0, f0
/* 80549CC8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80549CCC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80549CD0  54 00 40 2E */	slwi r0, r0, 8
/* 80549CD4  60 19 00 05 */	ori r25, r0, 5
/* 80549CD8  C0 3B 02 7C */	lfs f1, 0x27c(r27)
/* 80549CDC  4B D1 DC 78 */	b cM_rndF__Ff
/* 80549CE0  FC 00 08 1E */	fctiwz f0, f1
/* 80549CE4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80549CE8  80 81 00 44 */	lwz r4, 0x44(r1)
/* 80549CEC  80 7A 00 00 */	lwz r3, 0(r26)
/* 80549CF0  4B AC 26 EC */	b mDoMtx_YrotS__FPA4_fs
/* 80549CF4  D3 C1 00 10 */	stfs f30, 0x10(r1)
/* 80549CF8  C0 3B 01 34 */	lfs f1, 0x134(r27)
/* 80549CFC  4B D1 DC 90 */	b cM_rndFX__Ff
/* 80549D00  EC 1F 08 2A */	fadds f0, f31, f1
/* 80549D04  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80549D08  C0 3B 02 84 */	lfs f1, 0x284(r27)
/* 80549D0C  4B D1 DC 48 */	b cM_rndF__Ff
/* 80549D10  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80549D14  38 61 00 10 */	addi r3, r1, 0x10
/* 80549D18  38 81 00 1C */	addi r4, r1, 0x1c
/* 80549D1C  4B D2 71 D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80549D20  C0 3B 02 7C */	lfs f1, 0x27c(r27)
/* 80549D24  4B D1 DC 30 */	b cM_rndF__Ff
/* 80549D28  FC 00 08 1E */	fctiwz f0, f1
/* 80549D2C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80549D30  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80549D34  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80549D38  38 60 01 36 */	li r3, 0x136
/* 80549D3C  7F 24 CB 78 */	mr r4, r25
/* 80549D40  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80549D44  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80549D48  7C 06 07 74 */	extsb r6, r0
/* 80549D4C  38 E1 00 08 */	addi r7, r1, 8
/* 80549D50  39 00 00 00 */	li r8, 0
/* 80549D54  39 20 FF FF */	li r9, -1
/* 80549D58  4B AD 00 40 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80549D5C  3B 18 00 01 */	addi r24, r24, 1
/* 80549D60  2C 18 00 32 */	cmpwi r24, 0x32
/* 80549D64  41 80 FF 54 */	blt lbl_80549CB8
/* 80549D68  38 60 01 0D */	li r3, 0x10d
/* 80549D6C  38 80 FF 01 */	li r4, -255
/* 80549D70  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 80549D74  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80549D78  7C 06 07 74 */	extsb r6, r0
/* 80549D7C  38 E0 00 00 */	li r7, 0
/* 80549D80  39 00 00 00 */	li r8, 0
/* 80549D84  39 20 FF FF */	li r9, -1
/* 80549D88  4B AD 00 10 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_80549D8C:
/* 80549D8C  38 00 FF FF */	li r0, -1
/* 80549D90  90 1E 07 E4 */	stw r0, 0x7e4(r30)
/* 80549D94  88 9C 12 FE */	lbz r4, 0x12fe(r28)
/* 80549D98  28 04 00 04 */	cmplwi r4, 4
/* 80549D9C  41 82 00 20 */	beq lbl_80549DBC
/* 80549DA0  3C 60 80 45 */	lis r3, struct_80450C9C+0x3@ha
/* 80549DA4  8C 03 0C 9F */	lbzu r0, struct_80450C9C+0x3@l(r3)
/* 80549DA8  28 00 00 06 */	cmplwi r0, 6
/* 80549DAC  40 82 00 10 */	bne lbl_80549DBC
/* 80549DB0  38 00 00 00 */	li r0, 0
/* 80549DB4  98 03 00 00 */	stb r0, 0(r3)
/* 80549DB8  48 00 00 30 */	b lbl_80549DE8
lbl_80549DBC:
/* 80549DBC  28 04 00 04 */	cmplwi r4, 4
/* 80549DC0  40 82 00 28 */	bne lbl_80549DE8
/* 80549DC4  3C 60 80 45 */	lis r3, struct_80450C9C+0x3@ha
/* 80549DC8  88 03 0C 9F */	lbz r0, struct_80450C9C+0x3@l(r3)
/* 80549DCC  28 00 00 02 */	cmplwi r0, 2
/* 80549DD0  41 82 00 0C */	beq lbl_80549DDC
/* 80549DD4  28 00 00 03 */	cmplwi r0, 3
/* 80549DD8  40 82 00 10 */	bne lbl_80549DE8
lbl_80549DDC:
/* 80549DDC  38 00 00 00 */	li r0, 0
/* 80549DE0  3C 60 80 45 */	lis r3, struct_80450C9C+0x3@ha
/* 80549DE4  98 03 0C 9F */	stb r0, struct_80450C9C+0x3@l(r3)
lbl_80549DE8:
/* 80549DE8  3C 60 80 45 */	lis r3, struct_80450C9C+0x3@ha
/* 80549DEC  88 03 0C 9F */	lbz r0, struct_80450C9C+0x3@l(r3)
/* 80549DF0  98 1C 12 CC */	stb r0, 0x12cc(r28)
/* 80549DF4  38 00 00 01 */	li r0, 1
/* 80549DF8  98 1F 02 81 */	stb r0, 0x281(r31)
/* 80549DFC  7F C3 F3 78 */	mr r3, r30
/* 80549E00  4B FF EA B9 */	bl daNpc_Henna_Execute__FP15npc_henna_class
/* 80549E04  38 00 00 00 */	li r0, 0
/* 80549E08  98 1F 02 81 */	stb r0, 0x281(r31)
lbl_80549E0C:
/* 80549E0C  7F A3 EB 78 */	mr r3, r29
lbl_80549E10:
/* 80549E10  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80549E14  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80549E18  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 80549E1C  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80549E20  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 80549E24  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 80549E28  39 61 00 70 */	addi r11, r1, 0x70
/* 80549E2C  4B E1 83 E8 */	b _restgpr_24
/* 80549E30  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80549E34  7C 08 03 A6 */	mtlr r0
/* 80549E38  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80549E3C  4E 80 00 20 */	blr 
