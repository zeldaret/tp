lbl_809FAF90:
/* 809FAF90  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809FAF94  7C 08 02 A6 */	mflr r0
/* 809FAF98  90 01 00 64 */	stw r0, 0x64(r1)
/* 809FAF9C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 809FAFA0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 809FAFA4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 809FAFA8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 809FAFAC  39 61 00 40 */	addi r11, r1, 0x40
/* 809FAFB0  4B 96 72 1D */	bl _savegpr_25
/* 809FAFB4  7C 7E 1B 78 */	mr r30, r3
/* 809FAFB8  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha /* 0x80A00600@ha */
/* 809FAFBC  3B E3 06 00 */	addi r31, r3, m__19daNpc_Hanjo_Param_c@l /* 0x80A00600@l */
/* 809FAFC0  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 809FAFC4  28 00 00 00 */	cmplwi r0, 0
/* 809FAFC8  40 82 01 F4 */	bne lbl_809FB1BC
/* 809FAFCC  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809FAFD0  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809FAFD4  38 80 00 1F */	li r4, 0x1f
/* 809FAFD8  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 809FAFDC  28 00 00 00 */	cmplwi r0, 0
/* 809FAFE0  41 82 00 10 */	beq lbl_809FAFF0
/* 809FAFE4  38 60 00 00 */	li r3, 0
/* 809FAFE8  38 80 00 00 */	li r4, 0
/* 809FAFEC  48 00 00 18 */	b lbl_809FB004
lbl_809FAFF0:
/* 809FAFF0  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 809FAFF4  2C 00 00 00 */	cmpwi r0, 0
/* 809FAFF8  41 82 00 0C */	beq lbl_809FB004
/* 809FAFFC  38 60 00 00 */	li r3, 0
/* 809FB000  38 80 00 00 */	li r4, 0
lbl_809FB004:
/* 809FB004  38 00 00 79 */	li r0, 0x79
/* 809FB008  90 1E 0E 78 */	stw r0, 0xe78(r30)
/* 809FB00C  90 7E 0E 74 */	stw r3, 0xe74(r30)
/* 809FB010  90 9E 0E 64 */	stw r4, 0xe64(r30)
/* 809FB014  80 1E 0E E8 */	lwz r0, 0xee8(r30)
/* 809FB018  60 00 00 04 */	ori r0, r0, 4
/* 809FB01C  90 1E 0E E8 */	stw r0, 0xee8(r30)
/* 809FB020  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FB024  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809FB028  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809FB02C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809FB030  C3 DE 0D EC */	lfs f30, 0xdec(r30)
/* 809FB034  C3 FE 0D F0 */	lfs f31, 0xdf0(r30)
/* 809FB038  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809FB03C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809FB040  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 809FB044  4B 61 13 99 */	bl mDoMtx_YrotS__FPA4_fs
/* 809FB048  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809FB04C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809FB050  38 81 00 14 */	addi r4, r1, 0x14
/* 809FB054  7C 85 23 78 */	mr r5, r4
/* 809FB058  4B 94 BD 15 */	bl PSMTXMultVec
/* 809FB05C  38 61 00 14 */	addi r3, r1, 0x14
/* 809FB060  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809FB064  7C 65 1B 78 */	mr r5, r3
/* 809FB068  4B 94 C0 29 */	bl PSVECAdd
/* 809FB06C  38 7E 0F 70 */	addi r3, r30, 0xf70
/* 809FB070  FC 20 F0 90 */	fmr f1, f30
/* 809FB074  4B 87 41 85 */	bl SetH__8cM3dGCylFf
/* 809FB078  38 7E 0F 70 */	addi r3, r30, 0xf70
/* 809FB07C  FC 20 F8 90 */	fmr f1, f31
/* 809FB080  4B 87 41 81 */	bl SetR__8cM3dGCylFf
/* 809FB084  38 7E 0F 70 */	addi r3, r30, 0xf70
/* 809FB088  38 81 00 14 */	addi r4, r1, 0x14
/* 809FB08C  4B 87 41 51 */	bl SetC__8cM3dGCylFRC4cXyz
/* 809FB090  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809FB094  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809FB098  3B 83 23 3C */	addi r28, r3, 0x233c
/* 809FB09C  7F 83 E3 78 */	mr r3, r28
/* 809FB0A0  38 9E 0E 4C */	addi r4, r30, 0xe4c
/* 809FB0A4  4B 86 9B 05 */	bl Set__4cCcSFP8cCcD_Obj
/* 809FB0A8  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 809FB0AC  28 00 00 01 */	cmplwi r0, 1
/* 809FB0B0  41 82 00 0C */	beq lbl_809FB0BC
/* 809FB0B4  28 00 00 02 */	cmplwi r0, 2
/* 809FB0B8  40 82 01 04 */	bne lbl_809FB1BC
lbl_809FB0BC:
/* 809FB0BC  2C 00 00 02 */	cmpwi r0, 2
/* 809FB0C0  41 82 00 34 */	beq lbl_809FB0F4
/* 809FB0C4  40 80 00 50 */	bge lbl_809FB114
/* 809FB0C8  2C 00 00 01 */	cmpwi r0, 1
/* 809FB0CC  40 80 00 08 */	bge lbl_809FB0D4
/* 809FB0D0  48 00 00 44 */	b lbl_809FB114
lbl_809FB0D4:
/* 809FB0D4  C3 FF 01 68 */	lfs f31, 0x168(r31)
/* 809FB0D8  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 809FB0DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809FB0E0  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 809FB0E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809FB0E8  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 809FB0EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809FB0F0  48 00 00 34 */	b lbl_809FB124
lbl_809FB0F4:
/* 809FB0F4  C3 FF 01 68 */	lfs f31, 0x168(r31)
/* 809FB0F8  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FB0FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809FB100  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 809FB104  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809FB108  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 809FB10C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809FB110  48 00 00 14 */	b lbl_809FB124
lbl_809FB114:
/* 809FB114  C3 FF 00 FC */	lfs f31, 0xfc(r31)
/* 809FB118  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 809FB11C  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 809FB120  D3 E1 00 1C */	stfs f31, 0x1c(r1)
lbl_809FB124:
/* 809FB124  FC 00 FA 10 */	fabs f0, f31
/* 809FB128  FC 20 00 18 */	frsp f1, f0
/* 809FB12C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 809FB130  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 809FB134  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809FB138  7C 00 00 26 */	mfcr r0
/* 809FB13C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 809FB140  40 82 00 7C */	bne lbl_809FB1BC
/* 809FB144  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809FB148  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809FB14C  38 80 00 00 */	li r4, 0
/* 809FB150  4B 61 12 8D */	bl mDoMtx_YrotS__FPA4_fs
/* 809FB154  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809FB158  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809FB15C  38 81 00 14 */	addi r4, r1, 0x14
/* 809FB160  7C 85 23 78 */	mr r5, r4
/* 809FB164  4B 94 BC 09 */	bl PSMTXMultVec
/* 809FB168  38 61 00 14 */	addi r3, r1, 0x14
/* 809FB16C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809FB170  7C 65 1B 78 */	mr r5, r3
/* 809FB174  4B 94 BF 1D */	bl PSVECAdd
/* 809FB178  38 00 00 19 */	li r0, 0x19
/* 809FB17C  90 1E 0F B4 */	stw r0, 0xfb4(r30)
/* 809FB180  80 1E 0F B4 */	lwz r0, 0xfb4(r30)
/* 809FB184  60 00 01 00 */	ori r0, r0, 0x100
/* 809FB188  90 1E 0F B4 */	stw r0, 0xfb4(r30)
/* 809FB18C  38 7E 10 AC */	addi r3, r30, 0x10ac
/* 809FB190  FC 20 F0 90 */	fmr f1, f30
/* 809FB194  4B 87 40 65 */	bl SetH__8cM3dGCylFf
/* 809FB198  38 7E 10 AC */	addi r3, r30, 0x10ac
/* 809FB19C  FC 20 F8 90 */	fmr f1, f31
/* 809FB1A0  4B 87 40 61 */	bl SetR__8cM3dGCylFf
/* 809FB1A4  38 7E 10 AC */	addi r3, r30, 0x10ac
/* 809FB1A8  38 81 00 14 */	addi r4, r1, 0x14
/* 809FB1AC  4B 87 40 31 */	bl SetC__8cM3dGCylFRC4cXyz
/* 809FB1B0  7F 83 E3 78 */	mr r3, r28
/* 809FB1B4  38 9E 0F 88 */	addi r4, r30, 0xf88
/* 809FB1B8  4B 86 99 F1 */	bl Set__4cCcSFP8cCcD_Obj
lbl_809FB1BC:
/* 809FB1BC  3B 20 00 00 */	li r25, 0
/* 809FB1C0  3B A0 00 00 */	li r29, 0
/* 809FB1C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809FB1C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809FB1CC  3B 83 23 3C */	addi r28, r3, 0x233c
lbl_809FB1D0:
/* 809FB1D0  7C 9E EA 14 */	add r4, r30, r29
/* 809FB1D4  80 04 11 10 */	lwz r0, 0x1110(r4)
/* 809FB1D8  28 00 00 00 */	cmplwi r0, 0
/* 809FB1DC  41 82 00 18 */	beq lbl_809FB1F4
/* 809FB1E0  80 64 12 80 */	lwz r3, 0x1280(r4)
/* 809FB1E4  30 03 FF FF */	addic r0, r3, -1
/* 809FB1E8  7C 00 19 10 */	subfe r0, r0, r3
/* 809FB1EC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809FB1F0  48 00 00 08 */	b lbl_809FB1F8
lbl_809FB1F4:
/* 809FB1F4  38 00 00 00 */	li r0, 0
lbl_809FB1F8:
/* 809FB1F8  2C 00 00 00 */	cmpwi r0, 0
/* 809FB1FC  41 82 00 54 */	beq lbl_809FB250
/* 809FB200  38 61 00 08 */	addi r3, r1, 8
/* 809FB204  3B 64 11 10 */	addi r27, r4, 0x1110
/* 809FB208  7F 64 DB 78 */	mr r4, r27
/* 809FB20C  48 00 51 31 */	bl getPos__18daNpc_HanjoStone_cFv
/* 809FB210  3B 5B 00 30 */	addi r26, r27, 0x30
/* 809FB214  3B 7A 01 24 */	addi r27, r26, 0x124
/* 809FB218  7F 63 DB 78 */	mr r3, r27
/* 809FB21C  38 81 00 08 */	addi r4, r1, 8
/* 809FB220  4B 87 44 29 */	bl SetC__8cM3dGSphFRC4cXyz
/* 809FB224  7F 63 DB 78 */	mr r3, r27
/* 809FB228  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 809FB22C  4B 87 44 DD */	bl SetR__8cM3dGSphFf
/* 809FB230  7F 83 E3 78 */	mr r3, r28
/* 809FB234  7F 44 D3 78 */	mr r4, r26
/* 809FB238  4B 86 99 71 */	bl Set__4cCcSFP8cCcD_Obj
/* 809FB23C  7F 43 D3 78 */	mr r3, r26
/* 809FB240  81 9A 00 3C */	lwz r12, 0x3c(r26)
/* 809FB244  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 809FB248  7D 89 03 A6 */	mtctr r12
/* 809FB24C  4E 80 04 21 */	bctrl 
lbl_809FB250:
/* 809FB250  3B 39 00 01 */	addi r25, r25, 1
/* 809FB254  2C 19 00 04 */	cmpwi r25, 4
/* 809FB258  3B BD 01 74 */	addi r29, r29, 0x174
/* 809FB25C  41 80 FF 74 */	blt lbl_809FB1D0
/* 809FB260  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 809FB264  81 9E 0E 88 */	lwz r12, 0xe88(r30)
/* 809FB268  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 809FB26C  7D 89 03 A6 */	mtctr r12
/* 809FB270  4E 80 04 21 */	bctrl 
/* 809FB274  38 7E 0F 88 */	addi r3, r30, 0xf88
/* 809FB278  81 9E 0F C4 */	lwz r12, 0xfc4(r30)
/* 809FB27C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 809FB280  7D 89 03 A6 */	mtctr r12
/* 809FB284  4E 80 04 21 */	bctrl 
/* 809FB288  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 809FB28C  81 9E 0E 88 */	lwz r12, 0xe88(r30)
/* 809FB290  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809FB294  7D 89 03 A6 */	mtctr r12
/* 809FB298  4E 80 04 21 */	bctrl 
/* 809FB29C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 809FB2A0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 809FB2A4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 809FB2A8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 809FB2AC  39 61 00 40 */	addi r11, r1, 0x40
/* 809FB2B0  4B 96 6F 69 */	bl _restgpr_25
/* 809FB2B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809FB2B8  7C 08 03 A6 */	mtlr r0
/* 809FB2BC  38 21 00 60 */	addi r1, r1, 0x60
/* 809FB2C0  4E 80 00 20 */	blr 
