lbl_8028CCB0:
/* 8028CCB0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8028CCB4  7C 08 02 A6 */	mflr r0
/* 8028CCB8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8028CCBC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8028CCC0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8028CCC4  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8028CCC8  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8028CCCC  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8028CCD0  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8028CCD4  39 61 00 60 */	addi r11, r1, 0x60
/* 8028CCD8  48 0D 55 05 */	bl _savegpr_29
/* 8028CCDC  7C 7E 1B 78 */	mr r30, r3
/* 8028CCE0  83 E3 01 18 */	lwz r31, 0x118(r3)
/* 8028CCE4  7F E3 FB 78 */	mr r3, r31
/* 8028CCE8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028CCEC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8028CCF0  7D 89 03 A6 */	mtctr r12
/* 8028CCF4  4E 80 04 21 */	bctrl 
/* 8028CCF8  60 64 00 01 */	ori r4, r3, 1
/* 8028CCFC  7F E3 FB 78 */	mr r3, r31
/* 8028CD00  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028CD04  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8028CD08  7D 89 03 A6 */	mtctr r12
/* 8028CD0C  4E 80 04 21 */	bctrl 
/* 8028CD10  83 FE 01 18 */	lwz r31, 0x118(r30)
/* 8028CD14  80 7E 00 04 */	lwz r3, 4(r30)
/* 8028CD18  83 A3 00 14 */	lwz r29, 0x14(r3)
/* 8028CD1C  7F E3 FB 78 */	mr r3, r31
/* 8028CD20  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028CD24  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8028CD28  7D 89 03 A6 */	mtctr r12
/* 8028CD2C  4E 80 04 21 */	bctrl 
/* 8028CD30  90 61 00 0C */	stw r3, 0xc(r1)
/* 8028CD34  7F C3 F3 78 */	mr r3, r30
/* 8028CD38  3C 80 80 3A */	lis r4, sauVariableValue_4_COLOR_RGBA__Q27JStudio14TAdaptor_light@ha
/* 8028CD3C  38 84 AA E8 */	addi r4, r4, sauVariableValue_4_COLOR_RGBA__Q27JStudio14TAdaptor_light@l
/* 8028CD40  38 A1 00 0C */	addi r5, r1, 0xc
/* 8028CD44  4B FF 95 69 */	bl adaptor_setVariableValue_GXColor__Q27JStudio8TAdaptorFPCUlRC8_GXColor
/* 8028CD48  7F E3 FB 78 */	mr r3, r31
/* 8028CD4C  38 81 00 34 */	addi r4, r1, 0x34
/* 8028CD50  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028CD54  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8028CD58  7D 89 03 A6 */	mtctr r12
/* 8028CD5C  4E 80 04 21 */	bctrl 
/* 8028CD60  7F E3 FB 78 */	mr r3, r31
/* 8028CD64  3B E1 00 40 */	addi r31, r1, 0x40
/* 8028CD68  7F E4 FB 78 */	mr r4, r31
/* 8028CD6C  81 83 00 00 */	lwz r12, 0(r3)
/* 8028CD70  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8028CD74  7D 89 03 A6 */	mtctr r12
/* 8028CD78  4E 80 04 21 */	bctrl 
/* 8028CD7C  88 1D 00 89 */	lbz r0, 0x89(r29)
/* 8028CD80  28 00 00 00 */	cmplwi r0, 0
/* 8028CD84  40 82 00 0C */	bne lbl_8028CD90
/* 8028CD88  3B E1 00 34 */	addi r31, r1, 0x34
/* 8028CD8C  48 00 00 28 */	b lbl_8028CDB4
lbl_8028CD90:
/* 8028CD90  38 7D 00 DC */	addi r3, r29, 0xdc
/* 8028CD94  38 81 00 34 */	addi r4, r1, 0x34
/* 8028CD98  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8028CD9C  48 0B 9F D1 */	bl PSMTXMultVec
/* 8028CDA0  38 7D 00 DC */	addi r3, r29, 0xdc
/* 8028CDA4  7F E4 FB 78 */	mr r4, r31
/* 8028CDA8  38 A1 00 28 */	addi r5, r1, 0x28
/* 8028CDAC  48 0B A0 A1 */	bl PSMTXMultVecSR
/* 8028CDB0  3B E1 00 1C */	addi r31, r1, 0x1c
lbl_8028CDB4:
/* 8028CDB4  7F C3 F3 78 */	mr r3, r30
/* 8028CDB8  3C 80 80 3A */	lis r4, sauVariableValue_3_POSITION_XYZ__Q27JStudio14TAdaptor_light@ha
/* 8028CDBC  38 84 AA F8 */	addi r4, r4, sauVariableValue_3_POSITION_XYZ__Q27JStudio14TAdaptor_light@l
/* 8028CDC0  7F E5 FB 78 */	mr r5, r31
/* 8028CDC4  4B FF 94 41 */	bl adaptor_setVariableValue_Vec__Q27JStudio8TAdaptorFPCUlRC3Vec
/* 8028CDC8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8028CDCC  C3 DF 00 10 */	lfs f30, 0x10(r31)
/* 8028CDD0  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8028CDD4  EC 61 00 72 */	fmuls f3, f1, f1
/* 8028CDD8  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8028CDDC  EF E3 00 2A */	fadds f31, f3, f0
/* 8028CDE0  C0 02 BA E8 */	lfs f0, lit_846(r2)
/* 8028CDE4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8028CDE8  40 81 00 58 */	ble lbl_8028CE40
/* 8028CDEC  FC 00 F8 34 */	frsqrte f0, f31
/* 8028CDF0  C8 A2 BA F0 */	lfd f5, lit_847(r2)
/* 8028CDF4  FC 65 00 32 */	fmul f3, f5, f0
/* 8028CDF8  C8 82 BA F8 */	lfd f4, lit_848(r2)
/* 8028CDFC  FC 00 00 32 */	fmul f0, f0, f0
/* 8028CE00  FC 1F 00 32 */	fmul f0, f31, f0
/* 8028CE04  FC 04 00 28 */	fsub f0, f4, f0
/* 8028CE08  FC 03 00 32 */	fmul f0, f3, f0
/* 8028CE0C  FC 65 00 32 */	fmul f3, f5, f0
/* 8028CE10  FC 00 00 32 */	fmul f0, f0, f0
/* 8028CE14  FC 1F 00 32 */	fmul f0, f31, f0
/* 8028CE18  FC 04 00 28 */	fsub f0, f4, f0
/* 8028CE1C  FC 03 00 32 */	fmul f0, f3, f0
/* 8028CE20  FC 65 00 32 */	fmul f3, f5, f0
/* 8028CE24  FC 00 00 32 */	fmul f0, f0, f0
/* 8028CE28  FC 1F 00 32 */	fmul f0, f31, f0
/* 8028CE2C  FC 04 00 28 */	fsub f0, f4, f0
/* 8028CE30  FC 03 00 32 */	fmul f0, f3, f0
/* 8028CE34  FF FF 00 32 */	fmul f31, f31, f0
/* 8028CE38  FF E0 F8 18 */	frsp f31, f31
/* 8028CE3C  48 00 00 88 */	b lbl_8028CEC4
lbl_8028CE40:
/* 8028CE40  C8 02 BB 00 */	lfd f0, lit_849(r2)
/* 8028CE44  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8028CE48  40 80 00 10 */	bge lbl_8028CE58
/* 8028CE4C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8028CE50  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8028CE54  48 00 00 70 */	b lbl_8028CEC4
lbl_8028CE58:
/* 8028CE58  D3 E1 00 08 */	stfs f31, 8(r1)
/* 8028CE5C  80 81 00 08 */	lwz r4, 8(r1)
/* 8028CE60  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8028CE64  3C 00 7F 80 */	lis r0, 0x7f80
/* 8028CE68  7C 03 00 00 */	cmpw r3, r0
/* 8028CE6C  41 82 00 14 */	beq lbl_8028CE80
/* 8028CE70  40 80 00 40 */	bge lbl_8028CEB0
/* 8028CE74  2C 03 00 00 */	cmpwi r3, 0
/* 8028CE78  41 82 00 20 */	beq lbl_8028CE98
/* 8028CE7C  48 00 00 34 */	b lbl_8028CEB0
lbl_8028CE80:
/* 8028CE80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8028CE84  41 82 00 0C */	beq lbl_8028CE90
/* 8028CE88  38 00 00 01 */	li r0, 1
/* 8028CE8C  48 00 00 28 */	b lbl_8028CEB4
lbl_8028CE90:
/* 8028CE90  38 00 00 02 */	li r0, 2
/* 8028CE94  48 00 00 20 */	b lbl_8028CEB4
lbl_8028CE98:
/* 8028CE98  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8028CE9C  41 82 00 0C */	beq lbl_8028CEA8
/* 8028CEA0  38 00 00 05 */	li r0, 5
/* 8028CEA4  48 00 00 10 */	b lbl_8028CEB4
lbl_8028CEA8:
/* 8028CEA8  38 00 00 03 */	li r0, 3
/* 8028CEAC  48 00 00 08 */	b lbl_8028CEB4
lbl_8028CEB0:
/* 8028CEB0  38 00 00 04 */	li r0, 4
lbl_8028CEB4:
/* 8028CEB4  2C 00 00 01 */	cmpwi r0, 1
/* 8028CEB8  40 82 00 0C */	bne lbl_8028CEC4
/* 8028CEBC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8028CEC0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
lbl_8028CEC4:
/* 8028CEC4  48 0D F8 5D */	bl atan2
/* 8028CEC8  FF A0 08 18 */	frsp f29, f1
/* 8028CECC  FC 20 F0 90 */	fmr f1, f30
/* 8028CED0  FC 40 F8 90 */	fmr f2, f31
/* 8028CED4  48 0D F8 4D */	bl atan2
/* 8028CED8  FC 40 08 18 */	frsp f2, f1
/* 8028CEDC  80 BE 00 08 */	lwz r5, 8(r30)
/* 8028CEE0  3C 60 80 28 */	lis r3, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@ha
/* 8028CEE4  38 83 5E B8 */	addi r4, r3, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@l
/* 8028CEE8  90 85 00 D0 */	stw r4, 0xd0(r5)
/* 8028CEEC  38 00 00 00 */	li r0, 0
/* 8028CEF0  90 05 00 CC */	stw r0, 0xcc(r5)
/* 8028CEF4  C0 22 BB 08 */	lfs f1, lit_850(r2)
/* 8028CEF8  EC 01 07 72 */	fmuls f0, f1, f29
/* 8028CEFC  D0 05 00 D4 */	stfs f0, 0xd4(r5)
/* 8028CF00  80 7E 00 08 */	lwz r3, 8(r30)
/* 8028CF04  90 83 00 E4 */	stw r4, 0xe4(r3)
/* 8028CF08  90 03 00 E0 */	stw r0, 0xe0(r3)
/* 8028CF0C  EC 01 00 B2 */	fmuls f0, f1, f2
/* 8028CF10  D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 8028CF14  7F E3 FB 78 */	mr r3, r31
/* 8028CF18  38 9F 00 0C */	addi r4, r31, 0xc
/* 8028CF1C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8028CF20  48 0B A1 71 */	bl PSVECAdd
/* 8028CF24  7F C3 F3 78 */	mr r3, r30
/* 8028CF28  3C 80 80 3A */	lis r4, sauVariableValue_3_TARGET_POSITION_XYZ__Q27JStudio14TAdaptor_light@ha
/* 8028CF2C  38 84 AB 04 */	addi r4, r4, sauVariableValue_3_TARGET_POSITION_XYZ__Q27JStudio14TAdaptor_light@l
/* 8028CF30  38 A1 00 10 */	addi r5, r1, 0x10
/* 8028CF34  4B FF 92 D1 */	bl adaptor_setVariableValue_Vec__Q27JStudio8TAdaptorFPCUlRC3Vec
/* 8028CF38  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8028CF3C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8028CF40  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8028CF44  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8028CF48  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8028CF4C  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8028CF50  39 61 00 60 */	addi r11, r1, 0x60
/* 8028CF54  48 0D 52 D5 */	bl _restgpr_29
/* 8028CF58  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8028CF5C  7C 08 03 A6 */	mtlr r0
/* 8028CF60  38 21 00 90 */	addi r1, r1, 0x90
/* 8028CF64  4E 80 00 20 */	blr 
