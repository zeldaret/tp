lbl_8026B0A4:
/* 8026B0A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026B0A8  7C 08 02 A6 */	mflr r0
/* 8026B0AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026B0B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026B0B4  93 C1 00 08 */	stw r30, 8(r1)
/* 8026B0B8  7C 9E 23 78 */	mr r30, r4
/* 8026B0BC  7C BF 2B 78 */	mr r31, r5
/* 8026B0C0  4B FF DE 75 */	bl cM3d_Cross_LinPla__FPC8cM3dGLinPC8cM3dGPlaP3Vecbb
/* 8026B0C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026B0C8  40 82 00 0C */	bne lbl_8026B0D4
/* 8026B0CC  38 60 00 00 */	li r3, 0
/* 8026B0D0  48 00 00 94 */	b lbl_8026B164
lbl_8026B0D4:
/* 8026B0D4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8026B0D8  FC 00 02 10 */	fabs f0, f0
/* 8026B0DC  FC 20 00 18 */	frsp f1, f0
/* 8026B0E0  C0 02 B7 B8 */	lfs f0, lit_3497(r2)
/* 8026B0E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B0E8  41 80 00 18 */	blt lbl_8026B100
/* 8026B0EC  7F C3 F3 78 */	mr r3, r30
/* 8026B0F0  7F E4 FB 78 */	mr r4, r31
/* 8026B0F4  4B FF F0 6D */	bl cM3d_CrossX_LinTri_proc__FPC8cM3dGTriPC3Vec
/* 8026B0F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026B0FC  41 82 00 64 */	beq lbl_8026B160
lbl_8026B100:
/* 8026B100  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8026B104  FC 00 02 10 */	fabs f0, f0
/* 8026B108  FC 20 00 18 */	frsp f1, f0
/* 8026B10C  C0 02 B7 B8 */	lfs f0, lit_3497(r2)
/* 8026B110  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B114  41 80 00 18 */	blt lbl_8026B12C
/* 8026B118  7F C3 F3 78 */	mr r3, r30
/* 8026B11C  7F E4 FB 78 */	mr r4, r31
/* 8026B120  4B FF F3 69 */	bl cM3d_CrossY_LinTri_proc__FPC8cM3dGTriPC3Vec
/* 8026B124  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026B128  41 82 00 38 */	beq lbl_8026B160
lbl_8026B12C:
/* 8026B12C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8026B130  FC 00 02 10 */	fabs f0, f0
/* 8026B134  FC 20 00 18 */	frsp f1, f0
/* 8026B138  C0 02 B7 B8 */	lfs f0, lit_3497(r2)
/* 8026B13C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B140  41 80 00 18 */	blt lbl_8026B158
/* 8026B144  7F C3 F3 78 */	mr r3, r30
/* 8026B148  7F E4 FB 78 */	mr r4, r31
/* 8026B14C  4B FF FD D5 */	bl cM3d_CrossZ_LinTri_proc__FPC8cM3dGTriPC3Vec
/* 8026B150  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026B154  41 82 00 0C */	beq lbl_8026B160
lbl_8026B158:
/* 8026B158  38 60 00 01 */	li r3, 1
/* 8026B15C  48 00 00 08 */	b lbl_8026B164
lbl_8026B160:
/* 8026B160  38 60 00 00 */	li r3, 0
lbl_8026B164:
/* 8026B164  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026B168  83 C1 00 08 */	lwz r30, 8(r1)
/* 8026B16C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026B170  7C 08 03 A6 */	mtlr r0
/* 8026B174  38 21 00 10 */	addi r1, r1, 0x10
/* 8026B178  4E 80 00 20 */	blr 
