lbl_80C2EA40:
/* 80C2EA40  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80C2EA44  7C 08 02 A6 */	mflr r0
/* 80C2EA48  90 01 01 04 */	stw r0, 0x104(r1)
/* 80C2EA4C  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80C2EA50  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 80C2EA54  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80C2EA58  4B 73 37 85 */	bl _savegpr_29
/* 80C2EA5C  7C 7D 1B 78 */	mr r29, r3
/* 80C2EA60  3C 80 80 C3 */	lis r4, lit_3774@ha /* 0x80C3114C@ha */
/* 80C2EA64  3B E4 11 4C */	addi r31, r4, lit_3774@l /* 0x80C3114C@l */
/* 80C2EA68  80 03 08 3C */	lwz r0, 0x83c(r3)
/* 80C2EA6C  2C 00 00 00 */	cmpwi r0, 0
/* 80C2EA70  40 82 01 10 */	bne lbl_80C2EB80
/* 80C2EA74  3C 60 80 C3 */	lis r3, d_a_obj_kag__stringBase0@ha /* 0x80C31260@ha */
/* 80C2EA78  38 63 12 60 */	addi r3, r3, d_a_obj_kag__stringBase0@l /* 0x80C31260@l */
/* 80C2EA7C  38 80 00 06 */	li r4, 6
/* 80C2EA80  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2EA84  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2EA88  3C A5 00 02 */	addis r5, r5, 2
/* 80C2EA8C  38 C0 00 80 */	li r6, 0x80
/* 80C2EA90  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2EA94  4B 40 D8 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2EA98  7C 64 1B 78 */	mr r4, r3
/* 80C2EA9C  80 7D 06 28 */	lwz r3, 0x628(r29)
/* 80C2EAA0  38 A0 00 02 */	li r5, 2
/* 80C2EAA4  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80C2EAA8  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80C2EAAC  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 80C2EAB0  C0 9F 00 40 */	lfs f4, 0x40(r31)
/* 80C2EAB4  4B 3E 23 BD */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C2EAB8  38 00 00 00 */	li r0, 0
/* 80C2EABC  B0 1D 08 52 */	sth r0, 0x852(r29)
/* 80C2EAC0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C2EAC4  4B 63 8E 91 */	bl cM_rndF__Ff
/* 80C2EAC8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C2EACC  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2EAD0  FC 00 00 1E */	fctiwz f0, f0
/* 80C2EAD4  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 80C2EAD8  80 01 00 AC */	lwz r0, 0xac(r1)
/* 80C2EADC  98 1D 08 5A */	stb r0, 0x85a(r29)
/* 80C2EAE0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C2EAE4  4B 63 8E A9 */	bl cM_rndFX__Ff
/* 80C2EAE8  FC 00 08 1E */	fctiwz f0, f1
/* 80C2EAEC  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 80C2EAF0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80C2EAF4  B0 1D 08 4E */	sth r0, 0x84e(r29)
/* 80C2EAF8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C2EAFC  4B 63 8E 59 */	bl cM_rndF__Ff
/* 80C2EB00  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C2EB04  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2EB08  FC 00 00 1E */	fctiwz f0, f0
/* 80C2EB0C  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C2EB10  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C2EB14  B0 1D 08 54 */	sth r0, 0x854(r29)
/* 80C2EB18  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C2EB1C  4B 63 8E 39 */	bl cM_rndF__Ff
/* 80C2EB20  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C2EB24  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2EB28  FC 00 00 1E */	fctiwz f0, f0
/* 80C2EB2C  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80C2EB30  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C2EB34  98 1D 08 5B */	stb r0, 0x85b(r29)
/* 80C2EB38  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C2EB3C  4B 63 8E 51 */	bl cM_rndFX__Ff
/* 80C2EB40  FC 00 08 1E */	fctiwz f0, f1
/* 80C2EB44  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80C2EB48  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80C2EB4C  B0 1D 08 4C */	sth r0, 0x84c(r29)
/* 80C2EB50  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C2EB54  4B 63 8E 01 */	bl cM_rndF__Ff
/* 80C2EB58  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C2EB5C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2EB60  FC 00 00 1E */	fctiwz f0, f0
/* 80C2EB64  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80C2EB68  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C2EB6C  B0 1D 08 56 */	sth r0, 0x856(r29)
/* 80C2EB70  80 7D 08 3C */	lwz r3, 0x83c(r29)
/* 80C2EB74  38 03 00 01 */	addi r0, r3, 1
/* 80C2EB78  90 1D 08 3C */	stw r0, 0x83c(r29)
/* 80C2EB7C  48 00 0B C8 */	b lbl_80C2F744
lbl_80C2EB80:
/* 80C2EB80  2C 00 FF FF */	cmpwi r0, -1
/* 80C2EB84  41 82 0B C0 */	beq lbl_80C2F744
/* 80C2EB88  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2EB8C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2EB90  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80C2EB94  88 1D 05 6D */	lbz r0, 0x56d(r29)
/* 80C2EB98  28 00 00 00 */	cmplwi r0, 0
/* 80C2EB9C  41 82 00 08 */	beq lbl_80C2EBA4
/* 80C2EBA0  48 00 22 B5 */	bl kag_setParticle__10daObjKAG_cFv
lbl_80C2EBA4:
/* 80C2EBA4  7F A3 EB 78 */	mr r3, r29
/* 80C2EBA8  38 80 00 00 */	li r4, 0
/* 80C2EBAC  4B 3E BB 21 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80C2EBB0  A8 7D 08 52 */	lha r3, 0x852(r29)
/* 80C2EBB4  38 03 20 00 */	addi r0, r3, 0x2000
/* 80C2EBB8  B0 1D 08 52 */	sth r0, 0x852(r29)
/* 80C2EBBC  A8 1D 08 52 */	lha r0, 0x852(r29)
/* 80C2EBC0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C2EBC4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C2EBC8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C2EBCC  7C 43 04 2E */	lfsx f2, r3, r0
/* 80C2EBD0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C2EBD4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C2EBD8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C2EBDC  EC 01 00 2A */	fadds f0, f1, f0
/* 80C2EBE0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80C2EBE4  C0 7D 08 48 */	lfs f3, 0x848(r29)
/* 80C2EBE8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C2EBEC  FC 03 00 00 */	fcmpu cr0, f3, f0
/* 80C2EBF0  41 82 00 90 */	beq lbl_80C2EC80
/* 80C2EBF4  C0 1D 08 08 */	lfs f0, 0x808(r29)
/* 80C2EBF8  FC 00 02 10 */	fabs f0, f0
/* 80C2EBFC  FC 20 00 18 */	frsp f1, f0
/* 80C2EC00  C0 5D 08 0C */	lfs f2, 0x80c(r29)
/* 80C2EC04  FC 00 12 10 */	fabs f0, f2
/* 80C2EC08  FC 80 00 18 */	frsp f4, f0
/* 80C2EC0C  C0 1D 08 10 */	lfs f0, 0x810(r29)
/* 80C2EC10  FC 00 02 10 */	fabs f0, f0
/* 80C2EC14  FC 00 00 18 */	frsp f0, f0
/* 80C2EC18  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 80C2EC1C  40 81 00 20 */	ble lbl_80C2EC3C
/* 80C2EC20  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80C2EC24  40 81 00 18 */	ble lbl_80C2EC3C
/* 80C2EC28  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C2EC2C  EC 03 00 B2 */	fmuls f0, f3, f2
/* 80C2EC30  EC 01 00 2A */	fadds f0, f1, f0
/* 80C2EC34  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80C2EC38  48 00 00 48 */	b lbl_80C2EC80
lbl_80C2EC3C:
/* 80C2EC3C  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 80C2EC40  40 81 00 28 */	ble lbl_80C2EC68
/* 80C2EC44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2EC48  40 81 00 20 */	ble lbl_80C2EC68
/* 80C2EC4C  C0 5D 04 D0 */	lfs f2, 0x4d0(r29)
/* 80C2EC50  C0 3D 08 48 */	lfs f1, 0x848(r29)
/* 80C2EC54  C0 1D 08 08 */	lfs f0, 0x808(r29)
/* 80C2EC58  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C2EC5C  EC 02 00 2A */	fadds f0, f2, f0
/* 80C2EC60  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80C2EC64  48 00 00 1C */	b lbl_80C2EC80
lbl_80C2EC68:
/* 80C2EC68  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80C2EC6C  C0 3D 08 48 */	lfs f1, 0x848(r29)
/* 80C2EC70  C0 1D 08 10 */	lfs f0, 0x810(r29)
/* 80C2EC74  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C2EC78  EC 02 00 2A */	fadds f0, f2, f0
/* 80C2EC7C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_80C2EC80:
/* 80C2EC80  7F A3 EB 78 */	mr r3, r29
/* 80C2EC84  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C2EC88  38 BD 08 14 */	addi r5, r29, 0x814
/* 80C2EC8C  38 DD 08 08 */	addi r6, r29, 0x808
/* 80C2EC90  4B FF FB 11 */	bl Kag_Bgcheck__10daObjKAG_cFP4cXyzP5csXyzP4cXyz
/* 80C2EC94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C2EC98  41 82 00 80 */	beq lbl_80C2ED18
/* 80C2EC9C  38 00 00 00 */	li r0, 0
/* 80C2ECA0  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 80C2ECA4  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80C2ECA8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C2ECAC  4B 63 8C A9 */	bl cM_rndF__Ff
/* 80C2ECB0  FC 00 08 1E */	fctiwz f0, f1
/* 80C2ECB4  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80C2ECB8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C2ECBC  7C 00 07 35 */	extsh. r0, r0
/* 80C2ECC0  40 82 00 34 */	bne lbl_80C2ECF4
/* 80C2ECC4  3C 60 80 C3 */	lis r3, lit_3980@ha /* 0x80C312D0@ha */
/* 80C2ECC8  38 83 12 D0 */	addi r4, r3, lit_3980@l /* 0x80C312D0@l */
/* 80C2ECCC  80 64 00 00 */	lwz r3, 0(r4)
/* 80C2ECD0  80 04 00 04 */	lwz r0, 4(r4)
/* 80C2ECD4  90 61 00 98 */	stw r3, 0x98(r1)
/* 80C2ECD8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80C2ECDC  80 04 00 08 */	lwz r0, 8(r4)
/* 80C2ECE0  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80C2ECE4  7F A3 EB 78 */	mr r3, r29
/* 80C2ECE8  38 81 00 98 */	addi r4, r1, 0x98
/* 80C2ECEC  4B FF F7 49 */	bl setAction__10daObjKAG_cFM10daObjKAG_cFPCvPv_v
/* 80C2ECF0  48 00 0A 54 */	b lbl_80C2F744
lbl_80C2ECF4:
/* 80C2ECF4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C2ECF8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80C2ECFC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80C2ED00  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80C2ED04  4B 63 8C 51 */	bl cM_rndF__Ff
/* 80C2ED08  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C2ED0C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2ED10  D0 1D 08 48 */	stfs f0, 0x848(r29)
/* 80C2ED14  48 00 00 34 */	b lbl_80C2ED48
lbl_80C2ED18:
/* 80C2ED18  38 7D 08 14 */	addi r3, r29, 0x814
/* 80C2ED1C  38 80 00 00 */	li r4, 0
/* 80C2ED20  38 A0 01 00 */	li r5, 0x100
/* 80C2ED24  4B 64 1E 6D */	bl cLib_chaseAngleS__FPsss
/* 80C2ED28  38 7D 08 16 */	addi r3, r29, 0x816
/* 80C2ED2C  38 80 00 00 */	li r4, 0
/* 80C2ED30  38 A0 01 00 */	li r5, 0x100
/* 80C2ED34  4B 64 1E 5D */	bl cLib_chaseAngleS__FPsss
/* 80C2ED38  38 7D 08 18 */	addi r3, r29, 0x818
/* 80C2ED3C  38 80 00 00 */	li r4, 0
/* 80C2ED40  38 A0 01 00 */	li r5, 0x100
/* 80C2ED44  4B 64 1E 4D */	bl cLib_chaseAngleS__FPsss
lbl_80C2ED48:
/* 80C2ED48  7F C3 F3 78 */	mr r3, r30
/* 80C2ED4C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C2ED50  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80C2ED54  7D 89 03 A6 */	mtctr r12
/* 80C2ED58  4E 80 04 21 */	bctrl 
/* 80C2ED5C  7C 7E 1B 78 */	mr r30, r3
/* 80C2ED60  88 1D 08 5A */	lbz r0, 0x85a(r29)
/* 80C2ED64  28 00 00 00 */	cmplwi r0, 0
/* 80C2ED68  40 82 05 14 */	bne lbl_80C2F27C
/* 80C2ED6C  28 1E 00 00 */	cmplwi r30, 0
/* 80C2ED70  41 82 03 08 */	beq lbl_80C2F078
/* 80C2ED74  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80C2ED78  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C2ED7C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80C2ED80  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C2ED84  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80C2ED88  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80C2ED8C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80C2ED90  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80C2ED94  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C2ED98  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 80C2ED9C  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 80C2EDA0  38 61 00 80 */	addi r3, r1, 0x80
/* 80C2EDA4  38 81 00 8C */	addi r4, r1, 0x8c
/* 80C2EDA8  4B 71 85 F5 */	bl PSVECSquareDistance
/* 80C2EDAC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C2EDB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2EDB4  40 81 00 58 */	ble lbl_80C2EE0C
/* 80C2EDB8  FC 00 08 34 */	frsqrte f0, f1
/* 80C2EDBC  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 80C2EDC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2EDC4  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 80C2EDC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2EDCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2EDD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2EDD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2EDD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2EDDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2EDE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2EDE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2EDE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2EDEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2EDF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2EDF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2EDF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2EDFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2EE00  FC 21 00 32 */	fmul f1, f1, f0
/* 80C2EE04  FC 20 08 18 */	frsp f1, f1
/* 80C2EE08  48 00 00 88 */	b lbl_80C2EE90
lbl_80C2EE0C:
/* 80C2EE0C  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 80C2EE10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2EE14  40 80 00 10 */	bge lbl_80C2EE24
/* 80C2EE18  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2EE1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2EE20  48 00 00 70 */	b lbl_80C2EE90
lbl_80C2EE24:
/* 80C2EE24  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C2EE28  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80C2EE2C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2EE30  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2EE34  7C 03 00 00 */	cmpw r3, r0
/* 80C2EE38  41 82 00 14 */	beq lbl_80C2EE4C
/* 80C2EE3C  40 80 00 40 */	bge lbl_80C2EE7C
/* 80C2EE40  2C 03 00 00 */	cmpwi r3, 0
/* 80C2EE44  41 82 00 20 */	beq lbl_80C2EE64
/* 80C2EE48  48 00 00 34 */	b lbl_80C2EE7C
lbl_80C2EE4C:
/* 80C2EE4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2EE50  41 82 00 0C */	beq lbl_80C2EE5C
/* 80C2EE54  38 00 00 01 */	li r0, 1
/* 80C2EE58  48 00 00 28 */	b lbl_80C2EE80
lbl_80C2EE5C:
/* 80C2EE5C  38 00 00 02 */	li r0, 2
/* 80C2EE60  48 00 00 20 */	b lbl_80C2EE80
lbl_80C2EE64:
/* 80C2EE64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2EE68  41 82 00 0C */	beq lbl_80C2EE74
/* 80C2EE6C  38 00 00 05 */	li r0, 5
/* 80C2EE70  48 00 00 10 */	b lbl_80C2EE80
lbl_80C2EE74:
/* 80C2EE74  38 00 00 03 */	li r0, 3
/* 80C2EE78  48 00 00 08 */	b lbl_80C2EE80
lbl_80C2EE7C:
/* 80C2EE7C  38 00 00 04 */	li r0, 4
lbl_80C2EE80:
/* 80C2EE80  2C 00 00 01 */	cmpwi r0, 1
/* 80C2EE84  40 82 00 0C */	bne lbl_80C2EE90
/* 80C2EE88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2EE8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C2EE90:
/* 80C2EE90  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C2EE94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2EE98  40 80 01 E0 */	bge lbl_80C2F078
/* 80C2EE9C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80C2EEA0  4B 63 8A ED */	bl cM_rndFX__Ff
/* 80C2EEA4  FF E0 08 90 */	fmr f31, f1
/* 80C2EEA8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C2EEAC  7F C4 F3 78 */	mr r4, r30
/* 80C2EEB0  4B 64 1D 55 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C2EEB4  7C 60 07 34 */	extsh r0, r3
/* 80C2EEB8  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 80C2EEBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C2EEC0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C2EEC4  3C 00 43 30 */	lis r0, 0x4330
/* 80C2EEC8  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 80C2EECC  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 80C2EED0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C2EED4  EC 00 F8 2A */	fadds f0, f0, f31
/* 80C2EED8  FC 00 00 1E */	fctiwz f0, f0
/* 80C2EEDC  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80C2EEE0  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80C2EEE4  B0 1D 08 4E */	sth r0, 0x84e(r29)
/* 80C2EEE8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80C2EEEC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C2EEF0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C2EEF4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C2EEF8  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80C2EEFC  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80C2EF00  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80C2EF04  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80C2EF08  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C2EF0C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80C2EF10  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80C2EF14  38 61 00 68 */	addi r3, r1, 0x68
/* 80C2EF18  38 81 00 74 */	addi r4, r1, 0x74
/* 80C2EF1C  4B 71 84 81 */	bl PSVECSquareDistance
/* 80C2EF20  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C2EF24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2EF28  40 81 00 58 */	ble lbl_80C2EF80
/* 80C2EF2C  FC 00 08 34 */	frsqrte f0, f1
/* 80C2EF30  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 80C2EF34  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2EF38  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 80C2EF3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2EF40  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2EF44  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2EF48  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2EF4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2EF50  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2EF54  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2EF58  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2EF5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2EF60  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2EF64  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2EF68  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2EF6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2EF70  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2EF74  FC 21 00 32 */	fmul f1, f1, f0
/* 80C2EF78  FC 20 08 18 */	frsp f1, f1
/* 80C2EF7C  48 00 00 88 */	b lbl_80C2F004
lbl_80C2EF80:
/* 80C2EF80  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 80C2EF84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2EF88  40 80 00 10 */	bge lbl_80C2EF98
/* 80C2EF8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2EF90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2EF94  48 00 00 70 */	b lbl_80C2F004
lbl_80C2EF98:
/* 80C2EF98  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C2EF9C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C2EFA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2EFA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2EFA8  7C 03 00 00 */	cmpw r3, r0
/* 80C2EFAC  41 82 00 14 */	beq lbl_80C2EFC0
/* 80C2EFB0  40 80 00 40 */	bge lbl_80C2EFF0
/* 80C2EFB4  2C 03 00 00 */	cmpwi r3, 0
/* 80C2EFB8  41 82 00 20 */	beq lbl_80C2EFD8
/* 80C2EFBC  48 00 00 34 */	b lbl_80C2EFF0
lbl_80C2EFC0:
/* 80C2EFC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2EFC4  41 82 00 0C */	beq lbl_80C2EFD0
/* 80C2EFC8  38 00 00 01 */	li r0, 1
/* 80C2EFCC  48 00 00 28 */	b lbl_80C2EFF4
lbl_80C2EFD0:
/* 80C2EFD0  38 00 00 02 */	li r0, 2
/* 80C2EFD4  48 00 00 20 */	b lbl_80C2EFF4
lbl_80C2EFD8:
/* 80C2EFD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2EFDC  41 82 00 0C */	beq lbl_80C2EFE8
/* 80C2EFE0  38 00 00 05 */	li r0, 5
/* 80C2EFE4  48 00 00 10 */	b lbl_80C2EFF4
lbl_80C2EFE8:
/* 80C2EFE8  38 00 00 03 */	li r0, 3
/* 80C2EFEC  48 00 00 08 */	b lbl_80C2EFF4
lbl_80C2EFF0:
/* 80C2EFF0  38 00 00 04 */	li r0, 4
lbl_80C2EFF4:
/* 80C2EFF4  2C 00 00 01 */	cmpwi r0, 1
/* 80C2EFF8  40 82 00 0C */	bne lbl_80C2F004
/* 80C2EFFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2F000  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C2F004:
/* 80C2F004  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80C2F008  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2F00C  40 80 00 28 */	bge lbl_80C2F034
/* 80C2F010  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80C2F014  4B 63 89 41 */	bl cM_rndF__Ff
/* 80C2F018  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80C2F01C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2F020  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F024  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80C2F028  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C2F02C  98 1D 08 5A */	stb r0, 0x85a(r29)
/* 80C2F030  48 00 00 24 */	b lbl_80C2F054
lbl_80C2F034:
/* 80C2F034  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C2F038  4B 63 89 1D */	bl cM_rndF__Ff
/* 80C2F03C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C2F040  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2F044  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F048  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80C2F04C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C2F050  98 1D 08 5A */	stb r0, 0x85a(r29)
lbl_80C2F054:
/* 80C2F054  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C2F058  4B 63 88 FD */	bl cM_rndF__Ff
/* 80C2F05C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C2F060  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2F064  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F068  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80C2F06C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C2F070  B0 1D 08 54 */	sth r0, 0x854(r29)
/* 80C2F074  48 00 02 08 */	b lbl_80C2F27C
lbl_80C2F078:
/* 80C2F078  88 1D 08 5E */	lbz r0, 0x85e(r29)
/* 80C2F07C  28 00 00 01 */	cmplwi r0, 1
/* 80C2F080  41 82 01 2C */	beq lbl_80C2F1AC
/* 80C2F084  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80C2F088  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C2F08C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C2F090  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C2F094  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80C2F098  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80C2F09C  C0 5D 04 B0 */	lfs f2, 0x4b0(r29)
/* 80C2F0A0  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80C2F0A4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80C2F0A8  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80C2F0AC  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80C2F0B0  38 61 00 50 */	addi r3, r1, 0x50
/* 80C2F0B4  38 81 00 5C */	addi r4, r1, 0x5c
/* 80C2F0B8  4B 71 82 E5 */	bl PSVECSquareDistance
/* 80C2F0BC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C2F0C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2F0C4  40 81 00 58 */	ble lbl_80C2F11C
/* 80C2F0C8  FC 00 08 34 */	frsqrte f0, f1
/* 80C2F0CC  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 80C2F0D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2F0D4  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 80C2F0D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2F0DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2F0E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2F0E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2F0E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2F0EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2F0F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2F0F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2F0F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2F0FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2F100  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2F104  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2F108  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2F10C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2F110  FC 21 00 32 */	fmul f1, f1, f0
/* 80C2F114  FC 20 08 18 */	frsp f1, f1
/* 80C2F118  48 00 00 88 */	b lbl_80C2F1A0
lbl_80C2F11C:
/* 80C2F11C  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 80C2F120  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2F124  40 80 00 10 */	bge lbl_80C2F134
/* 80C2F128  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2F12C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2F130  48 00 00 70 */	b lbl_80C2F1A0
lbl_80C2F134:
/* 80C2F134  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C2F138  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80C2F13C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2F140  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2F144  7C 03 00 00 */	cmpw r3, r0
/* 80C2F148  41 82 00 14 */	beq lbl_80C2F15C
/* 80C2F14C  40 80 00 40 */	bge lbl_80C2F18C
/* 80C2F150  2C 03 00 00 */	cmpwi r3, 0
/* 80C2F154  41 82 00 20 */	beq lbl_80C2F174
/* 80C2F158  48 00 00 34 */	b lbl_80C2F18C
lbl_80C2F15C:
/* 80C2F15C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2F160  41 82 00 0C */	beq lbl_80C2F16C
/* 80C2F164  38 00 00 01 */	li r0, 1
/* 80C2F168  48 00 00 28 */	b lbl_80C2F190
lbl_80C2F16C:
/* 80C2F16C  38 00 00 02 */	li r0, 2
/* 80C2F170  48 00 00 20 */	b lbl_80C2F190
lbl_80C2F174:
/* 80C2F174  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2F178  41 82 00 0C */	beq lbl_80C2F184
/* 80C2F17C  38 00 00 05 */	li r0, 5
/* 80C2F180  48 00 00 10 */	b lbl_80C2F190
lbl_80C2F184:
/* 80C2F184  38 00 00 03 */	li r0, 3
/* 80C2F188  48 00 00 08 */	b lbl_80C2F190
lbl_80C2F18C:
/* 80C2F18C  38 00 00 04 */	li r0, 4
lbl_80C2F190:
/* 80C2F190  2C 00 00 01 */	cmpwi r0, 1
/* 80C2F194  40 82 00 0C */	bne lbl_80C2F1A0
/* 80C2F198  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2F19C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C2F1A0:
/* 80C2F1A0  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80C2F1A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2F1A8  40 80 00 60 */	bge lbl_80C2F208
lbl_80C2F1AC:
/* 80C2F1AC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C2F1B0  4B 63 87 A5 */	bl cM_rndF__Ff
/* 80C2F1B4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C2F1B8  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2F1BC  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F1C0  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80C2F1C4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C2F1C8  98 1D 08 5A */	stb r0, 0x85a(r29)
/* 80C2F1CC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C2F1D0  4B 63 87 BD */	bl cM_rndFX__Ff
/* 80C2F1D4  FC 00 08 1E */	fctiwz f0, f1
/* 80C2F1D8  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80C2F1DC  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80C2F1E0  B0 1D 08 4E */	sth r0, 0x84e(r29)
/* 80C2F1E4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C2F1E8  4B 63 87 6D */	bl cM_rndF__Ff
/* 80C2F1EC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C2F1F0  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2F1F4  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F1F8  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80C2F1FC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C2F200  B0 1D 08 54 */	sth r0, 0x854(r29)
/* 80C2F204  48 00 00 78 */	b lbl_80C2F27C
lbl_80C2F208:
/* 80C2F208  38 00 00 5A */	li r0, 0x5a
/* 80C2F20C  98 1D 08 5A */	stb r0, 0x85a(r29)
/* 80C2F210  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80C2F214  4B 63 87 79 */	bl cM_rndFX__Ff
/* 80C2F218  FF E0 08 90 */	fmr f31, f1
/* 80C2F21C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C2F220  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 80C2F224  4B 64 19 E1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C2F228  7C 60 07 34 */	extsh r0, r3
/* 80C2F22C  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 80C2F230  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C2F234  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C2F238  3C 00 43 30 */	lis r0, 0x4330
/* 80C2F23C  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 80C2F240  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 80C2F244  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C2F248  EC 00 F8 2A */	fadds f0, f0, f31
/* 80C2F24C  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F250  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80C2F254  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80C2F258  B0 1D 08 4E */	sth r0, 0x84e(r29)
/* 80C2F25C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C2F260  4B 63 86 F5 */	bl cM_rndF__Ff
/* 80C2F264  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C2F268  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2F26C  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F270  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80C2F274  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C2F278  B0 1D 08 54 */	sth r0, 0x854(r29)
lbl_80C2F27C:
/* 80C2F27C  28 1E 00 00 */	cmplwi r30, 0
/* 80C2F280  41 82 00 1C */	beq lbl_80C2F29C
/* 80C2F284  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C2F288  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 80C2F28C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C2F290  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 80C2F294  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C2F298  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
lbl_80C2F29C:
/* 80C2F29C  88 1D 08 5E */	lbz r0, 0x85e(r29)
/* 80C2F2A0  28 00 00 01 */	cmplwi r0, 1
/* 80C2F2A4  40 82 00 0C */	bne lbl_80C2F2B0
/* 80C2F2A8  C3 FF 00 7C */	lfs f31, 0x7c(r31)
/* 80C2F2AC  48 00 00 08 */	b lbl_80C2F2B4
lbl_80C2F2B0:
/* 80C2F2B0  C3 FF 00 80 */	lfs f31, 0x80(r31)
lbl_80C2F2B4:
/* 80C2F2B4  28 1E 00 00 */	cmplwi r30, 0
/* 80C2F2B8  41 82 01 40 */	beq lbl_80C2F3F8
/* 80C2F2BC  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80C2F2C0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C2F2C4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C2F2C8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C2F2CC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80C2F2D0  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80C2F2D4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80C2F2D8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80C2F2DC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C2F2E0  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80C2F2E4  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80C2F2E8  38 61 00 38 */	addi r3, r1, 0x38
/* 80C2F2EC  38 81 00 44 */	addi r4, r1, 0x44
/* 80C2F2F0  4B 71 80 AD */	bl PSVECSquareDistance
/* 80C2F2F4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C2F2F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2F2FC  40 81 00 58 */	ble lbl_80C2F354
/* 80C2F300  FC 00 08 34 */	frsqrte f0, f1
/* 80C2F304  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 80C2F308  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2F30C  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 80C2F310  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2F314  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2F318  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2F31C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2F320  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2F324  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2F328  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2F32C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2F330  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2F334  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2F338  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2F33C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2F340  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2F344  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2F348  FC 21 00 32 */	fmul f1, f1, f0
/* 80C2F34C  FC 20 08 18 */	frsp f1, f1
/* 80C2F350  48 00 00 88 */	b lbl_80C2F3D8
lbl_80C2F354:
/* 80C2F354  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 80C2F358  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2F35C  40 80 00 10 */	bge lbl_80C2F36C
/* 80C2F360  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2F364  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2F368  48 00 00 70 */	b lbl_80C2F3D8
lbl_80C2F36C:
/* 80C2F36C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C2F370  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C2F374  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2F378  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2F37C  7C 03 00 00 */	cmpw r3, r0
/* 80C2F380  41 82 00 14 */	beq lbl_80C2F394
/* 80C2F384  40 80 00 40 */	bge lbl_80C2F3C4
/* 80C2F388  2C 03 00 00 */	cmpwi r3, 0
/* 80C2F38C  41 82 00 20 */	beq lbl_80C2F3AC
/* 80C2F390  48 00 00 34 */	b lbl_80C2F3C4
lbl_80C2F394:
/* 80C2F394  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2F398  41 82 00 0C */	beq lbl_80C2F3A4
/* 80C2F39C  38 00 00 01 */	li r0, 1
/* 80C2F3A0  48 00 00 28 */	b lbl_80C2F3C8
lbl_80C2F3A4:
/* 80C2F3A4  38 00 00 02 */	li r0, 2
/* 80C2F3A8  48 00 00 20 */	b lbl_80C2F3C8
lbl_80C2F3AC:
/* 80C2F3AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2F3B0  41 82 00 0C */	beq lbl_80C2F3BC
/* 80C2F3B4  38 00 00 05 */	li r0, 5
/* 80C2F3B8  48 00 00 10 */	b lbl_80C2F3C8
lbl_80C2F3BC:
/* 80C2F3BC  38 00 00 03 */	li r0, 3
/* 80C2F3C0  48 00 00 08 */	b lbl_80C2F3C8
lbl_80C2F3C4:
/* 80C2F3C4  38 00 00 04 */	li r0, 4
lbl_80C2F3C8:
/* 80C2F3C8  2C 00 00 01 */	cmpwi r0, 1
/* 80C2F3CC  40 82 00 0C */	bne lbl_80C2F3D8
/* 80C2F3D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2F3D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C2F3D8:
/* 80C2F3D8  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80C2F3DC  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80C2F3E0  40 80 00 18 */	bge lbl_80C2F3F8
/* 80C2F3E4  C0 1D 08 1C */	lfs f0, 0x81c(r29)
/* 80C2F3E8  EC 22 00 2A */	fadds f1, f2, f0
/* 80C2F3EC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C2F3F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2F3F4  41 80 00 18 */	blt lbl_80C2F40C
lbl_80C2F3F8:
/* 80C2F3F8  C0 5D 08 1C */	lfs f2, 0x81c(r29)
/* 80C2F3FC  EC 02 F8 2A */	fadds f0, f2, f31
/* 80C2F400  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C2F404  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C2F408  40 80 00 68 */	bge lbl_80C2F470
lbl_80C2F40C:
/* 80C2F40C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C2F410  4B 63 85 45 */	bl cM_rndF__Ff
/* 80C2F414  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C2F418  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2F41C  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F420  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80C2F424  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C2F428  98 1D 08 5B */	stb r0, 0x85b(r29)
/* 80C2F42C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C2F430  4B 63 85 25 */	bl cM_rndF__Ff
/* 80C2F434  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C2F438  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2F43C  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F440  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80C2F444  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80C2F448  B0 1D 08 4C */	sth r0, 0x84c(r29)
/* 80C2F44C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C2F450  4B 63 85 05 */	bl cM_rndF__Ff
/* 80C2F454  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C2F458  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2F45C  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F460  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80C2F464  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C2F468  B0 1D 08 56 */	sth r0, 0x856(r29)
/* 80C2F46C  48 00 00 D0 */	b lbl_80C2F53C
lbl_80C2F470:
/* 80C2F470  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80C2F474  EC 00 10 2A */	fadds f0, f0, f2
/* 80C2F478  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C2F47C  40 81 00 5C */	ble lbl_80C2F4D8
/* 80C2F480  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80C2F484  40 80 00 08 */	bge lbl_80C2F48C
/* 80C2F488  D0 5D 04 D4 */	stfs f2, 0x4d4(r29)
lbl_80C2F48C:
/* 80C2F48C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C2F490  4B 63 84 C5 */	bl cM_rndF__Ff
/* 80C2F494  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C2F498  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2F49C  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F4A0  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80C2F4A4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C2F4A8  98 1D 08 5B */	stb r0, 0x85b(r29)
/* 80C2F4AC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C2F4B0  4B 63 84 A5 */	bl cM_rndF__Ff
/* 80C2F4B4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80C2F4B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C2F4BC  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F4C0  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80C2F4C4  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80C2F4C8  B0 1D 08 4C */	sth r0, 0x84c(r29)
/* 80C2F4CC  38 00 04 00 */	li r0, 0x400
/* 80C2F4D0  B0 1D 08 56 */	sth r0, 0x856(r29)
/* 80C2F4D4  48 00 00 68 */	b lbl_80C2F53C
lbl_80C2F4D8:
/* 80C2F4D8  88 1D 08 5B */	lbz r0, 0x85b(r29)
/* 80C2F4DC  28 00 00 00 */	cmplwi r0, 0
/* 80C2F4E0  40 82 00 5C */	bne lbl_80C2F53C
/* 80C2F4E4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C2F4E8  4B 63 84 6D */	bl cM_rndF__Ff
/* 80C2F4EC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C2F4F0  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2F4F4  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F4F8  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80C2F4FC  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C2F500  98 1D 08 5B */	stb r0, 0x85b(r29)
/* 80C2F504  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C2F508  4B 63 84 85 */	bl cM_rndFX__Ff
/* 80C2F50C  FC 00 08 1E */	fctiwz f0, f1
/* 80C2F510  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80C2F514  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80C2F518  B0 1D 08 4C */	sth r0, 0x84c(r29)
/* 80C2F51C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80C2F520  4B 63 84 35 */	bl cM_rndF__Ff
/* 80C2F524  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80C2F528  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2F52C  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F530  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80C2F534  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C2F538  B0 1D 08 56 */	sth r0, 0x856(r29)
lbl_80C2F53C:
/* 80C2F53C  28 1E 00 00 */	cmplwi r30, 0
/* 80C2F540  41 82 01 40 */	beq lbl_80C2F680
/* 80C2F544  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80C2F548  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C2F54C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C2F550  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C2F554  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C2F558  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80C2F55C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80C2F560  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80C2F564  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C2F568  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C2F56C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80C2F570  38 61 00 20 */	addi r3, r1, 0x20
/* 80C2F574  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C2F578  4B 71 7E 25 */	bl PSVECSquareDistance
/* 80C2F57C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C2F580  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2F584  40 81 00 58 */	ble lbl_80C2F5DC
/* 80C2F588  FC 00 08 34 */	frsqrte f0, f1
/* 80C2F58C  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 80C2F590  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2F594  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 80C2F598  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2F59C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2F5A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2F5A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2F5A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2F5AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2F5B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2F5B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2F5B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2F5BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2F5C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2F5C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2F5C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2F5CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2F5D0  FC 21 00 32 */	fmul f1, f1, f0
/* 80C2F5D4  FC 20 08 18 */	frsp f1, f1
/* 80C2F5D8  48 00 00 88 */	b lbl_80C2F660
lbl_80C2F5DC:
/* 80C2F5DC  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 80C2F5E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2F5E4  40 80 00 10 */	bge lbl_80C2F5F4
/* 80C2F5E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2F5EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2F5F0  48 00 00 70 */	b lbl_80C2F660
lbl_80C2F5F4:
/* 80C2F5F4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C2F5F8  80 81 00 08 */	lwz r4, 8(r1)
/* 80C2F5FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2F600  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2F604  7C 03 00 00 */	cmpw r3, r0
/* 80C2F608  41 82 00 14 */	beq lbl_80C2F61C
/* 80C2F60C  40 80 00 40 */	bge lbl_80C2F64C
/* 80C2F610  2C 03 00 00 */	cmpwi r3, 0
/* 80C2F614  41 82 00 20 */	beq lbl_80C2F634
/* 80C2F618  48 00 00 34 */	b lbl_80C2F64C
lbl_80C2F61C:
/* 80C2F61C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2F620  41 82 00 0C */	beq lbl_80C2F62C
/* 80C2F624  38 00 00 01 */	li r0, 1
/* 80C2F628  48 00 00 28 */	b lbl_80C2F650
lbl_80C2F62C:
/* 80C2F62C  38 00 00 02 */	li r0, 2
/* 80C2F630  48 00 00 20 */	b lbl_80C2F650
lbl_80C2F634:
/* 80C2F634  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2F638  41 82 00 0C */	beq lbl_80C2F644
/* 80C2F63C  38 00 00 05 */	li r0, 5
/* 80C2F640  48 00 00 10 */	b lbl_80C2F650
lbl_80C2F644:
/* 80C2F644  38 00 00 03 */	li r0, 3
/* 80C2F648  48 00 00 08 */	b lbl_80C2F650
lbl_80C2F64C:
/* 80C2F64C  38 00 00 04 */	li r0, 4
lbl_80C2F650:
/* 80C2F650  2C 00 00 01 */	cmpwi r0, 1
/* 80C2F654  40 82 00 0C */	bne lbl_80C2F660
/* 80C2F658  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2F65C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C2F660:
/* 80C2F660  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80C2F664  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2F668  40 80 00 18 */	bge lbl_80C2F680
/* 80C2F66C  38 7D 08 20 */	addi r3, r29, 0x820
/* 80C2F670  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80C2F674  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80C2F678  4B 64 10 C9 */	bl cLib_chaseF__FPfff
/* 80C2F67C  48 00 00 14 */	b lbl_80C2F690
lbl_80C2F680:
/* 80C2F680  38 7D 08 20 */	addi r3, r29, 0x820
/* 80C2F684  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80C2F688  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80C2F68C  4B 64 10 B5 */	bl cLib_chaseF__FPfff
lbl_80C2F690:
/* 80C2F690  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80C2F694  A8 9D 08 4E */	lha r4, 0x84e(r29)
/* 80C2F698  A8 BD 08 54 */	lha r5, 0x854(r29)
/* 80C2F69C  4B 64 14 F5 */	bl cLib_chaseAngleS__FPsss
/* 80C2F6A0  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80C2F6A4  A8 9D 08 4C */	lha r4, 0x84c(r29)
/* 80C2F6A8  A8 BD 08 56 */	lha r5, 0x856(r29)
/* 80C2F6AC  4B 64 14 E5 */	bl cLib_chaseAngleS__FPsss
/* 80C2F6B0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C2F6B4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C2F6B8  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80C2F6BC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C2F6C0  7C 63 02 14 */	add r3, r3, r0
/* 80C2F6C4  C0 23 00 04 */	lfs f1, 4(r3)
/* 80C2F6C8  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80C2F6CC  C0 1D 08 20 */	lfs f0, 0x820(r29)
/* 80C2F6D0  EC 20 00 72 */	fmuls f1, f0, f1
/* 80C2F6D4  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80C2F6D8  4B 64 10 69 */	bl cLib_chaseF__FPfff
/* 80C2F6DC  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80C2F6E0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C2F6E4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C2F6E8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C2F6EC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C2F6F0  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80C2F6F4  C0 1D 08 20 */	lfs f0, 0x820(r29)
/* 80C2F6F8  FC 00 00 50 */	fneg f0, f0
/* 80C2F6FC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80C2F700  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80C2F704  4B 64 10 3D */	bl cLib_chaseF__FPfff
/* 80C2F708  38 7D 08 48 */	addi r3, r29, 0x848
/* 80C2F70C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C2F710  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 80C2F714  4B 64 10 2D */	bl cLib_chaseF__FPfff
/* 80C2F718  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A4@ha */
/* 80C2F71C  38 03 00 A4 */	addi r0, r3, 0x00A4 /* 0x000600A4@l */
/* 80C2F720  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C2F724  38 7D 05 98 */	addi r3, r29, 0x598
/* 80C2F728  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C2F72C  38 A0 00 00 */	li r5, 0
/* 80C2F730  38 C0 FF FF */	li r6, -1
/* 80C2F734  81 9D 05 98 */	lwz r12, 0x598(r29)
/* 80C2F738  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C2F73C  7D 89 03 A6 */	mtctr r12
/* 80C2F740  4E 80 04 21 */	bctrl 
lbl_80C2F744:
/* 80C2F744  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 80C2F748  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80C2F74C  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80C2F750  4B 73 2A D9 */	bl _restgpr_29
/* 80C2F754  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80C2F758  7C 08 03 A6 */	mtlr r0
/* 80C2F75C  38 21 01 00 */	addi r1, r1, 0x100
/* 80C2F760  4E 80 00 20 */	blr 
