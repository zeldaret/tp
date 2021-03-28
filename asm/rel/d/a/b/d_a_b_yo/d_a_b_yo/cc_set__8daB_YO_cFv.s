lbl_80637B30:
/* 80637B30  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80637B34  7C 08 02 A6 */	mflr r0
/* 80637B38  90 01 00 64 */	stw r0, 0x64(r1)
/* 80637B3C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80637B40  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80637B44  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80637B48  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80637B4C  39 61 00 40 */	addi r11, r1, 0x40
/* 80637B50  4B D2 A6 74 */	b _savegpr_23
/* 80637B54  7C 7D 1B 78 */	mr r29, r3
/* 80637B58  3C 60 80 64 */	lis r3, cNullVec__6Z2Calc@ha
/* 80637B5C  3B C3 9A 60 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 80637B60  3C 60 80 64 */	lis r3, lit_3788@ha
/* 80637B64  3B E3 97 F4 */	addi r31, r3, lit_3788@l
/* 80637B68  88 1D 0F B5 */	lbz r0, 0xfb5(r29)
/* 80637B6C  28 00 00 03 */	cmplwi r0, 3
/* 80637B70  41 82 02 78 */	beq lbl_80637DE8
/* 80637B74  3C 60 80 64 */	lis r3, l_HIO@ha
/* 80637B78  38 63 9F 84 */	addi r3, r3, l_HIO@l
/* 80637B7C  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80637B80  54 00 10 3A */	slwi r0, r0, 2
/* 80637B84  7C 63 02 14 */	add r3, r3, r0
/* 80637B88  C3 E3 00 08 */	lfs f31, 8(r3)
/* 80637B8C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80637B90  4B 9D 51 D4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80637B94  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80637B98  28 00 00 07 */	cmplwi r0, 7
/* 80637B9C  40 82 00 60 */	bne lbl_80637BFC
/* 80637BA0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80637BA4  C0 5F 00 FC */	lfs f2, 0xfc(r31)
/* 80637BA8  FC 60 08 90 */	fmr f3, f1
/* 80637BAC  4B 9D 51 F0 */	b transM__14mDoMtx_stack_cFfff
/* 80637BB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80637BB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80637BB8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80637BBC  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80637BC0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80637BC4  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80637BC8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80637BCC  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80637BD0  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80637BD4  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80637BD8  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80637BDC  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80637BE0  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80637BE4  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80637BE8  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 80637BEC  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 80637BF0  EC 01 00 2A */	fadds f0, f1, f0
/* 80637BF4  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80637BF8  48 00 00 68 */	b lbl_80637C60
lbl_80637BFC:
/* 80637BFC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80637C00  C0 5F 00 F4 */	lfs f2, 0xf4(r31)
/* 80637C04  FC 60 08 90 */	fmr f3, f1
/* 80637C08  4B 9D 51 94 */	b transM__14mDoMtx_stack_cFfff
/* 80637C0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80637C10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80637C14  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80637C18  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80637C1C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80637C20  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80637C24  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80637C28  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80637C2C  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80637C30  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80637C34  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80637C38  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80637C3C  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80637C40  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80637C44  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 80637C48  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80637C4C  54 00 10 3A */	slwi r0, r0, 2
/* 80637C50  38 7E 03 98 */	addi r3, r30, 0x398
/* 80637C54  7C 03 04 2E */	lfsx f0, r3, r0
/* 80637C58  EC 01 00 2A */	fadds f0, f1, f0
/* 80637C5C  D0 1D 05 54 */	stfs f0, 0x554(r29)
lbl_80637C60:
/* 80637C60  88 1D 0F AC */	lbz r0, 0xfac(r29)
/* 80637C64  28 00 00 00 */	cmplwi r0, 0
/* 80637C68  41 82 00 10 */	beq lbl_80637C78
/* 80637C6C  38 00 00 02 */	li r0, 2
/* 80637C70  98 1D 0F A8 */	stb r0, 0xfa8(r29)
/* 80637C74  C3 FF 00 0C */	lfs f31, 0xc(r31)
lbl_80637C78:
/* 80637C78  38 7D 13 D0 */	addi r3, r29, 0x13d0
/* 80637C7C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80637C80  4B C3 75 5C */	b SetC__8cM3dGCylFRC4cXyz
/* 80637C84  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80637C88  28 00 00 07 */	cmplwi r0, 7
/* 80637C8C  40 82 00 14 */	bne lbl_80637CA0
/* 80637C90  38 7D 13 D0 */	addi r3, r29, 0x13d0
/* 80637C94  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 80637C98  4B C3 75 60 */	b SetH__8cM3dGCylFf
/* 80637C9C  48 00 00 14 */	b lbl_80637CB0
lbl_80637CA0:
/* 80637CA0  38 7D 13 D0 */	addi r3, r29, 0x13d0
/* 80637CA4  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80637CA8  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80637CAC  4B C3 75 4C */	b SetH__8cM3dGCylFf
lbl_80637CB0:
/* 80637CB0  88 1D 0F AC */	lbz r0, 0xfac(r29)
/* 80637CB4  28 00 00 00 */	cmplwi r0, 0
/* 80637CB8  41 82 00 14 */	beq lbl_80637CCC
/* 80637CBC  38 7D 13 D0 */	addi r3, r29, 0x13d0
/* 80637CC0  C0 3F 01 AC */	lfs f1, 0x1ac(r31)
/* 80637CC4  4B C3 75 3C */	b SetR__8cM3dGCylFf
/* 80637CC8  48 00 00 1C */	b lbl_80637CE4
lbl_80637CCC:
/* 80637CCC  38 7D 13 D0 */	addi r3, r29, 0x13d0
/* 80637CD0  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80637CD4  54 00 10 3A */	slwi r0, r0, 2
/* 80637CD8  38 9E 03 B4 */	addi r4, r30, 0x3b4
/* 80637CDC  7C 24 04 2E */	lfsx f1, r4, r0
/* 80637CE0  4B C3 75 20 */	b SetR__8cM3dGCylFf
lbl_80637CE4:
/* 80637CE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80637CE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80637CEC  3B 43 23 3C */	addi r26, r3, 0x233c
/* 80637CF0  7F 43 D3 78 */	mr r3, r26
/* 80637CF4  38 9D 12 AC */	addi r4, r29, 0x12ac
/* 80637CF8  4B C2 CE B0 */	b Set__4cCcSFP8cCcD_Obj
/* 80637CFC  3A E0 00 00 */	li r23, 0
/* 80637D00  3B 80 00 00 */	li r28, 0
/* 80637D04  3B 60 00 00 */	li r27, 0
lbl_80637D08:
/* 80637D08  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80637D0C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80637D10  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80637D14  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80637D18  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80637D1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80637D20  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80637D24  28 00 00 07 */	cmplwi r0, 7
/* 80637D28  40 82 00 1C */	bne lbl_80637D44
/* 80637D2C  38 7E 03 EC */	addi r3, r30, 0x3ec
/* 80637D30  7C 03 DC 2E */	lfsx f0, r3, r27
/* 80637D34  EC 01 00 2A */	fadds f0, f1, f0
/* 80637D38  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80637D3C  C3 DF 02 3C */	lfs f30, 0x23c(r31)
/* 80637D40  48 00 00 24 */	b lbl_80637D64
lbl_80637D44:
/* 80637D44  38 7E 03 D4 */	addi r3, r30, 0x3d4
/* 80637D48  7C 03 DC 2E */	lfsx f0, r3, r27
/* 80637D4C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80637D50  EC 01 00 2A */	fadds f0, f1, f0
/* 80637D54  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80637D58  38 7E 03 E0 */	addi r3, r30, 0x3e0
/* 80637D5C  7C 03 DC 2E */	lfsx f0, r3, r27
/* 80637D60  EF DF 00 32 */	fmuls f30, f31, f0
lbl_80637D64:
/* 80637D64  7F 1D E2 14 */	add r24, r29, r28
/* 80637D68  3B 38 15 0C */	addi r25, r24, 0x150c
/* 80637D6C  7F 23 CB 78 */	mr r3, r25
/* 80637D70  38 81 00 08 */	addi r4, r1, 8
/* 80637D74  4B C3 78 D4 */	b SetC__8cM3dGSphFRC4cXyz
/* 80637D78  7F 23 CB 78 */	mr r3, r25
/* 80637D7C  FC 20 F0 90 */	fmr f1, f30
/* 80637D80  4B C3 79 88 */	b SetR__8cM3dGSphFf
/* 80637D84  7F 43 D3 78 */	mr r3, r26
/* 80637D88  38 98 13 E8 */	addi r4, r24, 0x13e8
/* 80637D8C  4B C2 CE 1C */	b Set__4cCcSFP8cCcD_Obj
/* 80637D90  3B 38 18 B4 */	addi r25, r24, 0x18b4
/* 80637D94  7F 23 CB 78 */	mr r3, r25
/* 80637D98  38 81 00 08 */	addi r4, r1, 8
/* 80637D9C  4B C3 78 AC */	b SetC__8cM3dGSphFRC4cXyz
/* 80637DA0  7F 23 CB 78 */	mr r3, r25
/* 80637DA4  FC 20 F0 90 */	fmr f1, f30
/* 80637DA8  4B C3 79 60 */	b SetR__8cM3dGSphFf
/* 80637DAC  7F 43 D3 78 */	mr r3, r26
/* 80637DB0  38 98 17 90 */	addi r4, r24, 0x1790
/* 80637DB4  4B C2 CD F4 */	b Set__4cCcSFP8cCcD_Obj
/* 80637DB8  3A F7 00 01 */	addi r23, r23, 1
/* 80637DBC  2C 17 00 03 */	cmpwi r23, 3
/* 80637DC0  3B 9C 01 38 */	addi r28, r28, 0x138
/* 80637DC4  3B 7B 00 04 */	addi r27, r27, 4
/* 80637DC8  41 80 FF 40 */	blt lbl_80637D08
/* 80637DCC  88 1D 0F AC */	lbz r0, 0xfac(r29)
/* 80637DD0  28 00 00 00 */	cmplwi r0, 0
/* 80637DD4  41 82 00 14 */	beq lbl_80637DE8
/* 80637DD8  38 00 00 07 */	li r0, 7
/* 80637DDC  98 1D 0F A8 */	stb r0, 0xfa8(r29)
/* 80637DE0  38 00 00 00 */	li r0, 0
/* 80637DE4  98 1D 0F AC */	stb r0, 0xfac(r29)
lbl_80637DE8:
/* 80637DE8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80637DEC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80637DF0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80637DF4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80637DF8  39 61 00 40 */	addi r11, r1, 0x40
/* 80637DFC  4B D2 A4 14 */	b _restgpr_23
/* 80637E00  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80637E04  7C 08 03 A6 */	mtlr r0
/* 80637E08  38 21 00 60 */	addi r1, r1, 0x60
/* 80637E0C  4E 80 00 20 */	blr 
