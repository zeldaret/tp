lbl_8026AAE8:
/* 8026AAE8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8026AAEC  7C 08 02 A6 */	mflr r0
/* 8026AAF0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8026AAF4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8026AAF8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8026AAFC  39 61 00 30 */	addi r11, r1, 0x30
/* 8026AB00  48 0F 76 D9 */	bl _savegpr_28
/* 8026AB04  7C 7C 1B 78 */	mr r28, r3
/* 8026AB08  7C 9D 23 78 */	mr r29, r4
/* 8026AB0C  7C BE 2B 78 */	mr r30, r5
/* 8026AB10  7C DF 33 78 */	mr r31, r6
/* 8026AB14  C0 03 00 04 */	lfs f0, 4(r3)
/* 8026AB18  FC 00 02 10 */	fabs f0, f0
/* 8026AB1C  FC 20 00 18 */	frsp f1, f0
/* 8026AB20  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026AB24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026AB28  40 80 00 0C */	bge lbl_8026AB34
/* 8026AB2C  38 60 00 00 */	li r3, 0
/* 8026AB30  48 00 00 88 */	b lbl_8026ABB8
lbl_8026AB34:
/* 8026AB34  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8026AB38  D0 01 00 08 */	stfs f0, 8(r1)
/* 8026AB3C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8026AB40  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8026AB44  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8026AB48  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8026AB4C  38 81 00 08 */	addi r4, r1, 8
/* 8026AB50  48 0D C6 45 */	bl PSVECDotProduct
/* 8026AB54  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8026AB58  EF E0 08 2A */	fadds f31, f0, f1
/* 8026AB5C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8026AB60  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8026AB64  7F 83 E3 78 */	mr r3, r28
/* 8026AB68  38 81 00 08 */	addi r4, r1, 8
/* 8026AB6C  48 0D C6 29 */	bl PSVECDotProduct
/* 8026AB70  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8026AB74  EC 20 08 2A */	fadds f1, f0, f1
/* 8026AB78  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026AB7C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026AB80  40 81 00 0C */	ble lbl_8026AB8C
/* 8026AB84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026AB88  41 81 00 18 */	bgt lbl_8026ABA0
lbl_8026AB8C:
/* 8026AB8C  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026AB90  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026AB94  40 80 00 14 */	bge lbl_8026ABA8
/* 8026AB98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026AB9C  40 80 00 0C */	bge lbl_8026ABA8
lbl_8026ABA0:
/* 8026ABA0  38 60 00 00 */	li r3, 0
/* 8026ABA4  48 00 00 14 */	b lbl_8026ABB8
lbl_8026ABA8:
/* 8026ABA8  7F 83 E3 78 */	mr r3, r28
/* 8026ABAC  7F A4 EB 78 */	mr r4, r29
/* 8026ABB0  7F E5 FB 78 */	mr r5, r31
/* 8026ABB4  4B FF FD 0D */	bl cM3d_CrossY_Tri__FPC8cM3dGTriPC3VecPf
lbl_8026ABB8:
/* 8026ABB8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8026ABBC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8026ABC0  39 61 00 30 */	addi r11, r1, 0x30
/* 8026ABC4  48 0F 76 61 */	bl _restgpr_28
/* 8026ABC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8026ABCC  7C 08 03 A6 */	mtlr r0
/* 8026ABD0  38 21 00 40 */	addi r1, r1, 0x40
/* 8026ABD4  4E 80 00 20 */	blr 
