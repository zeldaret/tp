lbl_80C2D724:
/* 80C2D724  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80C2D728  7C 08 02 A6 */	mflr r0
/* 80C2D72C  90 01 01 34 */	stw r0, 0x134(r1)
/* 80C2D730  39 61 01 30 */	addi r11, r1, 0x130
/* 80C2D734  4B 73 4A 95 */	bl _savegpr_24
/* 80C2D738  7C 7A 1B 78 */	mr r26, r3
/* 80C2D73C  3C 80 80 C3 */	lis r4, lit_3775@ha /* 0x80C2E110@ha */
/* 80C2D740  3B E4 E1 10 */	addi r31, r4, lit_3775@l /* 0x80C2E110@l */
/* 80C2D744  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C2D748  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C2D74C  40 82 00 F4 */	bne lbl_80C2D840
/* 80C2D750  7F 40 D3 79 */	or. r0, r26, r26
/* 80C2D754  41 82 00 E0 */	beq lbl_80C2D834
/* 80C2D758  7C 1B 03 78 */	mr r27, r0
/* 80C2D75C  4B 53 08 B5 */	bl __ct__9dInsect_cFv
/* 80C2D760  3C 60 80 C3 */	lis r3, __vt__13daObjKABUTO_c@ha /* 0x80C2E2B4@ha */
/* 80C2D764  38 03 E2 B4 */	addi r0, r3, __vt__13daObjKABUTO_c@l /* 0x80C2E2B4@l */
/* 80C2D768  90 1B 05 68 */	stw r0, 0x568(r27)
/* 80C2D76C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C2D770  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C2D774  90 1B 05 A8 */	stw r0, 0x5a8(r27)
/* 80C2D778  38 7B 05 AC */	addi r3, r27, 0x5ac
/* 80C2D77C  4B 45 5F E5 */	bl __ct__10dCcD_GSttsFv
/* 80C2D780  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C2D784  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C2D788  90 7B 05 A8 */	stw r3, 0x5a8(r27)
/* 80C2D78C  38 03 00 20 */	addi r0, r3, 0x20
/* 80C2D790  90 1B 05 AC */	stw r0, 0x5ac(r27)
/* 80C2D794  3B 1B 05 CC */	addi r24, r27, 0x5cc
/* 80C2D798  7F 03 C3 78 */	mr r3, r24
/* 80C2D79C  4B 45 62 8D */	bl __ct__12dCcD_GObjInfFv
/* 80C2D7A0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C2D7A4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C2D7A8  90 18 01 20 */	stw r0, 0x120(r24)
/* 80C2D7AC  3C 60 80 C3 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C2E2A8@ha */
/* 80C2D7B0  38 03 E2 A8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C2E2A8@l */
/* 80C2D7B4  90 18 01 1C */	stw r0, 0x11c(r24)
/* 80C2D7B8  3C 60 80 C3 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C2E29C@ha */
/* 80C2D7BC  38 03 E2 9C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C2E29C@l */
/* 80C2D7C0  90 18 01 34 */	stw r0, 0x134(r24)
/* 80C2D7C4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C2D7C8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C2D7CC  90 78 01 20 */	stw r3, 0x120(r24)
/* 80C2D7D0  38 03 00 58 */	addi r0, r3, 0x58
/* 80C2D7D4  90 18 01 34 */	stw r0, 0x134(r24)
/* 80C2D7D8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C2D7DC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C2D7E0  90 78 00 3C */	stw r3, 0x3c(r24)
/* 80C2D7E4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C2D7E8  90 18 01 20 */	stw r0, 0x120(r24)
/* 80C2D7EC  38 03 00 84 */	addi r0, r3, 0x84
/* 80C2D7F0  90 18 01 34 */	stw r0, 0x134(r24)
/* 80C2D7F4  38 7B 07 38 */	addi r3, r27, 0x738
/* 80C2D7F8  4B 44 86 B5 */	bl __ct__12dBgS_AcchCirFv
/* 80C2D7FC  3B 1B 07 98 */	addi r24, r27, 0x798
/* 80C2D800  7F 03 C3 78 */	mr r3, r24
/* 80C2D804  4B 44 88 9D */	bl __ct__9dBgS_AcchFv
/* 80C2D808  3C 60 80 C3 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C2E278@ha */
/* 80C2D80C  38 63 E2 78 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C2E278@l */
/* 80C2D810  90 78 00 10 */	stw r3, 0x10(r24)
/* 80C2D814  38 03 00 0C */	addi r0, r3, 0xc
/* 80C2D818  90 18 00 14 */	stw r0, 0x14(r24)
/* 80C2D81C  38 03 00 18 */	addi r0, r3, 0x18
/* 80C2D820  90 18 00 24 */	stw r0, 0x24(r24)
/* 80C2D824  38 78 00 14 */	addi r3, r24, 0x14
/* 80C2D828  4B 44 B6 41 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C2D82C  38 7B 09 70 */	addi r3, r27, 0x970
/* 80C2D830  4B 69 2B 99 */	bl __ct__10Z2CreatureFv
lbl_80C2D834:
/* 80C2D834  80 1A 04 A0 */	lwz r0, 0x4a0(r26)
/* 80C2D838  60 00 00 08 */	ori r0, r0, 8
/* 80C2D83C  90 1A 04 A0 */	stw r0, 0x4a0(r26)
lbl_80C2D840:
/* 80C2D840  38 7A 0A 08 */	addi r3, r26, 0xa08
/* 80C2D844  3C 80 80 C3 */	lis r4, d_a_obj_kabuto__stringBase0@ha /* 0x80C2E218@ha */
/* 80C2D848  38 84 E2 18 */	addi r4, r4, d_a_obj_kabuto__stringBase0@l /* 0x80C2E218@l */
/* 80C2D84C  4B 3F F6 71 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C2D850  7C 7C 1B 78 */	mr r28, r3
/* 80C2D854  2C 1C 00 04 */	cmpwi r28, 4
/* 80C2D858  40 82 06 EC */	bne lbl_80C2DF44
/* 80C2D85C  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80C2D860  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C2D864  98 1A 07 36 */	stb r0, 0x736(r26)
/* 80C2D868  88 1A 07 36 */	lbz r0, 0x736(r26)
/* 80C2D86C  28 00 00 02 */	cmplwi r0, 2
/* 80C2D870  40 82 00 28 */	bne lbl_80C2D898
/* 80C2D874  38 00 00 00 */	li r0, 0
/* 80C2D878  98 1A 05 6C */	stb r0, 0x56c(r26)
/* 80C2D87C  A8 7A 04 E4 */	lha r3, 0x4e4(r26)
/* 80C2D880  38 03 E0 00 */	addi r0, r3, -8192
/* 80C2D884  B0 1A 04 E4 */	sth r0, 0x4e4(r26)
/* 80C2D888  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 80C2D88C  60 00 40 00 */	ori r0, r0, 0x4000
/* 80C2D890  90 1A 04 9C */	stw r0, 0x49c(r26)
/* 80C2D894  48 00 00 14 */	b lbl_80C2D8A8
lbl_80C2D898:
/* 80C2D898  38 00 00 01 */	li r0, 1
/* 80C2D89C  98 1A 05 6D */	stb r0, 0x56d(r26)
/* 80C2D8A0  38 00 00 5D */	li r0, 0x5d
/* 80C2D8A4  98 1A 05 48 */	stb r0, 0x548(r26)
lbl_80C2D8A8:
/* 80C2D8A8  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80C2D8AC  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80C2D8B0  98 1A 05 81 */	stb r0, 0x581(r26)
/* 80C2D8B4  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80C2D8B8  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 80C2D8BC  7C 03 00 AE */	lbzx r0, r3, r0
/* 80C2D8C0  98 1A 05 80 */	stb r0, 0x580(r26)
/* 80C2D8C4  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80C2D8C8  54 00 08 3C */	slwi r0, r0, 1
/* 80C2D8CC  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 80C2D8D0  7C 03 02 2E */	lhzx r0, r3, r0
/* 80C2D8D4  B0 1A 05 82 */	sth r0, 0x582(r26)
/* 80C2D8D8  7F 43 D3 78 */	mr r3, r26
/* 80C2D8DC  4B FF FC 9D */	bl CreateChk__13daObjKABUTO_cFv
/* 80C2D8E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C2D8E4  40 82 00 0C */	bne lbl_80C2D8F0
/* 80C2D8E8  38 60 00 05 */	li r3, 5
/* 80C2D8EC  48 00 06 5C */	b lbl_80C2DF48
lbl_80C2D8F0:
/* 80C2D8F0  7F 43 D3 78 */	mr r3, r26
/* 80C2D8F4  3C 80 80 C3 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80C2AF68@ha */
/* 80C2D8F8  38 84 AF 68 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80C2AF68@l */
/* 80C2D8FC  38 A0 0B 60 */	li r5, 0xb60
/* 80C2D900  4B 3E CB B1 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C2D904  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C2D908  40 82 00 0C */	bne lbl_80C2D914
/* 80C2D90C  38 60 00 05 */	li r3, 5
/* 80C2D910  48 00 06 38 */	b lbl_80C2DF48
lbl_80C2D914:
/* 80C2D914  3C 60 80 C3 */	lis r3, data_80C2E2F0@ha /* 0x80C2E2F0@ha */
/* 80C2D918  8C 03 E2 F0 */	lbzu r0, data_80C2E2F0@l(r3)  /* 0x80C2E2F0@l */
/* 80C2D91C  28 00 00 00 */	cmplwi r0, 0
/* 80C2D920  40 82 00 20 */	bne lbl_80C2D940
/* 80C2D924  38 00 00 01 */	li r0, 1
/* 80C2D928  98 03 00 00 */	stb r0, 0(r3)
/* 80C2D92C  98 1A 0A 10 */	stb r0, 0xa10(r26)
/* 80C2D930  38 00 FF FF */	li r0, -1
/* 80C2D934  3C 60 80 C3 */	lis r3, l_HIO@ha /* 0x80C2E300@ha */
/* 80C2D938  38 63 E3 00 */	addi r3, r3, l_HIO@l /* 0x80C2E300@l */
/* 80C2D93C  98 03 00 04 */	stb r0, 4(r3)
lbl_80C2D940:
/* 80C2D940  38 60 00 00 */	li r3, 0
/* 80C2D944  98 7A 07 10 */	stb r3, 0x710(r26)
/* 80C2D948  98 7A 07 11 */	stb r3, 0x711(r26)
/* 80C2D94C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C2D950  D0 3A 05 30 */	stfs f1, 0x530(r26)
/* 80C2D954  3B 60 00 00 */	li r27, 0
/* 80C2D958  88 1A 07 36 */	lbz r0, 0x736(r26)
/* 80C2D95C  28 00 00 02 */	cmplwi r0, 2
/* 80C2D960  41 82 04 50 */	beq lbl_80C2DDB0
/* 80C2D964  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80C2D968  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80C2D96C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80C2D970  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C2D974  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80C2D978  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80C2D97C  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80C2D980  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C2D984  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C2D988  4B 44 A2 E1 */	bl __ct__11dBgS_LinChkFv
/* 80C2D98C  3B C1 00 F8 */	addi r30, r1, 0xf8
/* 80C2D990  7F C3 F3 78 */	mr r3, r30
/* 80C2D994  4B 44 B4 D5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C2D998  3B 00 00 00 */	li r24, 0
/* 80C2D99C  3B 20 00 00 */	li r25, 0
/* 80C2D9A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2D9A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2D9A8  3B A3 0F 38 */	addi r29, r3, 0xf38
lbl_80C2D9AC:
/* 80C2D9AC  38 61 00 54 */	addi r3, r1, 0x54
/* 80C2D9B0  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C2D9B4  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80C2D9B8  7C 00 CA 14 */	add r0, r0, r25
/* 80C2D9BC  7C 05 07 34 */	extsh r5, r0
/* 80C2D9C0  38 C1 00 6C */	addi r6, r1, 0x6c
/* 80C2D9C4  4B 64 33 FD */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C2D9C8  38 61 00 48 */	addi r3, r1, 0x48
/* 80C2D9CC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C2D9D0  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80C2D9D4  7C 00 CA 14 */	add r0, r0, r25
/* 80C2D9D8  7C 05 07 34 */	extsh r5, r0
/* 80C2D9DC  38 C1 00 60 */	addi r6, r1, 0x60
/* 80C2D9E0  4B 64 33 E1 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C2D9E4  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C2D9E8  38 81 00 48 */	addi r4, r1, 0x48
/* 80C2D9EC  38 A1 00 54 */	addi r5, r1, 0x54
/* 80C2D9F0  38 C0 00 00 */	li r6, 0
/* 80C2D9F4  4B 44 A3 71 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C2D9F8  7F C3 F3 78 */	mr r3, r30
/* 80C2D9FC  4B 44 B4 6D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C2DA00  7F A3 EB 78 */	mr r3, r29
/* 80C2DA04  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80C2DA08  4B 44 69 AD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C2DA0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C2DA10  41 82 01 98 */	beq lbl_80C2DBA8
/* 80C2DA14  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C2E2C0@ha */
/* 80C2DA18  38 03 E2 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C2E2C0@l */
/* 80C2DA1C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80C2DA20  7F A3 EB 78 */	mr r3, r29
/* 80C2DA24  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80C2DA28  38 A1 00 8C */	addi r5, r1, 0x8c
/* 80C2DA2C  4B 44 6D 19 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C2DA30  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80C2DA34  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80C2DA38  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80C2DA3C  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80C2DA40  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80C2DA44  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80C2DA48  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2DA4C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C2DA50  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C2DA54  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C2DA58  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C2DA5C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80C2DA60  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C2DA64  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80C2DA68  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C2DA6C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80C2DA70  38 81 00 30 */	addi r4, r1, 0x30
/* 80C2DA74  4B 71 99 29 */	bl PSVECSquareDistance
/* 80C2DA78  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2DA7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2DA80  40 81 00 58 */	ble lbl_80C2DAD8
/* 80C2DA84  FC 00 08 34 */	frsqrte f0, f1
/* 80C2DA88  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80C2DA8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2DA90  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80C2DA94  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2DA98  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2DA9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2DAA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2DAA4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2DAA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2DAAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2DAB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2DAB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2DAB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2DABC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2DAC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2DAC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2DAC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2DACC  FC 41 00 32 */	fmul f2, f1, f0
/* 80C2DAD0  FC 40 10 18 */	frsp f2, f2
/* 80C2DAD4  48 00 00 90 */	b lbl_80C2DB64
lbl_80C2DAD8:
/* 80C2DAD8  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80C2DADC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2DAE0  40 80 00 10 */	bge lbl_80C2DAF0
/* 80C2DAE4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2DAE8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2DAEC  48 00 00 78 */	b lbl_80C2DB64
lbl_80C2DAF0:
/* 80C2DAF0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C2DAF4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C2DAF8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2DAFC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2DB00  7C 03 00 00 */	cmpw r3, r0
/* 80C2DB04  41 82 00 14 */	beq lbl_80C2DB18
/* 80C2DB08  40 80 00 40 */	bge lbl_80C2DB48
/* 80C2DB0C  2C 03 00 00 */	cmpwi r3, 0
/* 80C2DB10  41 82 00 20 */	beq lbl_80C2DB30
/* 80C2DB14  48 00 00 34 */	b lbl_80C2DB48
lbl_80C2DB18:
/* 80C2DB18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2DB1C  41 82 00 0C */	beq lbl_80C2DB28
/* 80C2DB20  38 00 00 01 */	li r0, 1
/* 80C2DB24  48 00 00 28 */	b lbl_80C2DB4C
lbl_80C2DB28:
/* 80C2DB28  38 00 00 02 */	li r0, 2
/* 80C2DB2C  48 00 00 20 */	b lbl_80C2DB4C
lbl_80C2DB30:
/* 80C2DB30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2DB34  41 82 00 0C */	beq lbl_80C2DB40
/* 80C2DB38  38 00 00 05 */	li r0, 5
/* 80C2DB3C  48 00 00 10 */	b lbl_80C2DB4C
lbl_80C2DB40:
/* 80C2DB40  38 00 00 03 */	li r0, 3
/* 80C2DB44  48 00 00 08 */	b lbl_80C2DB4C
lbl_80C2DB48:
/* 80C2DB48  38 00 00 04 */	li r0, 4
lbl_80C2DB4C:
/* 80C2DB4C  2C 00 00 01 */	cmpwi r0, 1
/* 80C2DB50  40 82 00 10 */	bne lbl_80C2DB60
/* 80C2DB54  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2DB58  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2DB5C  48 00 00 08 */	b lbl_80C2DB64
lbl_80C2DB60:
/* 80C2DB60  FC 40 08 90 */	fmr f2, f1
lbl_80C2DB64:
/* 80C2DB64  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80C2DB68  4B 63 9B 0D */	bl cM_atan2s__Fff
/* 80C2DB6C  7C 03 00 D0 */	neg r0, r3
/* 80C2DB70  B0 1A 07 2E */	sth r0, 0x72e(r26)
/* 80C2DB74  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80C2DB78  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80C2DB7C  4B 63 9A F9 */	bl cM_atan2s__Fff
/* 80C2DB80  B0 7A 07 2A */	sth r3, 0x72a(r26)
/* 80C2DB84  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80C2DB88  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 80C2DB8C  4B 63 9A E9 */	bl cM_atan2s__Fff
/* 80C2DB90  B0 7A 07 32 */	sth r3, 0x732(r26)
/* 80C2DB94  3B 60 00 01 */	li r27, 1
/* 80C2DB98  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C2E2C0@ha */
/* 80C2DB9C  38 03 E2 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C2E2C0@l */
/* 80C2DBA0  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80C2DBA4  48 00 00 14 */	b lbl_80C2DBB8
lbl_80C2DBA8:
/* 80C2DBA8  3B 18 00 01 */	addi r24, r24, 1
/* 80C2DBAC  2C 18 00 04 */	cmpwi r24, 4
/* 80C2DBB0  3B 39 40 00 */	addi r25, r25, 0x4000
/* 80C2DBB4  41 80 FD F8 */	blt lbl_80C2D9AC
lbl_80C2DBB8:
/* 80C2DBB8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80C2DBBC  40 82 01 E4 */	bne lbl_80C2DDA0
/* 80C2DBC0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C2DBC4  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80C2DBC8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80C2DBCC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C2DBD0  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80C2DBD4  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80C2DBD8  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80C2DBDC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C2DBE0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80C2DBE4  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C2DBE8  38 81 00 6C */	addi r4, r1, 0x6c
/* 80C2DBEC  38 A1 00 54 */	addi r5, r1, 0x54
/* 80C2DBF0  38 C0 00 00 */	li r6, 0
/* 80C2DBF4  4B 44 A1 71 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C2DBF8  7F C3 F3 78 */	mr r3, r30
/* 80C2DBFC  4B 44 B2 6D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C2DC00  7F A3 EB 78 */	mr r3, r29
/* 80C2DC04  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80C2DC08  4B 44 67 AD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C2DC0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C2DC10  41 82 01 90 */	beq lbl_80C2DDA0
/* 80C2DC14  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C2E2C0@ha */
/* 80C2DC18  38 03 E2 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C2E2C0@l */
/* 80C2DC1C  90 01 00 88 */	stw r0, 0x88(r1)
/* 80C2DC20  7F A3 EB 78 */	mr r3, r29
/* 80C2DC24  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80C2DC28  38 A1 00 78 */	addi r5, r1, 0x78
/* 80C2DC2C  4B 44 6B 19 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C2DC30  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80C2DC34  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80C2DC38  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80C2DC3C  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80C2DC40  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80C2DC44  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80C2DC48  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2DC4C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C2DC50  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C2DC54  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C2DC58  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C2DC5C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C2DC60  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C2DC64  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80C2DC68  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C2DC6C  38 61 00 24 */	addi r3, r1, 0x24
/* 80C2DC70  38 81 00 18 */	addi r4, r1, 0x18
/* 80C2DC74  4B 71 97 29 */	bl PSVECSquareDistance
/* 80C2DC78  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2DC7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2DC80  40 81 00 58 */	ble lbl_80C2DCD8
/* 80C2DC84  FC 00 08 34 */	frsqrte f0, f1
/* 80C2DC88  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80C2DC8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2DC90  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80C2DC94  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2DC98  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2DC9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2DCA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2DCA4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2DCA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2DCAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2DCB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2DCB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2DCB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2DCBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2DCC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2DCC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2DCC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2DCCC  FC 41 00 32 */	fmul f2, f1, f0
/* 80C2DCD0  FC 40 10 18 */	frsp f2, f2
/* 80C2DCD4  48 00 00 90 */	b lbl_80C2DD64
lbl_80C2DCD8:
/* 80C2DCD8  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80C2DCDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2DCE0  40 80 00 10 */	bge lbl_80C2DCF0
/* 80C2DCE4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2DCE8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2DCEC  48 00 00 78 */	b lbl_80C2DD64
lbl_80C2DCF0:
/* 80C2DCF0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C2DCF4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80C2DCF8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2DCFC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2DD00  7C 03 00 00 */	cmpw r3, r0
/* 80C2DD04  41 82 00 14 */	beq lbl_80C2DD18
/* 80C2DD08  40 80 00 40 */	bge lbl_80C2DD48
/* 80C2DD0C  2C 03 00 00 */	cmpwi r3, 0
/* 80C2DD10  41 82 00 20 */	beq lbl_80C2DD30
/* 80C2DD14  48 00 00 34 */	b lbl_80C2DD48
lbl_80C2DD18:
/* 80C2DD18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2DD1C  41 82 00 0C */	beq lbl_80C2DD28
/* 80C2DD20  38 00 00 01 */	li r0, 1
/* 80C2DD24  48 00 00 28 */	b lbl_80C2DD4C
lbl_80C2DD28:
/* 80C2DD28  38 00 00 02 */	li r0, 2
/* 80C2DD2C  48 00 00 20 */	b lbl_80C2DD4C
lbl_80C2DD30:
/* 80C2DD30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2DD34  41 82 00 0C */	beq lbl_80C2DD40
/* 80C2DD38  38 00 00 05 */	li r0, 5
/* 80C2DD3C  48 00 00 10 */	b lbl_80C2DD4C
lbl_80C2DD40:
/* 80C2DD40  38 00 00 03 */	li r0, 3
/* 80C2DD44  48 00 00 08 */	b lbl_80C2DD4C
lbl_80C2DD48:
/* 80C2DD48  38 00 00 04 */	li r0, 4
lbl_80C2DD4C:
/* 80C2DD4C  2C 00 00 01 */	cmpwi r0, 1
/* 80C2DD50  40 82 00 10 */	bne lbl_80C2DD60
/* 80C2DD54  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2DD58  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2DD5C  48 00 00 08 */	b lbl_80C2DD64
lbl_80C2DD60:
/* 80C2DD60  FC 40 08 90 */	fmr f2, f1
lbl_80C2DD64:
/* 80C2DD64  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80C2DD68  4B 63 99 0D */	bl cM_atan2s__Fff
/* 80C2DD6C  7C 03 00 D0 */	neg r0, r3
/* 80C2DD70  B0 1A 07 2E */	sth r0, 0x72e(r26)
/* 80C2DD74  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 80C2DD78  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 80C2DD7C  4B 63 98 F9 */	bl cM_atan2s__Fff
/* 80C2DD80  B0 7A 07 2A */	sth r3, 0x72a(r26)
/* 80C2DD84  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80C2DD88  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 80C2DD8C  4B 63 98 E9 */	bl cM_atan2s__Fff
/* 80C2DD90  B0 7A 07 32 */	sth r3, 0x732(r26)
/* 80C2DD94  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C2E2C0@ha */
/* 80C2DD98  38 03 E2 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C2E2C0@l */
/* 80C2DD9C  90 01 00 88 */	stw r0, 0x88(r1)
lbl_80C2DDA0:
/* 80C2DDA0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C2DDA4  38 80 FF FF */	li r4, -1
/* 80C2DDA8  4B 44 9F 35 */	bl __dt__11dBgS_LinChkFv
/* 80C2DDAC  48 00 00 54 */	b lbl_80C2DE00
lbl_80C2DDB0:
/* 80C2DDB0  98 7A 07 10 */	stb r3, 0x710(r26)
/* 80C2DDB4  38 00 00 0A */	li r0, 0xa
/* 80C2DDB8  B0 1A 07 12 */	sth r0, 0x712(r26)
/* 80C2DDBC  3C 60 80 C3 */	lis r3, d_a_obj_kabuto__stringBase0@ha /* 0x80C2E218@ha */
/* 80C2DDC0  38 63 E2 18 */	addi r3, r3, d_a_obj_kabuto__stringBase0@l /* 0x80C2E218@l */
/* 80C2DDC4  38 63 00 06 */	addi r3, r3, 6
/* 80C2DDC8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2DDCC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2DDD0  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80C2DDD4  4B 73 AB C1 */	bl strcmp
/* 80C2DDD8  2C 03 00 00 */	cmpwi r3, 0
/* 80C2DDDC  40 82 00 24 */	bne lbl_80C2DE00
/* 80C2DDE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2DDE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2DDE8  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80C2DDEC  2C 00 00 03 */	cmpwi r0, 3
/* 80C2DDF0  40 82 00 10 */	bne lbl_80C2DE00
/* 80C2DDF4  88 1A 07 36 */	lbz r0, 0x736(r26)
/* 80C2DDF8  60 00 00 03 */	ori r0, r0, 3
/* 80C2DDFC  98 1A 07 36 */	stb r0, 0x736(r26)
lbl_80C2DE00:
/* 80C2DE00  38 00 00 00 */	li r0, 0
/* 80C2DE04  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 80C2DE08  88 1A 07 36 */	lbz r0, 0x736(r26)
/* 80C2DE0C  28 00 00 00 */	cmplwi r0, 0
/* 80C2DE10  40 82 00 0C */	bne lbl_80C2DE1C
/* 80C2DE14  7F 43 D3 78 */	mr r3, r26
/* 80C2DE18  4B FF D0 8D */	bl InitCcSph__13daObjKABUTO_cFv
lbl_80C2DE1C:
/* 80C2DE1C  88 1A 07 36 */	lbz r0, 0x736(r26)
/* 80C2DE20  28 00 00 02 */	cmplwi r0, 2
/* 80C2DE24  40 82 00 44 */	bne lbl_80C2DE68
/* 80C2DE28  3C 60 80 C3 */	lis r3, d_a_obj_kabuto__stringBase0@ha /* 0x80C2E218@ha */
/* 80C2DE2C  38 63 E2 18 */	addi r3, r3, d_a_obj_kabuto__stringBase0@l /* 0x80C2E218@l */
/* 80C2DE30  38 63 00 06 */	addi r3, r3, 6
/* 80C2DE34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2DE38  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2DE3C  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80C2DE40  4B 73 AB 55 */	bl strcmp
/* 80C2DE44  2C 03 00 00 */	cmpwi r3, 0
/* 80C2DE48  40 82 00 18 */	bne lbl_80C2DE60
/* 80C2DE4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2DE50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2DE54  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80C2DE58  2C 00 00 03 */	cmpwi r0, 3
/* 80C2DE5C  41 82 00 0C */	beq lbl_80C2DE68
lbl_80C2DE60:
/* 80C2DE60  7F 43 D3 78 */	mr r3, r26
/* 80C2DE64  4B FF D0 41 */	bl InitCcSph__13daObjKABUTO_cFv
lbl_80C2DE68:
/* 80C2DE68  38 00 00 00 */	li r0, 0
/* 80C2DE6C  90 01 00 08 */	stw r0, 8(r1)
/* 80C2DE70  38 7A 07 98 */	addi r3, r26, 0x798
/* 80C2DE74  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C2DE78  38 BA 04 BC */	addi r5, r26, 0x4bc
/* 80C2DE7C  7F 46 D3 78 */	mr r6, r26
/* 80C2DE80  38 E0 00 01 */	li r7, 1
/* 80C2DE84  39 1A 07 38 */	addi r8, r26, 0x738
/* 80C2DE88  39 3A 04 F8 */	addi r9, r26, 0x4f8
/* 80C2DE8C  39 40 00 00 */	li r10, 0
/* 80C2DE90  4B 44 83 B9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C2DE94  80 7A 0A 04 */	lwz r3, 0xa04(r26)
/* 80C2DE98  80 63 00 04 */	lwz r3, 4(r3)
/* 80C2DE9C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C2DEA0  90 1A 05 04 */	stw r0, 0x504(r26)
/* 80C2DEA4  7F 43 D3 78 */	mr r3, r26
/* 80C2DEA8  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 80C2DEAC  FC 40 08 90 */	fmr f2, f1
/* 80C2DEB0  FC 60 08 90 */	fmr f3, f1
/* 80C2DEB4  4B 3E C6 75 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80C2DEB8  7F 43 D3 78 */	mr r3, r26
/* 80C2DEBC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C2DEC0  FC 40 08 90 */	fmr f2, f1
/* 80C2DEC4  FC 60 08 90 */	fmr f3, f1
/* 80C2DEC8  4B 3E C6 71 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80C2DECC  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80C2DED0  28 00 00 01 */	cmplwi r0, 1
/* 80C2DED4  40 82 00 24 */	bne lbl_80C2DEF8
/* 80C2DED8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C2DEDC  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80C2DEE0  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80C2DEE4  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 80C2DEE8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C2DEEC  D0 1A 07 80 */	stfs f0, 0x780(r26)
/* 80C2DEF0  D0 1A 07 84 */	stfs f0, 0x784(r26)
/* 80C2DEF4  48 00 00 28 */	b lbl_80C2DF1C
lbl_80C2DEF8:
/* 80C2DEF8  28 00 00 00 */	cmplwi r0, 0
/* 80C2DEFC  40 82 00 20 */	bne lbl_80C2DF1C
/* 80C2DF00  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C2DF04  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80C2DF08  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80C2DF0C  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 80C2DF10  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80C2DF14  D0 1A 07 80 */	stfs f0, 0x780(r26)
/* 80C2DF18  D0 1A 07 84 */	stfs f0, 0x784(r26)
lbl_80C2DF1C:
/* 80C2DF1C  38 7A 09 70 */	addi r3, r26, 0x970
/* 80C2DF20  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C2DF24  38 BA 05 38 */	addi r5, r26, 0x538
/* 80C2DF28  38 C0 00 03 */	li r6, 3
/* 80C2DF2C  38 E0 00 01 */	li r7, 1
/* 80C2DF30  4B 69 26 01 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80C2DF34  38 00 00 64 */	li r0, 0x64
/* 80C2DF38  B0 1A 07 16 */	sth r0, 0x716(r26)
/* 80C2DF3C  7F 43 D3 78 */	mr r3, r26
/* 80C2DF40  4B FF F6 19 */	bl daObjKABUTO_Execute__FP13daObjKABUTO_c
lbl_80C2DF44:
/* 80C2DF44  7F 83 E3 78 */	mr r3, r28
lbl_80C2DF48:
/* 80C2DF48  39 61 01 30 */	addi r11, r1, 0x130
/* 80C2DF4C  4B 73 42 C9 */	bl _restgpr_24
/* 80C2DF50  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80C2DF54  7C 08 03 A6 */	mtlr r0
/* 80C2DF58  38 21 01 30 */	addi r1, r1, 0x130
/* 80C2DF5C  4E 80 00 20 */	blr 
