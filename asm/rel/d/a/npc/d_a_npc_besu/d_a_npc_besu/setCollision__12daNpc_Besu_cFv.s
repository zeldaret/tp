lbl_805391B8:
/* 805391B8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805391BC  7C 08 02 A6 */	mflr r0
/* 805391C0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805391C4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805391C8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805391CC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805391D0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805391D4  39 61 00 30 */	addi r11, r1, 0x30
/* 805391D8  4B E2 90 05 */	bl _savegpr_29
/* 805391DC  7C 7E 1B 78 */	mr r30, r3
/* 805391E0  3C 60 80 54 */	lis r3, m__18daNpc_Besu_Param_c@ha /* 0x8053E754@ha */
/* 805391E4  3B E3 E7 54 */	addi r31, r3, m__18daNpc_Besu_Param_c@l /* 0x8053E754@l */
/* 805391E8  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 805391EC  28 00 00 00 */	cmplwi r0, 0
/* 805391F0  40 82 02 40 */	bne lbl_80539430
/* 805391F4  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 805391F8  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 805391FC  38 80 00 1F */	li r4, 0x1f
/* 80539200  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80539204  28 00 00 00 */	cmplwi r0, 0
/* 80539208  41 82 00 10 */	beq lbl_80539218
/* 8053920C  38 60 00 00 */	li r3, 0
/* 80539210  38 80 00 00 */	li r4, 0
/* 80539214  48 00 00 18 */	b lbl_8053922C
lbl_80539218:
/* 80539218  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 8053921C  2C 00 00 00 */	cmpwi r0, 0
/* 80539220  41 82 00 0C */	beq lbl_8053922C
/* 80539224  38 60 00 00 */	li r3, 0
/* 80539228  38 80 00 00 */	li r4, 0
lbl_8053922C:
/* 8053922C  38 00 00 79 */	li r0, 0x79
/* 80539230  90 1E 0E 78 */	stw r0, 0xe78(r30)
/* 80539234  90 7E 0E 74 */	stw r3, 0xe74(r30)
/* 80539238  90 9E 0E 64 */	stw r4, 0xe64(r30)
/* 8053923C  80 1E 0E E8 */	lwz r0, 0xee8(r30)
/* 80539240  60 00 00 04 */	ori r0, r0, 4
/* 80539244  90 1E 0E E8 */	stw r0, 0xee8(r30)
/* 80539248  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8053924C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80539250  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80539254  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80539258  C3 DE 0D EC */	lfs f30, 0xdec(r30)
/* 8053925C  C3 FE 0D F0 */	lfs f31, 0xdf0(r30)
/* 80539260  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 80539264  28 00 00 02 */	cmplwi r0, 2
/* 80539268  40 82 00 18 */	bne lbl_80539280
/* 8053926C  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 80539270  D0 01 00 08 */	stfs f0, 8(r1)
/* 80539274  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80539278  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8053927C  48 00 00 2C */	b lbl_805392A8
lbl_80539280:
/* 80539280  7F C3 F3 78 */	mr r3, r30
/* 80539284  4B FF ED 4D */	bl chkNurse__12daNpc_Besu_cFv
/* 80539288  2C 03 00 00 */	cmpwi r3, 0
/* 8053928C  41 82 00 1C */	beq lbl_805392A8
/* 80539290  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80539294  D0 01 00 08 */	stfs f0, 8(r1)
/* 80539298  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053929C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805392A0  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 805392A4  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_805392A8:
/* 805392A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805392AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805392B0  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 805392B4  4B AD 31 29 */	bl mDoMtx_YrotS__FPA4_fs
/* 805392B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805392BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805392C0  38 81 00 08 */	addi r4, r1, 8
/* 805392C4  7C 85 23 78 */	mr r5, r4
/* 805392C8  4B E0 DA A5 */	bl PSMTXMultVec
/* 805392CC  38 61 00 08 */	addi r3, r1, 8
/* 805392D0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805392D4  7C 65 1B 78 */	mr r5, r3
/* 805392D8  4B E0 DD B9 */	bl PSVECAdd
/* 805392DC  38 7E 0F 70 */	addi r3, r30, 0xf70
/* 805392E0  FC 20 F0 90 */	fmr f1, f30
/* 805392E4  4B D3 5F 15 */	bl SetH__8cM3dGCylFf
/* 805392E8  38 7E 0F 70 */	addi r3, r30, 0xf70
/* 805392EC  FC 20 F8 90 */	fmr f1, f31
/* 805392F0  4B D3 5F 11 */	bl SetR__8cM3dGCylFf
/* 805392F4  38 7E 0F 70 */	addi r3, r30, 0xf70
/* 805392F8  38 81 00 08 */	addi r4, r1, 8
/* 805392FC  4B D3 5E E1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80539300  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80539304  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80539308  3B A3 23 3C */	addi r29, r3, 0x233c
/* 8053930C  7F A3 EB 78 */	mr r3, r29
/* 80539310  38 9E 0E 4C */	addi r4, r30, 0xe4c
/* 80539314  4B D2 B8 95 */	bl Set__4cCcSFP8cCcD_Obj
/* 80539318  88 9E 10 C4 */	lbz r4, 0x10c4(r30)
/* 8053931C  28 04 00 0B */	cmplwi r4, 0xb
/* 80539320  40 82 00 18 */	bne lbl_80539338
/* 80539324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80539328  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8053932C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80539330  28 00 00 00 */	cmplwi r0, 0
/* 80539334  41 82 00 0C */	beq lbl_80539340
lbl_80539338:
/* 80539338  28 04 00 03 */	cmplwi r4, 3
/* 8053933C  40 82 00 F4 */	bne lbl_80539430
lbl_80539340:
/* 80539340  2C 04 00 0B */	cmpwi r4, 0xb
/* 80539344  41 82 00 30 */	beq lbl_80539374
/* 80539348  40 80 00 4C */	bge lbl_80539394
/* 8053934C  2C 04 00 03 */	cmpwi r4, 3
/* 80539350  41 82 00 08 */	beq lbl_80539358
/* 80539354  48 00 00 40 */	b lbl_80539394
lbl_80539358:
/* 80539358  C3 FF 01 00 */	lfs f31, 0x100(r31)
/* 8053935C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80539360  D0 01 00 08 */	stfs f0, 8(r1)
/* 80539364  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80539368  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 8053936C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80539370  48 00 00 34 */	b lbl_805393A4
lbl_80539374:
/* 80539374  C3 FF 01 70 */	lfs f31, 0x170(r31)
/* 80539378  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8053937C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80539380  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80539384  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80539388  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 8053938C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80539390  48 00 00 14 */	b lbl_805393A4
lbl_80539394:
/* 80539394  C3 FF 00 F0 */	lfs f31, 0xf0(r31)
/* 80539398  D3 E1 00 08 */	stfs f31, 8(r1)
/* 8053939C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 805393A0  D3 E1 00 10 */	stfs f31, 0x10(r1)
lbl_805393A4:
/* 805393A4  FC 00 FA 10 */	fabs f0, f31
/* 805393A8  FC 20 00 18 */	frsp f1, f0
/* 805393AC  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 805393B0  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 805393B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805393B8  7C 00 00 26 */	mfcr r0
/* 805393BC  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 805393C0  40 82 00 70 */	bne lbl_80539430
/* 805393C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805393C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805393CC  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 805393D0  4B AD 30 0D */	bl mDoMtx_YrotS__FPA4_fs
/* 805393D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805393D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805393DC  38 81 00 08 */	addi r4, r1, 8
/* 805393E0  7C 85 23 78 */	mr r5, r4
/* 805393E4  4B E0 D9 89 */	bl PSMTXMultVec
/* 805393E8  38 61 00 08 */	addi r3, r1, 8
/* 805393EC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805393F0  7C 65 1B 78 */	mr r5, r3
/* 805393F4  4B E0 DC 9D */	bl PSVECAdd
/* 805393F8  38 00 00 19 */	li r0, 0x19
/* 805393FC  90 1E 0F B4 */	stw r0, 0xfb4(r30)
/* 80539400  38 7E 10 AC */	addi r3, r30, 0x10ac
/* 80539404  FC 20 F0 90 */	fmr f1, f30
/* 80539408  4B D3 5D F1 */	bl SetH__8cM3dGCylFf
/* 8053940C  38 7E 10 AC */	addi r3, r30, 0x10ac
/* 80539410  FC 20 F8 90 */	fmr f1, f31
/* 80539414  4B D3 5D ED */	bl SetR__8cM3dGCylFf
/* 80539418  38 7E 10 AC */	addi r3, r30, 0x10ac
/* 8053941C  38 81 00 08 */	addi r4, r1, 8
/* 80539420  4B D3 5D BD */	bl SetC__8cM3dGCylFRC4cXyz
/* 80539424  7F A3 EB 78 */	mr r3, r29
/* 80539428  38 9E 0F 88 */	addi r4, r30, 0xf88
/* 8053942C  4B D2 B7 7D */	bl Set__4cCcSFP8cCcD_Obj
lbl_80539430:
/* 80539430  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 80539434  81 9E 0E 88 */	lwz r12, 0xe88(r30)
/* 80539438  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8053943C  7D 89 03 A6 */	mtctr r12
/* 80539440  4E 80 04 21 */	bctrl 
/* 80539444  38 7E 0F 88 */	addi r3, r30, 0xf88
/* 80539448  81 9E 0F C4 */	lwz r12, 0xfc4(r30)
/* 8053944C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80539450  7D 89 03 A6 */	mtctr r12
/* 80539454  4E 80 04 21 */	bctrl 
/* 80539458  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 8053945C  81 9E 0E 88 */	lwz r12, 0xe88(r30)
/* 80539460  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80539464  7D 89 03 A6 */	mtctr r12
/* 80539468  4E 80 04 21 */	bctrl 
/* 8053946C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80539470  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80539474  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80539478  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8053947C  39 61 00 30 */	addi r11, r1, 0x30
/* 80539480  4B E2 8D A9 */	bl _restgpr_29
/* 80539484  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80539488  7C 08 03 A6 */	mtlr r0
/* 8053948C  38 21 00 50 */	addi r1, r1, 0x50
/* 80539490  4E 80 00 20 */	blr 
