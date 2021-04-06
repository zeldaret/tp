lbl_80734DA8:
/* 80734DA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80734DAC  7C 08 02 A6 */	mflr r0
/* 80734DB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80734DB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80734DB8  4B C2 D4 21 */	bl _savegpr_28
/* 80734DBC  7C 7F 1B 78 */	mr r31, r3
/* 80734DC0  3C 80 80 73 */	lis r4, lit_3911@ha /* 0x80735B28@ha */
/* 80734DC4  3B C4 5B 28 */	addi r30, r4, lit_3911@l /* 0x80735B28@l */
/* 80734DC8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80734DCC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80734DD0  40 82 00 C8 */	bne lbl_80734E98
/* 80734DD4  7F E0 FB 79 */	or. r0, r31, r31
/* 80734DD8  41 82 00 B4 */	beq lbl_80734E8C
/* 80734DDC  7C 1D 03 78 */	mr r29, r0
/* 80734DE0  4B 8E 3D 85 */	bl __ct__10fopAc_ac_cFv
/* 80734DE4  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80734DE8  4B B8 C1 7D */	bl __ct__15Z2CreatureEnemyFv
/* 80734DEC  38 7D 07 08 */	addi r3, r29, 0x708
/* 80734DF0  4B 94 10 BD */	bl __ct__12dBgS_AcchCirFv
/* 80734DF4  3B 9D 07 48 */	addi r28, r29, 0x748
/* 80734DF8  7F 83 E3 78 */	mr r3, r28
/* 80734DFC  4B 94 12 A5 */	bl __ct__9dBgS_AcchFv
/* 80734E00  3C 60 80 73 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80735FBC@ha */
/* 80734E04  38 63 5F BC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80735FBC@l */
/* 80734E08  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80734E0C  38 03 00 0C */	addi r0, r3, 0xc
/* 80734E10  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80734E14  38 03 00 18 */	addi r0, r3, 0x18
/* 80734E18  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80734E1C  38 7C 00 14 */	addi r3, r28, 0x14
/* 80734E20  4B 94 40 49 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80734E24  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80734E28  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80734E2C  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80734E30  38 7D 09 3C */	addi r3, r29, 0x93c
/* 80734E34  4B 94 E9 2D */	bl __ct__10dCcD_GSttsFv
/* 80734E38  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80734E3C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80734E40  90 7D 09 38 */	stw r3, 0x938(r29)
/* 80734E44  38 03 00 20 */	addi r0, r3, 0x20
/* 80734E48  90 1D 09 3C */	stw r0, 0x93c(r29)
/* 80734E4C  38 7D 09 5C */	addi r3, r29, 0x95c
/* 80734E50  3C 80 80 73 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80735378@ha */
/* 80734E54  38 84 53 78 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80735378@l */
/* 80734E58  3C A0 80 73 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x807352AC@ha */
/* 80734E5C  38 A5 52 AC */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x807352AC@l */
/* 80734E60  38 C0 01 38 */	li r6, 0x138
/* 80734E64  38 E0 00 02 */	li r7, 2
/* 80734E68  4B C2 CE F9 */	bl __construct_array
/* 80734E6C  38 7D 0B CC */	addi r3, r29, 0xbcc
/* 80734E70  3C 80 80 73 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80735378@ha */
/* 80734E74  38 84 53 78 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80735378@l */
/* 80734E78  3C A0 80 73 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x807352AC@ha */
/* 80734E7C  38 A5 52 AC */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x807352AC@l */
/* 80734E80  38 C0 01 38 */	li r6, 0x138
/* 80734E84  38 E0 00 02 */	li r7, 2
/* 80734E88  4B C2 CE D9 */	bl __construct_array
lbl_80734E8C:
/* 80734E8C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80734E90  60 00 00 08 */	ori r0, r0, 8
/* 80734E94  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80734E98:
/* 80734E98  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80734E9C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80734EA0  90 1F 06 B4 */	stw r0, 0x6b4(r31)
/* 80734EA4  80 1F 06 B4 */	lwz r0, 0x6b4(r31)
/* 80734EA8  2C 00 00 FF */	cmpwi r0, 0xff
/* 80734EAC  40 82 00 0C */	bne lbl_80734EB8
/* 80734EB0  38 00 00 00 */	li r0, 0
/* 80734EB4  90 1F 06 B4 */	stw r0, 0x6b4(r31)
lbl_80734EB8:
/* 80734EB8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80734EBC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80734EC0  28 00 00 01 */	cmplwi r0, 1
/* 80734EC4  40 82 00 18 */	bne lbl_80734EDC
/* 80734EC8  3C 60 80 73 */	lis r3, l_HIO@ha /* 0x80736060@ha */
/* 80734ECC  38 63 60 60 */	addi r3, r3, l_HIO@l /* 0x80736060@l */
/* 80734ED0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80734ED4  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 80734ED8  48 00 00 14 */	b lbl_80734EEC
lbl_80734EDC:
/* 80734EDC  3C 60 80 73 */	lis r3, l_HIO@ha /* 0x80736060@ha */
/* 80734EE0  38 63 60 60 */	addi r3, r3, l_HIO@l /* 0x80736060@l */
/* 80734EE4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80734EE8  D0 1F 06 94 */	stfs f0, 0x694(r31)
lbl_80734EEC:
/* 80734EEC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80734EF0  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80734EF4  98 1F 06 E0 */	stb r0, 0x6e0(r31)
/* 80734EF8  88 9F 06 E0 */	lbz r4, 0x6e0(r31)
/* 80734EFC  28 04 00 FF */	cmplwi r4, 0xff
/* 80734F00  41 82 00 28 */	beq lbl_80734F28
/* 80734F04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80734F08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80734F0C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80734F10  7C 05 07 74 */	extsb r5, r0
/* 80734F14  4B 90 04 4D */	bl isSwitch__10dSv_info_cCFii
/* 80734F18  2C 03 00 00 */	cmpwi r3, 0
/* 80734F1C  41 82 00 0C */	beq lbl_80734F28
/* 80734F20  38 60 00 05 */	li r3, 5
/* 80734F24  48 00 03 70 */	b lbl_80735294
lbl_80734F28:
/* 80734F28  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80734F2C  54 00 46 3E */	srwi r0, r0, 0x18
/* 80734F30  98 1F 06 E1 */	stb r0, 0x6e1(r31)
/* 80734F34  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80734F38  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80734F3C  28 00 00 FF */	cmplwi r0, 0xff
/* 80734F40  40 82 00 08 */	bne lbl_80734F48
/* 80734F44  38 00 00 00 */	li r0, 0
lbl_80734F48:
/* 80734F48  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80734F4C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80734F50  C8 3E 01 C8 */	lfd f1, 0x1c8(r30)
/* 80734F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80734F58  3C 00 43 30 */	lis r0, 0x4330
/* 80734F5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80734F60  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80734F64  EC 00 08 28 */	fsubs f0, f0, f1
/* 80734F68  EC 02 00 32 */	fmuls f0, f2, f0
/* 80734F6C  D0 1F 06 90 */	stfs f0, 0x690(r31)
/* 80734F70  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80734F74  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80734F78  28 00 00 FF */	cmplwi r0, 0xff
/* 80734F7C  41 82 00 0C */	beq lbl_80734F88
/* 80734F80  28 00 00 00 */	cmplwi r0, 0
/* 80734F84  40 82 00 14 */	bne lbl_80734F98
lbl_80734F88:
/* 80734F88  3C 60 80 73 */	lis r3, d_a_e_oc__stringBase0@ha /* 0x80735D0C@ha */
/* 80734F8C  38 03 5D 0C */	addi r0, r3, d_a_e_oc__stringBase0@l /* 0x80735D0C@l */
/* 80734F90  90 1F 06 A4 */	stw r0, 0x6a4(r31)
/* 80734F94  48 00 00 14 */	b lbl_80734FA8
lbl_80734F98:
/* 80734F98  3C 60 80 73 */	lis r3, d_a_e_oc__stringBase0@ha /* 0x80735D0C@ha */
/* 80734F9C  38 63 5D 0C */	addi r3, r3, d_a_e_oc__stringBase0@l /* 0x80735D0C@l */
/* 80734FA0  38 03 00 12 */	addi r0, r3, 0x12
/* 80734FA4  90 1F 06 A4 */	stw r0, 0x6a4(r31)
lbl_80734FA8:
/* 80734FA8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80734FAC  80 9F 06 A4 */	lwz r4, 0x6a4(r31)
/* 80734FB0  4B 8F 7F 0D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80734FB4  7C 7D 1B 78 */	mr r29, r3
/* 80734FB8  2C 1D 00 04 */	cmpwi r29, 4
/* 80734FBC  40 82 02 D4 */	bne lbl_80735290
/* 80734FC0  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80734FC4  3C 80 80 73 */	lis r4, d_a_e_oc__stringBase0@ha /* 0x80735D0C@ha */
/* 80734FC8  38 84 5D 0C */	addi r4, r4, d_a_e_oc__stringBase0@l /* 0x80735D0C@l */
/* 80734FCC  38 84 00 05 */	addi r4, r4, 5
/* 80734FD0  4B 8F 7E ED */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80734FD4  7C 7D 1B 78 */	mr r29, r3
/* 80734FD8  2C 1D 00 04 */	cmpwi r29, 4
/* 80734FDC  40 82 02 B4 */	bne lbl_80735290
/* 80734FE0  7F E3 FB 78 */	mr r3, r31
/* 80734FE4  3C 80 80 73 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80734D88@ha */
/* 80734FE8  38 84 4D 88 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80734D88@l */
/* 80734FEC  38 A0 2E 40 */	li r5, 0x2e40
/* 80734FF0  4B 8E 54 C1 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80734FF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80734FF8  40 82 00 0C */	bne lbl_80735004
/* 80734FFC  38 60 00 05 */	li r3, 5
/* 80735000  48 00 02 94 */	b lbl_80735294
lbl_80735004:
/* 80735004  3C 60 80 73 */	lis r3, data_80736050@ha /* 0x80736050@ha */
/* 80735008  8C 03 60 50 */	lbzu r0, data_80736050@l(r3)  /* 0x80736050@l */
/* 8073500C  28 00 00 00 */	cmplwi r0, 0
/* 80735010  40 82 00 20 */	bne lbl_80735030
/* 80735014  38 00 00 01 */	li r0, 1
/* 80735018  98 1F 0E 84 */	stb r0, 0xe84(r31)
/* 8073501C  98 03 00 00 */	stb r0, 0(r3)
/* 80735020  38 00 FF FF */	li r0, -1
/* 80735024  3C 60 80 73 */	lis r3, l_HIO@ha /* 0x80736060@ha */
/* 80735028  38 63 60 60 */	addi r3, r3, l_HIO@l /* 0x80736060@l */
/* 8073502C  98 03 00 04 */	stb r0, 4(r3)
lbl_80735030:
/* 80735030  38 00 00 04 */	li r0, 4
/* 80735034  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80735038  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8073503C  80 63 00 04 */	lwz r3, 4(r3)
/* 80735040  38 03 00 24 */	addi r0, r3, 0x24
/* 80735044  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80735048  7F E3 FB 78 */	mr r3, r31
/* 8073504C  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80735050  FC 40 08 90 */	fmr f2, f1
/* 80735054  FC 60 08 90 */	fmr f3, f1
/* 80735058  4B 8E 54 D1 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8073505C  7F E3 FB 78 */	mr r3, r31
/* 80735060  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80735064  FC 40 08 90 */	fmr f2, f1
/* 80735068  FC 60 08 90 */	fmr f3, f1
/* 8073506C  4B 8E 54 CD */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80735070  38 00 00 00 */	li r0, 0
/* 80735074  90 01 00 08 */	stw r0, 8(r1)
/* 80735078  38 7F 07 48 */	addi r3, r31, 0x748
/* 8073507C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80735080  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80735084  7F E6 FB 78 */	mr r6, r31
/* 80735088  38 E0 00 01 */	li r7, 1
/* 8073508C  39 1F 07 08 */	addi r8, r31, 0x708
/* 80735090  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80735094  39 40 00 00 */	li r10, 0
/* 80735098  4B 94 11 B1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8073509C  3C 60 80 73 */	lis r3, d_a_e_oc__stringBase0@ha /* 0x80735D0C@ha */
/* 807350A0  38 63 5D 0C */	addi r3, r3, d_a_e_oc__stringBase0@l /* 0x80735D0C@l */
/* 807350A4  38 63 00 0B */	addi r3, r3, 0xb
/* 807350A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807350AC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807350B0  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 807350B4  4B C3 38 E1 */	bl strcmp
/* 807350B8  2C 03 00 00 */	cmpwi r3, 0
/* 807350BC  40 82 00 24 */	bne lbl_807350E0
/* 807350C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807350C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807350C8  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 807350CC  2C 00 00 0C */	cmpwi r0, 0xc
/* 807350D0  40 82 00 10 */	bne lbl_807350E0
/* 807350D4  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 807350D8  D0 1F 07 38 */	stfs f0, 0x738(r31)
/* 807350DC  48 00 00 0C */	b lbl_807350E8
lbl_807350E0:
/* 807350E0  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 807350E4  D0 1F 07 38 */	stfs f0, 0x738(r31)
lbl_807350E8:
/* 807350E8  38 7F 07 08 */	addi r3, r31, 0x708
/* 807350EC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807350F0  4B 94 0E 51 */	bl SetWallR__12dBgS_AcchCirFf
/* 807350F4  80 9F 06 A4 */	lwz r4, 0x6a4(r31)
/* 807350F8  3C 60 80 73 */	lis r3, d_a_e_oc__stringBase0@ha /* 0x80735D0C@ha */
/* 807350FC  38 03 5D 0C */	addi r0, r3, d_a_e_oc__stringBase0@l /* 0x80735D0C@l */
/* 80735100  7C 04 00 40 */	cmplw r4, r0
/* 80735104  40 82 00 14 */	bne lbl_80735118
/* 80735108  38 00 00 28 */	li r0, 0x28
/* 8073510C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80735110  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 80735114  48 00 00 10 */	b lbl_80735124
lbl_80735118:
/* 80735118  38 00 00 DC */	li r0, 0xdc
/* 8073511C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80735120  B0 1F 05 60 */	sth r0, 0x560(r31)
lbl_80735124:
/* 80735124  38 7F 09 20 */	addi r3, r31, 0x920
/* 80735128  38 80 00 64 */	li r4, 0x64
/* 8073512C  38 A0 00 00 */	li r5, 0
/* 80735130  7F E6 FB 78 */	mr r6, r31
/* 80735134  4B 94 E7 2D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80735138  38 7F 09 5C */	addi r3, r31, 0x95c
/* 8073513C  3C 80 80 73 */	lis r4, cc_sph_src__6E_OC_n@ha /* 0x80735D64@ha */
/* 80735140  38 84 5D 64 */	addi r4, r4, cc_sph_src__6E_OC_n@l /* 0x80735D64@l */
/* 80735144  4B 94 F8 F1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80735148  38 1F 09 20 */	addi r0, r31, 0x920
/* 8073514C  90 1F 09 A0 */	stw r0, 0x9a0(r31)
/* 80735150  38 7F 0A 94 */	addi r3, r31, 0xa94
/* 80735154  3C 80 80 73 */	lis r4, cc_sph_src__6E_OC_n@ha /* 0x80735D64@ha */
/* 80735158  38 84 5D 64 */	addi r4, r4, cc_sph_src__6E_OC_n@l /* 0x80735D64@l */
/* 8073515C  4B 94 F8 D9 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80735160  38 1F 09 20 */	addi r0, r31, 0x920
/* 80735164  90 1F 0A D8 */	stw r0, 0xad8(r31)
/* 80735168  38 7F 0B CC */	addi r3, r31, 0xbcc
/* 8073516C  3C 80 80 73 */	lis r4, at_sph_src__6E_OC_n@ha /* 0x80735DA4@ha */
/* 80735170  38 84 5D A4 */	addi r4, r4, at_sph_src__6E_OC_n@l /* 0x80735DA4@l */
/* 80735174  4B 94 F8 C1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80735178  38 1F 09 20 */	addi r0, r31, 0x920
/* 8073517C  90 1F 0C 10 */	stw r0, 0xc10(r31)
/* 80735180  38 7F 0D 04 */	addi r3, r31, 0xd04
/* 80735184  3C 80 80 73 */	lis r4, at_sph_src__6E_OC_n@ha /* 0x80735DA4@ha */
/* 80735188  38 84 5D A4 */	addi r4, r4, at_sph_src__6E_OC_n@l /* 0x80735DA4@l */
/* 8073518C  4B 94 F8 A9 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80735190  38 1F 09 20 */	addi r0, r31, 0x920
/* 80735194  90 1F 0D 48 */	stw r0, 0xd48(r31)
/* 80735198  80 9F 06 A4 */	lwz r4, 0x6a4(r31)
/* 8073519C  3C 60 80 73 */	lis r3, d_a_e_oc__stringBase0@ha /* 0x80735D0C@ha */
/* 807351A0  38 03 5D 0C */	addi r0, r3, d_a_e_oc__stringBase0@l /* 0x80735D0C@l */
/* 807351A4  7C 04 00 40 */	cmplw r4, r0
/* 807351A8  40 82 00 20 */	bne lbl_807351C8
/* 807351AC  38 00 00 01 */	li r0, 1
/* 807351B0  98 1F 0B E0 */	stb r0, 0xbe0(r31)
/* 807351B4  98 1F 0D 18 */	stb r0, 0xd18(r31)
/* 807351B8  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 807351BC  64 00 00 01 */	oris r0, r0, 1
/* 807351C0  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 807351C4  48 00 00 10 */	b lbl_807351D4
lbl_807351C8:
/* 807351C8  38 00 00 02 */	li r0, 2
/* 807351CC  98 1F 0B E0 */	stb r0, 0xbe0(r31)
/* 807351D0  98 1F 0D 18 */	stb r0, 0xd18(r31)
lbl_807351D4:
/* 807351D4  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 807351D8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807351DC  38 BF 05 38 */	addi r5, r31, 0x538
/* 807351E0  38 C0 00 03 */	li r6, 3
/* 807351E4  38 E0 00 01 */	li r7, 1
/* 807351E8  4B B8 BE AD */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807351EC  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 807351F0  3C 80 80 73 */	lis r4, d_a_e_oc__stringBase0@ha /* 0x80735D0C@ha */
/* 807351F4  38 84 5D 0C */	addi r4, r4, d_a_e_oc__stringBase0@l /* 0x80735D0C@l */
/* 807351F8  38 84 00 18 */	addi r4, r4, 0x18
/* 807351FC  4B B8 C9 95 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80735200  38 1F 05 C4 */	addi r0, r31, 0x5c4
/* 80735204  90 1F 0E 44 */	stw r0, 0xe44(r31)
/* 80735208  38 60 00 01 */	li r3, 1
/* 8073520C  98 7F 0E 5A */	stb r3, 0xe5a(r31)
/* 80735210  38 00 00 00 */	li r0, 0
/* 80735214  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80735218  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 8073521C  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 80735220  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80735224  80 1F 06 B4 */	lwz r0, 0x6b4(r31)
/* 80735228  2C 00 00 03 */	cmpwi r0, 3
/* 8073522C  41 82 00 20 */	beq lbl_8073524C
/* 80735230  40 80 00 10 */	bge lbl_80735240
/* 80735234  2C 00 00 02 */	cmpwi r0, 2
/* 80735238  40 80 00 50 */	bge lbl_80735288
/* 8073523C  48 00 00 40 */	b lbl_8073527C
lbl_80735240:
/* 80735240  2C 00 00 05 */	cmpwi r0, 5
/* 80735244  40 80 00 38 */	bge lbl_8073527C
/* 80735248  48 00 00 1C */	b lbl_80735264
lbl_8073524C:
/* 8073524C  98 7F 06 EB */	stb r3, 0x6eb(r31)
/* 80735250  7F E3 FB 78 */	mr r3, r31
/* 80735254  38 80 00 0B */	li r4, 0xb
/* 80735258  38 A0 00 00 */	li r5, 0
/* 8073525C  4B FF 8A 61 */	bl setActionMode__8daE_OC_cFii
/* 80735260  48 00 00 28 */	b lbl_80735288
lbl_80735264:
/* 80735264  98 7F 06 EB */	stb r3, 0x6eb(r31)
/* 80735268  7F E3 FB 78 */	mr r3, r31
/* 8073526C  38 80 00 0C */	li r4, 0xc
/* 80735270  38 A0 00 00 */	li r5, 0
/* 80735274  4B FF 8A 49 */	bl setActionMode__8daE_OC_cFii
/* 80735278  48 00 00 10 */	b lbl_80735288
lbl_8073527C:
/* 8073527C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80735280  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80735284  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80735288:
/* 80735288  7F E3 FB 78 */	mr r3, r31
/* 8073528C  4B FF F8 B9 */	bl daE_OC_Execute__FP8daE_OC_c
lbl_80735290:
/* 80735290  7F A3 EB 78 */	mr r3, r29
lbl_80735294:
/* 80735294  39 61 00 30 */	addi r11, r1, 0x30
/* 80735298  4B C2 CF 8D */	bl _restgpr_28
/* 8073529C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807352A0  7C 08 03 A6 */	mtlr r0
/* 807352A4  38 21 00 30 */	addi r1, r1, 0x30
/* 807352A8  4E 80 00 20 */	blr 
