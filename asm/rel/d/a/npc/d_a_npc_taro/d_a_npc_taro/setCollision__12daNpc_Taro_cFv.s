lbl_805682E8:
/* 805682E8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805682EC  7C 08 02 A6 */	mflr r0
/* 805682F0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805682F4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805682F8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805682FC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80568300  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80568304  39 61 00 30 */	addi r11, r1, 0x30
/* 80568308  4B DF 9E D5 */	bl _savegpr_29
/* 8056830C  7C 7F 1B 78 */	mr r31, r3
/* 80568310  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha /* 0x805716C8@ha */
/* 80568314  3B C3 16 C8 */	addi r30, r3, m__18daNpc_Taro_Param_c@l /* 0x805716C8@l */
/* 80568318  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 8056831C  28 00 00 00 */	cmplwi r0, 0
/* 80568320  40 82 02 0C */	bne lbl_8056852C
/* 80568324  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80568328  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 8056832C  38 80 00 1F */	li r4, 0x1f
/* 80568330  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80568334  28 00 00 00 */	cmplwi r0, 0
/* 80568338  41 82 00 10 */	beq lbl_80568348
/* 8056833C  38 60 00 00 */	li r3, 0
/* 80568340  38 80 00 00 */	li r4, 0
/* 80568344  48 00 00 18 */	b lbl_8056835C
lbl_80568348:
/* 80568348  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8056834C  2C 00 00 00 */	cmpwi r0, 0
/* 80568350  41 82 00 0C */	beq lbl_8056835C
/* 80568354  38 60 00 00 */	li r3, 0
/* 80568358  38 80 00 00 */	li r4, 0
lbl_8056835C:
/* 8056835C  38 00 00 79 */	li r0, 0x79
/* 80568360  90 1F 0E 78 */	stw r0, 0xe78(r31)
/* 80568364  90 7F 0E 74 */	stw r3, 0xe74(r31)
/* 80568368  90 9F 0E 64 */	stw r4, 0xe64(r31)
/* 8056836C  80 1F 0E E8 */	lwz r0, 0xee8(r31)
/* 80568370  60 00 00 04 */	ori r0, r0, 4
/* 80568374  90 1F 0E E8 */	stw r0, 0xee8(r31)
/* 80568378  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 8056837C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80568380  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80568384  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80568388  C3 DF 0D EC */	lfs f30, 0xdec(r31)
/* 8056838C  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 80568390  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 80568394  28 00 00 03 */	cmplwi r0, 3
/* 80568398  40 82 00 14 */	bne lbl_805683AC
/* 8056839C  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 805683A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 805683A4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805683A8  D0 21 00 10 */	stfs f1, 0x10(r1)
lbl_805683AC:
/* 805683AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805683B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805683B4  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 805683B8  4B AA 40 25 */	bl mDoMtx_YrotS__FPA4_fs
/* 805683BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805683C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805683C4  38 81 00 08 */	addi r4, r1, 8
/* 805683C8  7C 85 23 78 */	mr r5, r4
/* 805683CC  4B DD E9 A1 */	bl PSMTXMultVec
/* 805683D0  38 61 00 08 */	addi r3, r1, 8
/* 805683D4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805683D8  7C 65 1B 78 */	mr r5, r3
/* 805683DC  4B DD EC B5 */	bl PSVECAdd
/* 805683E0  38 7F 0F 70 */	addi r3, r31, 0xf70
/* 805683E4  FC 20 F0 90 */	fmr f1, f30
/* 805683E8  4B D0 6E 11 */	bl SetH__8cM3dGCylFf
/* 805683EC  38 7F 0F 70 */	addi r3, r31, 0xf70
/* 805683F0  FC 20 F8 90 */	fmr f1, f31
/* 805683F4  4B D0 6E 0D */	bl SetR__8cM3dGCylFf
/* 805683F8  38 7F 0F 70 */	addi r3, r31, 0xf70
/* 805683FC  38 81 00 08 */	addi r4, r1, 8
/* 80568400  4B D0 6D DD */	bl SetC__8cM3dGCylFRC4cXyz
/* 80568404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80568408  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056840C  3B A3 23 3C */	addi r29, r3, 0x233c
/* 80568410  7F A3 EB 78 */	mr r3, r29
/* 80568414  38 9F 0E 4C */	addi r4, r31, 0xe4c
/* 80568418  4B CF C7 91 */	bl Set__4cCcSFP8cCcD_Obj
/* 8056841C  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 80568420  28 00 00 01 */	cmplwi r0, 1
/* 80568424  41 82 00 14 */	beq lbl_80568438
/* 80568428  28 00 00 02 */	cmplwi r0, 2
/* 8056842C  41 82 00 0C */	beq lbl_80568438
/* 80568430  28 00 00 08 */	cmplwi r0, 8
/* 80568434  40 82 00 F8 */	bne lbl_8056852C
lbl_80568438:
/* 80568438  2C 00 00 08 */	cmpwi r0, 8
/* 8056843C  41 82 00 3C */	beq lbl_80568478
/* 80568440  40 80 00 50 */	bge lbl_80568490
/* 80568444  2C 00 00 03 */	cmpwi r0, 3
/* 80568448  40 80 00 48 */	bge lbl_80568490
/* 8056844C  2C 00 00 01 */	cmpwi r0, 1
/* 80568450  40 80 00 08 */	bge lbl_80568458
/* 80568454  48 00 00 3C */	b lbl_80568490
lbl_80568458:
/* 80568458  C3 FE 01 3C */	lfs f31, 0x13c(r30)
/* 8056845C  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 80568460  D0 01 00 08 */	stfs f0, 8(r1)
/* 80568464  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80568468  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8056846C  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80568470  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80568474  48 00 00 2C */	b lbl_805684A0
lbl_80568478:
/* 80568478  C3 FE 01 48 */	lfs f31, 0x148(r30)
/* 8056847C  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80568480  D0 01 00 08 */	stfs f0, 8(r1)
/* 80568484  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80568488  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8056848C  48 00 00 14 */	b lbl_805684A0
lbl_80568490:
/* 80568490  C3 FE 00 E4 */	lfs f31, 0xe4(r30)
/* 80568494  D3 E1 00 08 */	stfs f31, 8(r1)
/* 80568498  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 8056849C  D3 E1 00 10 */	stfs f31, 0x10(r1)
lbl_805684A0:
/* 805684A0  FC 00 FA 10 */	fabs f0, f31
/* 805684A4  FC 20 00 18 */	frsp f1, f0
/* 805684A8  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 805684AC  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 805684B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805684B4  7C 00 00 26 */	mfcr r0
/* 805684B8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 805684BC  40 82 00 70 */	bne lbl_8056852C
/* 805684C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805684C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805684C8  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 805684CC  4B AA 3F 11 */	bl mDoMtx_YrotS__FPA4_fs
/* 805684D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805684D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805684D8  38 81 00 08 */	addi r4, r1, 8
/* 805684DC  7C 85 23 78 */	mr r5, r4
/* 805684E0  4B DD E8 8D */	bl PSMTXMultVec
/* 805684E4  38 61 00 08 */	addi r3, r1, 8
/* 805684E8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805684EC  7C 65 1B 78 */	mr r5, r3
/* 805684F0  4B DD EB A1 */	bl PSVECAdd
/* 805684F4  38 00 00 19 */	li r0, 0x19
/* 805684F8  90 1F 0F B4 */	stw r0, 0xfb4(r31)
/* 805684FC  38 7F 10 AC */	addi r3, r31, 0x10ac
/* 80568500  FC 20 F0 90 */	fmr f1, f30
/* 80568504  4B D0 6C F5 */	bl SetH__8cM3dGCylFf
/* 80568508  38 7F 10 AC */	addi r3, r31, 0x10ac
/* 8056850C  FC 20 F8 90 */	fmr f1, f31
/* 80568510  4B D0 6C F1 */	bl SetR__8cM3dGCylFf
/* 80568514  38 7F 10 AC */	addi r3, r31, 0x10ac
/* 80568518  38 81 00 08 */	addi r4, r1, 8
/* 8056851C  4B D0 6C C1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80568520  7F A3 EB 78 */	mr r3, r29
/* 80568524  38 9F 0F 88 */	addi r4, r31, 0xf88
/* 80568528  4B CF C6 81 */	bl Set__4cCcSFP8cCcD_Obj
lbl_8056852C:
/* 8056852C  38 7F 0E 4C */	addi r3, r31, 0xe4c
/* 80568530  81 9F 0E 88 */	lwz r12, 0xe88(r31)
/* 80568534  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80568538  7D 89 03 A6 */	mtctr r12
/* 8056853C  4E 80 04 21 */	bctrl 
/* 80568540  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80568544  81 9F 0F C4 */	lwz r12, 0xfc4(r31)
/* 80568548  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8056854C  7D 89 03 A6 */	mtctr r12
/* 80568550  4E 80 04 21 */	bctrl 
/* 80568554  38 7F 0E 4C */	addi r3, r31, 0xe4c
/* 80568558  81 9F 0E 88 */	lwz r12, 0xe88(r31)
/* 8056855C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80568560  7D 89 03 A6 */	mtctr r12
/* 80568564  4E 80 04 21 */	bctrl 
/* 80568568  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8056856C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80568570  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80568574  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80568578  39 61 00 30 */	addi r11, r1, 0x30
/* 8056857C  4B DF 9C AD */	bl _restgpr_29
/* 80568580  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80568584  7C 08 03 A6 */	mtlr r0
/* 80568588  38 21 00 50 */	addi r1, r1, 0x50
/* 8056858C  4E 80 00 20 */	blr 
