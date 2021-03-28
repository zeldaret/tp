lbl_80D34D8C:
/* 80D34D8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D34D90  7C 08 02 A6 */	mflr r0
/* 80D34D94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D34D98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D34D9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D34DA0  7C 7F 1B 78 */	mr r31, r3
/* 80D34DA4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D34DA8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D34DAC  40 82 00 A8 */	bne lbl_80D34E54
/* 80D34DB0  7F E0 FB 79 */	or. r0, r31, r31
/* 80D34DB4  41 82 00 94 */	beq lbl_80D34E48
/* 80D34DB8  7C 1E 03 78 */	mr r30, r0
/* 80D34DBC  4B 2E 3D A8 */	b __ct__10fopAc_ac_cFv
/* 80D34DC0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D34DC4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D34DC8  90 1E 05 DC */	stw r0, 0x5dc(r30)
/* 80D34DCC  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80D34DD0  4B 34 E9 90 */	b __ct__10dCcD_GSttsFv
/* 80D34DD4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D34DD8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D34DDC  90 7E 05 DC */	stw r3, 0x5dc(r30)
/* 80D34DE0  38 03 00 20 */	addi r0, r3, 0x20
/* 80D34DE4  90 1E 05 E0 */	stw r0, 0x5e0(r30)
/* 80D34DE8  3B DE 06 00 */	addi r30, r30, 0x600
/* 80D34DEC  7F C3 F3 78 */	mr r3, r30
/* 80D34DF0  4B 34 EC 38 */	b __ct__12dCcD_GObjInfFv
/* 80D34DF4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D34DF8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D34DFC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D34E00  3C 60 80 D3 */	lis r3, __vt__8cM3dGAab@ha
/* 80D34E04  38 03 52 64 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D34E08  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80D34E0C  3C 60 80 D3 */	lis r3, __vt__8cM3dGSph@ha
/* 80D34E10  38 03 52 58 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80D34E14  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80D34E18  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80D34E1C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80D34E20  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D34E24  38 03 00 58 */	addi r0, r3, 0x58
/* 80D34E28  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80D34E2C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80D34E30  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80D34E34  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D34E38  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D34E3C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D34E40  38 03 00 84 */	addi r0, r3, 0x84
/* 80D34E44  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80D34E48:
/* 80D34E48  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D34E4C  60 00 00 08 */	ori r0, r0, 8
/* 80D34E50  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D34E54:
/* 80D34E54  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D34E58  3C 80 80 D3 */	lis r4, stringBase0@ha
/* 80D34E5C  38 84 51 BC */	addi r4, r4, stringBase0@l
/* 80D34E60  4B 2F 80 5C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D34E64  7C 7E 1B 78 */	mr r30, r3
/* 80D34E68  2C 1E 00 04 */	cmpwi r30, 4
/* 80D34E6C  40 82 01 CC */	bne lbl_80D35038
/* 80D34E70  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D34E74  54 04 46 3E */	srwi r4, r0, 0x18
/* 80D34E78  2C 04 00 FF */	cmpwi r4, 0xff
/* 80D34E7C  41 82 00 28 */	beq lbl_80D34EA4
/* 80D34E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D34E84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D34E88  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D34E8C  7C 05 07 74 */	extsb r5, r0
/* 80D34E90  4B 30 04 D0 */	b isSwitch__10dSv_info_cCFii
/* 80D34E94  2C 03 00 00 */	cmpwi r3, 0
/* 80D34E98  41 82 00 0C */	beq lbl_80D34EA4
/* 80D34E9C  38 60 00 05 */	li r3, 5
/* 80D34EA0  48 00 01 9C */	b lbl_80D3503C
lbl_80D34EA4:
/* 80D34EA4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D34EA8  98 1F 05 70 */	stb r0, 0x570(r31)
/* 80D34EAC  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80D34EB0  28 00 00 FF */	cmplwi r0, 0xff
/* 80D34EB4  40 82 00 0C */	bne lbl_80D34EC0
/* 80D34EB8  38 00 00 00 */	li r0, 0
/* 80D34EBC  98 1F 05 70 */	stb r0, 0x570(r31)
lbl_80D34EC0:
/* 80D34EC0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D34EC4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D34EC8  98 1F 05 71 */	stb r0, 0x571(r31)
/* 80D34ECC  7F E3 FB 78 */	mr r3, r31
/* 80D34ED0  3C 80 80 D3 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80D34ED4  38 84 4B 94 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80D34ED8  38 A0 0A 20 */	li r5, 0xa20
/* 80D34EDC  4B 2E 55 D4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D34EE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D34EE4  40 82 00 0C */	bne lbl_80D34EF0
/* 80D34EE8  38 60 00 05 */	li r3, 5
/* 80D34EEC  48 00 01 50 */	b lbl_80D3503C
lbl_80D34EF0:
/* 80D34EF0  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80D34EF4  28 04 00 00 */	cmplwi r4, 0
/* 80D34EF8  41 82 00 28 */	beq lbl_80D34F20
/* 80D34EFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D34F00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D34F04  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D34F08  7F E5 FB 78 */	mr r5, r31
/* 80D34F0C  4B 33 FA FC */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D34F10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D34F14  41 82 00 0C */	beq lbl_80D34F20
/* 80D34F18  38 60 00 05 */	li r3, 5
/* 80D34F1C  48 00 01 20 */	b lbl_80D3503C
lbl_80D34F20:
/* 80D34F20  3C 60 80 D3 */	lis r3, data_80D35290@ha
/* 80D34F24  8C 03 52 90 */	lbzu r0, data_80D35290@l(r3)
/* 80D34F28  28 00 00 00 */	cmplwi r0, 0
/* 80D34F2C  40 82 00 20 */	bne lbl_80D34F4C
/* 80D34F30  38 00 00 01 */	li r0, 1
/* 80D34F34  98 1F 07 39 */	stb r0, 0x739(r31)
/* 80D34F38  98 03 00 00 */	stb r0, 0(r3)
/* 80D34F3C  38 00 FF FF */	li r0, -1
/* 80D34F40  3C 60 80 D3 */	lis r3, l_HIO@ha
/* 80D34F44  38 63 52 A0 */	addi r3, r3, l_HIO@l
/* 80D34F48  98 03 00 04 */	stb r0, 4(r3)
lbl_80D34F4C:
/* 80D34F4C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D34F50  38 03 00 24 */	addi r0, r3, 0x24
/* 80D34F54  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D34F58  7F E3 FB 78 */	mr r3, r31
/* 80D34F5C  3C 80 80 D3 */	lis r4, lit_4014@ha
/* 80D34F60  C0 24 51 A8 */	lfs f1, lit_4014@l(r4)
/* 80D34F64  FC 40 08 90 */	fmr f2, f1
/* 80D34F68  FC 60 08 90 */	fmr f3, f1
/* 80D34F6C  4B 2E 55 BC */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80D34F70  7F E3 FB 78 */	mr r3, r31
/* 80D34F74  3C 80 80 D3 */	lis r4, lit_4015@ha
/* 80D34F78  C0 24 51 AC */	lfs f1, lit_4015@l(r4)
/* 80D34F7C  FC 40 08 90 */	fmr f2, f1
/* 80D34F80  FC 60 08 90 */	fmr f3, f1
/* 80D34F84  4B 2E 55 B4 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80D34F88  38 00 00 1E */	li r0, 0x1e
/* 80D34F8C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80D34F90  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 80D34F94  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80D34F98  38 80 00 FA */	li r4, 0xfa
/* 80D34F9C  38 A0 00 00 */	li r5, 0
/* 80D34FA0  7F E6 FB 78 */	mr r6, r31
/* 80D34FA4  4B 34 E8 BC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D34FA8  38 7F 06 00 */	addi r3, r31, 0x600
/* 80D34FAC  3C 80 80 D3 */	lis r4, cc_sph_src@ha
/* 80D34FB0  38 84 51 C8 */	addi r4, r4, cc_sph_src@l
/* 80D34FB4  4B 34 FA 80 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80D34FB8  38 1F 05 C4 */	addi r0, r31, 0x5c4
/* 80D34FBC  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80D34FC0  80 1F 06 9C */	lwz r0, 0x69c(r31)
/* 80D34FC4  60 00 00 04 */	ori r0, r0, 4
/* 80D34FC8  90 1F 06 9C */	stw r0, 0x69c(r31)
/* 80D34FCC  88 1F 05 71 */	lbz r0, 0x571(r31)
/* 80D34FD0  28 00 00 FF */	cmplwi r0, 0xff
/* 80D34FD4  41 82 00 44 */	beq lbl_80D35018
/* 80D34FD8  28 00 00 00 */	cmplwi r0, 0
/* 80D34FDC  41 82 00 3C */	beq lbl_80D35018
/* 80D34FE0  3C 60 80 D3 */	lis r3, lit_4017@ha
/* 80D34FE4  C8 23 51 B4 */	lfd f1, lit_4017@l(r3)
/* 80D34FE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D34FEC  3C 60 43 30 */	lis r3, 0x4330
/* 80D34FF0  90 61 00 08 */	stw r3, 8(r1)
/* 80D34FF4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D34FF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D34FFC  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80D35000  88 1F 05 71 */	lbz r0, 0x571(r31)
/* 80D35004  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D35008  90 61 00 10 */	stw r3, 0x10(r1)
/* 80D3500C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D35010  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D35014  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
lbl_80D35018:
/* 80D35018  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D3501C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80D35020  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D35024  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80D35028  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D3502C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80D35030  7F E3 FB 78 */	mr r3, r31
/* 80D35034  4B FF F7 61 */	bl daObj_Web0_Execute__FP14obj_web0_class
lbl_80D35038:
/* 80D35038  7F C3 F3 78 */	mr r3, r30
lbl_80D3503C:
/* 80D3503C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D35040  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D35044  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D35048  7C 08 03 A6 */	mtlr r0
/* 80D3504C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D35050  4E 80 00 20 */	blr 
