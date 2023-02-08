lbl_80BB2700:
/* 80BB2700  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BB2704  7C 08 02 A6 */	mflr r0
/* 80BB2708  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BB270C  39 61 00 40 */	addi r11, r1, 0x40
/* 80BB2710  4B 7A FA CD */	bl _savegpr_29
/* 80BB2714  7C 7E 1B 78 */	mr r30, r3
/* 80BB2718  3C 80 80 BB */	lis r4, l_eye_offset@ha /* 0x80BB37B8@ha */
/* 80BB271C  3B E4 37 B8 */	addi r31, r4, l_eye_offset@l /* 0x80BB37B8@l */
/* 80BB2720  88 03 0F EA */	lbz r0, 0xfea(r3)
/* 80BB2724  28 00 00 07 */	cmplwi r0, 7
/* 80BB2728  41 81 03 28 */	bgt lbl_80BB2A50
/* 80BB272C  3C 80 80 BB */	lis r4, lit_6065@ha /* 0x80BB3D64@ha */
/* 80BB2730  38 84 3D 64 */	addi r4, r4, lit_6065@l /* 0x80BB3D64@l */
/* 80BB2734  54 00 10 3A */	slwi r0, r0, 2
/* 80BB2738  7C 04 00 2E */	lwzx r0, r4, r0
/* 80BB273C  7C 09 03 A6 */	mtctr r0
/* 80BB2740  4E 80 04 20 */	bctr 
lbl_80BB2744:
/* 80BB2744  38 7E 0F E5 */	addi r3, r30, 0xfe5
/* 80BB2748  48 00 0D 65 */	bl func_80BB34AC
/* 80BB274C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB2750  40 82 03 00 */	bne lbl_80BB2A50
/* 80BB2754  38 00 00 01 */	li r0, 1
/* 80BB2758  98 1E 0F EA */	stb r0, 0xfea(r30)
/* 80BB275C  48 00 02 F4 */	b lbl_80BB2A50
lbl_80BB2760:
/* 80BB2760  38 00 01 F4 */	li r0, 0x1f4
/* 80BB2764  B0 1E 0F AC */	sth r0, 0xfac(r30)
/* 80BB2768  80 7E 10 2C */	lwz r3, 0x102c(r30)
/* 80BB276C  28 03 00 00 */	cmplwi r3, 0
/* 80BB2770  41 82 00 30 */	beq lbl_80BB27A0
/* 80BB2774  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB2778  60 00 00 01 */	ori r0, r0, 1
/* 80BB277C  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB2780  38 00 00 01 */	li r0, 1
/* 80BB2784  90 03 00 24 */	stw r0, 0x24(r3)
/* 80BB2788  80 7E 10 2C */	lwz r3, 0x102c(r30)
/* 80BB278C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB2790  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB2794  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB2798  38 00 00 00 */	li r0, 0
/* 80BB279C  90 1E 10 2C */	stw r0, 0x102c(r30)
lbl_80BB27A0:
/* 80BB27A0  80 7E 10 30 */	lwz r3, 0x1030(r30)
/* 80BB27A4  28 03 00 00 */	cmplwi r3, 0
/* 80BB27A8  41 82 00 30 */	beq lbl_80BB27D8
/* 80BB27AC  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB27B0  60 00 00 01 */	ori r0, r0, 1
/* 80BB27B4  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB27B8  38 00 00 01 */	li r0, 1
/* 80BB27BC  90 03 00 24 */	stw r0, 0x24(r3)
/* 80BB27C0  80 7E 10 30 */	lwz r3, 0x1030(r30)
/* 80BB27C4  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB27C8  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB27CC  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB27D0  38 00 00 00 */	li r0, 0
/* 80BB27D4  90 1E 10 30 */	stw r0, 0x1030(r30)
lbl_80BB27D8:
/* 80BB27D8  38 00 00 02 */	li r0, 2
/* 80BB27DC  98 1E 0F EA */	stb r0, 0xfea(r30)
/* 80BB27E0  48 00 02 70 */	b lbl_80BB2A50
lbl_80BB27E4:
/* 80BB27E4  38 7E 0F AC */	addi r3, r30, 0xfac
/* 80BB27E8  38 80 00 00 */	li r4, 0
/* 80BB27EC  38 A0 00 5A */	li r5, 0x5a
/* 80BB27F0  38 C0 00 0A */	li r6, 0xa
/* 80BB27F4  38 E0 00 05 */	li r7, 5
/* 80BB27F8  4B 6B DD 49 */	bl cLib_addCalcAngleS__FPsssss
/* 80BB27FC  A8 7E 0F 96 */	lha r3, 0xf96(r30)
/* 80BB2800  A8 1E 0F 98 */	lha r0, 0xf98(r30)
/* 80BB2804  7C 03 00 00 */	cmpw r3, r0
/* 80BB2808  40 82 02 48 */	bne lbl_80BB2A50
/* 80BB280C  38 00 00 00 */	li r0, 0
/* 80BB2810  B0 1E 0F AC */	sth r0, 0xfac(r30)
/* 80BB2814  C0 1F 02 54 */	lfs f0, 0x254(r31)
/* 80BB2818  D0 1E 10 00 */	stfs f0, 0x1000(r30)
/* 80BB281C  38 00 00 03 */	li r0, 3
/* 80BB2820  98 1E 0F EA */	stb r0, 0xfea(r30)
/* 80BB2824  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BB2828  7C 03 07 74 */	extsb r3, r0
/* 80BB282C  4B 47 A8 41 */	bl dComIfGp_getReverb__Fi
/* 80BB2830  7C 67 1B 78 */	mr r7, r3
/* 80BB2834  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070228@ha */
/* 80BB2838  38 03 02 28 */	addi r0, r3, 0x0228 /* 0x00070228@l */
/* 80BB283C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BB2840  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB2844  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB2848  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB284C  38 81 00 28 */	addi r4, r1, 0x28
/* 80BB2850  38 BE 05 38 */	addi r5, r30, 0x538
/* 80BB2854  38 C0 00 00 */	li r6, 0
/* 80BB2858  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BB285C  FC 40 08 90 */	fmr f2, f1
/* 80BB2860  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80BB2864  FC 80 18 90 */	fmr f4, f3
/* 80BB2868  39 00 00 00 */	li r8, 0
/* 80BB286C  4B 6F 91 19 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB2870  48 00 01 E0 */	b lbl_80BB2A50
lbl_80BB2874:
/* 80BB2874  38 00 00 14 */	li r0, 0x14
/* 80BB2878  98 1E 0F E5 */	stb r0, 0xfe5(r30)
/* 80BB287C  38 00 00 04 */	li r0, 4
/* 80BB2880  98 1E 0F EA */	stb r0, 0xfea(r30)
/* 80BB2884  48 00 01 CC */	b lbl_80BB2A50
lbl_80BB2888:
/* 80BB2888  38 7E 0F E5 */	addi r3, r30, 0xfe5
/* 80BB288C  48 00 0C 21 */	bl func_80BB34AC
/* 80BB2890  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB2894  40 82 01 BC */	bne lbl_80BB2A50
/* 80BB2898  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BB289C  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80BB28A0  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80BB28A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB28A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB28AC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80BB28B0  38 80 00 00 */	li r4, 0
/* 80BB28B4  90 81 00 08 */	stw r4, 8(r1)
/* 80BB28B8  38 00 FF FF */	li r0, -1
/* 80BB28BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB28C0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BB28C4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BB28C8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BB28CC  38 80 00 00 */	li r4, 0
/* 80BB28D0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008469@ha */
/* 80BB28D4  38 A5 84 69 */	addi r5, r5, 0x8469 /* 0x00008469@l */
/* 80BB28D8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BB28DC  38 E0 00 00 */	li r7, 0
/* 80BB28E0  39 00 00 00 */	li r8, 0
/* 80BB28E4  39 20 00 00 */	li r9, 0
/* 80BB28E8  39 40 00 FF */	li r10, 0xff
/* 80BB28EC  4B 49 A1 A5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BB28F0  38 00 00 05 */	li r0, 5
/* 80BB28F4  98 1E 0F EA */	stb r0, 0xfea(r30)
/* 80BB28F8  48 00 01 58 */	b lbl_80BB2A50
lbl_80BB28FC:
/* 80BB28FC  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80BB2900  38 80 00 01 */	li r4, 1
/* 80BB2904  88 03 00 05 */	lbz r0, 5(r3)
/* 80BB2908  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BB290C  40 82 00 18 */	bne lbl_80BB2924
/* 80BB2910  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80BB2914  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BB2918  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BB291C  41 82 00 08 */	beq lbl_80BB2924
/* 80BB2920  38 80 00 00 */	li r4, 0
lbl_80BB2924:
/* 80BB2924  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80BB2928  41 82 01 28 */	beq lbl_80BB2A50
/* 80BB292C  38 00 00 0A */	li r0, 0xa
/* 80BB2930  98 1E 0F E5 */	stb r0, 0xfe5(r30)
/* 80BB2934  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BB2938  7C 03 07 74 */	extsb r3, r0
/* 80BB293C  4B 47 A7 31 */	bl dComIfGp_getReverb__Fi
/* 80BB2940  7C 67 1B 78 */	mr r7, r3
/* 80BB2944  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701DD@ha */
/* 80BB2948  38 03 01 DD */	addi r0, r3, 0x01DD /* 0x000701DD@l */
/* 80BB294C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB2950  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB2954  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB2958  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB295C  38 81 00 24 */	addi r4, r1, 0x24
/* 80BB2960  3B BE 05 38 */	addi r29, r30, 0x538
/* 80BB2964  7F A5 EB 78 */	mr r5, r29
/* 80BB2968  38 C0 00 00 */	li r6, 0
/* 80BB296C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BB2970  FC 40 08 90 */	fmr f2, f1
/* 80BB2974  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80BB2978  FC 80 18 90 */	fmr f4, f3
/* 80BB297C  39 00 00 00 */	li r8, 0
/* 80BB2980  4B 6F 90 05 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB2984  38 00 00 06 */	li r0, 6
/* 80BB2988  98 1E 0F EA */	stb r0, 0xfea(r30)
/* 80BB298C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BB2990  7C 03 07 74 */	extsb r3, r0
/* 80BB2994  4B 47 A6 D9 */	bl dComIfGp_getReverb__Fi
/* 80BB2998  7C 67 1B 78 */	mr r7, r3
/* 80BB299C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070227@ha */
/* 80BB29A0  38 03 02 27 */	addi r0, r3, 0x0227 /* 0x00070227@l */
/* 80BB29A4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BB29A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB29AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB29B0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB29B4  38 81 00 20 */	addi r4, r1, 0x20
/* 80BB29B8  7F A5 EB 78 */	mr r5, r29
/* 80BB29BC  38 C0 00 00 */	li r6, 0
/* 80BB29C0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BB29C4  FC 40 08 90 */	fmr f2, f1
/* 80BB29C8  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80BB29CC  FC 80 18 90 */	fmr f4, f3
/* 80BB29D0  39 00 00 00 */	li r8, 0
/* 80BB29D4  4B 6F 8F B1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB29D8  48 00 00 78 */	b lbl_80BB2A50
lbl_80BB29DC:
/* 80BB29DC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BB29E0  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 80BB29E4  28 00 00 01 */	cmplwi r0, 1
/* 80BB29E8  40 82 00 0C */	bne lbl_80BB29F4
/* 80BB29EC  4B FF C9 91 */	bl initActionObjBemos__9daObjBm_cFv
/* 80BB29F0  48 00 00 60 */	b lbl_80BB2A50
lbl_80BB29F4:
/* 80BB29F4  38 7E 0F E5 */	addi r3, r30, 0xfe5
/* 80BB29F8  48 00 0A B5 */	bl func_80BB34AC
/* 80BB29FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB2A00  40 82 00 50 */	bne lbl_80BB2A50
/* 80BB2A04  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BB2A08  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80BB2A0C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80BB2A10  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80BB2A14  38 80 00 01 */	li r4, 1
/* 80BB2A18  88 03 00 05 */	lbz r0, 5(r3)
/* 80BB2A1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BB2A20  40 82 00 18 */	bne lbl_80BB2A38
/* 80BB2A24  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80BB2A28  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BB2A2C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BB2A30  41 82 00 08 */	beq lbl_80BB2A38
/* 80BB2A34  38 80 00 00 */	li r4, 0
lbl_80BB2A38:
/* 80BB2A38  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80BB2A3C  41 82 00 14 */	beq lbl_80BB2A50
/* 80BB2A40  38 00 00 07 */	li r0, 7
/* 80BB2A44  98 1E 0F EA */	stb r0, 0xfea(r30)
/* 80BB2A48  48 00 00 08 */	b lbl_80BB2A50
lbl_80BB2A4C:
/* 80BB2A4C  4B FF C9 31 */	bl initActionObjBemos__9daObjBm_cFv
lbl_80BB2A50:
/* 80BB2A50  A8 1E 0F AC */	lha r0, 0xfac(r30)
/* 80BB2A54  B0 1E 0F B0 */	sth r0, 0xfb0(r30)
/* 80BB2A58  A8 7E 0F AE */	lha r3, 0xfae(r30)
/* 80BB2A5C  A8 1E 0F 9A */	lha r0, 0xf9a(r30)
/* 80BB2A60  7C 03 00 50 */	subf r0, r3, r0
/* 80BB2A64  B0 1E 0F 9C */	sth r0, 0xf9c(r30)
/* 80BB2A68  A8 7E 0F 9E */	lha r3, 0xf9e(r30)
/* 80BB2A6C  A8 1E 0F AE */	lha r0, 0xfae(r30)
/* 80BB2A70  7C 03 02 14 */	add r0, r3, r0
/* 80BB2A74  B0 1E 0F A0 */	sth r0, 0xfa0(r30)
/* 80BB2A78  A8 7E 0F A2 */	lha r3, 0xfa2(r30)
/* 80BB2A7C  A8 1E 0F AE */	lha r0, 0xfae(r30)
/* 80BB2A80  7C 03 02 14 */	add r0, r3, r0
/* 80BB2A84  B0 1E 0F A4 */	sth r0, 0xfa4(r30)
/* 80BB2A88  A8 7E 0F A6 */	lha r3, 0xfa6(r30)
/* 80BB2A8C  A8 1E 0F AE */	lha r0, 0xfae(r30)
/* 80BB2A90  7C 03 02 14 */	add r0, r3, r0
/* 80BB2A94  B0 1E 0F A8 */	sth r0, 0xfa8(r30)
/* 80BB2A98  39 61 00 40 */	addi r11, r1, 0x40
/* 80BB2A9C  4B 7A F7 8D */	bl _restgpr_29
/* 80BB2AA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BB2AA4  7C 08 03 A6 */	mtlr r0
/* 80BB2AA8  38 21 00 40 */	addi r1, r1, 0x40
/* 80BB2AAC  4E 80 00 20 */	blr 
