lbl_8026B17C:
/* 8026B17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026B180  7C 08 02 A6 */	mflr r0
/* 8026B184  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026B188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026B18C  93 C1 00 08 */	stw r30, 8(r1)
/* 8026B190  7C 7E 1B 78 */	mr r30, r3
/* 8026B194  7C 9F 23 78 */	mr r31, r4
/* 8026B198  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026B19C  FC 00 02 10 */	fabs f0, f0
/* 8026B1A0  FC 20 00 18 */	frsp f1, f0
/* 8026B1A4  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026B1A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B1AC  41 80 00 10 */	blt lbl_8026B1BC
/* 8026B1B0  4B FF EE 0D */	bl cM3d_CrossX_Tri__FPC8cM3dGTriPC3Vec
/* 8026B1B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026B1B8  41 82 00 64 */	beq lbl_8026B21C
lbl_8026B1BC:
/* 8026B1BC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8026B1C0  FC 00 02 10 */	fabs f0, f0
/* 8026B1C4  FC 20 00 18 */	frsp f1, f0
/* 8026B1C8  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026B1CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B1D0  41 80 00 18 */	blt lbl_8026B1E8
/* 8026B1D4  7F C3 F3 78 */	mr r3, r30
/* 8026B1D8  7F E4 FB 78 */	mr r4, r31
/* 8026B1DC  4B FF F1 09 */	bl cM3d_CrossY_Tri__FPC8cM3dGTriPC3Vec
/* 8026B1E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026B1E4  41 82 00 38 */	beq lbl_8026B21C
lbl_8026B1E8:
/* 8026B1E8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8026B1EC  FC 00 02 10 */	fabs f0, f0
/* 8026B1F0  FC 20 00 18 */	frsp f1, f0
/* 8026B1F4  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026B1F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B1FC  41 80 00 18 */	blt lbl_8026B214
/* 8026B200  7F C3 F3 78 */	mr r3, r30
/* 8026B204  7F E4 FB 78 */	mr r4, r31
/* 8026B208  4B FF FB 75 */	bl cM3d_CrossZ_Tri__FPC8cM3dGTriPC3Vec
/* 8026B20C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026B210  41 82 00 0C */	beq lbl_8026B21C
lbl_8026B214:
/* 8026B214  38 60 00 01 */	li r3, 1
/* 8026B218  48 00 00 08 */	b lbl_8026B220
lbl_8026B21C:
/* 8026B21C  38 60 00 00 */	li r3, 0
lbl_8026B220:
/* 8026B220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026B224  83 C1 00 08 */	lwz r30, 8(r1)
/* 8026B228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026B22C  7C 08 03 A6 */	mtlr r0
/* 8026B230  38 21 00 10 */	addi r1, r1, 0x10
/* 8026B234  4E 80 00 20 */	blr 
