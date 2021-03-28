lbl_8013F4A8:
/* 8013F4A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8013F4AC  7C 08 02 A6 */	mflr r0
/* 8013F4B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013F4B4  39 61 00 40 */	addi r11, r1, 0x40
/* 8013F4B8  48 22 2D 21 */	bl _savegpr_28
/* 8013F4BC  7C 7D 1B 78 */	mr r29, r3
/* 8013F4C0  7C 9E 23 79 */	or. r30, r4, r4
/* 8013F4C4  41 82 00 10 */	beq lbl_8013F4D4
/* 8013F4C8  38 00 00 05 */	li r0, 5
/* 8013F4CC  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 8013F4D0  48 00 00 3C */	b lbl_8013F50C
lbl_8013F4D4:
/* 8013F4D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8013F4D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8013F4DC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8013F4E0  7F A4 EB 78 */	mr r4, r29
/* 8013F4E4  38 A0 00 00 */	li r5, 0
/* 8013F4E8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8013F4EC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8013F4F0  4B F0 3C 7D */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 8013F4F4  2C 03 00 00 */	cmpwi r3, 0
/* 8013F4F8  40 82 00 0C */	bne lbl_8013F504
/* 8013F4FC  38 60 00 00 */	li r3, 0
/* 8013F500  48 00 02 AC */	b lbl_8013F7AC
lbl_8013F504:
/* 8013F504  38 00 00 05 */	li r0, 5
/* 8013F508  B0 1D 06 04 */	sth r0, 0x604(r29)
lbl_8013F50C:
/* 8013F50C  7F A3 EB 78 */	mr r3, r29
/* 8013F510  38 80 01 33 */	li r4, 0x133
/* 8013F514  4B F8 2A 59 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013F518  8B FD 2F BB */	lbz r31, 0x2fbb(r29)
/* 8013F51C  2C 1E 00 00 */	cmpwi r30, 0
/* 8013F520  40 82 01 28 */	bne lbl_8013F648
/* 8013F524  80 7D 27 F4 */	lwz r3, 0x27f4(r29)
/* 8013F528  7F A4 EB 78 */	mr r4, r29
/* 8013F52C  4B ED B2 71 */	bl fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8013F530  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8013F534  41 81 00 1C */	bgt lbl_8013F550
/* 8013F538  80 7D 27 F4 */	lwz r3, 0x27f4(r29)
/* 8013F53C  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 8013F540  3C 63 00 01 */	addis r3, r3, 1
/* 8013F544  38 03 80 00 */	addi r0, r3, -32768
/* 8013F548  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8013F54C  48 00 00 10 */	b lbl_8013F55C
lbl_8013F550:
/* 8013F550  80 7D 27 F4 */	lwz r3, 0x27f4(r29)
/* 8013F554  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 8013F558  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_8013F55C:
/* 8013F55C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8013F560  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8013F564  80 7D 27 F4 */	lwz r3, 0x27f4(r29)
/* 8013F568  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8013F56C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8013F570  80 7D 27 F4 */	lwz r3, 0x27f4(r29)
/* 8013F574  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8013F578  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8013F57C  38 80 00 01 */	li r4, 1
/* 8013F580  80 7D 27 F4 */	lwz r3, 0x27f4(r29)
/* 8013F584  98 83 05 68 */	stb r4, 0x568(r3)
/* 8013F588  80 7D 27 F4 */	lwz r3, 0x27f4(r29)
/* 8013F58C  A8 03 05 6C */	lha r0, 0x56c(r3)
/* 8013F590  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 8013F594  A8 1D 30 10 */	lha r0, 0x3010(r29)
/* 8013F598  2C 00 00 00 */	cmpwi r0, 0
/* 8013F59C  41 80 00 0C */	blt lbl_8013F5A8
/* 8013F5A0  90 9D 31 98 */	stw r4, 0x3198(r29)
/* 8013F5A4  48 00 00 0C */	b lbl_8013F5B0
lbl_8013F5A8:
/* 8013F5A8  38 00 00 03 */	li r0, 3
/* 8013F5AC  90 1D 31 98 */	stw r0, 0x3198(r29)
lbl_8013F5B0:
/* 8013F5B0  28 1D 00 00 */	cmplwi r29, 0
/* 8013F5B4  41 82 00 0C */	beq lbl_8013F5C0
/* 8013F5B8  83 9D 00 04 */	lwz r28, 4(r29)
/* 8013F5BC  48 00 00 08 */	b lbl_8013F5C4
lbl_8013F5C0:
/* 8013F5C0  3B 80 FF FF */	li r28, -1
lbl_8013F5C4:
/* 8013F5C4  48 04 20 7D */	bl dCam_getBody__Fv
/* 8013F5C8  38 80 00 1E */	li r4, 0x1e
/* 8013F5CC  7F 85 E3 78 */	mr r5, r28
/* 8013F5D0  3C C0 80 39 */	lis r6, d_a_d_a_alink__stringBase0@ha
/* 8013F5D4  38 C6 20 94 */	addi r6, r6, d_a_d_a_alink__stringBase0@l
/* 8013F5D8  38 C6 00 43 */	addi r6, r6, 0x43
/* 8013F5DC  38 E0 00 01 */	li r7, 1
/* 8013F5E0  39 1D 31 98 */	addi r8, r29, 0x3198
/* 8013F5E4  39 20 00 00 */	li r9, 0
/* 8013F5E8  4C C6 31 82 */	crclr 6
/* 8013F5EC  4B F4 94 91 */	bl StartEventCamera__9dCamera_cFiie
/* 8013F5F0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8013F5F4  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 8013F5F8  80 7D 27 F4 */	lwz r3, 0x27f4(r29)
/* 8013F5FC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8013F600  EC 21 00 2A */	fadds f1, f1, f0
/* 8013F604  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8013F608  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8013F60C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8013F610  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8013F614  38 61 00 20 */	addi r3, r1, 0x20
/* 8013F618  4B ED E6 A5 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8013F61C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013F620  41 82 00 7C */	beq lbl_8013F69C
/* 8013F624  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8013F628  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8013F62C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8013F630  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha
/* 8013F634  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l
/* 8013F638  38 84 00 14 */	addi r4, r4, 0x14
/* 8013F63C  4B F3 58 15 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8013F640  7C 7F 1B 78 */	mr r31, r3
/* 8013F644  48 00 00 58 */	b lbl_8013F69C
lbl_8013F648:
/* 8013F648  38 00 FF FF */	li r0, -1
/* 8013F64C  90 1D 31 98 */	stw r0, 0x3198(r29)
/* 8013F650  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 8013F654  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8013F658  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013F65C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8013F660  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8013F664  7C 03 04 2E */	lfsx f0, r3, r0
/* 8013F668  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8013F66C  C0 42 92 E0 */	lfs f2, lit_6845(r2)
/* 8013F670  EC 02 00 32 */	fmuls f0, f2, f0
/* 8013F674  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013F678  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8013F67C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8013F680  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013F684  7C 63 02 14 */	add r3, r3, r0
/* 8013F688  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013F68C  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8013F690  EC 02 00 32 */	fmuls f0, f2, f0
/* 8013F694  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013F698  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_8013F69C:
/* 8013F69C  B3 DD 30 12 */	sth r30, 0x3012(r29)
/* 8013F6A0  2C 1F 00 0D */	cmpwi r31, 0xd
/* 8013F6A4  38 02 97 E0 */	la r0, smokeID(r2) /* 804531E0-_SDA2_BASE_ */
/* 8013F6A8  40 82 00 08 */	bne lbl_8013F6B0
/* 8013F6AC  38 02 97 D8 */	la r0, snowID(r2) /* 804531D8-_SDA2_BASE_ */
lbl_8013F6B0:
/* 8013F6B0  7C 1C 03 78 */	mr r28, r0
/* 8013F6B4  3B E0 00 00 */	li r31, 0
/* 8013F6B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8013F6BC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
lbl_8013F6C0:
/* 8013F6C0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8013F6C4  38 80 00 00 */	li r4, 0
/* 8013F6C8  90 81 00 08 */	stw r4, 8(r1)
/* 8013F6CC  38 00 FF FF */	li r0, -1
/* 8013F6D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013F6D4  90 81 00 10 */	stw r4, 0x10(r1)
/* 8013F6D8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8013F6DC  90 81 00 18 */	stw r4, 0x18(r1)
/* 8013F6E0  38 80 00 00 */	li r4, 0
/* 8013F6E4  A0 BC 00 00 */	lhz r5, 0(r28)
/* 8013F6E8  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 8013F6EC  38 E0 00 00 */	li r7, 0
/* 8013F6F0  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 8013F6F4  39 20 00 00 */	li r9, 0
/* 8013F6F8  39 40 00 FF */	li r10, 0xff
/* 8013F6FC  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8013F700  4B F0 D3 91 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8013F704  3B FF 00 01 */	addi r31, r31, 1
/* 8013F708  2C 1F 00 04 */	cmpwi r31, 4
/* 8013F70C  3B 9C 00 02 */	addi r28, r28, 2
/* 8013F710  41 80 FF B0 */	blt lbl_8013F6C0
/* 8013F714  7F A3 EB 78 */	mr r3, r29
/* 8013F718  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020052@ha */
/* 8013F71C  38 84 00 52 */	addi r4, r4, 0x0052 /* 0x00020052@l */
/* 8013F720  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8013F724  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8013F728  7D 89 03 A6 */	mtctr r12
/* 8013F72C  4E 80 04 21 */	bctrl 
/* 8013F730  7F A3 EB 78 */	mr r3, r29
/* 8013F734  38 80 00 6A */	li r4, 0x6a
/* 8013F738  4B FE 9F 41 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8013F73C  7F A3 EB 78 */	mr r3, r29
/* 8013F740  38 80 00 99 */	li r4, 0x99
/* 8013F744  4B F7 01 5D */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8013F748  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013F74C  D0 3D 33 98 */	stfs f1, 0x3398(r29)
/* 8013F750  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
/* 8013F754  7F A3 EB 78 */	mr r3, r29
/* 8013F758  C0 5D 05 34 */	lfs f2, 0x534(r29)
/* 8013F75C  38 80 00 00 */	li r4, 0
/* 8013F760  4B F7 C0 11 */	bl setSpecialGravity__9daAlink_cFffi
/* 8013F764  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 8013F768  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 8013F76C  D0 1D 35 88 */	stfs f0, 0x3588(r29)
/* 8013F770  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013F774  D0 1D 35 8C */	stfs f0, 0x358c(r29)
/* 8013F778  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013F77C  D0 1D 35 90 */	stfs f0, 0x3590(r29)
/* 8013F780  38 00 00 04 */	li r0, 4
/* 8013F784  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 8013F788  C0 03 00 00 */	lfs f0, 0(r3)
/* 8013F78C  D0 1D 34 D4 */	stfs f0, 0x34d4(r29)
/* 8013F790  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013F794  D0 1D 34 D8 */	stfs f0, 0x34d8(r29)
/* 8013F798  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013F79C  D0 1D 34 DC */	stfs f0, 0x34dc(r29)
/* 8013F7A0  38 00 00 00 */	li r0, 0
/* 8013F7A4  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 8013F7A8  38 60 00 01 */	li r3, 1
lbl_8013F7AC:
/* 8013F7AC  39 61 00 40 */	addi r11, r1, 0x40
/* 8013F7B0  48 22 2A 75 */	bl _restgpr_28
/* 8013F7B4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8013F7B8  7C 08 03 A6 */	mtlr r0
/* 8013F7BC  38 21 00 40 */	addi r1, r1, 0x40
/* 8013F7C0  4E 80 00 20 */	blr 
