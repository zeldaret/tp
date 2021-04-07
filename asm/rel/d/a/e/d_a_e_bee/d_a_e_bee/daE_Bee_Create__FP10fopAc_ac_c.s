lbl_80684E24:
/* 80684E24  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80684E28  7C 08 02 A6 */	mflr r0
/* 80684E2C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80684E30  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80684E34  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80684E38  39 61 00 40 */	addi r11, r1, 0x40
/* 80684E3C  4B CD D3 89 */	bl _savegpr_23
/* 80684E40  7C 7E 1B 78 */	mr r30, r3
/* 80684E44  3C 80 80 68 */	lis r4, lit_3770@ha /* 0x80685434@ha */
/* 80684E48  3B E4 54 34 */	addi r31, r4, lit_3770@l /* 0x80685434@l */
/* 80684E4C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80684E50  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80684E54  40 82 01 30 */	bne lbl_80684F84
/* 80684E58  7F C0 F3 79 */	or. r0, r30, r30
/* 80684E5C  41 82 01 1C */	beq lbl_80684F78
/* 80684E60  7C 1D 03 78 */	mr r29, r0
/* 80684E64  4B 99 3D 01 */	bl __ct__10fopAc_ac_cFv
/* 80684E68  38 7D 05 74 */	addi r3, r29, 0x574
/* 80684E6C  4B C3 CE A5 */	bl __ct__18Z2SoundObjBeeGroupFv
/* 80684E70  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80684E74  3C 80 80 68 */	lis r4, __ct__5bee_sFv@ha /* 0x80685368@ha */
/* 80684E78  38 84 53 68 */	addi r4, r4, __ct__5bee_sFv@l /* 0x80685368@l */
/* 80684E7C  3C A0 80 68 */	lis r5, __dt__5bee_sFv@ha /* 0x806852FC@ha */
/* 80684E80  38 A5 52 FC */	addi r5, r5, __dt__5bee_sFv@l /* 0x806852FC@l */
/* 80684E84  38 C0 00 74 */	li r6, 0x74
/* 80684E88  38 E0 00 40 */	li r7, 0x40
/* 80684E8C  4B CD CE D5 */	bl __construct_array
/* 80684E90  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80684E94  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80684E98  90 1D 22 EC */	stw r0, 0x22ec(r29)
/* 80684E9C  38 7D 22 F0 */	addi r3, r29, 0x22f0
/* 80684EA0  4B 9F E8 C1 */	bl __ct__10dCcD_GSttsFv
/* 80684EA4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80684EA8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80684EAC  90 7D 22 EC */	stw r3, 0x22ec(r29)
/* 80684EB0  38 03 00 20 */	addi r0, r3, 0x20
/* 80684EB4  90 1D 22 F0 */	stw r0, 0x22f0(r29)
/* 80684EB8  3B 9D 23 10 */	addi r28, r29, 0x2310
/* 80684EBC  7F 83 E3 78 */	mr r3, r28
/* 80684EC0  4B 9F EB 69 */	bl __ct__12dCcD_GObjInfFv
/* 80684EC4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80684EC8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80684ECC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80684ED0  3C 60 80 68 */	lis r3, __vt__8cM3dGAab@ha /* 0x80685618@ha */
/* 80684ED4  38 03 56 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80685618@l */
/* 80684ED8  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80684EDC  3C 60 80 68 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8068560C@ha */
/* 80684EE0  38 03 56 0C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8068560C@l */
/* 80684EE4  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80684EE8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80684EEC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80684EF0  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80684EF4  38 03 00 58 */	addi r0, r3, 0x58
/* 80684EF8  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80684EFC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80684F00  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80684F04  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80684F08  38 03 00 2C */	addi r0, r3, 0x2c
/* 80684F0C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80684F10  38 03 00 84 */	addi r0, r3, 0x84
/* 80684F14  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80684F18  3A FD 24 4C */	addi r23, r29, 0x244c
/* 80684F1C  7E E3 BB 78 */	mr r3, r23
/* 80684F20  4B 9F EB 09 */	bl __ct__12dCcD_GObjInfFv
/* 80684F24  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80684F28  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80684F2C  90 17 01 20 */	stw r0, 0x120(r23)
/* 80684F30  3C 60 80 68 */	lis r3, __vt__8cM3dGAab@ha /* 0x80685618@ha */
/* 80684F34  38 03 56 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80685618@l */
/* 80684F38  90 17 01 1C */	stw r0, 0x11c(r23)
/* 80684F3C  3C 60 80 68 */	lis r3, __vt__8cM3dGSph@ha /* 0x80685600@ha */
/* 80684F40  38 03 56 00 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80685600@l */
/* 80684F44  90 17 01 34 */	stw r0, 0x134(r23)
/* 80684F48  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80684F4C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80684F50  90 77 01 20 */	stw r3, 0x120(r23)
/* 80684F54  38 03 00 58 */	addi r0, r3, 0x58
/* 80684F58  90 17 01 34 */	stw r0, 0x134(r23)
/* 80684F5C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80684F60  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80684F64  90 77 00 3C */	stw r3, 0x3c(r23)
/* 80684F68  38 03 00 2C */	addi r0, r3, 0x2c
/* 80684F6C  90 17 01 20 */	stw r0, 0x120(r23)
/* 80684F70  38 03 00 84 */	addi r0, r3, 0x84
/* 80684F74  90 17 01 34 */	stw r0, 0x134(r23)
lbl_80684F78:
/* 80684F78  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80684F7C  60 00 00 08 */	ori r0, r0, 8
/* 80684F80  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80684F84:
/* 80684F84  38 7E 05 68 */	addi r3, r30, 0x568
/* 80684F88  3C 80 80 68 */	lis r4, d_a_e_bee__stringBase0@ha /* 0x80685524@ha */
/* 80684F8C  38 84 55 24 */	addi r4, r4, d_a_e_bee__stringBase0@l /* 0x80685524@l */
/* 80684F90  4B 9A 7F 2D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80684F94  7C 7D 1B 78 */	mr r29, r3
/* 80684F98  2C 1D 00 04 */	cmpwi r29, 4
/* 80684F9C  40 82 02 64 */	bne lbl_80685200
/* 80684FA0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80684FA4  98 1E 05 70 */	stb r0, 0x570(r30)
/* 80684FA8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80684FAC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80684FB0  98 1E 05 71 */	stb r0, 0x571(r30)
/* 80684FB4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80684FB8  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80684FBC  98 1E 05 72 */	stb r0, 0x572(r30)
/* 80684FC0  88 1E 05 72 */	lbz r0, 0x572(r30)
/* 80684FC4  28 00 00 FF */	cmplwi r0, 0xff
/* 80684FC8  40 82 00 0C */	bne lbl_80684FD4
/* 80684FCC  38 00 00 00 */	li r0, 0
/* 80684FD0  98 1E 05 72 */	stb r0, 0x572(r30)
lbl_80684FD4:
/* 80684FD4  88 7E 05 70 */	lbz r3, 0x570(r30)
/* 80684FD8  38 03 00 01 */	addi r0, r3, 1
/* 80684FDC  90 1E 22 A0 */	stw r0, 0x22a0(r30)
/* 80684FE0  80 1E 22 A0 */	lwz r0, 0x22a0(r30)
/* 80684FE4  2C 00 00 40 */	cmpwi r0, 0x40
/* 80684FE8  40 81 00 0C */	ble lbl_80684FF4
/* 80684FEC  38 00 00 40 */	li r0, 0x40
/* 80684FF0  90 1E 22 A0 */	stw r0, 0x22a0(r30)
lbl_80684FF4:
/* 80684FF4  7F C3 F3 78 */	mr r3, r30
/* 80684FF8  3C 80 80 68 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80684C70@ha */
/* 80684FFC  38 84 4C 70 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80684C70@l */
/* 80685000  80 1E 22 A0 */	lwz r0, 0x22a0(r30)
/* 80685004  1C A0 07 E0 */	mulli r5, r0, 0x7e0
/* 80685008  4B 99 54 A9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8068500C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80685010  40 82 00 0C */	bne lbl_8068501C
/* 80685014  38 60 00 05 */	li r3, 5
/* 80685018  48 00 01 EC */	b lbl_80685204
lbl_8068501C:
/* 8068501C  3C 60 80 68 */	lis r3, struct_80685674+0x1@ha /* 0x80685675@ha */
/* 80685020  8C 03 56 75 */	lbzu r0, struct_80685674+0x1@l(r3)  /* 0x80685675@l */
/* 80685024  28 00 00 00 */	cmplwi r0, 0
/* 80685028  40 82 00 20 */	bne lbl_80685048
/* 8068502C  38 00 00 01 */	li r0, 1
/* 80685030  98 1E 25 86 */	stb r0, 0x2586(r30)
/* 80685034  98 03 00 00 */	stb r0, 0(r3)
/* 80685038  38 00 FF FF */	li r0, -1
/* 8068503C  3C 60 80 68 */	lis r3, l_HIO@ha /* 0x80685684@ha */
/* 80685040  38 63 56 84 */	addi r3, r3, l_HIO@l /* 0x80685684@l */
/* 80685044  98 03 00 04 */	stb r0, 4(r3)
lbl_80685048:
/* 80685048  88 1E 05 71 */	lbz r0, 0x571(r30)
/* 8068504C  28 00 00 01 */	cmplwi r0, 1
/* 80685050  40 82 00 44 */	bne lbl_80685094
/* 80685054  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80685058  88 1E 05 72 */	lbz r0, 0x572(r30)
/* 8068505C  C8 3F 00 E8 */	lfd f1, 0xe8(r31)
/* 80685060  90 01 00 0C */	stw r0, 0xc(r1)
/* 80685064  3C 00 43 30 */	lis r0, 0x4330
/* 80685068  90 01 00 08 */	stw r0, 8(r1)
/* 8068506C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80685070  EC 00 08 28 */	fsubs f0, f0, f1
/* 80685074  EC 02 00 32 */	fmuls f0, f2, f0
/* 80685078  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 8068507C  C0 5E 04 AC */	lfs f2, 0x4ac(r30)
/* 80685080  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80685084  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80685088  EC 01 00 32 */	fmuls f0, f1, f0
/* 8068508C  EC 02 00 2A */	fadds f0, f2, f0
/* 80685090  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
lbl_80685094:
/* 80685094  3B 20 00 00 */	li r25, 0
/* 80685098  3B 80 00 00 */	li r28, 0
/* 8068509C  C3 FF 00 00 */	lfs f31, 0(r31)
/* 806850A0  48 00 00 78 */	b lbl_80685118
lbl_806850A4:
/* 806850A4  88 1E 05 71 */	lbz r0, 0x571(r30)
/* 806850A8  28 00 00 01 */	cmplwi r0, 1
/* 806850AC  40 82 00 14 */	bne lbl_806850C0
/* 806850B0  38 60 00 0A */	li r3, 0xa
/* 806850B4  38 1C 05 EC */	addi r0, r28, 0x5ec
/* 806850B8  7C 7E 01 AE */	stbx r3, r30, r0
/* 806850BC  48 00 00 10 */	b lbl_806850CC
lbl_806850C0:
/* 806850C0  38 60 00 01 */	li r3, 1
/* 806850C4  38 1C 05 EC */	addi r0, r28, 0x5ec
/* 806850C8  7C 7E 01 AE */	stbx r3, r30, r0
lbl_806850CC:
/* 806850CC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 806850D0  7F 1E E2 14 */	add r24, r30, r28
/* 806850D4  D0 18 05 B0 */	stfs f0, 0x5b0(r24)
/* 806850D8  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 806850DC  D0 18 05 B4 */	stfs f0, 0x5b4(r24)
/* 806850E0  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 806850E4  D0 18 05 B8 */	stfs f0, 0x5b8(r24)
/* 806850E8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806850EC  4B BE 28 69 */	bl cM_rndF__Ff
/* 806850F0  FC 00 08 1E */	fctiwz f0, f1
/* 806850F4  D8 01 00 08 */	stfd f0, 8(r1)
/* 806850F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806850FC  B0 18 05 E8 */	sth r0, 0x5e8(r24)
/* 80685100  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80685104  4B BE 28 89 */	bl cM_rndFX__Ff
/* 80685108  EC 1F 08 2A */	fadds f0, f31, f1
/* 8068510C  D0 18 05 E0 */	stfs f0, 0x5e0(r24)
/* 80685110  3B 39 00 01 */	addi r25, r25, 1
/* 80685114  3B 9C 00 74 */	addi r28, r28, 0x74
lbl_80685118:
/* 80685118  80 1E 22 A0 */	lwz r0, 0x22a0(r30)
/* 8068511C  7C 19 00 00 */	cmpw r25, r0
/* 80685120  41 80 FF 84 */	blt lbl_806850A4
/* 80685124  28 1E 00 00 */	cmplwi r30, 0
/* 80685128  41 82 00 0C */	beq lbl_80685134
/* 8068512C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80685130  48 00 00 08 */	b lbl_80685138
lbl_80685134:
/* 80685134  38 00 FF FF */	li r0, -1
lbl_80685138:
/* 80685138  B0 1E 05 94 */	sth r0, 0x594(r30)
/* 8068513C  38 7E 22 D4 */	addi r3, r30, 0x22d4
/* 80685140  38 80 00 00 */	li r4, 0
/* 80685144  38 A0 00 00 */	li r5, 0
/* 80685148  7F C6 F3 78 */	mr r6, r30
/* 8068514C  4B 9F E7 15 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80685150  38 7E 23 10 */	addi r3, r30, 0x2310
/* 80685154  3C 80 80 68 */	lis r4, cc_cyl_src@ha /* 0x8068552C@ha */
/* 80685158  38 84 55 2C */	addi r4, r4, cc_cyl_src@l /* 0x8068552C@l */
/* 8068515C  4B 9F F7 59 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80685160  38 1E 22 D4 */	addi r0, r30, 0x22d4
/* 80685164  90 1E 23 54 */	stw r0, 0x2354(r30)
/* 80685168  80 1E 23 AC */	lwz r0, 0x23ac(r30)
/* 8068516C  60 00 00 04 */	ori r0, r0, 4
/* 80685170  90 1E 23 AC */	stw r0, 0x23ac(r30)
/* 80685174  38 7E 24 4C */	addi r3, r30, 0x244c
/* 80685178  3C 80 80 68 */	lis r4, at_sph_src@ha /* 0x80685570@ha */
/* 8068517C  38 84 55 70 */	addi r4, r4, at_sph_src@l /* 0x80685570@l */
/* 80685180  4B 9F F8 B5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80685184  38 1E 22 D4 */	addi r0, r30, 0x22d4
/* 80685188  90 1E 24 90 */	stw r0, 0x2490(r30)
/* 8068518C  7F C3 F3 78 */	mr r3, r30
/* 80685190  4B FF F9 05 */	bl daE_Bee_Execute__FP11e_bee_class
/* 80685194  3A E0 00 00 */	li r23, 0
/* 80685198  3B 80 00 00 */	li r28, 0
/* 8068519C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806851A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806851A4  3F 23 00 02 */	addis r25, r3, 2
/* 806851A8  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 806851AC  3C 60 80 68 */	lis r3, d_a_e_bee__stringBase0@ha /* 0x80685524@ha */
/* 806851B0  3B 43 55 24 */	addi r26, r3, d_a_e_bee__stringBase0@l /* 0x80685524@l */
/* 806851B4  3B 7F 00 D4 */	addi r27, r31, 0xd4
/* 806851B8  3B E0 00 01 */	li r31, 1
/* 806851BC  3B 39 C2 F8 */	addi r25, r25, -15624
lbl_806851C0:
/* 806851C0  7F 43 D3 78 */	mr r3, r26
/* 806851C4  7C 9B E0 2E */	lwzx r4, r27, r28
/* 806851C8  7F 25 CB 78 */	mr r5, r25
/* 806851CC  38 C0 00 80 */	li r6, 0x80
/* 806851D0  4B 9B 71 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806851D4  7C 64 1B 78 */	mr r4, r3
/* 806851D8  7F 03 C3 78 */	mr r3, r24
/* 806851DC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806851E0  7C 05 07 74 */	extsb r5, r0
/* 806851E4  38 C0 00 00 */	li r6, 0
/* 806851E8  4B 9A 79 09 */	bl addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 806851EC  9B FE 25 87 */	stb r31, 0x2587(r30)
/* 806851F0  3A F7 00 01 */	addi r23, r23, 1
/* 806851F4  28 17 00 04 */	cmplwi r23, 4
/* 806851F8  3B 9C 00 04 */	addi r28, r28, 4
/* 806851FC  41 80 FF C4 */	blt lbl_806851C0
lbl_80685200:
/* 80685200  7F A3 EB 78 */	mr r3, r29
lbl_80685204:
/* 80685204  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80685208  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8068520C  39 61 00 40 */	addi r11, r1, 0x40
/* 80685210  4B CD D0 01 */	bl _restgpr_23
/* 80685214  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80685218  7C 08 03 A6 */	mtlr r0
/* 8068521C  38 21 00 50 */	addi r1, r1, 0x50
/* 80685220  4E 80 00 20 */	blr 
