lbl_8026DE2C:
/* 8026DE2C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8026DE30  7C 08 02 A6 */	mflr r0
/* 8026DE34  90 01 00 64 */	stw r0, 0x64(r1)
/* 8026DE38  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8026DE3C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8026DE40  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8026DE44  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8026DE48  39 61 00 40 */	addi r11, r1, 0x40
/* 8026DE4C  48 0F 43 91 */	bl _savegpr_29
/* 8026DE50  7C 7D 1B 78 */	mr r29, r3
/* 8026DE54  7C 9E 23 78 */	mr r30, r4
/* 8026DE58  7C BF 2B 78 */	mr r31, r5
/* 8026DE5C  38 9E 00 14 */	addi r4, r30, 0x14
/* 8026DE60  48 0D 93 35 */	bl PSVECDotProduct
/* 8026DE64  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026DE68  EF E0 08 2A */	fadds f31, f0, f1
/* 8026DE6C  7F A3 EB 78 */	mr r3, r29
/* 8026DE70  38 9E 00 20 */	addi r4, r30, 0x20
/* 8026DE74  48 0D 93 21 */	bl PSVECDotProduct
/* 8026DE78  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026DE7C  EF C0 08 2A */	fadds f30, f0, f1
/* 8026DE80  7F A3 EB 78 */	mr r3, r29
/* 8026DE84  38 9E 00 2C */	addi r4, r30, 0x2c
/* 8026DE88  48 0D 93 0D */	bl PSVECDotProduct
/* 8026DE8C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026DE90  EC 20 08 2A */	fadds f1, f0, f1
/* 8026DE94  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026DE98  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026DE9C  40 81 00 14 */	ble lbl_8026DEB0
/* 8026DEA0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8026DEA4  40 81 00 0C */	ble lbl_8026DEB0
/* 8026DEA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026DEAC  41 81 00 20 */	bgt lbl_8026DECC
lbl_8026DEB0:
/* 8026DEB0  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026DEB4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026DEB8  40 80 00 1C */	bge lbl_8026DED4
/* 8026DEBC  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8026DEC0  40 80 00 14 */	bge lbl_8026DED4
/* 8026DEC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026DEC8  40 80 00 0C */	bge lbl_8026DED4
lbl_8026DECC:
/* 8026DECC  38 60 00 00 */	li r3, 0
/* 8026DED0  48 00 02 34 */	b lbl_8026E104
lbl_8026DED4:
/* 8026DED4  7F C3 F3 78 */	mr r3, r30
/* 8026DED8  38 9D 00 14 */	addi r4, r29, 0x14
/* 8026DEDC  48 0D 92 B9 */	bl PSVECDotProduct
/* 8026DEE0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8026DEE4  EF C0 08 2A */	fadds f30, f0, f1
/* 8026DEE8  7F C3 F3 78 */	mr r3, r30
/* 8026DEEC  38 9D 00 20 */	addi r4, r29, 0x20
/* 8026DEF0  48 0D 92 A5 */	bl PSVECDotProduct
/* 8026DEF4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8026DEF8  EF E0 08 2A */	fadds f31, f0, f1
/* 8026DEFC  7F C3 F3 78 */	mr r3, r30
/* 8026DF00  38 9D 00 2C */	addi r4, r29, 0x2c
/* 8026DF04  48 0D 92 91 */	bl PSVECDotProduct
/* 8026DF08  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8026DF0C  EC 20 08 2A */	fadds f1, f0, f1
/* 8026DF10  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026DF14  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8026DF18  40 81 00 14 */	ble lbl_8026DF2C
/* 8026DF1C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026DF20  40 81 00 0C */	ble lbl_8026DF2C
/* 8026DF24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026DF28  41 81 00 20 */	bgt lbl_8026DF48
lbl_8026DF2C:
/* 8026DF2C  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026DF30  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8026DF34  40 80 00 1C */	bge lbl_8026DF50
/* 8026DF38  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026DF3C  40 80 00 14 */	bge lbl_8026DF50
/* 8026DF40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026DF44  40 80 00 0C */	bge lbl_8026DF50
lbl_8026DF48:
/* 8026DF48  38 60 00 00 */	li r3, 0
/* 8026DF4C  48 00 01 B8 */	b lbl_8026E104
lbl_8026DF50:
/* 8026DF50  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026DF54  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026DF58  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026DF5C  38 61 00 08 */	addi r3, r1, 8
/* 8026DF60  38 9E 00 14 */	addi r4, r30, 0x14
/* 8026DF64  38 BE 00 20 */	addi r5, r30, 0x20
/* 8026DF68  48 00 13 B5 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026DF6C  38 61 00 08 */	addi r3, r1, 8
/* 8026DF70  7F A4 EB 78 */	mr r4, r29
/* 8026DF74  7F E5 FB 78 */	mr r5, r31
/* 8026DF78  38 C0 00 00 */	li r6, 0
/* 8026DF7C  38 E0 00 00 */	li r7, 0
/* 8026DF80  4B FF D1 25 */	bl cM3d_Cross_LinTri__FPC8cM3dGLinPC8cM3dGTriP3Vecbb
/* 8026DF84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026DF88  41 82 00 18 */	beq lbl_8026DFA0
/* 8026DF8C  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026DF90  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026DF94  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026DF98  38 60 00 01 */	li r3, 1
/* 8026DF9C  48 00 01 68 */	b lbl_8026E104
lbl_8026DFA0:
/* 8026DFA0  38 61 00 08 */	addi r3, r1, 8
/* 8026DFA4  38 9E 00 20 */	addi r4, r30, 0x20
/* 8026DFA8  38 BE 00 2C */	addi r5, r30, 0x2c
/* 8026DFAC  48 00 13 71 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026DFB0  38 61 00 08 */	addi r3, r1, 8
/* 8026DFB4  7F A4 EB 78 */	mr r4, r29
/* 8026DFB8  7F E5 FB 78 */	mr r5, r31
/* 8026DFBC  38 C0 00 00 */	li r6, 0
/* 8026DFC0  38 E0 00 00 */	li r7, 0
/* 8026DFC4  4B FF D0 E1 */	bl cM3d_Cross_LinTri__FPC8cM3dGLinPC8cM3dGTriP3Vecbb
/* 8026DFC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026DFCC  41 82 00 18 */	beq lbl_8026DFE4
/* 8026DFD0  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026DFD4  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026DFD8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026DFDC  38 60 00 01 */	li r3, 1
/* 8026DFE0  48 00 01 24 */	b lbl_8026E104
lbl_8026DFE4:
/* 8026DFE4  38 61 00 08 */	addi r3, r1, 8
/* 8026DFE8  38 9E 00 14 */	addi r4, r30, 0x14
/* 8026DFEC  38 BE 00 20 */	addi r5, r30, 0x20
/* 8026DFF0  48 00 13 2D */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026DFF4  38 61 00 08 */	addi r3, r1, 8
/* 8026DFF8  7F A4 EB 78 */	mr r4, r29
/* 8026DFFC  7F E5 FB 78 */	mr r5, r31
/* 8026E000  38 C0 00 00 */	li r6, 0
/* 8026E004  38 E0 00 00 */	li r7, 0
/* 8026E008  4B FF D0 9D */	bl cM3d_Cross_LinTri__FPC8cM3dGLinPC8cM3dGTriP3Vecbb
/* 8026E00C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026E010  41 82 00 18 */	beq lbl_8026E028
/* 8026E014  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026E018  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026E01C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026E020  38 60 00 01 */	li r3, 1
/* 8026E024  48 00 00 E0 */	b lbl_8026E104
lbl_8026E028:
/* 8026E028  38 61 00 08 */	addi r3, r1, 8
/* 8026E02C  38 9D 00 14 */	addi r4, r29, 0x14
/* 8026E030  38 BD 00 20 */	addi r5, r29, 0x20
/* 8026E034  48 00 12 E9 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026E038  38 61 00 08 */	addi r3, r1, 8
/* 8026E03C  7F C4 F3 78 */	mr r4, r30
/* 8026E040  7F E5 FB 78 */	mr r5, r31
/* 8026E044  38 C0 00 00 */	li r6, 0
/* 8026E048  38 E0 00 00 */	li r7, 0
/* 8026E04C  4B FF D0 59 */	bl cM3d_Cross_LinTri__FPC8cM3dGLinPC8cM3dGTriP3Vecbb
/* 8026E050  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026E054  41 82 00 18 */	beq lbl_8026E06C
/* 8026E058  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026E05C  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026E060  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026E064  38 60 00 01 */	li r3, 1
/* 8026E068  48 00 00 9C */	b lbl_8026E104
lbl_8026E06C:
/* 8026E06C  38 61 00 08 */	addi r3, r1, 8
/* 8026E070  38 9D 00 20 */	addi r4, r29, 0x20
/* 8026E074  38 BD 00 2C */	addi r5, r29, 0x2c
/* 8026E078  48 00 12 A5 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026E07C  38 61 00 08 */	addi r3, r1, 8
/* 8026E080  7F C4 F3 78 */	mr r4, r30
/* 8026E084  7F E5 FB 78 */	mr r5, r31
/* 8026E088  38 C0 00 00 */	li r6, 0
/* 8026E08C  38 E0 00 00 */	li r7, 0
/* 8026E090  4B FF D0 15 */	bl cM3d_Cross_LinTri__FPC8cM3dGLinPC8cM3dGTriP3Vecbb
/* 8026E094  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026E098  41 82 00 18 */	beq lbl_8026E0B0
/* 8026E09C  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026E0A0  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026E0A4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026E0A8  38 60 00 01 */	li r3, 1
/* 8026E0AC  48 00 00 58 */	b lbl_8026E104
lbl_8026E0B0:
/* 8026E0B0  38 61 00 08 */	addi r3, r1, 8
/* 8026E0B4  38 9D 00 14 */	addi r4, r29, 0x14
/* 8026E0B8  38 BD 00 20 */	addi r5, r29, 0x20
/* 8026E0BC  48 00 12 61 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026E0C0  38 61 00 08 */	addi r3, r1, 8
/* 8026E0C4  7F C4 F3 78 */	mr r4, r30
/* 8026E0C8  7F E5 FB 78 */	mr r5, r31
/* 8026E0CC  38 C0 00 00 */	li r6, 0
/* 8026E0D0  38 E0 00 00 */	li r7, 0
/* 8026E0D4  4B FF CF D1 */	bl cM3d_Cross_LinTri__FPC8cM3dGLinPC8cM3dGTriP3Vecbb
/* 8026E0D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026E0DC  41 82 00 18 */	beq lbl_8026E0F4
/* 8026E0E0  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026E0E4  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026E0E8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026E0EC  38 60 00 01 */	li r3, 1
/* 8026E0F0  48 00 00 14 */	b lbl_8026E104
lbl_8026E0F4:
/* 8026E0F4  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026E0F8  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026E0FC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026E100  38 60 00 00 */	li r3, 0
lbl_8026E104:
/* 8026E104  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8026E108  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8026E10C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8026E110  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8026E114  39 61 00 40 */	addi r11, r1, 0x40
/* 8026E118  48 0F 41 11 */	bl _restgpr_29
/* 8026E11C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8026E120  7C 08 03 A6 */	mtlr r0
/* 8026E124  38 21 00 60 */	addi r1, r1, 0x60
/* 8026E128  4E 80 00 20 */	blr 
