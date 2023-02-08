lbl_807873C0:
/* 807873C0  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 807873C4  7C 08 02 A6 */	mflr r0
/* 807873C8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 807873CC  39 61 00 F0 */	addi r11, r1, 0xf0
/* 807873D0  4B BD AE 01 */	bl _savegpr_26
/* 807873D4  7C 7D 1B 78 */	mr r29, r3
/* 807873D8  3C 80 80 79 */	lis r4, lit_3908@ha /* 0x80789C38@ha */
/* 807873DC  3B E4 9C 38 */	addi r31, r4, lit_3908@l /* 0x80789C38@l */
/* 807873E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807873E4  3B 44 61 C0 */	addi r26, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807873E8  83 9A 5D AC */	lwz r28, 0x5dac(r26)
/* 807873EC  38 00 00 00 */	li r0, 0
/* 807873F0  98 03 06 AE */	stb r0, 0x6ae(r3)
/* 807873F4  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 807873F8  4B 89 35 6D */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807873FC  D0 3D 06 8C */	stfs f1, 0x68c(r29)
/* 80787400  7F A3 EB 78 */	mr r3, r29
/* 80787404  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80787408  4B 89 33 09 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8078740C  B0 7D 06 90 */	sth r3, 0x690(r29)
/* 80787410  7F A3 EB 78 */	mr r3, r29
/* 80787414  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80787418  4B 89 33 21 */	bl fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8078741C  B0 7D 06 92 */	sth r3, 0x692(r29)
/* 80787420  3C 60 80 79 */	lis r3, l_HIO@ha /* 0x8078A07C@ha */
/* 80787424  38 63 A0 7C */	addi r3, r3, l_HIO@l /* 0x8078A07C@l */
/* 80787428  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8078742C  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 80787430  7F A3 EB 78 */	mr r3, r29
/* 80787434  4B FF FC 9D */	bl damage_check__FP10e_sf_class
/* 80787438  3B C0 00 00 */	li r30, 0
/* 8078743C  3B 60 00 00 */	li r27, 0
/* 80787440  3B 40 00 FF */	li r26, 0xff
/* 80787444  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 80787448  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8078744C  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 80787450  A8 1D 06 8A */	lha r0, 0x68a(r29)
/* 80787454  28 00 00 21 */	cmplwi r0, 0x21
/* 80787458  41 81 00 FC */	bgt lbl_80787554
/* 8078745C  3C 60 80 79 */	lis r3, lit_5205@ha /* 0x80789E10@ha */
/* 80787460  38 63 9E 10 */	addi r3, r3, lit_5205@l /* 0x80789E10@l */
/* 80787464  54 00 10 3A */	slwi r0, r0, 2
/* 80787468  7C 03 00 2E */	lwzx r0, r3, r0
/* 8078746C  7C 09 03 A6 */	mtctr r0
/* 80787470  4E 80 04 20 */	bctr 
lbl_80787474:
/* 80787474  7F A3 EB 78 */	mr r3, r29
/* 80787478  4B FF E4 CD */	bl e_sf_normal__FP10e_sf_class
/* 8078747C  48 00 00 D8 */	b lbl_80787554
lbl_80787480:
/* 80787480  7F A3 EB 78 */	mr r3, r29
/* 80787484  4B FF E8 AD */	bl e_sf_fight_run__FP10e_sf_class
/* 80787488  3B C0 00 01 */	li r30, 1
/* 8078748C  3B 60 00 01 */	li r27, 1
/* 80787490  48 00 00 C4 */	b lbl_80787554
lbl_80787494:
/* 80787494  7F A3 EB 78 */	mr r3, r29
/* 80787498  4B FF EC BD */	bl e_sf_attack_0__FP10e_sf_class
/* 8078749C  3B C0 00 01 */	li r30, 1
/* 807874A0  3B 60 00 01 */	li r27, 1
/* 807874A4  48 00 00 B0 */	b lbl_80787554
lbl_807874A8:
/* 807874A8  7F A3 EB 78 */	mr r3, r29
/* 807874AC  4B FF EE 81 */	bl e_sf_attack__FP10e_sf_class
/* 807874B0  3B C0 00 01 */	li r30, 1
/* 807874B4  3B 60 00 01 */	li r27, 1
/* 807874B8  48 00 00 9C */	b lbl_80787554
lbl_807874BC:
/* 807874BC  7F A3 EB 78 */	mr r3, r29
/* 807874C0  4B FF F0 65 */	bl e_sf_guard__FP10e_sf_class
/* 807874C4  2C 03 00 00 */	cmpwi r3, 0
/* 807874C8  41 82 00 08 */	beq lbl_807874D0
/* 807874CC  3B C0 00 01 */	li r30, 1
lbl_807874D0:
/* 807874D0  3B 60 00 01 */	li r27, 1
/* 807874D4  48 00 00 80 */	b lbl_80787554
lbl_807874D8:
/* 807874D8  7F A3 EB 78 */	mr r3, r29
/* 807874DC  4B FF E7 1D */	bl e_sf_drawback__FP10e_sf_class
/* 807874E0  3B 60 00 01 */	li r27, 1
/* 807874E4  48 00 00 70 */	b lbl_80787554
lbl_807874E8:
/* 807874E8  7F A3 EB 78 */	mr r3, r29
/* 807874EC  4B FF F2 0D */	bl e_sf_s_damage__FP10e_sf_class
/* 807874F0  3B 60 00 01 */	li r27, 1
/* 807874F4  48 00 00 60 */	b lbl_80787554
lbl_807874F8:
/* 807874F8  7F A3 EB 78 */	mr r3, r29
/* 807874FC  4B FF F3 49 */	bl e_sf_crash__FP10e_sf_class
/* 80787500  3B 40 00 00 */	li r26, 0
/* 80787504  38 00 FF FF */	li r0, -1
/* 80787508  98 1D 06 AE */	stb r0, 0x6ae(r29)
/* 8078750C  48 00 00 48 */	b lbl_80787554
lbl_80787510:
/* 80787510  7F A3 EB 78 */	mr r3, r29
/* 80787514  4B FF F8 AD */	bl e_sf_getup__FP10e_sf_class
/* 80787518  7C 7A 1B 78 */	mr r26, r3
/* 8078751C  38 00 FF FF */	li r0, -1
/* 80787520  98 1D 06 AE */	stb r0, 0x6ae(r29)
/* 80787524  48 00 00 30 */	b lbl_80787554
lbl_80787528:
/* 80787528  7F A3 EB 78 */	mr r3, r29
/* 8078752C  4B FF F6 45 */	bl e_sf_crashwait__FP10e_sf_class
/* 80787530  3B 40 00 00 */	li r26, 0
/* 80787534  38 00 FF FF */	li r0, -1
/* 80787538  98 1D 06 AE */	stb r0, 0x6ae(r29)
/* 8078753C  48 00 00 18 */	b lbl_80787554
lbl_80787540:
/* 80787540  7F A3 EB 78 */	mr r3, r29
/* 80787544  4B FF F7 0D */	bl e_sf_sitwait__FP10e_sf_class
/* 80787548  7C 7A 1B 78 */	mr r26, r3
/* 8078754C  38 00 FF FF */	li r0, -1
/* 80787550  98 1D 06 AE */	stb r0, 0x6ae(r29)
lbl_80787554:
/* 80787554  7F 60 07 75 */	extsb. r0, r27
/* 80787558  41 82 00 14 */	beq lbl_8078756C
/* 8078755C  38 7D 05 E4 */	addi r3, r29, 0x5e4
/* 80787560  38 80 00 01 */	li r4, 1
/* 80787564  4B B3 A6 19 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 80787568  48 00 00 10 */	b lbl_80787578
lbl_8078756C:
/* 8078756C  38 7D 05 E4 */	addi r3, r29, 0x5e4
/* 80787570  38 80 00 00 */	li r4, 0
/* 80787574  4B B3 A6 09 */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_80787578:
/* 80787578  38 7D 06 A6 */	addi r3, r29, 0x6a6
/* 8078757C  7F 44 D3 78 */	mr r4, r26
/* 80787580  38 A0 00 01 */	li r5, 1
/* 80787584  38 C0 00 04 */	li r6, 4
/* 80787588  4B AE 90 81 */	bl cLib_addCalcAngleS2__FPssss
/* 8078758C  88 1D 05 B9 */	lbz r0, 0x5b9(r29)
/* 80787590  28 00 00 FF */	cmplwi r0, 0xff
/* 80787594  41 82 00 A0 */	beq lbl_80787634
/* 80787598  7F C0 07 75 */	extsb. r0, r30
/* 8078759C  41 82 00 98 */	beq lbl_80787634
/* 807875A0  A8 1D 06 92 */	lha r0, 0x692(r29)
/* 807875A4  2C 00 10 00 */	cmpwi r0, 0x1000
/* 807875A8  40 80 00 8C */	bge lbl_80787634
/* 807875AC  2C 00 F0 00 */	cmpwi r0, -4096
/* 807875B0  40 81 00 84 */	ble lbl_80787634
/* 807875B4  7F A3 EB 78 */	mr r3, r29
/* 807875B8  4B FF E1 75 */	bl player_way_check__FP10e_sf_class
/* 807875BC  2C 03 00 00 */	cmpwi r3, 0
/* 807875C0  41 82 00 74 */	beq lbl_80787634
/* 807875C4  88 1D 05 B9 */	lbz r0, 0x5b9(r29)
/* 807875C8  28 00 00 00 */	cmplwi r0, 0
/* 807875CC  40 82 00 20 */	bne lbl_807875EC
/* 807875D0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807875D4  4B AE 03 81 */	bl cM_rndF__Ff
/* 807875D8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 807875DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807875E0  40 80 00 0C */	bge lbl_807875EC
/* 807875E4  3B 40 03 FF */	li r26, 0x3ff
/* 807875E8  48 00 00 08 */	b lbl_807875F0
lbl_807875EC:
/* 807875EC  3B 40 03 FF */	li r26, 0x3ff
lbl_807875F0:
/* 807875F0  C0 3D 06 8C */	lfs f1, 0x68c(r29)
/* 807875F4  3C 60 80 79 */	lis r3, l_HIO@ha /* 0x8078A07C@ha */
/* 807875F8  38 63 A0 7C */	addi r3, r3, l_HIO@l /* 0x8078A07C@l */
/* 807875FC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80787600  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80787604  40 80 00 30 */	bge lbl_80787634
/* 80787608  4B 8F FD CD */	bl cc_pl_cut_bit_get__Fv
/* 8078760C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80787610  7F 40 00 39 */	and. r0, r26, r0
/* 80787614  41 82 00 20 */	beq lbl_80787634
/* 80787618  38 00 00 07 */	li r0, 7
/* 8078761C  B0 1D 06 8A */	sth r0, 0x68a(r29)
/* 80787620  38 00 00 00 */	li r0, 0
/* 80787624  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80787628  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 8078762C  38 00 00 0F */	li r0, 0xf
/* 80787630  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
lbl_80787634:
/* 80787634  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80787638  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8078763C  38 A0 00 02 */	li r5, 2
/* 80787640  38 C0 20 00 */	li r6, 0x2000
/* 80787644  4B AE 8F C5 */	bl cLib_addCalcAngleS2__FPssss
/* 80787648  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8078764C  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 80787650  38 A0 00 02 */	li r5, 2
/* 80787654  38 C0 20 00 */	li r6, 0x2000
/* 80787658  4B AE 8F B1 */	bl cLib_addCalcAngleS2__FPssss
/* 8078765C  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 80787660  A8 9D 04 E0 */	lha r4, 0x4e0(r29)
/* 80787664  38 A0 00 02 */	li r5, 2
/* 80787668  38 C0 20 00 */	li r6, 0x2000
/* 8078766C  4B AE 8F 9D */	bl cLib_addCalcAngleS2__FPssss
/* 80787670  C0 3D 06 C0 */	lfs f1, 0x6c0(r29)
/* 80787674  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80787678  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8078767C  41 82 00 48 */	beq lbl_807876C4
/* 80787680  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80787684  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80787688  80 63 00 00 */	lwz r3, 0(r3)
/* 8078768C  A8 9D 06 E6 */	lha r4, 0x6e6(r29)
/* 80787690  4B 88 4D 4D */	bl mDoMtx_YrotS__FPA4_fs
/* 80787694  A8 1D 07 18 */	lha r0, 0x718(r29)
/* 80787698  2C 00 00 00 */	cmpwi r0, 0
/* 8078769C  40 82 00 10 */	bne lbl_807876AC
/* 807876A0  C0 1D 06 C0 */	lfs f0, 0x6c0(r29)
/* 807876A4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807876A8  48 00 00 10 */	b lbl_807876B8
lbl_807876AC:
/* 807876AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807876B0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807876B4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_807876B8:
/* 807876B8  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 807876BC  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 807876C0  48 00 00 20 */	b lbl_807876E0
lbl_807876C4:
/* 807876C4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807876C8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807876CC  80 63 00 00 */	lwz r3, 0(r3)
/* 807876D0  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 807876D4  4B 88 4D 09 */	bl mDoMtx_YrotS__FPA4_fs
/* 807876D8  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807876DC  D0 01 00 70 */	stfs f0, 0x70(r1)
lbl_807876E0:
/* 807876E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807876E4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807876E8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807876EC  38 61 00 68 */	addi r3, r1, 0x68
/* 807876F0  38 81 00 5C */	addi r4, r1, 0x5c
/* 807876F4  4B AE 97 F9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807876F8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807876FC  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80787700  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80787704  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80787708  38 61 00 2C */	addi r3, r1, 0x2c
/* 8078770C  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 80787710  3C A0 80 79 */	lis r5, l_HIO@ha /* 0x8078A07C@ha */
/* 80787714  3B 45 A0 7C */	addi r26, r5, l_HIO@l /* 0x8078A07C@l */
/* 80787718  C0 3A 00 08 */	lfs f1, 8(r26)
/* 8078771C  4B AD F4 69 */	bl __ml__4cXyzCFf
/* 80787720  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80787724  38 81 00 2C */	addi r4, r1, 0x2c
/* 80787728  7C 65 1B 78 */	mr r5, r3
/* 8078772C  4B BB F9 65 */	bl PSVECAdd
/* 80787730  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80787734  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 80787738  EC 01 00 2A */	fadds f0, f1, f0
/* 8078773C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80787740  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80787744  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80787748  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8078774C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80787750  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80787754  40 80 00 08 */	bge lbl_8078775C
/* 80787758  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8078775C:
/* 8078775C  34 7D 09 34 */	addic. r3, r29, 0x934
/* 80787760  41 82 00 34 */	beq lbl_80787794
/* 80787764  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80787768  C0 03 00 00 */	lfs f0, 0(r3)
/* 8078776C  EC 01 00 2A */	fadds f0, f1, f0
/* 80787770  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80787774  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80787778  C0 03 00 04 */	lfs f0, 4(r3)
/* 8078777C  EC 01 00 2A */	fadds f0, f1, f0
/* 80787780  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80787784  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80787788  C0 03 00 08 */	lfs f0, 8(r3)
/* 8078778C  EC 01 00 2A */	fadds f0, f1, f0
/* 80787790  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_80787794:
/* 80787794  C0 3D 06 C4 */	lfs f1, 0x6c4(r29)
/* 80787798  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8078779C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807877A0  40 81 00 58 */	ble lbl_807877F8
/* 807877A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807877A8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807877AC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807877B0  FC 00 08 50 */	fneg f0, f1
/* 807877B4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807877B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807877BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807877C0  80 63 00 00 */	lwz r3, 0(r3)
/* 807877C4  A8 9D 06 C8 */	lha r4, 0x6c8(r29)
/* 807877C8  4B 88 4C 15 */	bl mDoMtx_YrotS__FPA4_fs
/* 807877CC  38 61 00 68 */	addi r3, r1, 0x68
/* 807877D0  38 81 00 5C */	addi r4, r1, 0x5c
/* 807877D4  4B AE 97 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807877D8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807877DC  38 81 00 5C */	addi r4, r1, 0x5c
/* 807877E0  7C 65 1B 78 */	mr r5, r3
/* 807877E4  4B BB F8 AD */	bl PSVECAdd
/* 807877E8  38 7D 06 C4 */	addi r3, r29, 0x6c4
/* 807877EC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807877F0  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 807877F4  4B AE 82 8D */	bl cLib_addCalc0__FPfff
lbl_807877F8:
/* 807877F8  38 7D 07 5C */	addi r3, r29, 0x75c
/* 807877FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80787800  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80787804  3B C4 0F 38 */	addi r30, r4, 0xf38
/* 80787808  7F C4 F3 78 */	mr r4, r30
/* 8078780C  4B 8E F2 A1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80787810  88 7D 06 AE */	lbz r3, 0x6ae(r29)
/* 80787814  7C 60 07 75 */	extsb. r0, r3
/* 80787818  40 81 01 B4 */	ble lbl_807879CC
/* 8078781C  7C 60 07 74 */	extsb r0, r3
/* 80787820  2C 00 00 05 */	cmpwi r0, 5
/* 80787824  40 82 00 40 */	bne lbl_80787864
/* 80787828  A8 1D 06 88 */	lha r0, 0x688(r29)
/* 8078782C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80787830  40 82 01 90 */	bne lbl_807879C0
/* 80787834  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80787838  4B AE 01 1D */	bl cM_rndF__Ff
/* 8078783C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80787840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80787844  40 80 01 7C */	bge lbl_807879C0
/* 80787848  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8078784C  4B AE 01 41 */	bl cM_rndFX__Ff
/* 80787850  FC 00 08 1E */	fctiwz f0, f1
/* 80787854  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80787858  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 8078785C  B0 1D 06 BA */	sth r0, 0x6ba(r29)
/* 80787860  48 00 01 60 */	b lbl_807879C0
lbl_80787864:
/* 80787864  2C 00 00 01 */	cmpwi r0, 1
/* 80787868  40 82 00 30 */	bne lbl_80787898
/* 8078786C  38 61 00 20 */	addi r3, r1, 0x20
/* 80787870  38 9C 05 38 */	addi r4, r28, 0x538
/* 80787874  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80787878  4B AD F2 BD */	bl __mi__4cXyzCFRC3Vec
/* 8078787C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80787880  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80787884  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80787888  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8078788C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80787890  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80787894  48 00 00 60 */	b lbl_807878F4
lbl_80787898:
/* 80787898  2C 00 00 02 */	cmpwi r0, 2
/* 8078789C  40 82 00 30 */	bne lbl_807878CC
/* 807878A0  38 61 00 14 */	addi r3, r1, 0x14
/* 807878A4  38 9D 06 F8 */	addi r4, r29, 0x6f8
/* 807878A8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807878AC  4B AD F2 89 */	bl __mi__4cXyzCFRC3Vec
/* 807878B0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807878B4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807878B8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807878BC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807878C0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807878C4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807878C8  48 00 00 2C */	b lbl_807878F4
lbl_807878CC:
/* 807878CC  38 61 00 08 */	addi r3, r1, 8
/* 807878D0  38 9C 05 38 */	addi r4, r28, 0x538
/* 807878D4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807878D8  4B AD F2 5D */	bl __mi__4cXyzCFRC3Vec
/* 807878DC  C0 01 00 08 */	lfs f0, 8(r1)
/* 807878E0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807878E4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807878E8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807878EC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807878F0  D0 01 00 70 */	stfs f0, 0x70(r1)
lbl_807878F4:
/* 807878F4  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 807878F8  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 807878FC  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80787900  EC 01 00 32 */	fmuls f0, f1, f0
/* 80787904  EC 02 00 2A */	fadds f0, f2, f0
/* 80787908  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8078790C  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80787910  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80787914  4B AD FD 61 */	bl cM_atan2s__Fff
/* 80787918  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8078791C  7C 00 18 50 */	subf r0, r0, r3
/* 80787920  7C 1A 07 34 */	extsh r26, r0
/* 80787924  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80787928  EC 20 00 32 */	fmuls f1, f0, f0
/* 8078792C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80787930  EC 00 00 32 */	fmuls f0, f0, f0
/* 80787934  EC 41 00 2A */	fadds f2, f1, f0
/* 80787938  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8078793C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80787940  40 81 00 0C */	ble lbl_8078794C
/* 80787944  FC 00 10 34 */	frsqrte f0, f2
/* 80787948  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8078794C:
/* 8078794C  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80787950  4B AD FD 25 */	bl cM_atan2s__Fff
/* 80787954  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80787958  7C 00 1A 14 */	add r0, r0, r3
/* 8078795C  7C 1B 07 34 */	extsh r27, r0
/* 80787960  2C 1A 27 10 */	cmpwi r26, 0x2710
/* 80787964  40 81 00 0C */	ble lbl_80787970
/* 80787968  3B 40 27 10 */	li r26, 0x2710
/* 8078796C  48 00 00 10 */	b lbl_8078797C
lbl_80787970:
/* 80787970  2C 1A D8 F0 */	cmpwi r26, -10000
/* 80787974  40 80 00 08 */	bge lbl_8078797C
/* 80787978  3B 40 D8 F0 */	li r26, -10000
lbl_8078797C:
/* 8078797C  2C 1B 27 10 */	cmpwi r27, 0x2710
/* 80787980  40 81 00 0C */	ble lbl_8078798C
/* 80787984  3B 60 27 10 */	li r27, 0x2710
/* 80787988  48 00 00 10 */	b lbl_80787998
lbl_8078798C:
/* 8078798C  2C 1B D8 F0 */	cmpwi r27, -10000
/* 80787990  40 80 00 08 */	bge lbl_80787998
/* 80787994  3B 60 D8 F0 */	li r27, -10000
lbl_80787998:
/* 80787998  38 7D 06 B0 */	addi r3, r29, 0x6b0
/* 8078799C  7F 44 07 34 */	extsh r4, r26
/* 807879A0  38 A0 00 02 */	li r5, 2
/* 807879A4  38 C0 10 00 */	li r6, 0x1000
/* 807879A8  4B AE 8C 61 */	bl cLib_addCalcAngleS2__FPssss
/* 807879AC  38 7D 06 B6 */	addi r3, r29, 0x6b6
/* 807879B0  7F 64 07 34 */	extsh r4, r27
/* 807879B4  38 A0 00 02 */	li r5, 2
/* 807879B8  38 C0 10 00 */	li r6, 0x1000
/* 807879BC  4B AE 8C 4D */	bl cLib_addCalcAngleS2__FPssss
lbl_807879C0:
/* 807879C0  38 00 00 00 */	li r0, 0
/* 807879C4  B0 1D 06 BA */	sth r0, 0x6ba(r29)
/* 807879C8  48 00 00 34 */	b lbl_807879FC
lbl_807879CC:
/* 807879CC  38 7D 06 B0 */	addi r3, r29, 0x6b0
/* 807879D0  38 80 00 00 */	li r4, 0
/* 807879D4  38 A0 00 02 */	li r5, 2
/* 807879D8  38 C0 10 00 */	li r6, 0x1000
/* 807879DC  4B AE 8C 2D */	bl cLib_addCalcAngleS2__FPssss
/* 807879E0  38 7D 06 B6 */	addi r3, r29, 0x6b6
/* 807879E4  38 80 00 00 */	li r4, 0
/* 807879E8  38 A0 00 02 */	li r5, 2
/* 807879EC  38 C0 10 00 */	li r6, 0x1000
/* 807879F0  4B AE 8C 19 */	bl cLib_addCalcAngleS2__FPssss
/* 807879F4  38 00 00 00 */	li r0, 0
/* 807879F8  B0 1D 06 BA */	sth r0, 0x6ba(r29)
lbl_807879FC:
/* 807879FC  38 7D 06 B8 */	addi r3, r29, 0x6b8
/* 80787A00  A8 9D 06 BA */	lha r4, 0x6ba(r29)
/* 80787A04  38 A0 00 04 */	li r5, 4
/* 80787A08  38 C0 04 00 */	li r6, 0x400
/* 80787A0C  4B AE 8B FD */	bl cLib_addCalcAngleS2__FPssss
/* 80787A10  88 1D 06 AE */	lbz r0, 0x6ae(r29)
/* 80787A14  7C 00 07 75 */	extsb. r0, r0
/* 80787A18  41 80 00 40 */	blt lbl_80787A58
/* 80787A1C  A8 1D 06 88 */	lha r0, 0x688(r29)
/* 80787A20  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 80787A24  40 82 00 3C */	bne lbl_80787A60
/* 80787A28  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80787A2C  4B AD FF 29 */	bl cM_rndF__Ff
/* 80787A30  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80787A34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80787A38  40 80 00 28 */	bge lbl_80787A60
/* 80787A3C  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80787A40  4B AD FF 4D */	bl cM_rndFX__Ff
/* 80787A44  FC 00 08 1E */	fctiwz f0, f1
/* 80787A48  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80787A4C  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80787A50  B0 1D 06 B4 */	sth r0, 0x6b4(r29)
/* 80787A54  48 00 00 0C */	b lbl_80787A60
lbl_80787A58:
/* 80787A58  38 00 00 00 */	li r0, 0
/* 80787A5C  B0 1D 06 B4 */	sth r0, 0x6b4(r29)
lbl_80787A60:
/* 80787A60  38 7D 06 B2 */	addi r3, r29, 0x6b2
/* 80787A64  A8 9D 06 B4 */	lha r4, 0x6b4(r29)
/* 80787A68  38 A0 00 04 */	li r5, 4
/* 80787A6C  38 C0 04 00 */	li r6, 0x400
/* 80787A70  4B AE 8B 99 */	bl cLib_addCalcAngleS2__FPssss
/* 80787A74  A8 7D 06 BC */	lha r3, 0x6bc(r29)
/* 80787A78  2C 03 00 00 */	cmpwi r3, 0
/* 80787A7C  41 82 00 5C */	beq lbl_80787AD8
/* 80787A80  38 03 FF FF */	addi r0, r3, -1
/* 80787A84  B0 1D 06 BC */	sth r0, 0x6bc(r29)
/* 80787A88  A8 9D 06 BC */	lha r4, 0x6bc(r29)
/* 80787A8C  1C 04 2E E0 */	mulli r0, r4, 0x2ee0
/* 80787A90  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80787A94  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80787A98  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80787A9C  7C 63 04 2E */	lfsx f3, r3, r0
/* 80787AA0  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80787AA4  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 80787AA8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80787AAC  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80787AB0  3C 00 43 30 */	lis r0, 0x4330
/* 80787AB4  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80787AB8  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 80787ABC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80787AC0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80787AC4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80787AC8  FC 00 00 1E */	fctiwz f0, f0
/* 80787ACC  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80787AD0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80787AD4  B0 1D 06 B8 */	sth r0, 0x6b8(r29)
lbl_80787AD8:
/* 80787AD8  88 7D 06 F6 */	lbz r3, 0x6f6(r29)
/* 80787ADC  7C 60 07 75 */	extsb. r0, r3
/* 80787AE0  41 82 01 C0 */	beq lbl_80787CA0
/* 80787AE4  38 03 FF FF */	addi r0, r3, -1
/* 80787AE8  98 1D 06 F6 */	stb r0, 0x6f6(r29)
/* 80787AEC  A8 1D 06 E4 */	lha r0, 0x6e4(r29)
/* 80787AF0  2C 00 00 00 */	cmpwi r0, 0
/* 80787AF4  41 82 01 AC */	beq lbl_80787CA0
/* 80787AF8  38 61 00 74 */	addi r3, r1, 0x74
/* 80787AFC  4B 8E FA 81 */	bl __ct__11dBgS_GndChkFv
/* 80787B00  3B 40 00 00 */	li r26, 0
/* 80787B04  3B 60 00 00 */	li r27, 0
/* 80787B08  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80787B0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80787B10  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80787B14  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80787B18  38 63 00 60 */	addi r3, r3, 0x60
/* 80787B1C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80787B20  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80787B24  80 84 00 00 */	lwz r4, 0(r4)
/* 80787B28  4B BB E9 89 */	bl PSMTXCopy
/* 80787B2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80787B30  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80787B34  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80787B38  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80787B3C  38 61 00 68 */	addi r3, r1, 0x68
/* 80787B40  38 81 00 44 */	addi r4, r1, 0x44
/* 80787B44  4B AE 93 A9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80787B48  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80787B4C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80787B50  EC 00 08 2A */	fadds f0, f0, f1
/* 80787B54  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80787B58  EC 00 08 2A */	fadds f0, f0, f1
/* 80787B5C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80787B60  38 61 00 74 */	addi r3, r1, 0x74
/* 80787B64  38 81 00 44 */	addi r4, r1, 0x44
/* 80787B68  4B AE 01 C1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80787B6C  7F C3 F3 78 */	mr r3, r30
/* 80787B70  38 81 00 74 */	addi r4, r1, 0x74
/* 80787B74  4B 8E C9 2D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80787B78  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80787B7C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80787B80  FC 40 08 18 */	frsp f2, f1
/* 80787B84  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80787B88  41 82 01 04 */	beq lbl_80787C8C
/* 80787B8C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80787B90  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80787B94  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80787B98  EC 01 10 2A */	fadds f0, f1, f2
/* 80787B9C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80787BA0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80787BA4  EC 00 08 2A */	fadds f0, f0, f1
/* 80787BA8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80787BAC  38 61 00 74 */	addi r3, r1, 0x74
/* 80787BB0  38 81 00 50 */	addi r4, r1, 0x50
/* 80787BB4  4B AE 01 59 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 80787BB8  7F C3 F3 78 */	mr r3, r30
/* 80787BBC  38 81 00 74 */	addi r4, r1, 0x74
/* 80787BC0  4B 8E C8 E1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80787BC4  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80787BC8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80787BCC  FC 20 08 18 */	frsp f1, f1
/* 80787BD0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80787BD4  41 82 00 38 */	beq lbl_80787C0C
/* 80787BD8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80787BDC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80787BE0  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 80787BE4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80787BE8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80787BEC  4B AD FA 89 */	bl cM_atan2s__Fff
/* 80787BF0  7C 03 00 D0 */	neg r0, r3
/* 80787BF4  7C 1B 07 34 */	extsh r27, r0
/* 80787BF8  2C 1B 30 00 */	cmpwi r27, 0x3000
/* 80787BFC  41 81 00 0C */	bgt lbl_80787C08
/* 80787C00  2C 1B D0 00 */	cmpwi r27, -12288
/* 80787C04  40 80 00 08 */	bge lbl_80787C0C
lbl_80787C08:
/* 80787C08  3B 60 00 00 */	li r27, 0
lbl_80787C0C:
/* 80787C0C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80787C10  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80787C14  EC 00 08 2A */	fadds f0, f0, f1
/* 80787C18  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80787C1C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80787C20  EC 01 00 2A */	fadds f0, f1, f0
/* 80787C24  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80787C28  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80787C2C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80787C30  38 61 00 74 */	addi r3, r1, 0x74
/* 80787C34  38 81 00 50 */	addi r4, r1, 0x50
/* 80787C38  4B AE 00 D5 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 80787C3C  7F C3 F3 78 */	mr r3, r30
/* 80787C40  38 81 00 74 */	addi r4, r1, 0x74
/* 80787C44  4B 8E C8 5D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80787C48  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80787C4C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80787C50  FC 20 08 18 */	frsp f1, f1
/* 80787C54  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80787C58  41 82 00 34 */	beq lbl_80787C8C
/* 80787C5C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80787C60  EC 21 00 28 */	fsubs f1, f1, f0
/* 80787C64  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80787C68  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80787C6C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80787C70  4B AD FA 05 */	bl cM_atan2s__Fff
/* 80787C74  7C 7A 07 34 */	extsh r26, r3
/* 80787C78  2C 1A 30 00 */	cmpwi r26, 0x3000
/* 80787C7C  41 81 00 0C */	bgt lbl_80787C88
/* 80787C80  2C 1A D0 00 */	cmpwi r26, -12288
/* 80787C84  40 80 00 08 */	bge lbl_80787C8C
lbl_80787C88:
/* 80787C88  3B 40 00 00 */	li r26, 0
lbl_80787C8C:
/* 80787C8C  B3 7D 06 F0 */	sth r27, 0x6f0(r29)
/* 80787C90  B3 5D 06 F4 */	sth r26, 0x6f4(r29)
/* 80787C94  38 61 00 74 */	addi r3, r1, 0x74
/* 80787C98  38 80 FF FF */	li r4, -1
/* 80787C9C  4B 8E F9 55 */	bl __dt__11dBgS_GndChkFv
lbl_80787CA0:
/* 80787CA0  38 7D 06 EA */	addi r3, r29, 0x6ea
/* 80787CA4  A8 9D 06 F0 */	lha r4, 0x6f0(r29)
/* 80787CA8  38 A0 00 01 */	li r5, 1
/* 80787CAC  38 C0 04 00 */	li r6, 0x400
/* 80787CB0  4B AE 89 59 */	bl cLib_addCalcAngleS2__FPssss
/* 80787CB4  38 7D 06 EE */	addi r3, r29, 0x6ee
/* 80787CB8  A8 9D 06 F4 */	lha r4, 0x6f4(r29)
/* 80787CBC  38 A0 00 01 */	li r5, 1
/* 80787CC0  38 C0 04 00 */	li r6, 0x400
/* 80787CC4  4B AE 89 45 */	bl cLib_addCalcAngleS2__FPssss
/* 80787CC8  88 1D 0F B8 */	lbz r0, 0xfb8(r29)
/* 80787CCC  7C 00 07 75 */	extsb. r0, r0
/* 80787CD0  41 82 00 CC */	beq lbl_80787D9C
/* 80787CD4  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80787CD8  83 83 00 04 */	lwz r28, 4(r3)
/* 80787CDC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80787CE0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80787CE4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80787CE8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80787CEC  3B 40 00 00 */	li r26, 0
/* 80787CF0  3B 60 00 00 */	li r27, 0
lbl_80787CF4:
/* 80787CF4  88 7D 0F B8 */	lbz r3, 0xfb8(r29)
/* 80787CF8  7C 60 07 74 */	extsb r0, r3
/* 80787CFC  2C 00 00 03 */	cmpwi r0, 3
/* 80787D00  41 82 00 28 */	beq lbl_80787D28
/* 80787D04  2C 00 00 02 */	cmpwi r0, 2
/* 80787D08  40 82 00 0C */	bne lbl_80787D14
/* 80787D0C  2C 1A 00 01 */	cmpwi r26, 1
/* 80787D10  41 82 00 18 */	beq lbl_80787D28
lbl_80787D14:
/* 80787D14  7C 60 07 74 */	extsb r0, r3
/* 80787D18  2C 00 00 01 */	cmpwi r0, 1
/* 80787D1C  40 82 00 68 */	bne lbl_80787D84
/* 80787D20  2C 1A 00 00 */	cmpwi r26, 0
/* 80787D24  40 82 00 60 */	bne lbl_80787D84
lbl_80787D28:
/* 80787D28  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80787D2C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80787D30  3C 60 80 79 */	lis r3, foot_idx@ha /* 0x80789E08@ha */
/* 80787D34  38 63 9E 08 */	addi r3, r3, foot_idx@l /* 0x80789E08@l */
/* 80787D38  7C 03 D8 2E */	lwzx r0, r3, r27
/* 80787D3C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80787D40  7C 64 02 14 */	add r3, r4, r0
/* 80787D44  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80787D48  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80787D4C  80 84 00 00 */	lwz r4, 0(r4)
/* 80787D50  4B BB E7 61 */	bl PSMTXCopy
/* 80787D54  38 61 00 68 */	addi r3, r1, 0x68
/* 80787D58  38 81 00 5C */	addi r4, r1, 0x5c
/* 80787D5C  4B AE 91 91 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80787D60  7C 9D DA 14 */	add r4, r29, r27
/* 80787D64  38 64 0F BC */	addi r3, r4, 0xfbc
/* 80787D68  38 84 0F C4 */	addi r4, r4, 0xfc4
/* 80787D6C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80787D70  38 DD 04 E4 */	addi r6, r29, 0x4e4
/* 80787D74  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80787D78  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80787D7C  39 00 00 00 */	li r8, 0
/* 80787D80  4B 89 52 A1 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_80787D84:
/* 80787D84  3B 5A 00 01 */	addi r26, r26, 1
/* 80787D88  2C 1A 00 02 */	cmpwi r26, 2
/* 80787D8C  3B 7B 00 04 */	addi r27, r27, 4
/* 80787D90  41 80 FF 64 */	blt lbl_80787CF4
/* 80787D94  38 00 00 00 */	li r0, 0
/* 80787D98  98 1D 0F B8 */	stb r0, 0xfb8(r29)
lbl_80787D9C:
/* 80787D9C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80787DA0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80787DA4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80787DA8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80787DAC  7F A3 EB 78 */	mr r3, r29
/* 80787DB0  38 9D 05 E4 */	addi r4, r29, 0x5e4
/* 80787DB4  38 BD 05 38 */	addi r5, r29, 0x538
/* 80787DB8  38 C1 00 38 */	addi r6, r1, 0x38
/* 80787DBC  48 00 1A 55 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 80787DC0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80787DC4  4B BD A4 59 */	bl _restgpr_26
/* 80787DC8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80787DCC  7C 08 03 A6 */	mtlr r0
/* 80787DD0  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80787DD4  4E 80 00 20 */	blr 
