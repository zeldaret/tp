lbl_80740098:
/* 80740098  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8074009C  7C 08 02 A6 */	mflr r0
/* 807400A0  90 01 00 64 */	stw r0, 0x64(r1)
/* 807400A4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 807400A8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 807400AC  7C 7F 1B 78 */	mr r31, r3
/* 807400B0  3C 60 80 74 */	lis r3, lit_3767@ha /* 0x80741BF4@ha */
/* 807400B4  3B C3 1B F4 */	addi r30, r3, lit_3767@l /* 0x80741BF4@l */
/* 807400B8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807400BC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807400C0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807400C4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807400C8  80 7F 07 1C */	lwz r3, 0x71c(r31)
/* 807400CC  80 63 00 04 */	lwz r3, 4(r3)
/* 807400D0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807400D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807400D8  38 63 00 60 */	addi r3, r3, 0x60
/* 807400DC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807400E0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807400E4  4B C0 63 CD */	bl PSMTXCopy
/* 807400E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807400EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807400F0  38 81 00 44 */	addi r4, r1, 0x44
/* 807400F4  7C 85 23 78 */	mr r5, r4
/* 807400F8  4B C0 6C 75 */	bl PSMTXMultVec
/* 807400FC  88 1F 05 B1 */	lbz r0, 0x5b1(r31)
/* 80740100  2C 00 00 02 */	cmpwi r0, 2
/* 80740104  41 82 00 E4 */	beq lbl_807401E8
/* 80740108  40 80 00 14 */	bge lbl_8074011C
/* 8074010C  2C 00 00 00 */	cmpwi r0, 0
/* 80740110  41 82 00 1C */	beq lbl_8074012C
/* 80740114  40 80 00 9C */	bge lbl_807401B0
/* 80740118  48 00 01 E8 */	b lbl_80740300
lbl_8074011C:
/* 8074011C  2C 00 00 04 */	cmpwi r0, 4
/* 80740120  41 82 01 74 */	beq lbl_80740294
/* 80740124  40 80 01 DC */	bge lbl_80740300
/* 80740128  48 00 01 1C */	b lbl_80740244
lbl_8074012C:
/* 8074012C  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80740130  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80740134  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80740138  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8074013C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80740140  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80740144  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80740148  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074014C  38 80 00 10 */	li r4, 0x10
/* 80740150  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80740154  7C 05 07 74 */	extsb r5, r0
/* 80740158  4B 8F 52 09 */	bl isSwitch__10dSv_info_cCFii
/* 8074015C  2C 03 00 00 */	cmpwi r3, 0
/* 80740160  41 82 01 A0 */	beq lbl_80740300
/* 80740164  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80740168  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8074016C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80740170  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80740174  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80740178  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8074017C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80740180  38 81 00 38 */	addi r4, r1, 0x38
/* 80740184  4B B3 0A 81 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80740188  7C 65 1B 78 */	mr r5, r3
/* 8074018C  7F E3 FB 78 */	mr r3, r31
/* 80740190  38 81 00 2C */	addi r4, r1, 0x2c
/* 80740194  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 80740198  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 8074019C  4B FF D4 AD */	bl SetStopCam__8daE_PH_cF4cXyzffs
/* 807401A0  88 7F 05 B1 */	lbz r3, 0x5b1(r31)
/* 807401A4  38 03 00 01 */	addi r0, r3, 1
/* 807401A8  98 1F 05 B1 */	stb r0, 0x5b1(r31)
/* 807401AC  48 00 01 54 */	b lbl_80740300
lbl_807401B0:
/* 807401B0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807401B4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807401B8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807401BC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807401C0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807401C4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807401C8  7F E3 FB 78 */	mr r3, r31
/* 807401CC  38 81 00 20 */	addi r4, r1, 0x20
/* 807401D0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807401D4  C0 5E 00 E4 */	lfs f2, 0xe4(r30)
/* 807401D8  4B FF D5 91 */	bl SetCMoveCam__8daE_PH_cF4cXyzff
/* 807401DC  7F E3 FB 78 */	mr r3, r31
/* 807401E0  4B FF D3 E5 */	bl SetStopingCam__8daE_PH_cFv
/* 807401E4  48 00 01 1C */	b lbl_80740300
lbl_807401E8:
/* 807401E8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807401EC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807401F0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807401F4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807401F8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807401FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80740200  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80740204  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80740208  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8074020C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80740210  38 61 00 38 */	addi r3, r1, 0x38
/* 80740214  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80740218  4B B3 09 ED */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8074021C  7C 65 1B 78 */	mr r5, r3
/* 80740220  7F E3 FB 78 */	mr r3, r31
/* 80740224  38 81 00 14 */	addi r4, r1, 0x14
/* 80740228  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 8074022C  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80740230  4B FF D4 19 */	bl SetStopCam__8daE_PH_cF4cXyzffs
/* 80740234  88 7F 05 B1 */	lbz r3, 0x5b1(r31)
/* 80740238  38 03 00 01 */	addi r0, r3, 1
/* 8074023C  98 1F 05 B1 */	stb r0, 0x5b1(r31)
/* 80740240  48 00 00 C0 */	b lbl_80740300
lbl_80740244:
/* 80740244  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80740248  D0 01 00 08 */	stfs f0, 8(r1)
/* 8074024C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80740250  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80740254  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80740258  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8074025C  7F E3 FB 78 */	mr r3, r31
/* 80740260  38 81 00 08 */	addi r4, r1, 8
/* 80740264  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80740268  C0 5E 00 E4 */	lfs f2, 0xe4(r30)
/* 8074026C  4B FF D4 FD */	bl SetCMoveCam__8daE_PH_cF4cXyzff
/* 80740270  7F E3 FB 78 */	mr r3, r31
/* 80740274  4B FF D3 51 */	bl SetStopingCam__8daE_PH_cFv
/* 80740278  A8 1F 05 EC */	lha r0, 0x5ec(r31)
/* 8074027C  2C 00 00 00 */	cmpwi r0, 0
/* 80740280  40 82 00 80 */	bne lbl_80740300
/* 80740284  88 7F 05 B1 */	lbz r3, 0x5b1(r31)
/* 80740288  38 03 00 01 */	addi r0, r3, 1
/* 8074028C  98 1F 05 B1 */	stb r0, 0x5b1(r31)
/* 80740290  48 00 00 70 */	b lbl_80740300
lbl_80740294:
/* 80740294  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80740298  D0 3F 05 BC */	stfs f1, 0x5bc(r31)
/* 8074029C  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 807402A0  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 807402A4  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 807402A8  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 807402AC  D0 3F 05 D4 */	stfs f1, 0x5d4(r31)
/* 807402B0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 807402B4  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 807402B8  D0 3F 05 DC */	stfs f1, 0x5dc(r31)
/* 807402BC  7F E3 FB 78 */	mr r3, r31
/* 807402C0  4B FF D4 ED */	bl SetReleaseCam__8daE_PH_cFv
/* 807402C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807402C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807402CC  80 63 00 00 */	lwz r3, 0(r3)
/* 807402D0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807402D4  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000090@ha */
/* 807402D8  38 84 00 90 */	addi r4, r4, 0x0090 /* 0x01000090@l */
/* 807402DC  38 A0 00 00 */	li r5, 0
/* 807402E0  38 C0 00 00 */	li r6, 0
/* 807402E4  4B B6 ED 2D */	bl bgmStart__8Z2SeqMgrFUlUll
/* 807402E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807402EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807402F0  38 80 00 3F */	li r4, 0x3f
/* 807402F4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 807402F8  7C 05 07 74 */	extsb r5, r0
/* 807402FC  4B 8F 4F 05 */	bl onSwitch__10dSv_info_cFii
lbl_80740300:
/* 80740300  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80740304  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80740308  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8074030C  7C 08 03 A6 */	mtlr r0
/* 80740310  38 21 00 60 */	addi r1, r1, 0x60
/* 80740314  4E 80 00 20 */	blr 
