lbl_80681890:
/* 80681890  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80681894  7C 08 02 A6 */	mflr r0
/* 80681898  90 01 00 34 */	stw r0, 0x34(r1)
/* 8068189C  39 61 00 30 */	addi r11, r1, 0x30
/* 806818A0  4B CE 09 39 */	bl _savegpr_28
/* 806818A4  7C 7E 1B 78 */	mr r30, r3
/* 806818A8  3C 80 80 68 */	lis r4, lit_3947@ha /* 0x806823BC@ha */
/* 806818AC  3B E4 23 BC */	addi r31, r4, lit_3947@l /* 0x806823BC@l */
/* 806818B0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806818B4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806818B8  40 82 00 E8 */	bne lbl_806819A0
/* 806818BC  7F C0 F3 79 */	or. r0, r30, r30
/* 806818C0  41 82 00 D4 */	beq lbl_80681994
/* 806818C4  7C 1D 03 78 */	mr r29, r0
/* 806818C8  4B 99 72 9D */	bl __ct__10fopAc_ac_cFv
/* 806818CC  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 806818D0  4B C3 F6 95 */	bl __ct__15Z2CreatureEnemyFv
/* 806818D4  38 7D 06 CC */	addi r3, r29, 0x6cc
/* 806818D8  4B 9F 45 D5 */	bl __ct__12dBgS_AcchCirFv
/* 806818DC  3B 9D 07 0C */	addi r28, r29, 0x70c
/* 806818E0  7F 83 E3 78 */	mr r3, r28
/* 806818E4  4B 9F 47 BD */	bl __ct__9dBgS_AcchFv
/* 806818E8  3C 60 80 68 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806825FC@ha */
/* 806818EC  38 63 25 FC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806825FC@l */
/* 806818F0  90 7C 00 10 */	stw r3, 0x10(r28)
/* 806818F4  38 03 00 0C */	addi r0, r3, 0xc
/* 806818F8  90 1C 00 14 */	stw r0, 0x14(r28)
/* 806818FC  38 03 00 18 */	addi r0, r3, 0x18
/* 80681900  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80681904  38 7C 00 14 */	addi r3, r28, 0x14
/* 80681908  4B 9F 75 61 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8068190C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80681910  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80681914  90 1D 08 FC */	stw r0, 0x8fc(r29)
/* 80681918  38 7D 09 00 */	addi r3, r29, 0x900
/* 8068191C  4B A0 1E 45 */	bl __ct__10dCcD_GSttsFv
/* 80681920  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80681924  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80681928  90 7D 08 FC */	stw r3, 0x8fc(r29)
/* 8068192C  38 03 00 20 */	addi r0, r3, 0x20
/* 80681930  90 1D 09 00 */	stw r0, 0x900(r29)
/* 80681934  3B 9D 09 20 */	addi r28, r29, 0x920
/* 80681938  7F 83 E3 78 */	mr r3, r28
/* 8068193C  4B A0 20 ED */	bl __ct__12dCcD_GObjInfFv
/* 80681940  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80681944  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80681948  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8068194C  3C 60 80 68 */	lis r3, __vt__8cM3dGAab@ha /* 0x806825F0@ha */
/* 80681950  38 03 25 F0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806825F0@l */
/* 80681954  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80681958  3C 60 80 68 */	lis r3, __vt__8cM3dGSph@ha /* 0x806825E4@ha */
/* 8068195C  38 03 25 E4 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806825E4@l */
/* 80681960  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80681964  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80681968  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8068196C  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80681970  38 03 00 58 */	addi r0, r3, 0x58
/* 80681974  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80681978  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8068197C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80681980  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80681984  38 03 00 2C */	addi r0, r3, 0x2c
/* 80681988  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8068198C  38 03 00 84 */	addi r0, r3, 0x84
/* 80681990  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_80681994:
/* 80681994  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80681998  60 00 00 08 */	ori r0, r0, 8
/* 8068199C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_806819A0:
/* 806819A0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 806819A4  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 806819A8  98 1E 05 B6 */	stb r0, 0x5b6(r30)
/* 806819AC  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 806819B0  28 00 00 02 */	cmplwi r0, 2
/* 806819B4  40 81 00 0C */	ble lbl_806819C0
/* 806819B8  38 00 00 00 */	li r0, 0
/* 806819BC  98 1E 05 B6 */	stb r0, 0x5b6(r30)
lbl_806819C0:
/* 806819C0  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 806819C4  54 00 10 3A */	slwi r0, r0, 2
/* 806819C8  3C 60 80 68 */	lis r3, arc_name@ha /* 0x80682524@ha */
/* 806819CC  38 63 25 24 */	addi r3, r3, arc_name@l /* 0x80682524@l */
/* 806819D0  7C 03 00 2E */	lwzx r0, r3, r0
/* 806819D4  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 806819D8  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 806819DC  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 806819E0  4B 9A B4 DD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806819E4  7C 7D 1B 78 */	mr r29, r3
/* 806819E8  2C 1D 00 04 */	cmpwi r29, 4
/* 806819EC  40 82 02 E4 */	bne lbl_80681CD0
/* 806819F0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 806819F4  54 04 46 3E */	srwi r4, r0, 0x18
/* 806819F8  2C 04 00 FF */	cmpwi r4, 0xff
/* 806819FC  41 82 00 28 */	beq lbl_80681A24
/* 80681A00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80681A04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80681A08  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80681A0C  7C 05 07 74 */	extsb r5, r0
/* 80681A10  4B 9B 39 51 */	bl isSwitch__10dSv_info_cCFii
/* 80681A14  2C 03 00 00 */	cmpwi r3, 0
/* 80681A18  41 82 00 0C */	beq lbl_80681A24
/* 80681A1C  38 60 00 05 */	li r3, 5
/* 80681A20  48 00 02 B4 */	b lbl_80681CD4
lbl_80681A24:
/* 80681A24  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80681A28  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 80681A2C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80681A30  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80681A34  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 80681A38  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80681A3C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80681A40  98 1E 05 B7 */	stb r0, 0x5b7(r30)
/* 80681A44  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80681A48  28 00 00 FF */	cmplwi r0, 0xff
/* 80681A4C  40 82 00 0C */	bne lbl_80681A58
/* 80681A50  38 00 00 00 */	li r0, 0
/* 80681A54  98 1E 05 B4 */	stb r0, 0x5b4(r30)
lbl_80681A58:
/* 80681A58  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 80681A5C  28 00 00 0F */	cmplwi r0, 0xf
/* 80681A60  40 82 00 0C */	bne lbl_80681A6C
/* 80681A64  38 00 00 0A */	li r0, 0xa
/* 80681A68  98 1E 05 B5 */	stb r0, 0x5b5(r30)
lbl_80681A6C:
/* 80681A6C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80681A70  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 80681A74  C8 3F 00 C8 */	lfd f1, 0xc8(r31)
/* 80681A78  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80681A7C  3C 00 43 30 */	lis r0, 0x4330
/* 80681A80  90 01 00 18 */	stw r0, 0x18(r1)
/* 80681A84  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80681A88  EC 00 08 28 */	fsubs f0, f0, f1
/* 80681A8C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80681A90  D0 1E 06 8C */	stfs f0, 0x68c(r30)
/* 80681A94  38 00 01 E4 */	li r0, 0x1e4
/* 80681A98  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80681A9C  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80681AA0  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80681AA4  38 81 00 10 */	addi r4, r1, 0x10
/* 80681AA8  4B 99 7D 51 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80681AAC  28 03 00 00 */	cmplwi r3, 0
/* 80681AB0  41 82 00 0C */	beq lbl_80681ABC
/* 80681AB4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80681AB8  D0 1E 06 8C */	stfs f0, 0x68c(r30)
lbl_80681ABC:
/* 80681ABC  7F C3 F3 78 */	mr r3, r30
/* 80681AC0  3C 80 80 68 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806817A0@ha */
/* 80681AC4  38 84 17 A0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806817A0@l */
/* 80681AC8  38 A0 20 00 */	li r5, 0x2000
/* 80681ACC  4B 99 89 E5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80681AD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80681AD4  40 82 00 0C */	bne lbl_80681AE0
/* 80681AD8  38 60 00 05 */	li r3, 5
/* 80681ADC  48 00 01 F8 */	b lbl_80681CD4
lbl_80681AE0:
/* 80681AE0  88 7E 05 B7 */	lbz r3, 0x5b7(r30)
/* 80681AE4  28 03 00 FF */	cmplwi r3, 0xff
/* 80681AE8  41 82 00 48 */	beq lbl_80681B30
/* 80681AEC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80681AF0  7C 04 07 74 */	extsb r4, r0
/* 80681AF4  4B 9C FC F9 */	bl dPath_GetRoomPath__Fii
/* 80681AF8  90 7E 05 C0 */	stw r3, 0x5c0(r30)
/* 80681AFC  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 80681B00  28 00 00 00 */	cmplwi r0, 0
/* 80681B04  40 82 00 0C */	bne lbl_80681B10
/* 80681B08  38 60 00 05 */	li r3, 5
/* 80681B0C  48 00 01 C8 */	b lbl_80681CD4
lbl_80681B10:
/* 80681B10  88 7E 05 B7 */	lbz r3, 0x5b7(r30)
/* 80681B14  38 03 00 01 */	addi r0, r3, 1
/* 80681B18  98 1E 05 BC */	stb r0, 0x5bc(r30)
/* 80681B1C  38 00 00 01 */	li r0, 1
/* 80681B20  98 1E 05 BE */	stb r0, 0x5be(r30)
/* 80681B24  38 00 00 06 */	li r0, 6
/* 80681B28  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 80681B2C  48 00 00 34 */	b lbl_80681B60
lbl_80681B30:
/* 80681B30  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80681B34  28 00 00 01 */	cmplwi r0, 1
/* 80681B38  40 82 00 10 */	bne lbl_80681B48
/* 80681B3C  38 00 00 05 */	li r0, 5
/* 80681B40  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 80681B44  48 00 00 1C */	b lbl_80681B60
lbl_80681B48:
/* 80681B48  28 00 00 02 */	cmplwi r0, 2
/* 80681B4C  40 82 00 14 */	bne lbl_80681B60
/* 80681B50  38 00 00 0F */	li r0, 0xf
/* 80681B54  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 80681B58  38 00 00 0A */	li r0, 0xa
/* 80681B5C  B0 1E 06 AE */	sth r0, 0x6ae(r30)
lbl_80681B60:
/* 80681B60  3C 60 80 68 */	lis r3, data_80682638@ha /* 0x80682638@ha */
/* 80681B64  8C 03 26 38 */	lbzu r0, data_80682638@l(r3)  /* 0x80682638@l */
/* 80681B68  28 00 00 00 */	cmplwi r0, 0
/* 80681B6C  40 82 00 20 */	bne lbl_80681B8C
/* 80681B70  38 00 00 01 */	li r0, 1
/* 80681B74  98 1E 0A A0 */	stb r0, 0xaa0(r30)
/* 80681B78  98 03 00 00 */	stb r0, 0(r3)
/* 80681B7C  38 00 FF FF */	li r0, -1
/* 80681B80  3C 60 80 68 */	lis r3, l_HIO@ha /* 0x80682648@ha */
/* 80681B84  38 63 26 48 */	addi r3, r3, l_HIO@l /* 0x80682648@l */
/* 80681B88  98 03 00 04 */	stb r0, 4(r3)
lbl_80681B8C:
/* 80681B8C  38 00 00 04 */	li r0, 4
/* 80681B90  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80681B94  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 80681B98  80 63 00 04 */	lwz r3, 4(r3)
/* 80681B9C  38 03 00 24 */	addi r0, r3, 0x24
/* 80681BA0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80681BA4  7F C3 F3 78 */	mr r3, r30
/* 80681BA8  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80681BAC  FC 40 08 90 */	fmr f2, f1
/* 80681BB0  FC 60 08 90 */	fmr f3, f1
/* 80681BB4  4B 99 89 75 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80681BB8  7F C3 F3 78 */	mr r3, r30
/* 80681BBC  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80681BC0  FC 40 08 90 */	fmr f2, f1
/* 80681BC4  FC 60 08 90 */	fmr f3, f1
/* 80681BC8  4B 99 89 71 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80681BCC  38 00 00 01 */	li r0, 1
/* 80681BD0  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80681BD4  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 80681BD8  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80681BDC  38 80 00 1E */	li r4, 0x1e
/* 80681BE0  38 A0 00 00 */	li r5, 0
/* 80681BE4  7F C6 F3 78 */	mr r6, r30
/* 80681BE8  4B A0 1C 79 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80681BEC  38 7E 09 20 */	addi r3, r30, 0x920
/* 80681BF0  3C 80 80 68 */	lis r4, cc_sph_src@ha /* 0x80682530@ha */
/* 80681BF4  38 84 25 30 */	addi r4, r4, cc_sph_src@l /* 0x80682530@l */
/* 80681BF8  4B A0 2E 3D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80681BFC  38 1E 08 E4 */	addi r0, r30, 0x8e4
/* 80681C00  90 1E 09 64 */	stw r0, 0x964(r30)
/* 80681C04  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 80681C08  28 00 00 01 */	cmplwi r0, 1
/* 80681C0C  40 82 00 18 */	bne lbl_80681C24
/* 80681C10  38 00 01 00 */	li r0, 0x100
/* 80681C14  90 1E 09 30 */	stw r0, 0x930(r30)
/* 80681C18  38 00 00 01 */	li r0, 1
/* 80681C1C  98 1E 09 95 */	stb r0, 0x995(r30)
/* 80681C20  48 00 00 1C */	b lbl_80681C3C
lbl_80681C24:
/* 80681C24  28 00 00 02 */	cmplwi r0, 2
/* 80681C28  40 82 00 14 */	bne lbl_80681C3C
/* 80681C2C  38 00 01 00 */	li r0, 0x100
/* 80681C30  90 1E 09 30 */	stw r0, 0x930(r30)
/* 80681C34  38 00 00 02 */	li r0, 2
/* 80681C38  98 1E 09 95 */	stb r0, 0x995(r30)
lbl_80681C3C:
/* 80681C3C  38 00 00 00 */	li r0, 0
/* 80681C40  90 01 00 08 */	stw r0, 8(r1)
/* 80681C44  38 7E 07 0C */	addi r3, r30, 0x70c
/* 80681C48  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80681C4C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80681C50  7F C6 F3 78 */	mr r6, r30
/* 80681C54  38 E0 00 01 */	li r7, 1
/* 80681C58  39 1E 06 CC */	addi r8, r30, 0x6cc
/* 80681C5C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80681C60  39 40 00 00 */	li r10, 0
/* 80681C64  4B 9F 45 E5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80681C68  38 7E 06 CC */	addi r3, r30, 0x6cc
/* 80681C6C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80681C70  FC 40 08 90 */	fmr f2, f1
/* 80681C74  4B 9F 42 E5 */	bl SetWall__12dBgS_AcchCirFff
/* 80681C78  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80681C7C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80681C80  38 BE 05 38 */	addi r5, r30, 0x538
/* 80681C84  38 C0 00 03 */	li r6, 3
/* 80681C88  38 E0 00 01 */	li r7, 1
/* 80681C8C  4B C3 F4 09 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80681C90  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80681C94  3C 80 80 68 */	lis r4, d_a_e_ba__stringBase0@ha /* 0x8068248C@ha */
/* 80681C98  38 84 24 8C */	addi r4, r4, d_a_e_ba__stringBase0@l /* 0x8068248C@l */
/* 80681C9C  4B C3 FE F5 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80681CA0  38 1E 05 C8 */	addi r0, r30, 0x5c8
/* 80681CA4  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 80681CA8  38 00 00 01 */	li r0, 1
/* 80681CAC  98 1E 0A 76 */	stb r0, 0xa76(r30)
/* 80681CB0  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80681CB4  4B BE 5C A1 */	bl cM_rndF__Ff
/* 80681CB8  FC 00 08 1E */	fctiwz f0, f1
/* 80681CBC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80681CC0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80681CC4  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 80681CC8  7F C3 F3 78 */	mr r3, r30
/* 80681CCC  4B FF F4 5D */	bl daE_BA_Execute__FP10e_ba_class
lbl_80681CD0:
/* 80681CD0  7F A3 EB 78 */	mr r3, r29
lbl_80681CD4:
/* 80681CD4  39 61 00 30 */	addi r11, r1, 0x30
/* 80681CD8  4B CE 05 4D */	bl _restgpr_28
/* 80681CDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80681CE0  7C 08 03 A6 */	mtlr r0
/* 80681CE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80681CE8  4E 80 00 20 */	blr 
