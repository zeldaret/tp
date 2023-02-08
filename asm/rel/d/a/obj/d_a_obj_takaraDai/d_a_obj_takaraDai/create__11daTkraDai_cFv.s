lbl_80D07140:
/* 80D07140  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D07144  7C 08 02 A6 */	mflr r0
/* 80D07148  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D0714C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D07150  4B 65 B0 8D */	bl _savegpr_29
/* 80D07154  7C 7D 1B 78 */	mr r29, r3
/* 80D07158  3C 80 80 D0 */	lis r4, lit_3627@ha /* 0x80D07808@ha */
/* 80D0715C  3B E4 78 08 */	addi r31, r4, lit_3627@l /* 0x80D07808@l */
/* 80D07160  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D07164  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D07168  40 82 00 28 */	bne lbl_80D07190
/* 80D0716C  28 1D 00 00 */	cmplwi r29, 0
/* 80D07170  41 82 00 14 */	beq lbl_80D07184
/* 80D07174  4B 37 14 B1 */	bl __ct__16dBgS_MoveBgActorFv
/* 80D07178  3C 60 80 D0 */	lis r3, __vt__11daTkraDai_c@ha /* 0x80D078C8@ha */
/* 80D0717C  38 03 78 C8 */	addi r0, r3, __vt__11daTkraDai_c@l /* 0x80D078C8@l */
/* 80D07180  90 1D 05 9C */	stw r0, 0x59c(r29)
lbl_80D07184:
/* 80D07184  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80D07188  60 00 00 08 */	ori r0, r0, 8
/* 80D0718C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80D07190:
/* 80D07190  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80D07194  3C 80 80 D0 */	lis r4, d_a_obj_takaraDai__stringBase0@ha /* 0x80D07854@ha */
/* 80D07198  38 84 78 54 */	addi r4, r4, d_a_obj_takaraDai__stringBase0@l /* 0x80D07854@l */
/* 80D0719C  4B 32 5D 21 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D071A0  7C 7E 1B 78 */	mr r30, r3
/* 80D071A4  2C 1E 00 04 */	cmpwi r30, 4
/* 80D071A8  40 82 01 80 */	bne lbl_80D07328
/* 80D071AC  7F A3 EB 78 */	mr r3, r29
/* 80D071B0  3C 80 80 D0 */	lis r4, d_a_obj_takaraDai__stringBase0@ha /* 0x80D07854@ha */
/* 80D071B4  38 84 78 54 */	addi r4, r4, d_a_obj_takaraDai__stringBase0@l /* 0x80D07854@l */
/* 80D071B8  38 A0 00 08 */	li r5, 8
/* 80D071BC  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80D071C0  38 C6 5A 24 */	addi r6, r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80D071C4  38 E0 2E 00 */	li r7, 0x2e00
/* 80D071C8  39 00 00 00 */	li r8, 0
/* 80D071CC  4B 37 15 F1 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D071D0  2C 03 00 05 */	cmpwi r3, 5
/* 80D071D4  40 82 00 0C */	bne lbl_80D071E0
/* 80D071D8  38 60 00 05 */	li r3, 5
/* 80D071DC  48 00 01 50 */	b lbl_80D0732C
lbl_80D071E0:
/* 80D071E0  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D071E4  38 03 00 24 */	addi r0, r3, 0x24
/* 80D071E8  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80D071EC  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D071F0  80 63 00 04 */	lwz r3, 4(r3)
/* 80D071F4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80D071F8  80 83 00 00 */	lwz r4, 0(r3)
/* 80D071FC  C0 DD 04 F4 */	lfs f6, 0x4f4(r29)
/* 80D07200  C0 FD 04 F0 */	lfs f7, 0x4f0(r29)
/* 80D07204  C0 9D 04 EC */	lfs f4, 0x4ec(r29)
/* 80D07208  7F A3 EB 78 */	mr r3, r29
/* 80D0720C  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 80D07210  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80D07214  EC 00 18 28 */	fsubs f0, f0, f3
/* 80D07218  EC 24 00 32 */	fmuls f1, f4, f0
/* 80D0721C  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80D07220  EC 47 00 32 */	fmuls f2, f7, f0
/* 80D07224  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 80D07228  EC 00 18 28 */	fsubs f0, f0, f3
/* 80D0722C  EC 66 00 32 */	fmuls f3, f6, f0
/* 80D07230  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 80D07234  EC 84 00 32 */	fmuls f4, f4, f0
/* 80D07238  C0 BF 00 3C */	lfs f5, 0x3c(r31)
/* 80D0723C  C0 04 00 4C */	lfs f0, 0x4c(r4)
/* 80D07240  EC 05 00 2A */	fadds f0, f5, f0
/* 80D07244  EC A7 00 32 */	fmuls f5, f7, f0
/* 80D07248  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 80D0724C  EC C6 00 32 */	fmuls f6, f6, f0
/* 80D07250  4B 31 32 F9 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D07254  80 9D 06 28 */	lwz r4, 0x628(r29)
/* 80D07258  28 04 00 00 */	cmplwi r4, 0
/* 80D0725C  41 82 00 20 */	beq lbl_80D0727C
/* 80D07260  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D07264  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D07268  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D0726C  7F A5 EB 78 */	mr r5, r29
/* 80D07270  4B 36 D7 99 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D07274  80 7D 06 28 */	lwz r3, 0x628(r29)
/* 80D07278  4B 37 47 49 */	bl Move__4dBgWFv
lbl_80D0727C:
/* 80D0727C  38 60 00 00 */	li r3, 0
/* 80D07280  B0 7D 05 D4 */	sth r3, 0x5d4(r29)
/* 80D07284  B0 7D 05 D6 */	sth r3, 0x5d6(r29)
/* 80D07288  B0 7D 05 D8 */	sth r3, 0x5d8(r29)
/* 80D0728C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80D07290  D0 1D 05 DC */	stfs f0, 0x5dc(r29)
/* 80D07294  D0 1D 05 F4 */	stfs f0, 0x5f4(r29)
/* 80D07298  D0 1D 05 F8 */	stfs f0, 0x5f8(r29)
/* 80D0729C  D0 1D 05 FC */	stfs f0, 0x5fc(r29)
/* 80D072A0  D0 1D 06 08 */	stfs f0, 0x608(r29)
/* 80D072A4  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 80D072A8  D0 1D 05 E0 */	stfs f0, 0x5e0(r29)
/* 80D072AC  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 80D072B0  D0 1D 05 EC */	stfs f0, 0x5ec(r29)
/* 80D072B4  D0 1D 05 F0 */	stfs f0, 0x5f0(r29)
/* 80D072B8  D0 1D 06 00 */	stfs f0, 0x600(r29)
/* 80D072BC  D0 1D 06 04 */	stfs f0, 0x604(r29)
/* 80D072C0  D0 1D 06 0C */	stfs f0, 0x60c(r29)
/* 80D072C4  D0 1D 06 10 */	stfs f0, 0x610(r29)
/* 80D072C8  D0 1D 06 14 */	stfs f0, 0x614(r29)
/* 80D072CC  38 00 00 01 */	li r0, 1
/* 80D072D0  98 1D 06 18 */	stb r0, 0x618(r29)
/* 80D072D4  90 7D 05 D0 */	stw r3, 0x5d0(r29)
/* 80D072D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D072DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D072E0  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 80D072E4  A8 BD 04 DE */	lha r5, 0x4de(r29)
/* 80D072E8  A8 DD 04 E0 */	lha r6, 0x4e0(r29)
/* 80D072EC  4B 30 4F 1D */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80D072F0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80D072F4  D0 3D 06 1C */	stfs f1, 0x61c(r29)
/* 80D072F8  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80D072FC  D0 1D 06 20 */	stfs f0, 0x620(r29)
/* 80D07300  D0 3D 06 24 */	stfs f1, 0x624(r29)
/* 80D07304  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D07308  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0730C  38 9D 06 1C */	addi r4, r29, 0x61c
/* 80D07310  7C 85 23 78 */	mr r5, r4
/* 80D07314  4B 63 FA 59 */	bl PSMTXMultVec
/* 80D07318  7F A3 EB 78 */	mr r3, r29
/* 80D0731C  4B FF FB 49 */	bl setBaseMtx__11daTkraDai_cFv
/* 80D07320  7F A3 EB 78 */	mr r3, r29
/* 80D07324  48 00 01 AD */	bl init_modeWait__11daTkraDai_cFv
lbl_80D07328:
/* 80D07328  7F C3 F3 78 */	mr r3, r30
lbl_80D0732C:
/* 80D0732C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D07330  4B 65 AE F9 */	bl _restgpr_29
/* 80D07334  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D07338  7C 08 03 A6 */	mtlr r0
/* 80D0733C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D07340  4E 80 00 20 */	blr 
