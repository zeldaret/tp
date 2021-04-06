lbl_800B271C:
/* 800B271C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B2720  7C 08 02 A6 */	mflr r0
/* 800B2724  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B2728  39 61 00 20 */	addi r11, r1, 0x20
/* 800B272C  48 2A FA B1 */	bl _savegpr_29
/* 800B2730  7C 7E 1B 78 */	mr r30, r3
/* 800B2734  3B E0 00 00 */	li r31, 0
/* 800B2738  88 03 2F 8E */	lbz r0, 0x2f8e(r3)
/* 800B273C  98 03 2F 8F */	stb r0, 0x2f8f(r3)
/* 800B2740  38 00 00 00 */	li r0, 0
/* 800B2744  98 03 2F 8D */	stb r0, 0x2f8d(r3)
/* 800B2748  98 03 2F 8E */	stb r0, 0x2f8e(r3)
/* 800B274C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800B2750  D0 03 34 34 */	stfs f0, 0x3434(r3)
/* 800B2754  48 06 34 CD */	bl checkEventRun__9daAlink_cCFv
/* 800B2758  2C 03 00 00 */	cmpwi r3, 0
/* 800B275C  41 82 01 20 */	beq lbl_800B287C
/* 800B2760  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800B2764  28 00 00 BA */	cmplwi r0, 0xba
/* 800B2768  41 82 01 14 */	beq lbl_800B287C
/* 800B276C  28 00 01 33 */	cmplwi r0, 0x133
/* 800B2770  41 82 01 0C */	beq lbl_800B287C
/* 800B2774  28 00 00 C0 */	cmplwi r0, 0xc0
/* 800B2778  41 82 01 04 */	beq lbl_800B287C
/* 800B277C  28 00 01 3C */	cmplwi r0, 0x13c
/* 800B2780  41 82 00 FC */	beq lbl_800B287C
/* 800B2784  28 00 01 3D */	cmplwi r0, 0x13d
/* 800B2788  41 82 00 F4 */	beq lbl_800B287C
/* 800B278C  28 00 01 4D */	cmplwi r0, 0x14d
/* 800B2790  40 82 00 10 */	bne lbl_800B27A0
/* 800B2794  A8 1E 30 14 */	lha r0, 0x3014(r30)
/* 800B2798  2C 00 00 00 */	cmpwi r0, 0
/* 800B279C  40 82 00 E0 */	bne lbl_800B287C
lbl_800B27A0:
/* 800B27A0  83 BE 06 14 */	lwz r29, 0x614(r30)
/* 800B27A4  7F C3 F3 78 */	mr r3, r30
/* 800B27A8  7F A4 EB 78 */	mr r4, r29
/* 800B27AC  48 06 46 B5 */	bl checkDemoMoveMode__9daAlink_cCFUl
/* 800B27B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B27B4  41 82 00 30 */	beq lbl_800B27E4
/* 800B27B8  80 6D 88 A0 */	lwz r3, m_object__7dDemo_c(r13)
/* 800B27BC  88 9E 04 98 */	lbz r4, 0x498(r30)
/* 800B27C0  4B F8 68 C9 */	bl getActor__14dDemo_object_cFUc
/* 800B27C4  28 03 00 00 */	cmplwi r3, 0
/* 800B27C8  41 82 00 10 */	beq lbl_800B27D8
/* 800B27CC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800B27D0  D0 1E 33 A8 */	stfs f0, 0x33a8(r30)
/* 800B27D4  48 00 00 94 */	b lbl_800B2868
lbl_800B27D8:
/* 800B27D8  C0 1E 06 18 */	lfs f0, 0x618(r30)
/* 800B27DC  D0 1E 33 A8 */	stfs f0, 0x33a8(r30)
/* 800B27E0  48 00 00 88 */	b lbl_800B2868
lbl_800B27E4:
/* 800B27E4  28 1D 00 0E */	cmplwi r29, 0xe
/* 800B27E8  41 82 00 14 */	beq lbl_800B27FC
/* 800B27EC  28 1D 00 1A */	cmplwi r29, 0x1a
/* 800B27F0  41 82 00 0C */	beq lbl_800B27FC
/* 800B27F4  28 1D 00 41 */	cmplwi r29, 0x41
/* 800B27F8  40 82 00 68 */	bne lbl_800B2860
lbl_800B27FC:
/* 800B27FC  28 1D 00 1A */	cmplwi r29, 0x1a
/* 800B2800  40 82 00 4C */	bne lbl_800B284C
/* 800B2804  C0 1E 06 18 */	lfs f0, 0x618(r30)
/* 800B2808  D0 1E 33 A8 */	stfs f0, 0x33a8(r30)
/* 800B280C  7F C3 F3 78 */	mr r3, r30
/* 800B2810  48 00 C1 C5 */	bl getSceneExitMoveAngle__9daAlink_cFv
/* 800B2814  B0 7E 06 06 */	sth r3, 0x606(r30)
/* 800B2818  7F C3 F3 78 */	mr r3, r30
/* 800B281C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800B2820  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800B2824  7D 89 03 A6 */	mtctr r12
/* 800B2828  4E 80 04 21 */	bctrl 
/* 800B282C  28 03 00 00 */	cmplwi r3, 0
/* 800B2830  41 82 00 24 */	beq lbl_800B2854
/* 800B2834  A8 1E 06 06 */	lha r0, 0x606(r30)
/* 800B2838  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B283C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B2840  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800B2844  B0 03 16 FC */	sth r0, 0x16fc(r3)
/* 800B2848  48 00 00 0C */	b lbl_800B2854
lbl_800B284C:
/* 800B284C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B2850  D0 1E 33 A8 */	stfs f0, 0x33a8(r30)
lbl_800B2854:
/* 800B2854  88 1E 2F 8F */	lbz r0, 0x2f8f(r30)
/* 800B2858  98 1E 2F 8E */	stb r0, 0x2f8e(r30)
/* 800B285C  48 00 00 0C */	b lbl_800B2868
lbl_800B2860:
/* 800B2860  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B2864  D0 1E 33 A8 */	stfs f0, 0x33a8(r30)
lbl_800B2868:
/* 800B2868  A8 1E 06 06 */	lha r0, 0x606(r30)
/* 800B286C  B0 1E 2F E2 */	sth r0, 0x2fe2(r30)
/* 800B2870  C0 1E 33 A8 */	lfs f0, 0x33a8(r30)
/* 800B2874  D0 1E 33 AC */	stfs f0, 0x33ac(r30)
/* 800B2878  48 00 05 48 */	b lbl_800B2DC0
lbl_800B287C:
/* 800B287C  7F C3 F3 78 */	mr r3, r30
/* 800B2880  48 06 64 19 */	bl checkDeadHP__9daAlink_cFv
/* 800B2884  2C 03 00 00 */	cmpwi r3, 0
/* 800B2888  40 82 00 18 */	bne lbl_800B28A0
/* 800B288C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 800B2890  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 800B2894  88 03 00 C1 */	lbz r0, 0xc1(r3)
/* 800B2898  28 00 00 01 */	cmplwi r0, 1
/* 800B289C  40 82 00 20 */	bne lbl_800B28BC
lbl_800B28A0:
/* 800B28A0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B28A4  D0 1E 33 A8 */	stfs f0, 0x33a8(r30)
/* 800B28A8  D0 1E 33 AC */	stfs f0, 0x33ac(r30)
/* 800B28AC  38 00 00 00 */	li r0, 0
/* 800B28B0  B0 1E 2F E0 */	sth r0, 0x2fe0(r30)
/* 800B28B4  B0 1E 2F E2 */	sth r0, 0x2fe2(r30)
/* 800B28B8  48 00 05 08 */	b lbl_800B2DC0
lbl_800B28BC:
/* 800B28BC  7F C3 F3 78 */	mr r3, r30
/* 800B28C0  48 08 16 31 */	bl checkMidnaLockJumpPoint__9daAlink_cCFv
/* 800B28C4  28 03 00 00 */	cmplwi r3, 0
/* 800B28C8  41 82 00 50 */	beq lbl_800B2918
/* 800B28CC  80 6D 8A 98 */	lwz r3, m_midnaActor__9daPy_py_c(r13)
/* 800B28D0  80 03 08 90 */	lwz r0, 0x890(r3)
/* 800B28D4  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 800B28D8  41 82 00 40 */	beq lbl_800B2918
/* 800B28DC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B28E0  D0 1E 33 A8 */	stfs f0, 0x33a8(r30)
/* 800B28E4  D0 1E 33 AC */	stfs f0, 0x33ac(r30)
/* 800B28E8  38 00 00 00 */	li r0, 0
/* 800B28EC  B0 1E 2F E0 */	sth r0, 0x2fe0(r30)
/* 800B28F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B28F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B28F8  98 03 5E B8 */	stb r0, 0x5eb8(r3)
/* 800B28FC  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800B2900  60 00 00 80 */	ori r0, r0, 0x80
/* 800B2904  90 1E 05 78 */	stw r0, 0x578(r30)
/* 800B2908  3B E0 00 01 */	li r31, 1
/* 800B290C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800B2910  B0 1E 2F E4 */	sth r0, 0x2fe4(r30)
/* 800B2914  48 00 04 AC */	b lbl_800B2DC0
lbl_800B2918:
/* 800B2918  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800B291C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B2920  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B2924  41 81 00 0C */	bgt lbl_800B2930
/* 800B2928  38 00 00 00 */	li r0, 0
/* 800B292C  98 1E 2F B9 */	stb r0, 0x2fb9(r30)
lbl_800B2930:
/* 800B2930  3B A0 00 00 */	li r29, 0
/* 800B2934  7F C3 F3 78 */	mr r3, r30
/* 800B2938  48 04 14 21 */	bl checkFishingRodAndLureItem__9daAlink_cCFv
/* 800B293C  2C 03 00 00 */	cmpwi r3, 0
/* 800B2940  41 82 00 3C */	beq lbl_800B297C
/* 800B2944  80 1E 28 28 */	lwz r0, 0x2828(r30)
/* 800B2948  28 00 00 00 */	cmplwi r0, 0
/* 800B294C  41 82 00 30 */	beq lbl_800B297C
/* 800B2950  7F C3 F3 78 */	mr r3, r30
/* 800B2954  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800B2958  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800B295C  7D 89 03 A6 */	mtctr r12
/* 800B2960  4E 80 04 21 */	bctrl 
/* 800B2964  28 03 00 00 */	cmplwi r3, 0
/* 800B2968  40 82 00 10 */	bne lbl_800B2978
/* 800B296C  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800B2970  28 00 00 A2 */	cmplwi r0, 0xa2
/* 800B2974  40 82 00 08 */	bne lbl_800B297C
lbl_800B2978:
/* 800B2978  3B A0 00 01 */	li r29, 1
lbl_800B297C:
/* 800B297C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800B2980  41 82 00 4C */	beq lbl_800B29CC
/* 800B2984  80 7E 28 28 */	lwz r3, 0x2828(r30)
/* 800B2988  C0 03 14 C8 */	lfs f0, 0x14c8(r3)
/* 800B298C  EC 20 00 32 */	fmuls f1, f0, f0
/* 800B2990  C0 03 14 CC */	lfs f0, 0x14cc(r3)
/* 800B2994  EC 00 00 32 */	fmuls f0, f0, f0
/* 800B2998  EC 21 00 2A */	fadds f1, f1, f0
/* 800B299C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B29A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B29A4  40 81 00 0C */	ble lbl_800B29B0
/* 800B29A8  FC 00 08 34 */	frsqrte f0, f1
/* 800B29AC  EC 20 00 72 */	fmuls f1, f0, f1
lbl_800B29B0:
/* 800B29B0  D0 3E 33 A8 */	stfs f1, 0x33a8(r30)
/* 800B29B4  C0 03 14 C8 */	lfs f0, 0x14c8(r3)
/* 800B29B8  FC 20 00 50 */	fneg f1, f0
/* 800B29BC  C0 43 14 CC */	lfs f2, 0x14cc(r3)
/* 800B29C0  48 1B 4C B5 */	bl cM_atan2s__Fff
/* 800B29C4  B0 7E 2F E0 */	sth r3, 0x2fe0(r30)
/* 800B29C8  48 00 00 24 */	b lbl_800B29EC
lbl_800B29CC:
/* 800B29CC  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 800B29D0  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 800B29D4  C0 03 00 08 */	lfs f0, 8(r3)
/* 800B29D8  D0 1E 33 A8 */	stfs f0, 0x33a8(r30)
/* 800B29DC  A8 63 00 0C */	lha r3, 0xc(r3)
/* 800B29E0  3C 63 00 01 */	addis r3, r3, 1
/* 800B29E4  38 03 80 00 */	addi r0, r3, -32768
/* 800B29E8  B0 1E 2F E0 */	sth r0, 0x2fe0(r30)
lbl_800B29EC:
/* 800B29EC  C0 1E 33 A8 */	lfs f0, 0x33a8(r30)
/* 800B29F0  D0 1E 33 AC */	stfs f0, 0x33ac(r30)
/* 800B29F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B29F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B29FC  80 1E 31 7C */	lwz r0, 0x317c(r30)
/* 800B2A00  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800B2A04  7C 63 02 14 */	add r3, r3, r0
/* 800B2A08  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 800B2A0C  48 0C EC 09 */	bl dCam_getControledAngleY__FP12camera_class
/* 800B2A10  A8 1E 2F E0 */	lha r0, 0x2fe0(r30)
/* 800B2A14  7C 00 1A 14 */	add r0, r0, r3
/* 800B2A18  B0 1E 2F E2 */	sth r0, 0x2fe2(r30)
/* 800B2A1C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800B2A20  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B2A24  41 82 00 B0 */	beq lbl_800B2AD4
/* 800B2A28  88 1E 2F B9 */	lbz r0, 0x2fb9(r30)
/* 800B2A2C  28 00 00 01 */	cmplwi r0, 1
/* 800B2A30  41 82 00 20 */	beq lbl_800B2A50
/* 800B2A34  28 00 00 00 */	cmplwi r0, 0
/* 800B2A38  40 82 00 24 */	bne lbl_800B2A5C
/* 800B2A3C  A8 1E 31 14 */	lha r0, 0x3114(r30)
/* 800B2A40  2C 00 80 00 */	cmpwi r0, -32768
/* 800B2A44  41 82 00 18 */	beq lbl_800B2A5C
/* 800B2A48  2C 00 60 00 */	cmpwi r0, 0x6000
/* 800B2A4C  41 81 00 10 */	bgt lbl_800B2A5C
lbl_800B2A50:
/* 800B2A50  38 00 00 01 */	li r0, 1
/* 800B2A54  98 1E 2F B9 */	stb r0, 0x2fb9(r30)
/* 800B2A58  48 00 00 0C */	b lbl_800B2A64
lbl_800B2A5C:
/* 800B2A5C  38 00 00 02 */	li r0, 2
/* 800B2A60  98 1E 2F B9 */	stb r0, 0x2fb9(r30)
lbl_800B2A64:
/* 800B2A64  88 BE 2F B9 */	lbz r5, 0x2fb9(r30)
/* 800B2A68  28 05 00 01 */	cmplwi r5, 1
/* 800B2A6C  40 82 00 18 */	bne lbl_800B2A84
/* 800B2A70  A8 1E 31 14 */	lha r0, 0x3114(r30)
/* 800B2A74  2C 00 60 00 */	cmpwi r0, 0x6000
/* 800B2A78  41 81 00 28 */	bgt lbl_800B2AA0
/* 800B2A7C  2C 00 80 00 */	cmpwi r0, -32768
/* 800B2A80  41 82 00 20 */	beq lbl_800B2AA0
lbl_800B2A84:
/* 800B2A84  28 05 00 02 */	cmplwi r5, 2
/* 800B2A88  40 82 00 38 */	bne lbl_800B2AC0
/* 800B2A8C  A8 1E 31 14 */	lha r0, 0x3114(r30)
/* 800B2A90  2C 00 80 00 */	cmpwi r0, -32768
/* 800B2A94  41 82 00 2C */	beq lbl_800B2AC0
/* 800B2A98  2C 00 40 00 */	cmpwi r0, 0x4000
/* 800B2A9C  40 80 00 24 */	bge lbl_800B2AC0
lbl_800B2AA0:
/* 800B2AA0  7F C3 F3 78 */	mr r3, r30
/* 800B2AA4  A8 9E 2F E2 */	lha r4, 0x2fe2(r30)
/* 800B2AA8  38 A0 00 00 */	li r5, 0
/* 800B2AAC  48 02 FC 8D */	bl getMagneBootsLocalAngleY__9daAlink_cFsi
/* 800B2AB0  3C 63 00 01 */	addis r3, r3, 1
/* 800B2AB4  38 03 80 00 */	addi r0, r3, -32768
/* 800B2AB8  B0 1E 2F E2 */	sth r0, 0x2fe2(r30)
/* 800B2ABC  48 00 00 20 */	b lbl_800B2ADC
lbl_800B2AC0:
/* 800B2AC0  7F C3 F3 78 */	mr r3, r30
/* 800B2AC4  A8 9E 2F E2 */	lha r4, 0x2fe2(r30)
/* 800B2AC8  48 02 FC 71 */	bl getMagneBootsLocalAngleY__9daAlink_cFsi
/* 800B2ACC  B0 7E 2F E2 */	sth r3, 0x2fe2(r30)
/* 800B2AD0  48 00 00 0C */	b lbl_800B2ADC
lbl_800B2AD4:
/* 800B2AD4  38 00 00 01 */	li r0, 1
/* 800B2AD8  98 1E 2F B9 */	stb r0, 0x2fb9(r30)
lbl_800B2ADC:
/* 800B2ADC  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 800B2AE0  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 800B2AE4  80 03 00 34 */	lwz r0, 0x34(r3)
/* 800B2AE8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800B2AEC  41 82 00 10 */	beq lbl_800B2AFC
/* 800B2AF0  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800B2AF4  60 00 00 08 */	ori r0, r0, 8
/* 800B2AF8  98 1E 2F 8D */	stb r0, 0x2f8d(r30)
lbl_800B2AFC:
/* 800B2AFC  80 03 00 34 */	lwz r0, 0x34(r3)
/* 800B2B00  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800B2B04  41 82 00 10 */	beq lbl_800B2B14
/* 800B2B08  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800B2B0C  60 00 00 10 */	ori r0, r0, 0x10
/* 800B2B10  98 1E 2F 8D */	stb r0, 0x2f8d(r30)
lbl_800B2B14:
/* 800B2B14  80 03 00 34 */	lwz r0, 0x34(r3)
/* 800B2B18  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800B2B1C  41 82 00 10 */	beq lbl_800B2B2C
/* 800B2B20  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800B2B24  60 00 00 01 */	ori r0, r0, 1
/* 800B2B28  98 1E 2F 8D */	stb r0, 0x2f8d(r30)
lbl_800B2B2C:
/* 800B2B2C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 800B2B30  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 800B2B34  41 82 00 10 */	beq lbl_800B2B44
/* 800B2B38  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800B2B3C  60 00 00 02 */	ori r0, r0, 2
/* 800B2B40  98 1E 2F 8D */	stb r0, 0x2f8d(r30)
lbl_800B2B44:
/* 800B2B44  80 03 00 34 */	lwz r0, 0x34(r3)
/* 800B2B48  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B2B4C  41 82 00 10 */	beq lbl_800B2B5C
/* 800B2B50  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800B2B54  60 00 00 04 */	ori r0, r0, 4
/* 800B2B58  98 1E 2F 8D */	stb r0, 0x2f8d(r30)
lbl_800B2B5C:
/* 800B2B5C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 800B2B60  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800B2B64  41 82 00 10 */	beq lbl_800B2B74
/* 800B2B68  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800B2B6C  60 00 00 20 */	ori r0, r0, 0x20
/* 800B2B70  98 1E 2F 8D */	stb r0, 0x2f8d(r30)
lbl_800B2B74:
/* 800B2B74  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 800B2B78  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 800B2B7C  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 800B2B80  28 00 00 00 */	cmplwi r0, 0
/* 800B2B84  41 82 00 10 */	beq lbl_800B2B94
/* 800B2B88  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800B2B8C  60 00 00 40 */	ori r0, r0, 0x40
/* 800B2B90  98 1E 2F 8D */	stb r0, 0x2f8d(r30)
lbl_800B2B94:
/* 800B2B94  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 800B2B98  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 800B2B9C  80 03 00 30 */	lwz r0, 0x30(r3)
/* 800B2BA0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800B2BA4  41 82 00 10 */	beq lbl_800B2BB4
/* 800B2BA8  88 1E 2F 8E */	lbz r0, 0x2f8e(r30)
/* 800B2BAC  60 00 00 10 */	ori r0, r0, 0x10
/* 800B2BB0  98 1E 2F 8E */	stb r0, 0x2f8e(r30)
lbl_800B2BB4:
/* 800B2BB4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 800B2BB8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800B2BBC  41 82 00 10 */	beq lbl_800B2BCC
/* 800B2BC0  88 1E 2F 8E */	lbz r0, 0x2f8e(r30)
/* 800B2BC4  60 00 00 08 */	ori r0, r0, 8
/* 800B2BC8  98 1E 2F 8E */	stb r0, 0x2f8e(r30)
lbl_800B2BCC:
/* 800B2BCC  80 03 00 30 */	lwz r0, 0x30(r3)
/* 800B2BD0  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800B2BD4  41 82 00 10 */	beq lbl_800B2BE4
/* 800B2BD8  88 1E 2F 8E */	lbz r0, 0x2f8e(r30)
/* 800B2BDC  60 00 00 01 */	ori r0, r0, 1
/* 800B2BE0  98 1E 2F 8E */	stb r0, 0x2f8e(r30)
lbl_800B2BE4:
/* 800B2BE4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 800B2BE8  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 800B2BEC  41 82 00 10 */	beq lbl_800B2BFC
/* 800B2BF0  88 1E 2F 8E */	lbz r0, 0x2f8e(r30)
/* 800B2BF4  60 00 00 02 */	ori r0, r0, 2
/* 800B2BF8  98 1E 2F 8E */	stb r0, 0x2f8e(r30)
lbl_800B2BFC:
/* 800B2BFC  80 03 00 30 */	lwz r0, 0x30(r3)
/* 800B2C00  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B2C04  41 82 00 10 */	beq lbl_800B2C14
/* 800B2C08  88 1E 2F 8E */	lbz r0, 0x2f8e(r30)
/* 800B2C0C  60 00 00 04 */	ori r0, r0, 4
/* 800B2C10  98 1E 2F 8E */	stb r0, 0x2f8e(r30)
lbl_800B2C14:
/* 800B2C14  80 03 00 30 */	lwz r0, 0x30(r3)
/* 800B2C18  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800B2C1C  41 82 00 10 */	beq lbl_800B2C2C
/* 800B2C20  88 1E 2F 8E */	lbz r0, 0x2f8e(r30)
/* 800B2C24  60 00 00 20 */	ori r0, r0, 0x20
/* 800B2C28  98 1E 2F 8E */	stb r0, 0x2f8e(r30)
lbl_800B2C2C:
/* 800B2C2C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 800B2C30  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 800B2C34  88 03 00 3B */	lbz r0, 0x3b(r3)
/* 800B2C38  28 00 00 00 */	cmplwi r0, 0
/* 800B2C3C  41 82 00 10 */	beq lbl_800B2C4C
/* 800B2C40  88 1E 2F 8E */	lbz r0, 0x2f8e(r30)
/* 800B2C44  60 00 00 40 */	ori r0, r0, 0x40
/* 800B2C48  98 1E 2F 8E */	stb r0, 0x2f8e(r30)
lbl_800B2C4C:
/* 800B2C4C  7F C3 F3 78 */	mr r3, r30
/* 800B2C50  38 80 00 01 */	li r4, 1
/* 800B2C54  38 A0 00 01 */	li r5, 1
/* 800B2C58  48 00 88 61 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800B2C5C  2C 03 00 00 */	cmpwi r3, 0
/* 800B2C60  41 82 00 A0 */	beq lbl_800B2D00
/* 800B2C64  7F C3 F3 78 */	mr r3, r30
/* 800B2C68  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800B2C6C  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800B2C70  7D 89 03 A6 */	mtctr r12
/* 800B2C74  4E 80 04 21 */	bctrl 
/* 800B2C78  2C 03 00 00 */	cmpwi r3, 0
/* 800B2C7C  41 82 00 10 */	beq lbl_800B2C8C
/* 800B2C80  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800B2C84  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800B2C88  40 82 00 78 */	bne lbl_800B2D00
lbl_800B2C8C:
/* 800B2C8C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B2C90  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B2C94  41 82 00 48 */	beq lbl_800B2CDC
/* 800B2C98  7F C3 F3 78 */	mr r3, r30
/* 800B2C9C  38 80 00 01 */	li r4, 1
/* 800B2CA0  38 A0 00 00 */	li r5, 0
/* 800B2CA4  48 00 88 15 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800B2CA8  2C 03 00 00 */	cmpwi r3, 0
/* 800B2CAC  41 82 00 30 */	beq lbl_800B2CDC
/* 800B2CB0  C0 3E 2B A8 */	lfs f1, 0x2ba8(r30)
/* 800B2CB4  C0 02 94 0C */	lfs f0, lit_14614(r2)
/* 800B2CB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B2CBC  40 80 00 20 */	bge lbl_800B2CDC
/* 800B2CC0  C0 22 93 A8 */	lfs f1, lit_9652(r2)
/* 800B2CC4  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800B2CC8  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800B2CCC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 800B2CD0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800B2CD4  D0 1E 34 34 */	stfs f0, 0x3434(r30)
/* 800B2CD8  48 00 00 14 */	b lbl_800B2CEC
lbl_800B2CDC:
/* 800B2CDC  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800B2CE0  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800B2CE4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 800B2CE8  D0 1E 34 34 */	stfs f0, 0x3434(r30)
lbl_800B2CEC:
/* 800B2CEC  C0 3E 33 A8 */	lfs f1, 0x33a8(r30)
/* 800B2CF0  C0 1E 34 34 */	lfs f0, 0x3434(r30)
/* 800B2CF4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800B2CF8  D0 1E 33 A8 */	stfs f0, 0x33a8(r30)
/* 800B2CFC  48 00 00 C4 */	b lbl_800B2DC0
lbl_800B2D00:
/* 800B2D00  7F C3 F3 78 */	mr r3, r30
/* 800B2D04  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800B2D08  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800B2D0C  7D 89 03 A6 */	mtctr r12
/* 800B2D10  4E 80 04 21 */	bctrl 
/* 800B2D14  2C 03 00 00 */	cmpwi r3, 0
/* 800B2D18  41 82 00 4C */	beq lbl_800B2D64
/* 800B2D1C  7F C3 F3 78 */	mr r3, r30
/* 800B2D20  48 00 D0 91 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800B2D24  2C 03 00 00 */	cmpwi r3, 0
/* 800B2D28  41 82 00 18 */	beq lbl_800B2D40
/* 800B2D2C  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800B2D30  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800B2D34  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 800B2D38  D0 1E 34 34 */	stfs f0, 0x3434(r30)
/* 800B2D3C  48 00 00 14 */	b lbl_800B2D50
lbl_800B2D40:
/* 800B2D40  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800B2D44  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800B2D48  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800B2D4C  D0 1E 34 34 */	stfs f0, 0x3434(r30)
lbl_800B2D50:
/* 800B2D50  C0 3E 33 A8 */	lfs f1, 0x33a8(r30)
/* 800B2D54  C0 1E 34 34 */	lfs f0, 0x3434(r30)
/* 800B2D58  EC 01 00 32 */	fmuls f0, f1, f0
/* 800B2D5C  D0 1E 33 A8 */	stfs f0, 0x33a8(r30)
/* 800B2D60  48 00 00 60 */	b lbl_800B2DC0
lbl_800B2D64:
/* 800B2D64  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B2D68  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B2D6C  41 82 00 20 */	beq lbl_800B2D8C
/* 800B2D70  88 1E 2F BC */	lbz r0, 0x2fbc(r30)
/* 800B2D74  28 00 00 0B */	cmplwi r0, 0xb
/* 800B2D78  40 82 00 14 */	bne lbl_800B2D8C
/* 800B2D7C  7F C3 F3 78 */	mr r3, r30
/* 800B2D80  4B FF E7 09 */	bl checkWaterPolygonUnder__9daAlink_cFv
/* 800B2D84  2C 03 00 00 */	cmpwi r3, 0
/* 800B2D88  40 82 00 10 */	bne lbl_800B2D98
lbl_800B2D8C:
/* 800B2D8C  88 1E 2F BB */	lbz r0, 0x2fbb(r30)
/* 800B2D90  28 00 00 0B */	cmplwi r0, 0xb
/* 800B2D94  40 82 00 2C */	bne lbl_800B2DC0
lbl_800B2D98:
/* 800B2D98  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800B2D9C  64 00 40 00 */	oris r0, r0, 0x4000
/* 800B2DA0  90 1E 05 70 */	stw r0, 0x570(r30)
/* 800B2DA4  C0 1E 33 A8 */	lfs f0, 0x33a8(r30)
/* 800B2DA8  3C 60 80 39 */	lis r3, m__18daAlinkHIO_wolf_c0@ha /* 0x8038F9F8@ha */
/* 800B2DAC  38 63 F9 F8 */	addi r3, r3, m__18daAlinkHIO_wolf_c0@l /* 0x8038F9F8@l */
/* 800B2DB0  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 800B2DB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 800B2DB8  D0 1E 33 A8 */	stfs f0, 0x33a8(r30)
/* 800B2DBC  D0 3E 34 34 */	stfs f1, 0x3434(r30)
lbl_800B2DC0:
/* 800B2DC0  A8 7E 30 7C */	lha r3, 0x307c(r30)
/* 800B2DC4  A8 1E 2F E0 */	lha r0, 0x2fe0(r30)
/* 800B2DC8  7C 03 00 50 */	subf r0, r3, r0
/* 800B2DCC  7C 1D 07 34 */	extsh r29, r0
/* 800B2DD0  7F A3 EB 78 */	mr r3, r29
/* 800B2DD4  48 2B 22 FD */	bl abs
/* 800B2DD8  2C 03 40 00 */	cmpwi r3, 0x4000
/* 800B2DDC  40 80 00 2C */	bge lbl_800B2E08
/* 800B2DE0  2C 03 06 D4 */	cmpwi r3, 0x6d4
/* 800B2DE4  40 81 00 24 */	ble lbl_800B2E08
/* 800B2DE8  80 7E 31 80 */	lwz r3, 0x3180(r30)
/* 800B2DEC  7C 03 E9 D7 */	mullw. r0, r3, r29
/* 800B2DF0  41 80 00 18 */	blt lbl_800B2E08
/* 800B2DF4  7C 03 EA 14 */	add r0, r3, r29
/* 800B2DF8  90 1E 31 80 */	stw r0, 0x3180(r30)
/* 800B2DFC  38 00 00 04 */	li r0, 4
/* 800B2E00  B0 1E 30 7A */	sth r0, 0x307a(r30)
/* 800B2E04  48 00 00 40 */	b lbl_800B2E44
lbl_800B2E08:
/* 800B2E08  80 1E 31 80 */	lwz r0, 0x3180(r30)
/* 800B2E0C  7C 00 E9 D7 */	mullw. r0, r0, r29
/* 800B2E10  40 80 00 14 */	bge lbl_800B2E24
/* 800B2E14  93 BE 31 80 */	stw r29, 0x3180(r30)
/* 800B2E18  38 00 00 04 */	li r0, 4
/* 800B2E1C  B0 1E 30 7A */	sth r0, 0x307a(r30)
/* 800B2E20  48 00 00 24 */	b lbl_800B2E44
lbl_800B2E24:
/* 800B2E24  A8 7E 30 7A */	lha r3, 0x307a(r30)
/* 800B2E28  2C 03 00 00 */	cmpwi r3, 0
/* 800B2E2C  40 81 00 10 */	ble lbl_800B2E3C
/* 800B2E30  38 03 FF FF */	addi r0, r3, -1
/* 800B2E34  B0 1E 30 7A */	sth r0, 0x307a(r30)
/* 800B2E38  48 00 00 0C */	b lbl_800B2E44
lbl_800B2E3C:
/* 800B2E3C  38 00 00 00 */	li r0, 0
/* 800B2E40  90 1E 31 80 */	stw r0, 0x3180(r30)
lbl_800B2E44:
/* 800B2E44  88 1E 2F 8E */	lbz r0, 0x2f8e(r30)
/* 800B2E48  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B2E4C  40 82 00 10 */	bne lbl_800B2E5C
/* 800B2E50  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800B2E54  54 00 01 04 */	rlwinm r0, r0, 0, 4, 2
/* 800B2E58  90 1E 05 70 */	stw r0, 0x570(r30)
lbl_800B2E5C:
/* 800B2E5C  2C 1F 00 00 */	cmpwi r31, 0
/* 800B2E60  40 82 00 2C */	bne lbl_800B2E8C
/* 800B2E64  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800B2E68  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800B2E6C  41 82 00 20 */	beq lbl_800B2E8C
/* 800B2E70  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800B2E74  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 800B2E78  90 1E 05 78 */	stw r0, 0x578(r30)
/* 800B2E7C  38 00 00 01 */	li r0, 1
/* 800B2E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B2E84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B2E88  98 03 5E B8 */	stb r0, 0x5eb8(r3)
lbl_800B2E8C:
/* 800B2E8C  39 61 00 20 */	addi r11, r1, 0x20
/* 800B2E90  48 2A F3 99 */	bl _restgpr_29
/* 800B2E94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B2E98  7C 08 03 A6 */	mtlr r0
/* 800B2E9C  38 21 00 20 */	addi r1, r1, 0x20
/* 800B2EA0  4E 80 00 20 */	blr 
