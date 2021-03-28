lbl_80CA4BB8:
/* 80CA4BB8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CA4BBC  7C 08 02 A6 */	mflr r0
/* 80CA4BC0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CA4BC4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80CA4BC8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80CA4BCC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80CA4BD0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80CA4BD4  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80CA4BD8  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80CA4BDC  39 61 00 40 */	addi r11, r1, 0x40
/* 80CA4BE0  4B 6B D5 DC */	b _savegpr_21
/* 80CA4BE4  7C 7E 1B 78 */	mr r30, r3
/* 80CA4BE8  3C 60 80 CA */	lis r3, ccSphSrc@ha
/* 80CA4BEC  3B E3 64 80 */	addi r31, r3, ccSphSrc@l
/* 80CA4BF0  3C 60 80 CA */	lis r3, data_80CA6680@ha
/* 80CA4BF4  38 83 66 80 */	addi r4, r3, data_80CA6680@l
/* 80CA4BF8  88 04 00 00 */	lbz r0, 0(r4)
/* 80CA4BFC  7C 00 07 75 */	extsb. r0, r0
/* 80CA4C00  40 82 00 4C */	bne lbl_80CA4C4C
/* 80CA4C04  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80CA4C08  80 7E 06 E0 */	lwz r3, 0x6e0(r30)
/* 80CA4C0C  38 03 00 01 */	addi r0, r3, 1
/* 80CA4C10  C8 3F 00 50 */	lfd f1, 0x50(r31)
/* 80CA4C14  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CA4C18  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA4C1C  3C 00 43 30 */	lis r0, 0x4330
/* 80CA4C20  90 01 00 08 */	stw r0, 8(r1)
/* 80CA4C24  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CA4C28  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CA4C2C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80CA4C30  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80CA4C34  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CA4C38  3C 60 80 CA */	lis r3, ccCylSrc@ha
/* 80CA4C3C  38 63 65 88 */	addi r3, r3, ccCylSrc@l
/* 80CA4C40  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80CA4C44  38 00 00 01 */	li r0, 1
/* 80CA4C48  98 04 00 00 */	stb r0, 0(r4)
lbl_80CA4C4C:
/* 80CA4C4C  3A A0 00 00 */	li r21, 0
/* 80CA4C50  3B A0 00 00 */	li r29, 0
/* 80CA4C54  3B 80 00 00 */	li r28, 0
/* 80CA4C58  3B 60 00 00 */	li r27, 0
/* 80CA4C5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA4C60  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l
/* 80CA4C64  C3 BF 00 4C */	lfs f29, 0x4c(r31)
/* 80CA4C68  C3 DF 00 40 */	lfs f30, 0x40(r31)
/* 80CA4C6C  CB FF 00 50 */	lfd f31, 0x50(r31)
/* 80CA4C70  3F 40 43 30 */	lis r26, 0x4330
/* 80CA4C74  48 00 00 B8 */	b lbl_80CA4D2C
lbl_80CA4C78:
/* 80CA4C78  3A FB 07 AC */	addi r23, r27, 0x7ac
/* 80CA4C7C  7E FE BA 14 */	add r23, r30, r23
/* 80CA4C80  7E E3 BB 78 */	mr r3, r23
/* 80CA4C84  38 80 00 C8 */	li r4, 0xc8
/* 80CA4C88  38 A0 00 FF */	li r5, 0xff
/* 80CA4C8C  7F C6 F3 78 */	mr r6, r30
/* 80CA4C90  4B 3D EB D0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CA4C94  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CA4C98  4B 36 80 CC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CA4C9C  7F 23 CB 78 */	mr r3, r25
/* 80CA4CA0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80CA4CA4  4B 36 77 90 */	b mDoMtx_YrotM__FPA4_fs
/* 80CA4CA8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80CA4CAC  6E A0 80 00 */	xoris r0, r21, 0x8000
/* 80CA4CB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA4CB4  93 41 00 08 */	stw r26, 8(r1)
/* 80CA4CB8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CA4CBC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80CA4CC0  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80CA4CC4  EC 5D 00 2A */	fadds f2, f29, f0
/* 80CA4CC8  FC 60 08 90 */	fmr f3, f1
/* 80CA4CCC  4B 36 80 D0 */	b transM__14mDoMtx_stack_cFfff
/* 80CA4CD0  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 80CA4CD4  3B 1C 05 A0 */	addi r24, r28, 0x5a0
/* 80CA4CD8  7F 1E C2 14 */	add r24, r30, r24
/* 80CA4CDC  D0 18 00 00 */	stfs f0, 0(r24)
/* 80CA4CE0  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 80CA4CE4  D0 18 00 04 */	stfs f0, 4(r24)
/* 80CA4CE8  C0 19 00 2C */	lfs f0, 0x2c(r25)
/* 80CA4CEC  D0 18 00 08 */	stfs f0, 8(r24)
/* 80CA4CF0  7E DE EA 14 */	add r22, r30, r29
/* 80CA4CF4  38 76 09 8C */	addi r3, r22, 0x98c
/* 80CA4CF8  38 9F 00 00 */	addi r4, r31, 0
/* 80CA4CFC  4B 3D FD 38 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80CA4D00  92 F6 09 D0 */	stw r23, 0x9d0(r22)
/* 80CA4D04  38 76 0A B0 */	addi r3, r22, 0xab0
/* 80CA4D08  7F 04 C3 78 */	mr r4, r24
/* 80CA4D0C  4B 5C A9 3C */	b SetC__8cM3dGSphFRC4cXyz
/* 80CA4D10  80 16 09 B8 */	lwz r0, 0x9b8(r22)
/* 80CA4D14  60 00 04 00 */	ori r0, r0, 0x400
/* 80CA4D18  90 16 09 B8 */	stw r0, 0x9b8(r22)
/* 80CA4D1C  3A B5 00 01 */	addi r21, r21, 1
/* 80CA4D20  3B BD 01 38 */	addi r29, r29, 0x138
/* 80CA4D24  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80CA4D28  3B 7B 00 3C */	addi r27, r27, 0x3c
lbl_80CA4D2C:
/* 80CA4D2C  80 1E 06 E0 */	lwz r0, 0x6e0(r30)
/* 80CA4D30  7C 15 00 00 */	cmpw r21, r0
/* 80CA4D34  41 80 FF 44 */	blt lbl_80CA4C78
/* 80CA4D38  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80CA4D3C  3C 80 80 CA */	lis r4, ccCylSrc@ha
/* 80CA4D40  38 84 65 88 */	addi r4, r4, ccCylSrc@l
/* 80CA4D44  4B 3D FB 70 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CA4D48  38 1E 07 AC */	addi r0, r30, 0x7ac
/* 80CA4D4C  90 1E 13 90 */	stw r0, 0x1390(r30)
/* 80CA4D50  38 7E 14 70 */	addi r3, r30, 0x1470
/* 80CA4D54  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CA4D58  4B 5C A4 84 */	b SetC__8cM3dGCylFRC4cXyz
/* 80CA4D5C  80 1E 13 78 */	lwz r0, 0x1378(r30)
/* 80CA4D60  60 00 04 00 */	ori r0, r0, 0x400
/* 80CA4D64  90 1E 13 78 */	stw r0, 0x1378(r30)
/* 80CA4D68  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80CA4D6C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80CA4D70  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80CA4D74  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80CA4D78  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80CA4D7C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80CA4D80  39 61 00 40 */	addi r11, r1, 0x40
/* 80CA4D84  4B 6B D4 84 */	b _restgpr_21
/* 80CA4D88  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CA4D8C  7C 08 03 A6 */	mtlr r0
/* 80CA4D90  38 21 00 70 */	addi r1, r1, 0x70
/* 80CA4D94  4E 80 00 20 */	blr 
