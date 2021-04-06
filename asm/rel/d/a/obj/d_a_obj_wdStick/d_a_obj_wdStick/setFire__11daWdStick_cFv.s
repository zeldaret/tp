lbl_80D3219C:
/* 80D3219C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80D321A0  7C 08 02 A6 */	mflr r0
/* 80D321A4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80D321A8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80D321AC  4B 63 00 21 */	bl _savegpr_25
/* 80D321B0  7C 7F 1B 78 */	mr r31, r3
/* 80D321B4  3C 60 80 D3 */	lis r3, mCcDObjInfo__11daWdStick_c@ha /* 0x80D34138@ha */
/* 80D321B8  3B C3 41 38 */	addi r30, r3, mCcDObjInfo__11daWdStick_c@l /* 0x80D34138@l */
/* 80D321BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D321C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D321C4  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D321C8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D321CC  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D321D0  4B 2D A0 39 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80D321D4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80D321D8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80D321DC  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80D321E0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80D321E4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80D321E8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80D321EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D321F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D321F4  38 81 00 84 */	addi r4, r1, 0x84
/* 80D321F8  38 A1 00 78 */	addi r5, r1, 0x78
/* 80D321FC  4B 61 4B 71 */	bl PSMTXMultVec
/* 80D32200  38 61 00 6C */	addi r3, r1, 0x6c
/* 80D32204  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D32208  38 A1 00 78 */	addi r5, r1, 0x78
/* 80D3220C  4B 53 48 D9 */	bl __pl__4cXyzCFRC3Vec
/* 80D32210  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80D32214  D0 1F 0A 64 */	stfs f0, 0xa64(r31)
/* 80D32218  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80D3221C  D0 1F 0A 68 */	stfs f0, 0xa68(r31)
/* 80D32220  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80D32224  D0 1F 0A 6C */	stfs f0, 0xa6c(r31)
/* 80D32228  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3222C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D32230  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D32234  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D32238  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D3223C  4B 2D 9F CD */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80D32240  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D32244  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80D32248  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3224C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D32250  38 81 00 84 */	addi r4, r1, 0x84
/* 80D32254  38 A1 00 78 */	addi r5, r1, 0x78
/* 80D32258  4B 61 4B 15 */	bl PSMTXMultVec
/* 80D3225C  38 61 00 60 */	addi r3, r1, 0x60
/* 80D32260  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D32264  38 A1 00 78 */	addi r5, r1, 0x78
/* 80D32268  4B 53 48 7D */	bl __pl__4cXyzCFRC3Vec
/* 80D3226C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80D32270  D0 1F 0A 70 */	stfs f0, 0xa70(r31)
/* 80D32274  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80D32278  D0 1F 0A 74 */	stfs f0, 0xa74(r31)
/* 80D3227C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80D32280  D0 1F 0A 78 */	stfs f0, 0xa78(r31)
/* 80D32284  A0 7F 0A B0 */	lhz r3, 0xab0(r31)
/* 80D32288  28 03 00 00 */	cmplwi r3, 0
/* 80D3228C  41 82 00 10 */	beq lbl_80D3229C
/* 80D32290  38 03 FF FF */	addi r0, r3, -1
/* 80D32294  B0 1F 0A B0 */	sth r0, 0xab0(r31)
/* 80D32298  48 00 00 6C */	b lbl_80D32304
lbl_80D3229C:
/* 80D3229C  40 82 00 68 */	bne lbl_80D32304
/* 80D322A0  88 1F 0A AD */	lbz r0, 0xaad(r31)
/* 80D322A4  28 00 00 01 */	cmplwi r0, 1
/* 80D322A8  40 82 00 5C */	bne lbl_80D32304
/* 80D322AC  38 00 00 00 */	li r0, 0
/* 80D322B0  98 1F 0A AD */	stb r0, 0xaad(r31)
/* 80D322B4  98 1F 09 A1 */	stb r0, 0x9a1(r31)
/* 80D322B8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D322BC  7C 03 07 74 */	extsb r3, r0
/* 80D322C0  4B 2F AD AD */	bl dComIfGp_getReverb__Fi
/* 80D322C4  7C 67 1B 78 */	mr r7, r3
/* 80D322C8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080019@ha */
/* 80D322CC  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00080019@l */
/* 80D322D0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D322D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D322D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D322DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D322E0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D322E4  38 BF 0A 70 */	addi r5, r31, 0xa70
/* 80D322E8  38 C0 00 00 */	li r6, 0
/* 80D322EC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D322F0  FC 40 08 90 */	fmr f2, f1
/* 80D322F4  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80D322F8  FC 80 18 90 */	fmr f4, f3
/* 80D322FC  39 00 00 00 */	li r8, 0
/* 80D32300  4B 57 96 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D32304:
/* 80D32304  A0 7F 0A AE */	lhz r3, 0xaae(r31)
/* 80D32308  28 03 00 00 */	cmplwi r3, 0
/* 80D3230C  41 82 00 10 */	beq lbl_80D3231C
/* 80D32310  38 03 FF FF */	addi r0, r3, -1
/* 80D32314  B0 1F 0A AE */	sth r0, 0xaae(r31)
/* 80D32318  48 00 00 6C */	b lbl_80D32384
lbl_80D3231C:
/* 80D3231C  40 82 00 68 */	bne lbl_80D32384
/* 80D32320  88 1F 0A AC */	lbz r0, 0xaac(r31)
/* 80D32324  28 00 00 01 */	cmplwi r0, 1
/* 80D32328  40 82 00 5C */	bne lbl_80D32384
/* 80D3232C  38 00 00 00 */	li r0, 0
/* 80D32330  98 1F 0A AC */	stb r0, 0xaac(r31)
/* 80D32334  98 1F 08 69 */	stb r0, 0x869(r31)
/* 80D32338  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D3233C  7C 03 07 74 */	extsb r3, r0
/* 80D32340  4B 2F AD 2D */	bl dComIfGp_getReverb__Fi
/* 80D32344  7C 67 1B 78 */	mr r7, r3
/* 80D32348  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080019@ha */
/* 80D3234C  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00080019@l */
/* 80D32350  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D32354  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D32358  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D3235C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D32360  38 81 00 28 */	addi r4, r1, 0x28
/* 80D32364  38 BF 0A 64 */	addi r5, r31, 0xa64
/* 80D32368  38 C0 00 00 */	li r6, 0
/* 80D3236C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D32370  FC 40 08 90 */	fmr f2, f1
/* 80D32374  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80D32378  FC 80 18 90 */	fmr f4, f3
/* 80D3237C  39 00 00 00 */	li r8, 0
/* 80D32380  4B 57 96 05 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D32384:
/* 80D32384  88 1F 0A AC */	lbz r0, 0xaac(r31)
/* 80D32388  28 00 00 00 */	cmplwi r0, 0
/* 80D3238C  41 82 01 78 */	beq lbl_80D32504
/* 80D32390  38 61 00 54 */	addi r3, r1, 0x54
/* 80D32394  38 9F 0A 64 */	addi r4, r31, 0xa64
/* 80D32398  38 BF 0A 7C */	addi r5, r31, 0xa7c
/* 80D3239C  4B 53 47 99 */	bl __mi__4cXyzCFRC3Vec
/* 80D323A0  38 61 00 48 */	addi r3, r1, 0x48
/* 80D323A4  38 81 00 54 */	addi r4, r1, 0x54
/* 80D323A8  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80D323AC  4B 53 47 D9 */	bl __ml__4cXyzCFf
/* 80D323B0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80D323B4  D0 1F 0A 94 */	stfs f0, 0xa94(r31)
/* 80D323B8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80D323BC  D0 1F 0A 98 */	stfs f0, 0xa98(r31)
/* 80D323C0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80D323C4  D0 1F 0A 9C */	stfs f0, 0xa9c(r31)
/* 80D323C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D323CC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D323D0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80D323D4  38 00 00 FF */	li r0, 0xff
/* 80D323D8  90 01 00 08 */	stw r0, 8(r1)
/* 80D323DC  38 80 00 00 */	li r4, 0
/* 80D323E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D323E4  38 00 FF FF */	li r0, -1
/* 80D323E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D323EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D323F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D323F4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D323F8  80 9F 0A E4 */	lwz r4, 0xae4(r31)
/* 80D323FC  38 A0 00 00 */	li r5, 0
/* 80D32400  38 C0 03 AD */	li r6, 0x3ad
/* 80D32404  38 FF 0A 64 */	addi r7, r31, 0xa64
/* 80D32408  39 00 00 00 */	li r8, 0
/* 80D3240C  39 20 00 00 */	li r9, 0
/* 80D32410  39 40 00 00 */	li r10, 0
/* 80D32414  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D32418  4B 31 B0 B5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D3241C  90 7F 0A E4 */	stw r3, 0xae4(r31)
/* 80D32420  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80D32424  38 00 00 FF */	li r0, 0xff
/* 80D32428  90 01 00 08 */	stw r0, 8(r1)
/* 80D3242C  38 80 00 00 */	li r4, 0
/* 80D32430  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D32434  38 00 FF FF */	li r0, -1
/* 80D32438  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D3243C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D32440  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D32444  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D32448  80 9F 0A E8 */	lwz r4, 0xae8(r31)
/* 80D3244C  38 A0 00 00 */	li r5, 0
/* 80D32450  38 C0 03 AF */	li r6, 0x3af
/* 80D32454  38 FF 0A 64 */	addi r7, r31, 0xa64
/* 80D32458  39 00 00 00 */	li r8, 0
/* 80D3245C  39 20 00 00 */	li r9, 0
/* 80D32460  39 40 00 00 */	li r10, 0
/* 80D32464  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D32468  4B 31 B0 65 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D3246C  90 7F 0A E8 */	stw r3, 0xae8(r31)
/* 80D32470  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D32474  7C 03 07 74 */	extsb r3, r0
/* 80D32478  4B 2F AB F5 */	bl dComIfGp_getReverb__Fi
/* 80D3247C  7C 67 1B 78 */	mr r7, r3
/* 80D32480  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080018@ha */
/* 80D32484  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00080018@l */
/* 80D32488  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3248C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D32490  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D32494  80 63 00 00 */	lwz r3, 0(r3)
/* 80D32498  38 81 00 24 */	addi r4, r1, 0x24
/* 80D3249C  38 BF 0A 64 */	addi r5, r31, 0xa64
/* 80D324A0  38 C0 00 00 */	li r6, 0
/* 80D324A4  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D324A8  FC 40 08 90 */	fmr f2, f1
/* 80D324AC  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80D324B0  FC 80 18 90 */	fmr f4, f3
/* 80D324B4  39 00 00 00 */	li r8, 0
/* 80D324B8  4B 57 A0 55 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D324BC  3B 20 00 00 */	li r25, 0
/* 80D324C0  3B 80 00 00 */	li r28, 0
/* 80D324C4  3B 5F 0A 94 */	addi r26, r31, 0xa94
/* 80D324C8  3C 60 80 45 */	lis r3, mParticleTracePCB__13dPa_control_c@ha /* 0x80450EC8@ha */
/* 80D324CC  3B 63 0E C8 */	addi r27, r3, mParticleTracePCB__13dPa_control_c@l /* 0x80450EC8@l */
lbl_80D324D0:
/* 80D324D0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80D324D4  38 63 02 10 */	addi r3, r3, 0x210
/* 80D324D8  38 1C 0A E4 */	addi r0, r28, 0xae4
/* 80D324DC  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80D324E0  4B 31 94 39 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80D324E4  28 03 00 00 */	cmplwi r3, 0
/* 80D324E8  41 82 00 0C */	beq lbl_80D324F4
/* 80D324EC  93 63 00 F0 */	stw r27, 0xf0(r3)
/* 80D324F0  93 43 00 C0 */	stw r26, 0xc0(r3)
lbl_80D324F4:
/* 80D324F4  3B 39 00 01 */	addi r25, r25, 1
/* 80D324F8  2C 19 00 02 */	cmpwi r25, 2
/* 80D324FC  3B 9C 00 04 */	addi r28, r28, 4
/* 80D32500  41 80 FF D0 */	blt lbl_80D324D0
lbl_80D32504:
/* 80D32504  88 1F 0A AD */	lbz r0, 0xaad(r31)
/* 80D32508  28 00 00 00 */	cmplwi r0, 0
/* 80D3250C  41 82 01 78 */	beq lbl_80D32684
/* 80D32510  38 61 00 3C */	addi r3, r1, 0x3c
/* 80D32514  38 9F 0A 70 */	addi r4, r31, 0xa70
/* 80D32518  38 BF 0A 88 */	addi r5, r31, 0xa88
/* 80D3251C  4B 53 46 19 */	bl __mi__4cXyzCFRC3Vec
/* 80D32520  38 61 00 30 */	addi r3, r1, 0x30
/* 80D32524  38 81 00 3C */	addi r4, r1, 0x3c
/* 80D32528  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80D3252C  4B 53 46 59 */	bl __ml__4cXyzCFf
/* 80D32530  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80D32534  D0 1F 0A A0 */	stfs f0, 0xaa0(r31)
/* 80D32538  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80D3253C  D0 1F 0A A4 */	stfs f0, 0xaa4(r31)
/* 80D32540  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80D32544  D0 1F 0A A8 */	stfs f0, 0xaa8(r31)
/* 80D32548  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3254C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D32550  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80D32554  38 00 00 FF */	li r0, 0xff
/* 80D32558  90 01 00 08 */	stw r0, 8(r1)
/* 80D3255C  38 80 00 00 */	li r4, 0
/* 80D32560  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D32564  38 00 FF FF */	li r0, -1
/* 80D32568  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D3256C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D32570  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D32574  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D32578  80 9F 0A EC */	lwz r4, 0xaec(r31)
/* 80D3257C  38 A0 00 00 */	li r5, 0
/* 80D32580  38 C0 03 AD */	li r6, 0x3ad
/* 80D32584  38 FF 0A 70 */	addi r7, r31, 0xa70
/* 80D32588  39 00 00 00 */	li r8, 0
/* 80D3258C  39 20 00 00 */	li r9, 0
/* 80D32590  39 40 00 00 */	li r10, 0
/* 80D32594  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D32598  4B 31 AF 35 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D3259C  90 7F 0A EC */	stw r3, 0xaec(r31)
/* 80D325A0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80D325A4  38 00 00 FF */	li r0, 0xff
/* 80D325A8  90 01 00 08 */	stw r0, 8(r1)
/* 80D325AC  38 80 00 00 */	li r4, 0
/* 80D325B0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D325B4  38 00 FF FF */	li r0, -1
/* 80D325B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D325BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D325C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D325C4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D325C8  80 9F 0A F0 */	lwz r4, 0xaf0(r31)
/* 80D325CC  38 A0 00 00 */	li r5, 0
/* 80D325D0  38 C0 03 AF */	li r6, 0x3af
/* 80D325D4  38 FF 0A 70 */	addi r7, r31, 0xa70
/* 80D325D8  39 00 00 00 */	li r8, 0
/* 80D325DC  39 20 00 00 */	li r9, 0
/* 80D325E0  39 40 00 00 */	li r10, 0
/* 80D325E4  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D325E8  4B 31 AE E5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D325EC  90 7F 0A F0 */	stw r3, 0xaf0(r31)
/* 80D325F0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D325F4  7C 03 07 74 */	extsb r3, r0
/* 80D325F8  4B 2F AA 75 */	bl dComIfGp_getReverb__Fi
/* 80D325FC  7C 67 1B 78 */	mr r7, r3
/* 80D32600  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080018@ha */
/* 80D32604  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00080018@l */
/* 80D32608  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D3260C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D32610  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D32614  80 63 00 00 */	lwz r3, 0(r3)
/* 80D32618  38 81 00 20 */	addi r4, r1, 0x20
/* 80D3261C  38 BF 0A 70 */	addi r5, r31, 0xa70
/* 80D32620  38 C0 00 00 */	li r6, 0
/* 80D32624  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D32628  FC 40 08 90 */	fmr f2, f1
/* 80D3262C  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80D32630  FC 80 18 90 */	fmr f4, f3
/* 80D32634  39 00 00 00 */	li r8, 0
/* 80D32638  4B 57 9E D5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D3263C  3B 60 00 00 */	li r27, 0
/* 80D32640  3B C0 00 00 */	li r30, 0
/* 80D32644  3B 5F 0A A0 */	addi r26, r31, 0xaa0
/* 80D32648  3C 60 80 45 */	lis r3, mParticleTracePCB__13dPa_control_c@ha /* 0x80450EC8@ha */
/* 80D3264C  3B 83 0E C8 */	addi r28, r3, mParticleTracePCB__13dPa_control_c@l /* 0x80450EC8@l */
lbl_80D32650:
/* 80D32650  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80D32654  38 63 02 10 */	addi r3, r3, 0x210
/* 80D32658  38 1E 0A EC */	addi r0, r30, 0xaec
/* 80D3265C  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80D32660  4B 31 92 B9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80D32664  28 03 00 00 */	cmplwi r3, 0
/* 80D32668  41 82 00 0C */	beq lbl_80D32674
/* 80D3266C  93 83 00 F0 */	stw r28, 0xf0(r3)
/* 80D32670  93 43 00 C0 */	stw r26, 0xc0(r3)
lbl_80D32674:
/* 80D32674  3B 7B 00 01 */	addi r27, r27, 1
/* 80D32678  2C 1B 00 02 */	cmpwi r27, 2
/* 80D3267C  3B DE 00 04 */	addi r30, r30, 4
/* 80D32680  41 80 FF D0 */	blt lbl_80D32650
lbl_80D32684:
/* 80D32684  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80D32688  4B 62 FB 91 */	bl _restgpr_25
/* 80D3268C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80D32690  7C 08 03 A6 */	mtlr r0
/* 80D32694  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80D32698  4E 80 00 20 */	blr 
