lbl_80693BD4:
/* 80693BD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80693BD8  7C 08 02 A6 */	mflr r0
/* 80693BDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80693BE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80693BE4  4B CC E5 F5 */	bl _savegpr_28
/* 80693BE8  7C 7E 1B 78 */	mr r30, r3
/* 80693BEC  3C 80 80 69 */	lis r4, lit_3788@ha /* 0x80694690@ha */
/* 80693BF0  3B E4 46 90 */	addi r31, r4, lit_3788@l /* 0x80694690@l */
/* 80693BF4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80693BF8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80693BFC  40 82 00 E8 */	bne lbl_80693CE4
/* 80693C00  7F C0 F3 79 */	or. r0, r30, r30
/* 80693C04  41 82 00 D4 */	beq lbl_80693CD8
/* 80693C08  7C 1D 03 78 */	mr r29, r0
/* 80693C0C  4B 98 4F 59 */	bl __ct__10fopAc_ac_cFv
/* 80693C10  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80693C14  4B C2 D3 51 */	bl __ct__15Z2CreatureEnemyFv
/* 80693C18  38 7D 06 CC */	addi r3, r29, 0x6cc
/* 80693C1C  4B 9E 22 91 */	bl __ct__12dBgS_AcchCirFv
/* 80693C20  3B 9D 07 0C */	addi r28, r29, 0x70c
/* 80693C24  7F 83 E3 78 */	mr r3, r28
/* 80693C28  4B 9E 24 79 */	bl __ct__9dBgS_AcchFv
/* 80693C2C  3C 60 80 69 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8069491C@ha */
/* 80693C30  38 63 49 1C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8069491C@l */
/* 80693C34  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80693C38  38 03 00 0C */	addi r0, r3, 0xc
/* 80693C3C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80693C40  38 03 00 18 */	addi r0, r3, 0x18
/* 80693C44  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80693C48  38 7C 00 14 */	addi r3, r28, 0x14
/* 80693C4C  4B 9E 52 1D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80693C50  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80693C54  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80693C58  90 1D 08 FC */	stw r0, 0x8fc(r29)
/* 80693C5C  38 7D 09 00 */	addi r3, r29, 0x900
/* 80693C60  4B 9E FB 01 */	bl __ct__10dCcD_GSttsFv
/* 80693C64  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80693C68  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80693C6C  90 7D 08 FC */	stw r3, 0x8fc(r29)
/* 80693C70  38 03 00 20 */	addi r0, r3, 0x20
/* 80693C74  90 1D 09 00 */	stw r0, 0x900(r29)
/* 80693C78  3B 9D 09 20 */	addi r28, r29, 0x920
/* 80693C7C  7F 83 E3 78 */	mr r3, r28
/* 80693C80  4B 9E FD A9 */	bl __ct__12dCcD_GObjInfFv
/* 80693C84  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80693C88  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80693C8C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80693C90  3C 60 80 69 */	lis r3, __vt__8cM3dGAab@ha /* 0x80694910@ha */
/* 80693C94  38 03 49 10 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80694910@l */
/* 80693C98  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80693C9C  3C 60 80 69 */	lis r3, __vt__8cM3dGSph@ha /* 0x80694904@ha */
/* 80693CA0  38 03 49 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80694904@l */
/* 80693CA4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80693CA8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80693CAC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80693CB0  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80693CB4  38 03 00 58 */	addi r0, r3, 0x58
/* 80693CB8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80693CBC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80693CC0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80693CC4  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80693CC8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80693CCC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80693CD0  38 03 00 84 */	addi r0, r3, 0x84
/* 80693CD4  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_80693CD8:
/* 80693CD8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80693CDC  60 00 00 08 */	ori r0, r0, 8
/* 80693CE0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80693CE4:
/* 80693CE4  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80693CE8  3C 80 80 69 */	lis r4, d_a_e_bu__stringBase0@ha /* 0x80694770@ha */
/* 80693CEC  38 84 47 70 */	addi r4, r4, d_a_e_bu__stringBase0@l /* 0x80694770@l */
/* 80693CF0  4B 99 91 CD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80693CF4  7C 7D 1B 78 */	mr r29, r3
/* 80693CF8  2C 1D 00 04 */	cmpwi r29, 4
/* 80693CFC  40 82 02 A8 */	bne lbl_80693FA4
/* 80693D00  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80693D04  54 04 46 3E */	srwi r4, r0, 0x18
/* 80693D08  2C 04 00 FF */	cmpwi r4, 0xff
/* 80693D0C  41 82 00 28 */	beq lbl_80693D34
/* 80693D10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80693D14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80693D18  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80693D1C  7C 05 07 74 */	extsb r5, r0
/* 80693D20  4B 9A 16 41 */	bl isSwitch__10dSv_info_cCFii
/* 80693D24  2C 03 00 00 */	cmpwi r3, 0
/* 80693D28  41 82 00 0C */	beq lbl_80693D34
/* 80693D2C  38 60 00 05 */	li r3, 5
/* 80693D30  48 00 02 78 */	b lbl_80693FA8
lbl_80693D34:
/* 80693D34  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80693D38  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 80693D3C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80693D40  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80693D44  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 80693D48  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80693D4C  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80693D50  98 1E 05 B6 */	stb r0, 0x5b6(r30)
/* 80693D54  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80693D58  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80693D5C  98 1E 05 B7 */	stb r0, 0x5b7(r30)
/* 80693D60  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80693D64  28 00 00 FF */	cmplwi r0, 0xff
/* 80693D68  40 82 00 0C */	bne lbl_80693D74
/* 80693D6C  38 00 00 00 */	li r0, 0
/* 80693D70  98 1E 05 B4 */	stb r0, 0x5b4(r30)
lbl_80693D74:
/* 80693D74  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 80693D78  28 00 00 FF */	cmplwi r0, 0xff
/* 80693D7C  40 82 00 0C */	bne lbl_80693D88
/* 80693D80  38 00 00 0A */	li r0, 0xa
/* 80693D84  98 1E 05 B5 */	stb r0, 0x5b5(r30)
lbl_80693D88:
/* 80693D88  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 80693D8C  28 00 00 0F */	cmplwi r0, 0xf
/* 80693D90  40 82 00 0C */	bne lbl_80693D9C
/* 80693D94  38 00 00 00 */	li r0, 0
/* 80693D98  98 1E 05 B6 */	stb r0, 0x5b6(r30)
lbl_80693D9C:
/* 80693D9C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80693DA0  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 80693DA4  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 80693DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80693DAC  3C 00 43 30 */	lis r0, 0x4330
/* 80693DB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80693DB4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80693DB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80693DBC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80693DC0  D0 1E 06 8C */	stfs f0, 0x68c(r30)
/* 80693DC4  7F C3 F3 78 */	mr r3, r30
/* 80693DC8  3C 80 80 69 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80693AA0@ha */
/* 80693DCC  38 84 3A A0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80693AA0@l */
/* 80693DD0  38 A0 15 C0 */	li r5, 0x15c0
/* 80693DD4  4B 98 66 DD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80693DD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80693DDC  40 82 00 0C */	bne lbl_80693DE8
/* 80693DE0  38 60 00 05 */	li r3, 5
/* 80693DE4  48 00 01 C4 */	b lbl_80693FA8
lbl_80693DE8:
/* 80693DE8  88 7E 05 B7 */	lbz r3, 0x5b7(r30)
/* 80693DEC  28 03 00 FF */	cmplwi r3, 0xff
/* 80693DF0  41 82 00 48 */	beq lbl_80693E38
/* 80693DF4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80693DF8  7C 04 07 74 */	extsb r4, r0
/* 80693DFC  4B 9B D9 F1 */	bl dPath_GetRoomPath__Fii
/* 80693E00  90 7E 05 BC */	stw r3, 0x5bc(r30)
/* 80693E04  80 1E 05 BC */	lwz r0, 0x5bc(r30)
/* 80693E08  28 00 00 00 */	cmplwi r0, 0
/* 80693E0C  40 82 00 0C */	bne lbl_80693E18
/* 80693E10  38 60 00 05 */	li r3, 5
/* 80693E14  48 00 01 94 */	b lbl_80693FA8
lbl_80693E18:
/* 80693E18  88 7E 05 B7 */	lbz r3, 0x5b7(r30)
/* 80693E1C  38 03 00 01 */	addi r0, r3, 1
/* 80693E20  98 1E 05 B8 */	stb r0, 0x5b8(r30)
/* 80693E24  38 00 00 01 */	li r0, 1
/* 80693E28  98 1E 05 BA */	stb r0, 0x5ba(r30)
/* 80693E2C  38 00 00 06 */	li r0, 6
/* 80693E30  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 80693E34  48 00 00 18 */	b lbl_80693E4C
lbl_80693E38:
/* 80693E38  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80693E3C  28 00 00 01 */	cmplwi r0, 1
/* 80693E40  40 82 00 0C */	bne lbl_80693E4C
/* 80693E44  38 00 00 05 */	li r0, 5
/* 80693E48  B0 1E 06 72 */	sth r0, 0x672(r30)
lbl_80693E4C:
/* 80693E4C  3C 60 80 69 */	lis r3, data_80694958@ha /* 0x80694958@ha */
/* 80693E50  8C 03 49 58 */	lbzu r0, data_80694958@l(r3)  /* 0x80694958@l */
/* 80693E54  28 00 00 00 */	cmplwi r0, 0
/* 80693E58  40 82 00 20 */	bne lbl_80693E78
/* 80693E5C  38 00 00 01 */	li r0, 1
/* 80693E60  98 1E 0A A0 */	stb r0, 0xaa0(r30)
/* 80693E64  98 03 00 00 */	stb r0, 0(r3)
/* 80693E68  38 00 FF FF */	li r0, -1
/* 80693E6C  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x80694968@ha */
/* 80693E70  38 63 49 68 */	addi r3, r3, l_HIO@l /* 0x80694968@l */
/* 80693E74  98 03 00 04 */	stb r0, 4(r3)
lbl_80693E78:
/* 80693E78  38 00 00 04 */	li r0, 4
/* 80693E7C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80693E80  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80693E84  80 63 00 04 */	lwz r3, 4(r3)
/* 80693E88  38 03 00 24 */	addi r0, r3, 0x24
/* 80693E8C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80693E90  7F C3 F3 78 */	mr r3, r30
/* 80693E94  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80693E98  FC 40 08 90 */	fmr f2, f1
/* 80693E9C  FC 60 08 90 */	fmr f3, f1
/* 80693EA0  4B 98 66 89 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80693EA4  7F C3 F3 78 */	mr r3, r30
/* 80693EA8  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80693EAC  FC 40 08 90 */	fmr f2, f1
/* 80693EB0  FC 60 08 90 */	fmr f3, f1
/* 80693EB4  4B 98 66 85 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80693EB8  38 00 00 28 */	li r0, 0x28
/* 80693EBC  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80693EC0  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 80693EC4  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80693EC8  38 80 00 64 */	li r4, 0x64
/* 80693ECC  38 A0 00 00 */	li r5, 0
/* 80693ED0  7F C6 F3 78 */	mr r6, r30
/* 80693ED4  4B 9E F9 8D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80693ED8  38 7E 09 20 */	addi r3, r30, 0x920
/* 80693EDC  3C 80 80 69 */	lis r4, cc_sph_src@ha /* 0x80694850@ha */
/* 80693EE0  38 84 48 50 */	addi r4, r4, cc_sph_src@l /* 0x80694850@l */
/* 80693EE4  4B 9F 0B 51 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80693EE8  38 1E 08 E4 */	addi r0, r30, 0x8e4
/* 80693EEC  90 1E 09 64 */	stw r0, 0x964(r30)
/* 80693EF0  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 80693EF4  28 00 00 01 */	cmplwi r0, 1
/* 80693EF8  40 82 00 18 */	bne lbl_80693F10
/* 80693EFC  38 00 01 00 */	li r0, 0x100
/* 80693F00  90 1E 09 30 */	stw r0, 0x930(r30)
/* 80693F04  38 00 00 01 */	li r0, 1
/* 80693F08  98 1E 09 95 */	stb r0, 0x995(r30)
/* 80693F0C  48 00 00 1C */	b lbl_80693F28
lbl_80693F10:
/* 80693F10  28 00 00 02 */	cmplwi r0, 2
/* 80693F14  40 82 00 14 */	bne lbl_80693F28
/* 80693F18  38 00 01 00 */	li r0, 0x100
/* 80693F1C  90 1E 09 30 */	stw r0, 0x930(r30)
/* 80693F20  38 00 00 02 */	li r0, 2
/* 80693F24  98 1E 09 95 */	stb r0, 0x995(r30)
lbl_80693F28:
/* 80693F28  38 00 00 00 */	li r0, 0
/* 80693F2C  90 01 00 08 */	stw r0, 8(r1)
/* 80693F30  38 7E 07 0C */	addi r3, r30, 0x70c
/* 80693F34  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80693F38  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80693F3C  7F C6 F3 78 */	mr r6, r30
/* 80693F40  38 E0 00 01 */	li r7, 1
/* 80693F44  39 1E 06 CC */	addi r8, r30, 0x6cc
/* 80693F48  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80693F4C  39 40 00 00 */	li r10, 0
/* 80693F50  4B 9E 22 F9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80693F54  38 7E 06 CC */	addi r3, r30, 0x6cc
/* 80693F58  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80693F5C  FC 40 08 90 */	fmr f2, f1
/* 80693F60  4B 9E 1F F9 */	bl SetWall__12dBgS_AcchCirFff
/* 80693F64  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80693F68  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80693F6C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80693F70  38 C0 00 03 */	li r6, 3
/* 80693F74  38 E0 00 01 */	li r7, 1
/* 80693F78  4B C2 D1 1D */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80693F7C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80693F80  90 7E 0A 60 */	stw r3, 0xa60(r30)
/* 80693F84  3C 80 80 69 */	lis r4, d_a_e_bu__stringBase0@ha /* 0x80694770@ha */
/* 80693F88  38 84 47 70 */	addi r4, r4, d_a_e_bu__stringBase0@l /* 0x80694770@l */
/* 80693F8C  38 84 00 05 */	addi r4, r4, 5
/* 80693F90  4B C2 DC 01 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80693F94  38 00 00 04 */	li r0, 4
/* 80693F98  98 1E 0A 76 */	stb r0, 0xa76(r30)
/* 80693F9C  7F C3 F3 78 */	mr r3, r30
/* 80693FA0  4B FF F5 89 */	bl daE_BU_Execute__FP10e_bu_class
lbl_80693FA4:
/* 80693FA4  7F A3 EB 78 */	mr r3, r29
lbl_80693FA8:
/* 80693FA8  39 61 00 30 */	addi r11, r1, 0x30
/* 80693FAC  4B CC E2 79 */	bl _restgpr_28
/* 80693FB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80693FB4  7C 08 03 A6 */	mtlr r0
/* 80693FB8  38 21 00 30 */	addi r1, r1, 0x30
/* 80693FBC  4E 80 00 20 */	blr 
