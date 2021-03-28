lbl_80268F34:
/* 80268F34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80268F38  7C 08 02 A6 */	mflr r0
/* 80268F3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80268F40  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80268F44  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80268F48  39 61 00 20 */	addi r11, r1, 0x20
/* 80268F4C  48 0F 92 89 */	bl _savegpr_27
/* 80268F50  7C 7B 1B 78 */	mr r27, r3
/* 80268F54  7C 9C 23 78 */	mr r28, r4
/* 80268F58  7C BD 2B 78 */	mr r29, r5
/* 80268F5C  7C DE 33 78 */	mr r30, r6
/* 80268F60  7C FF 3B 78 */	mr r31, r7
/* 80268F64  7F 83 E3 78 */	mr r3, r28
/* 80268F68  7F 64 DB 78 */	mr r4, r27
/* 80268F6C  48 0D E2 29 */	bl PSVECDotProduct
/* 80268F70  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80268F74  EF E0 08 2A */	fadds f31, f0, f1
/* 80268F78  7F 83 E3 78 */	mr r3, r28
/* 80268F7C  38 9B 00 0C */	addi r4, r27, 0xc
/* 80268F80  48 0D E2 15 */	bl PSVECDotProduct
/* 80268F84  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80268F88  EC 40 08 2A */	fadds f2, f0, f1
/* 80268F8C  EC 3F 00 B2 */	fmuls f1, f31, f2
/* 80268F90  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 80268F94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268F98  40 81 00 24 */	ble lbl_80268FBC
/* 80268F9C  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80268FA0  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80268FA4  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 80268FA8  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80268FAC  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 80268FB0  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80268FB4  38 60 00 00 */	li r3, 0
/* 80268FB8  48 00 00 78 */	b lbl_80269030
lbl_80268FBC:
/* 80268FBC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80268FC0  4C 41 13 82 */	cror 2, 1, 2
/* 80268FC4  40 82 00 30 */	bne lbl_80268FF4
/* 80268FC8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80268FCC  4C 40 13 82 */	cror 2, 0, 2
/* 80268FD0  40 82 00 24 */	bne lbl_80268FF4
/* 80268FD4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80268FD8  41 82 00 3C */	beq lbl_80269014
/* 80268FDC  FC 20 F8 90 */	fmr f1, f31
/* 80268FE0  7F 63 DB 78 */	mr r3, r27
/* 80268FE4  38 9B 00 0C */	addi r4, r27, 0xc
/* 80268FE8  7F A5 EB 78 */	mr r5, r29
/* 80268FEC  4B FF FE E9 */	bl cM3d_CrossInfLineVsInfPlane_proc__FffPC3VecPC3VecP3Vec
/* 80268FF0  48 00 00 40 */	b lbl_80269030
lbl_80268FF4:
/* 80268FF4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80268FF8  41 82 00 1C */	beq lbl_80269014
/* 80268FFC  FC 20 F8 90 */	fmr f1, f31
/* 80269000  7F 63 DB 78 */	mr r3, r27
/* 80269004  38 9B 00 0C */	addi r4, r27, 0xc
/* 80269008  7F A5 EB 78 */	mr r5, r29
/* 8026900C  4B FF FE C9 */	bl cM3d_CrossInfLineVsInfPlane_proc__FffPC3VecPC3VecP3Vec
/* 80269010  48 00 00 20 */	b lbl_80269030
lbl_80269014:
/* 80269014  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80269018  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8026901C  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 80269020  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80269024  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 80269028  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8026902C  38 60 00 00 */	li r3, 0
lbl_80269030:
/* 80269030  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80269034  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80269038  39 61 00 20 */	addi r11, r1, 0x20
/* 8026903C  48 0F 91 E5 */	bl _restgpr_27
/* 80269040  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80269044  7C 08 03 A6 */	mtlr r0
/* 80269048  38 21 00 30 */	addi r1, r1, 0x30
/* 8026904C  4E 80 00 20 */	blr 
