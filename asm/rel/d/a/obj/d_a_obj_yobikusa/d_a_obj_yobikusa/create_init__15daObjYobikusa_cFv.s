lbl_8059CE7C:
/* 8059CE7C  94 21 FD B0 */	stwu r1, -0x250(r1)
/* 8059CE80  7C 08 02 A6 */	mflr r0
/* 8059CE84  90 01 02 54 */	stw r0, 0x254(r1)
/* 8059CE88  39 61 02 50 */	addi r11, r1, 0x250
/* 8059CE8C  4B DC 53 49 */	bl _savegpr_27
/* 8059CE90  7C 7C 1B 78 */	mr r28, r3
/* 8059CE94  3C 80 80 5A */	lis r4, M_attr__15daObjYobikusa_c@ha /* 0x8059DE7C@ha */
/* 8059CE98  3B E4 DE 7C */	addi r31, r4, M_attr__15daObjYobikusa_c@l /* 0x8059DE7C@l */
/* 8059CE9C  48 00 02 85 */	bl initBaseMtx__15daObjYobikusa_cFv
/* 8059CEA0  7F 83 E3 78 */	mr r3, r28
/* 8059CEA4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8059CEA8  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 8059CEAC  FC 60 08 90 */	fmr f3, f1
/* 8059CEB0  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 8059CEB4  C0 BF 00 54 */	lfs f5, 0x54(r31)
/* 8059CEB8  FC C0 20 90 */	fmr f6, f4
/* 8059CEBC  4B A7 D6 8D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8059CEC0  38 61 00 10 */	addi r3, r1, 0x10
/* 8059CEC4  4B AD 8F E9 */	bl __ct__12dBgS_AcchCirFv
/* 8059CEC8  3B 61 00 50 */	addi r27, r1, 0x50
/* 8059CECC  7F 63 DB 78 */	mr r3, r27
/* 8059CED0  4B AD 91 D1 */	bl __ct__9dBgS_AcchFv
/* 8059CED4  3C 60 80 5A */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8059E0AC@ha */
/* 8059CED8  38 63 E0 AC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8059E0AC@l */
/* 8059CEDC  90 61 00 60 */	stw r3, 0x60(r1)
/* 8059CEE0  3B C3 00 0C */	addi r30, r3, 0xc
/* 8059CEE4  93 C1 00 64 */	stw r30, 0x64(r1)
/* 8059CEE8  3B A3 00 18 */	addi r29, r3, 0x18
/* 8059CEEC  93 A1 00 74 */	stw r29, 0x74(r1)
/* 8059CEF0  38 7B 00 14 */	addi r3, r27, 0x14
/* 8059CEF4  4B AD BF 75 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8059CEF8  38 61 00 10 */	addi r3, r1, 0x10
/* 8059CEFC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8059CF00  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 8059CF04  4B AD 90 55 */	bl SetWall__12dBgS_AcchCirFff
/* 8059CF08  38 00 00 00 */	li r0, 0
/* 8059CF0C  90 01 00 08 */	stw r0, 8(r1)
/* 8059CF10  7F 63 DB 78 */	mr r3, r27
/* 8059CF14  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8059CF18  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 8059CF1C  7F 86 E3 78 */	mr r6, r28
/* 8059CF20  38 E0 00 01 */	li r7, 1
/* 8059CF24  39 01 00 10 */	addi r8, r1, 0x10
/* 8059CF28  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 8059CF2C  39 40 00 00 */	li r10, 0
/* 8059CF30  4B AD 93 19 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8059CF34  7F 63 DB 78 */	mr r3, r27
/* 8059CF38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059CF3C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059CF40  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8059CF44  4B AD 9B 69 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8059CF48  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 8059CF4C  D0 1C 07 3C */	stfs f0, 0x73c(r28)
/* 8059CF50  A0 01 01 40 */	lhz r0, 0x140(r1)
/* 8059CF54  B0 1C 07 2C */	sth r0, 0x72c(r28)
/* 8059CF58  A0 01 01 42 */	lhz r0, 0x142(r1)
/* 8059CF5C  B0 1C 07 2E */	sth r0, 0x72e(r28)
/* 8059CF60  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8059CF64  90 1C 07 30 */	stw r0, 0x730(r28)
/* 8059CF68  80 01 01 48 */	lwz r0, 0x148(r1)
/* 8059CF6C  90 1C 07 34 */	stw r0, 0x734(r28)
/* 8059CF70  88 1C 04 9A */	lbz r0, 0x49a(r28)
/* 8059CF74  60 00 00 10 */	ori r0, r0, 0x10
/* 8059CF78  98 1C 04 9A */	stb r0, 0x49a(r28)
/* 8059CF7C  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 8059CF80  60 00 00 10 */	ori r0, r0, 0x10
/* 8059CF84  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 8059CF88  38 00 00 2A */	li r0, 0x2a
/* 8059CF8C  98 1C 05 48 */	stb r0, 0x548(r28)
/* 8059CF90  7F 83 E3 78 */	mr r3, r28
/* 8059CF94  48 00 03 8D */	bl initCcCylinder__15daObjYobikusa_cFv
/* 8059CF98  7F 83 E3 78 */	mr r3, r28
/* 8059CF9C  38 80 00 00 */	li r4, 0
/* 8059CFA0  4B FF FA 59 */	bl setAction__15daObjYobikusa_cFQ215daObjYobikusa_c6Mode_e
/* 8059CFA4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8059CFA8  D0 1C 07 40 */	stfs f0, 0x740(r28)
/* 8059CFAC  4B CC A8 C1 */	bl cM_rnd__Fv
/* 8059CFB0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8059CFB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059CFB8  FC 00 00 1E */	fctiwz f0, f0
/* 8059CFBC  D8 01 02 28 */	stfd f0, 0x228(r1)
/* 8059CFC0  80 01 02 2C */	lwz r0, 0x22c(r1)
/* 8059CFC4  B0 1C 07 64 */	sth r0, 0x764(r28)
/* 8059CFC8  4B CC A8 A5 */	bl cM_rnd__Fv
/* 8059CFCC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8059CFD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059CFD4  FC 00 00 1E */	fctiwz f0, f0
/* 8059CFD8  D8 01 02 30 */	stfd f0, 0x230(r1)
/* 8059CFDC  80 01 02 34 */	lwz r0, 0x234(r1)
/* 8059CFE0  B0 1C 07 66 */	sth r0, 0x766(r28)
/* 8059CFE4  3C 60 80 5A */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8059E0AC@ha */
/* 8059CFE8  38 03 E0 AC */	addi r0, r3, __vt__12dBgS_ObjAcch@l /* 0x8059E0AC@l */
/* 8059CFEC  90 01 00 60 */	stw r0, 0x60(r1)
/* 8059CFF0  93 C1 00 64 */	stw r30, 0x64(r1)
/* 8059CFF4  93 A1 00 74 */	stw r29, 0x74(r1)
/* 8059CFF8  7F 63 DB 78 */	mr r3, r27
/* 8059CFFC  38 80 00 00 */	li r4, 0
/* 8059D000  4B AD 8F 95 */	bl __dt__9dBgS_AcchFv
/* 8059D004  3C 60 80 5A */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8059E0A0@ha */
/* 8059D008  38 03 E0 A0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8059E0A0@l */
/* 8059D00C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8059D010  38 61 00 24 */	addi r3, r1, 0x24
/* 8059D014  38 80 FF FF */	li r4, -1
/* 8059D018  4B CD 1F 01 */	bl __dt__8cM3dGCirFv
/* 8059D01C  38 61 00 10 */	addi r3, r1, 0x10
/* 8059D020  38 80 00 00 */	li r4, 0
/* 8059D024  4B CC B0 8D */	bl __dt__13cBgS_PolyInfoFv
/* 8059D028  39 61 02 50 */	addi r11, r1, 0x250
/* 8059D02C  4B DC 51 F5 */	bl _restgpr_27
/* 8059D030  80 01 02 54 */	lwz r0, 0x254(r1)
/* 8059D034  7C 08 03 A6 */	mtlr r0
/* 8059D038  38 21 02 50 */	addi r1, r1, 0x250
/* 8059D03C  4E 80 00 20 */	blr 
