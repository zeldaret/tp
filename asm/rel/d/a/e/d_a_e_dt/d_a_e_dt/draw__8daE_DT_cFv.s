lbl_806ADD7C:
/* 806ADD7C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 806ADD80  7C 08 02 A6 */	mflr r0
/* 806ADD84  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806ADD88  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 806ADD8C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 806ADD90  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 806ADD94  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 806ADD98  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 806ADD9C  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 806ADDA0  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 806ADDA4  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 806ADDA8  39 61 00 80 */	addi r11, r1, 0x80
/* 806ADDAC  4B CB 44 24 */	b _savegpr_26
/* 806ADDB0  7C 7C 1B 78 */	mr r28, r3
/* 806ADDB4  3C 60 80 6B */	lis r3, lit_3792@ha
/* 806ADDB8  3B E3 5C D4 */	addi r31, r3, lit_3792@l
/* 806ADDBC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806ADDC0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806ADDC4  38 80 00 00 */	li r4, 0
/* 806ADDC8  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 806ADDCC  38 DC 01 0C */	addi r6, r28, 0x10c
/* 806ADDD0  4B AF 59 F4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806ADDD4  88 1C 07 78 */	lbz r0, 0x778(r28)
/* 806ADDD8  28 00 00 00 */	cmplwi r0, 0
/* 806ADDDC  41 82 04 D0 */	beq lbl_806AE2AC
/* 806ADDE0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806ADDE4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806ADDE8  80 9C 05 C8 */	lwz r4, 0x5c8(r28)
/* 806ADDEC  80 84 00 04 */	lwz r4, 4(r4)
/* 806ADDF0  38 BC 01 0C */	addi r5, r28, 0x10c
/* 806ADDF4  4B AF 6F AC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806ADDF8  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 806ADDFC  83 C3 00 04 */	lwz r30, 4(r3)
/* 806ADE00  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 806ADE04  83 A3 00 00 */	lwz r29, 0(r3)
/* 806ADE08  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 806ADE0C  38 80 00 01 */	li r4, 1
/* 806ADE10  81 83 00 00 */	lwz r12, 0(r3)
/* 806ADE14  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806ADE18  7D 89 03 A6 */	mtctr r12
/* 806ADE1C  4E 80 04 21 */	bctrl 
/* 806ADE20  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 806ADE24  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806ADE28  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 806ADE2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 806ADE30  EC 02 00 28 */	fsubs f0, f2, f0
/* 806ADE34  FC 00 00 1E */	fctiwz f0, f0
/* 806ADE38  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806ADE3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806ADE40  B0 03 00 00 */	sth r0, 0(r3)
/* 806ADE44  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 806ADE48  38 80 00 01 */	li r4, 1
/* 806ADE4C  81 83 00 00 */	lwz r12, 0(r3)
/* 806ADE50  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806ADE54  7D 89 03 A6 */	mtctr r12
/* 806ADE58  4E 80 04 21 */	bctrl 
/* 806ADE5C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806ADE60  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 806ADE64  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 806ADE68  EC 01 00 32 */	fmuls f0, f1, f0
/* 806ADE6C  EC 02 00 28 */	fsubs f0, f2, f0
/* 806ADE70  FC 00 00 1E */	fctiwz f0, f0
/* 806ADE74  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 806ADE78  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 806ADE7C  B0 03 00 02 */	sth r0, 2(r3)
/* 806ADE80  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 806ADE84  38 80 00 02 */	li r4, 2
/* 806ADE88  81 83 00 00 */	lwz r12, 0(r3)
/* 806ADE8C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806ADE90  7D 89 03 A6 */	mtctr r12
/* 806ADE94  4E 80 04 21 */	bctrl 
/* 806ADE98  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806ADE9C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 806ADEA0  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 806ADEA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 806ADEA8  EC 02 00 28 */	fsubs f0, f2, f0
/* 806ADEAC  FC 00 00 1E */	fctiwz f0, f0
/* 806ADEB0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806ADEB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806ADEB8  B0 03 00 00 */	sth r0, 0(r3)
/* 806ADEBC  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 806ADEC0  38 80 00 02 */	li r4, 2
/* 806ADEC4  81 83 00 00 */	lwz r12, 0(r3)
/* 806ADEC8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806ADECC  7D 89 03 A6 */	mtctr r12
/* 806ADED0  4E 80 04 21 */	bctrl 
/* 806ADED4  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 806ADED8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806ADEDC  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 806ADEE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 806ADEE4  EC 02 00 28 */	fsubs f0, f2, f0
/* 806ADEE8  FC 00 00 1E */	fctiwz f0, f0
/* 806ADEEC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806ADEF0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806ADEF4  B0 03 00 02 */	sth r0, 2(r3)
/* 806ADEF8  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 806ADEFC  38 80 00 03 */	li r4, 3
/* 806ADF00  81 83 00 00 */	lwz r12, 0(r3)
/* 806ADF04  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806ADF08  7D 89 03 A6 */	mtctr r12
/* 806ADF0C  4E 80 04 21 */	bctrl 
/* 806ADF10  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 806ADF14  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 806ADF18  EC 01 00 32 */	fmuls f0, f1, f0
/* 806ADF1C  FC 00 00 1E */	fctiwz f0, f0
/* 806ADF20  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806ADF24  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806ADF28  98 03 00 03 */	stb r0, 3(r3)
/* 806ADF2C  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 806ADF30  83 A3 00 04 */	lwz r29, 4(r3)
/* 806ADF34  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 806ADF38  38 80 00 01 */	li r4, 1
/* 806ADF3C  81 83 00 00 */	lwz r12, 0(r3)
/* 806ADF40  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806ADF44  7D 89 03 A6 */	mtctr r12
/* 806ADF48  4E 80 04 21 */	bctrl 
/* 806ADF4C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 806ADF50  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806ADF54  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 806ADF58  EC 01 00 32 */	fmuls f0, f1, f0
/* 806ADF5C  EC 02 00 28 */	fsubs f0, f2, f0
/* 806ADF60  FC 00 00 1E */	fctiwz f0, f0
/* 806ADF64  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806ADF68  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806ADF6C  B0 03 00 00 */	sth r0, 0(r3)
/* 806ADF70  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 806ADF74  38 80 00 01 */	li r4, 1
/* 806ADF78  81 83 00 00 */	lwz r12, 0(r3)
/* 806ADF7C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806ADF80  7D 89 03 A6 */	mtctr r12
/* 806ADF84  4E 80 04 21 */	bctrl 
/* 806ADF88  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806ADF8C  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 806ADF90  EC 01 00 32 */	fmuls f0, f1, f0
/* 806ADF94  EC 01 00 28 */	fsubs f0, f1, f0
/* 806ADF98  FC 00 00 1E */	fctiwz f0, f0
/* 806ADF9C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806ADFA0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806ADFA4  B0 03 00 02 */	sth r0, 2(r3)
/* 806ADFA8  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 806ADFAC  38 80 00 02 */	li r4, 2
/* 806ADFB0  81 83 00 00 */	lwz r12, 0(r3)
/* 806ADFB4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806ADFB8  7D 89 03 A6 */	mtctr r12
/* 806ADFBC  4E 80 04 21 */	bctrl 
/* 806ADFC0  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 806ADFC4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806ADFC8  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 806ADFCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 806ADFD0  EC 02 00 28 */	fsubs f0, f2, f0
/* 806ADFD4  FC 00 00 1E */	fctiwz f0, f0
/* 806ADFD8  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 806ADFDC  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 806ADFE0  B0 03 00 00 */	sth r0, 0(r3)
/* 806ADFE4  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 806ADFE8  38 80 00 02 */	li r4, 2
/* 806ADFEC  81 83 00 00 */	lwz r12, 0(r3)
/* 806ADFF0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806ADFF4  7D 89 03 A6 */	mtctr r12
/* 806ADFF8  4E 80 04 21 */	bctrl 
/* 806ADFFC  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 806AE000  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806AE004  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 806AE008  EC 01 00 32 */	fmuls f0, f1, f0
/* 806AE00C  EC 02 00 28 */	fsubs f0, f2, f0
/* 806AE010  FC 00 00 1E */	fctiwz f0, f0
/* 806AE014  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 806AE018  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806AE01C  B0 03 00 02 */	sth r0, 2(r3)
/* 806AE020  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806AE024  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 806AE028  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806AE02C  40 82 00 88 */	bne lbl_806AE0B4
/* 806AE030  38 00 00 01 */	li r0, 1
/* 806AE034  90 1D 00 10 */	stw r0, 0x10(r29)
/* 806AE038  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 806AE03C  38 80 00 01 */	li r4, 1
/* 806AE040  81 83 00 00 */	lwz r12, 0(r3)
/* 806AE044  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 806AE048  7D 89 03 A6 */	mtctr r12
/* 806AE04C  4E 80 04 21 */	bctrl 
/* 806AE050  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 806AE054  81 83 00 00 */	lwz r12, 0(r3)
/* 806AE058  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 806AE05C  7D 89 03 A6 */	mtctr r12
/* 806AE060  4E 80 04 21 */	bctrl 
/* 806AE064  A0 03 00 00 */	lhz r0, 0(r3)
/* 806AE068  1C E0 00 03 */	mulli r7, r0, 3
/* 806AE06C  3C 80 80 43 */	lis r4, j3dZModeTable@ha
/* 806AE070  38 C4 71 60 */	addi r6, r4, j3dZModeTable@l
/* 806AE074  7C 86 3A 14 */	add r4, r6, r7
/* 806AE078  88 04 00 01 */	lbz r0, 1(r4)
/* 806AE07C  54 05 08 3C */	slwi r5, r0, 1
/* 806AE080  7C 06 38 AE */	lbzx r0, r6, r7
/* 806AE084  54 04 20 36 */	slwi r4, r0, 4
/* 806AE088  38 04 00 01 */	addi r0, r4, 1
/* 806AE08C  7C 05 02 14 */	add r0, r5, r0
/* 806AE090  B0 03 00 00 */	sth r0, 0(r3)
/* 806AE094  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 806AE098  81 83 00 00 */	lwz r12, 0(r3)
/* 806AE09C  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 806AE0A0  7D 89 03 A6 */	mtctr r12
/* 806AE0A4  4E 80 04 21 */	bctrl 
/* 806AE0A8  38 00 00 00 */	li r0, 0
/* 806AE0AC  98 03 00 00 */	stb r0, 0(r3)
/* 806AE0B0  48 00 00 80 */	b lbl_806AE130
lbl_806AE0B4:
/* 806AE0B4  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 806AE0B8  81 83 00 00 */	lwz r12, 0(r3)
/* 806AE0BC  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 806AE0C0  7D 89 03 A6 */	mtctr r12
/* 806AE0C4  4E 80 04 21 */	bctrl 
/* 806AE0C8  A0 03 00 00 */	lhz r0, 0(r3)
/* 806AE0CC  1C C0 00 03 */	mulli r6, r0, 3
/* 806AE0D0  3C 80 80 43 */	lis r4, j3dZModeTable@ha
/* 806AE0D4  38 A4 71 60 */	addi r5, r4, j3dZModeTable@l
/* 806AE0D8  7C 85 32 14 */	add r4, r5, r6
/* 806AE0DC  88 04 00 01 */	lbz r0, 1(r4)
/* 806AE0E0  54 04 08 3C */	slwi r4, r0, 1
/* 806AE0E4  7C 05 30 AE */	lbzx r0, r5, r6
/* 806AE0E8  54 00 20 36 */	slwi r0, r0, 4
/* 806AE0EC  7C 04 02 14 */	add r0, r4, r0
/* 806AE0F0  B0 03 00 00 */	sth r0, 0(r3)
/* 806AE0F4  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 806AE0F8  38 80 00 00 */	li r4, 0
/* 806AE0FC  81 83 00 00 */	lwz r12, 0(r3)
/* 806AE100  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 806AE104  7D 89 03 A6 */	mtctr r12
/* 806AE108  4E 80 04 21 */	bctrl 
/* 806AE10C  38 00 00 04 */	li r0, 4
/* 806AE110  90 1D 00 10 */	stw r0, 0x10(r29)
/* 806AE114  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 806AE118  81 83 00 00 */	lwz r12, 0(r3)
/* 806AE11C  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 806AE120  7D 89 03 A6 */	mtctr r12
/* 806AE124  4E 80 04 21 */	bctrl 
/* 806AE128  38 00 00 01 */	li r0, 1
/* 806AE12C  98 03 00 00 */	stb r0, 0(r3)
lbl_806AE130:
/* 806AE130  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 806AE134  38 80 00 03 */	li r4, 3
/* 806AE138  81 83 00 00 */	lwz r12, 0(r3)
/* 806AE13C  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806AE140  7D 89 03 A6 */	mtctr r12
/* 806AE144  4E 80 04 21 */	bctrl 
/* 806AE148  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 806AE14C  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 806AE150  EC 01 00 32 */	fmuls f0, f1, f0
/* 806AE154  FC 00 00 1E */	fctiwz f0, f0
/* 806AE158  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 806AE15C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806AE160  98 03 00 03 */	stb r0, 3(r3)
/* 806AE164  7F 83 E3 78 */	mr r3, r28
/* 806AE168  7F C4 F3 78 */	mr r4, r30
/* 806AE16C  4B 96 F2 C0 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 806AE170  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 806AE174  4B 95 FB 50 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 806AE178  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806AE17C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806AE180  80 9C 05 CC */	lwz r4, 0x5cc(r28)
/* 806AE184  80 84 00 04 */	lwz r4, 4(r4)
/* 806AE188  38 BC 01 0C */	addi r5, r28, 0x10c
/* 806AE18C  4B AF 6C 14 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806AE190  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 806AE194  83 A3 00 04 */	lwz r29, 4(r3)
/* 806AE198  3B 40 00 00 */	li r26, 0
/* 806AE19C  C3 9F 00 54 */	lfs f28, 0x54(r31)
/* 806AE1A0  C3 BF 00 58 */	lfs f29, 0x58(r31)
/* 806AE1A4  C3 DF 00 5C */	lfs f30, 0x5c(r31)
/* 806AE1A8  C3 FF 00 44 */	lfs f31, 0x44(r31)
/* 806AE1AC  48 00 00 DC */	b lbl_806AE288
lbl_806AE1B0:
/* 806AE1B0  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 806AE1B4  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 806AE1B8  7F C3 00 2E */	lwzx r30, r3, r0
/* 806AE1BC  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 806AE1C0  38 80 00 00 */	li r4, 0
/* 806AE1C4  81 83 00 00 */	lwz r12, 0(r3)
/* 806AE1C8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806AE1CC  7D 89 03 A6 */	mtctr r12
/* 806AE1D0  4E 80 04 21 */	bctrl 
/* 806AE1D4  57 44 13 BA */	rlwinm r4, r26, 2, 0xe, 0x1d
/* 806AE1D8  3B 64 07 1C */	addi r27, r4, 0x71c
/* 806AE1DC  7C 1C DC 2E */	lfsx f0, r28, r27
/* 806AE1E0  EC 1C 00 32 */	fmuls f0, f28, f0
/* 806AE1E4  FC 00 00 1E */	fctiwz f0, f0
/* 806AE1E8  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 806AE1EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806AE1F0  B0 03 00 00 */	sth r0, 0(r3)
/* 806AE1F4  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 806AE1F8  38 80 00 00 */	li r4, 0
/* 806AE1FC  81 83 00 00 */	lwz r12, 0(r3)
/* 806AE200  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806AE204  7D 89 03 A6 */	mtctr r12
/* 806AE208  4E 80 04 21 */	bctrl 
/* 806AE20C  7C 1C DC 2E */	lfsx f0, r28, r27
/* 806AE210  EC 1D 00 32 */	fmuls f0, f29, f0
/* 806AE214  FC 00 00 1E */	fctiwz f0, f0
/* 806AE218  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 806AE21C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 806AE220  B0 03 00 02 */	sth r0, 2(r3)
/* 806AE224  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 806AE228  38 80 00 00 */	li r4, 0
/* 806AE22C  81 83 00 00 */	lwz r12, 0(r3)
/* 806AE230  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806AE234  7D 89 03 A6 */	mtctr r12
/* 806AE238  4E 80 04 21 */	bctrl 
/* 806AE23C  7C 1C DC 2E */	lfsx f0, r28, r27
/* 806AE240  EC 1E 00 32 */	fmuls f0, f30, f0
/* 806AE244  FC 00 00 1E */	fctiwz f0, f0
/* 806AE248  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806AE24C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806AE250  B0 03 00 04 */	sth r0, 4(r3)
/* 806AE254  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 806AE258  38 80 00 03 */	li r4, 3
/* 806AE25C  81 83 00 00 */	lwz r12, 0(r3)
/* 806AE260  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806AE264  7D 89 03 A6 */	mtctr r12
/* 806AE268  4E 80 04 21 */	bctrl 
/* 806AE26C  7C 1C DC 2E */	lfsx f0, r28, r27
/* 806AE270  EC 1F 00 32 */	fmuls f0, f31, f0
/* 806AE274  FC 00 00 1E */	fctiwz f0, f0
/* 806AE278  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806AE27C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806AE280  98 03 00 03 */	stb r0, 3(r3)
/* 806AE284  3B 5A 00 01 */	addi r26, r26, 1
lbl_806AE288:
/* 806AE288  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 806AE28C  A0 1D 00 5C */	lhz r0, 0x5c(r29)
/* 806AE290  7C 03 00 40 */	cmplw r3, r0
/* 806AE294  41 80 FF 1C */	blt lbl_806AE1B0
/* 806AE298  7F 83 E3 78 */	mr r3, r28
/* 806AE29C  7F A4 EB 78 */	mr r4, r29
/* 806AE2A0  4B 96 F1 8C */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 806AE2A4  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 806AE2A8  4B 95 FA 1C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_806AE2AC:
/* 806AE2AC  88 1C 07 79 */	lbz r0, 0x779(r28)
/* 806AE2B0  28 00 00 02 */	cmplwi r0, 2
/* 806AE2B4  40 82 00 0C */	bne lbl_806AE2C0
/* 806AE2B8  38 60 00 01 */	li r3, 1
/* 806AE2BC  48 00 02 78 */	b lbl_806AE534
lbl_806AE2C0:
/* 806AE2C0  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 806AE2C4  83 A3 00 04 */	lwz r29, 4(r3)
/* 806AE2C8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806AE2CC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806AE2D0  80 9D 00 04 */	lwz r4, 4(r29)
/* 806AE2D4  38 BC 01 0C */	addi r5, r28, 0x10c
/* 806AE2D8  4B AF 6A C8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806AE2DC  C0 3C 07 2C */	lfs f1, 0x72c(r28)
/* 806AE2E0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806AE2E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806AE2E8  41 82 00 B4 */	beq lbl_806AE39C
/* 806AE2EC  83 DD 00 04 */	lwz r30, 4(r29)
/* 806AE2F0  3B 40 00 00 */	li r26, 0
/* 806AE2F4  48 00 00 98 */	b lbl_806AE38C
lbl_806AE2F8:
/* 806AE2F8  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 806AE2FC  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 806AE300  7F 63 00 2E */	lwzx r27, r3, r0
/* 806AE304  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806AE308  38 80 00 00 */	li r4, 0
/* 806AE30C  81 83 00 00 */	lwz r12, 0(r3)
/* 806AE310  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806AE314  7D 89 03 A6 */	mtctr r12
/* 806AE318  4E 80 04 21 */	bctrl 
/* 806AE31C  C0 1C 07 2C */	lfs f0, 0x72c(r28)
/* 806AE320  FC 00 00 1E */	fctiwz f0, f0
/* 806AE324  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 806AE328  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806AE32C  B0 03 00 00 */	sth r0, 0(r3)
/* 806AE330  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806AE334  38 80 00 00 */	li r4, 0
/* 806AE338  81 83 00 00 */	lwz r12, 0(r3)
/* 806AE33C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806AE340  7D 89 03 A6 */	mtctr r12
/* 806AE344  4E 80 04 21 */	bctrl 
/* 806AE348  C0 1C 07 2C */	lfs f0, 0x72c(r28)
/* 806AE34C  FC 00 00 1E */	fctiwz f0, f0
/* 806AE350  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 806AE354  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 806AE358  B0 03 00 02 */	sth r0, 2(r3)
/* 806AE35C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806AE360  38 80 00 00 */	li r4, 0
/* 806AE364  81 83 00 00 */	lwz r12, 0(r3)
/* 806AE368  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806AE36C  7D 89 03 A6 */	mtctr r12
/* 806AE370  4E 80 04 21 */	bctrl 
/* 806AE374  C0 1C 07 2C */	lfs f0, 0x72c(r28)
/* 806AE378  FC 00 00 1E */	fctiwz f0, f0
/* 806AE37C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806AE380  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806AE384  B0 03 00 04 */	sth r0, 4(r3)
/* 806AE388  3B 5A 00 01 */	addi r26, r26, 1
lbl_806AE38C:
/* 806AE38C  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 806AE390  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 806AE394  7C 03 00 40 */	cmplw r3, r0
/* 806AE398  41 80 FF 60 */	blt lbl_806AE2F8
lbl_806AE39C:
/* 806AE39C  7F 83 E3 78 */	mr r3, r28
/* 806AE3A0  80 9D 00 04 */	lwz r4, 4(r29)
/* 806AE3A4  4B 96 F0 88 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 806AE3A8  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 806AE3AC  4B 96 2E 14 */	b entryDL__16mDoExt_McaMorfSOFv
/* 806AE3B0  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 806AE3B4  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806AE3B8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806AE3BC  EC 21 00 2A */	fadds f1, f1, f0
/* 806AE3C0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806AE3C4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806AE3C8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806AE3CC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 806AE3D0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806AE3D4  D0 1C 04 44 */	stfs f0, 0x444(r28)
/* 806AE3D8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806AE3DC  D0 1C 04 48 */	stfs f0, 0x448(r28)
/* 806AE3E0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806AE3E4  D0 1C 04 4C */	stfs f0, 0x44c(r28)
/* 806AE3E8  C0 3C 04 48 */	lfs f1, 0x448(r28)
/* 806AE3EC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806AE3F0  EC 01 00 2A */	fadds f0, f1, f0
/* 806AE3F4  D0 1C 04 48 */	stfs f0, 0x448(r28)
/* 806AE3F8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806AE3FC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806AE400  EC 21 00 28 */	fsubs f1, f1, f0
/* 806AE404  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806AE408  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AE40C  40 80 00 08 */	bge lbl_806AE414
/* 806AE410  FC 20 00 90 */	fmr f1, f0
lbl_806AE414:
/* 806AE414  3C 60 80 6B */	lis r3, l_HIO@ha
/* 806AE418  38 63 62 AC */	addi r3, r3, l_HIO@l
/* 806AE41C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806AE420  EC 20 00 72 */	fmuls f1, f0, f1
/* 806AE424  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 806AE428  EC 01 00 24 */	fdivs f0, f1, f0
/* 806AE42C  D0 1C 04 50 */	stfs f0, 0x450(r28)
/* 806AE430  C0 3C 04 50 */	lfs f1, 0x450(r28)
/* 806AE434  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806AE438  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AE43C  4C 41 13 82 */	cror 2, 1, 2
/* 806AE440  40 82 00 08 */	bne lbl_806AE448
/* 806AE444  D0 1C 04 50 */	stfs f0, 0x450(r28)
lbl_806AE448:
/* 806AE448  80 7C 07 10 */	lwz r3, 0x710(r28)
/* 806AE44C  38 80 00 00 */	li r4, 0
/* 806AE450  7F A5 EB 78 */	mr r5, r29
/* 806AE454  38 C1 00 14 */	addi r6, r1, 0x14
/* 806AE458  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 806AE45C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 806AE460  C0 7C 04 D4 */	lfs f3, 0x4d4(r28)
/* 806AE464  C0 9C 08 5C */	lfs f4, 0x85c(r28)
/* 806AE468  38 FC 08 B4 */	addi r7, r28, 0x8b4
/* 806AE46C  39 1C 01 0C */	addi r8, r28, 0x10c
/* 806AE470  39 20 00 00 */	li r9, 0
/* 806AE474  C0 BF 00 28 */	lfs f5, 0x28(r31)
/* 806AE478  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806AE47C  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806AE480  4B 98 04 90 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806AE484  90 7C 07 10 */	stw r3, 0x710(r28)
/* 806AE488  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806AE48C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806AE490  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 806AE494  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806AE498  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806AE49C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806AE4A0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806AE4A4  EC 01 00 2A */	fadds f0, f1, f0
/* 806AE4A8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806AE4AC  88 1C 07 78 */	lbz r0, 0x778(r28)
/* 806AE4B0  28 00 00 00 */	cmplwi r0, 0
/* 806AE4B4  41 82 00 3C */	beq lbl_806AE4F0
/* 806AE4B8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806AE4BC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806AE4C0  38 80 00 10 */	li r4, 0x10
/* 806AE4C4  38 BC 06 AC */	addi r5, r28, 0x6ac
/* 806AE4C8  38 DC 01 0C */	addi r6, r28, 0x10c
/* 806AE4CC  4B AF 52 F8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806AE4D0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806AE4D4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806AE4D8  80 9C 05 C4 */	lwz r4, 0x5c4(r28)
/* 806AE4DC  80 84 00 04 */	lwz r4, 4(r4)
/* 806AE4E0  38 BC 01 0C */	addi r5, r28, 0x10c
/* 806AE4E4  4B AF 68 BC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806AE4E8  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 806AE4EC  4B 95 F7 D8 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_806AE4F0:
/* 806AE4F0  88 1C 07 80 */	lbz r0, 0x780(r28)
/* 806AE4F4  28 00 00 01 */	cmplwi r0, 1
/* 806AE4F8  40 82 00 24 */	bne lbl_806AE51C
/* 806AE4FC  C0 1C 07 7C */	lfs f0, 0x77c(r28)
/* 806AE500  FC 00 00 1E */	fctiwz f0, f0
/* 806AE504  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 806AE508  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806AE50C  3C 60 80 45 */	lis r3, struct_80450BE4+0x1@ha
/* 806AE510  98 03 0B E5 */	stb r0, struct_80450BE4+0x1@l(r3)
/* 806AE514  4B 95 9B 64 */	b onBlure__13mDoGph_gInf_cFv
/* 806AE518  48 00 00 18 */	b lbl_806AE530
lbl_806AE51C:
/* 806AE51C  28 00 00 02 */	cmplwi r0, 2
/* 806AE520  40 82 00 10 */	bne lbl_806AE530
/* 806AE524  38 00 00 00 */	li r0, 0
/* 806AE528  3C 60 80 45 */	lis r3, struct_80450BE4+0x0@ha
/* 806AE52C  98 03 0B E4 */	stb r0, struct_80450BE4+0x0@l(r3)
lbl_806AE530:
/* 806AE530  38 60 00 01 */	li r3, 1
lbl_806AE534:
/* 806AE534  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 806AE538  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 806AE53C  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 806AE540  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 806AE544  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 806AE548  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 806AE54C  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 806AE550  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 806AE554  39 61 00 80 */	addi r11, r1, 0x80
/* 806AE558  4B CB 3C C4 */	b _restgpr_26
/* 806AE55C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806AE560  7C 08 03 A6 */	mtlr r0
/* 806AE564  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806AE568  4E 80 00 20 */	blr 
