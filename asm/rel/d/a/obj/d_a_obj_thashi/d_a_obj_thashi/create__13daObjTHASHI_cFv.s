lbl_80D0C8B4:
/* 80D0C8B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D0C8B8  7C 08 02 A6 */	mflr r0
/* 80D0C8BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D0C8C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D0C8C4  4B 65 59 18 */	b _savegpr_29
/* 80D0C8C8  7C 7F 1B 78 */	mr r31, r3
/* 80D0C8CC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D0C8D0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D0C8D4  40 82 01 F8 */	bne lbl_80D0CACC
/* 80D0C8D8  7F E0 FB 79 */	or. r0, r31, r31
/* 80D0C8DC  41 82 01 E4 */	beq lbl_80D0CAC0
/* 80D0C8E0  7C 1E 03 78 */	mr r30, r0
/* 80D0C8E4  4B 36 BD 40 */	b __ct__16dBgS_MoveBgActorFv
/* 80D0C8E8  3C 60 80 D1 */	lis r3, __vt__13daObjTHASHI_c@ha
/* 80D0C8EC  38 03 D3 F4 */	addi r0, r3, __vt__13daObjTHASHI_c@l
/* 80D0C8F0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D0C8F4  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 80D0C8F8  3C 80 80 D1 */	lis r4, __ct__4cXyzFv@ha
/* 80D0C8FC  38 84 CE 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 80D0C900  3C A0 80 D1 */	lis r5, __dt__4cXyzFv@ha
/* 80D0C904  38 A5 C2 DC */	addi r5, r5, __dt__4cXyzFv@l
/* 80D0C908  38 C0 00 0C */	li r6, 0xc
/* 80D0C90C  38 E0 00 05 */	li r7, 5
/* 80D0C910  4B 65 54 50 */	b __construct_array
/* 80D0C914  38 7E 06 38 */	addi r3, r30, 0x638
/* 80D0C918  3C 80 80 D1 */	lis r4, __ct__4cXyzFv@ha
/* 80D0C91C  38 84 CE 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 80D0C920  3C A0 80 D1 */	lis r5, __dt__4cXyzFv@ha
/* 80D0C924  38 A5 C2 DC */	addi r5, r5, __dt__4cXyzFv@l
/* 80D0C928  38 C0 00 0C */	li r6, 0xc
/* 80D0C92C  38 E0 00 32 */	li r7, 0x32
/* 80D0C930  4B 65 54 30 */	b __construct_array
/* 80D0C934  38 7E 08 90 */	addi r3, r30, 0x890
/* 80D0C938  3C 80 80 D1 */	lis r4, __ct__4cXyzFv@ha
/* 80D0C93C  38 84 CE 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 80D0C940  3C A0 80 D1 */	lis r5, __dt__4cXyzFv@ha
/* 80D0C944  38 A5 C2 DC */	addi r5, r5, __dt__4cXyzFv@l
/* 80D0C948  38 C0 00 0C */	li r6, 0xc
/* 80D0C94C  38 E0 00 32 */	li r7, 0x32
/* 80D0C950  4B 65 54 10 */	b __construct_array
/* 80D0C954  38 7E 0A E8 */	addi r3, r30, 0xae8
/* 80D0C958  3C 80 80 D1 */	lis r4, __ct__4cXyzFv@ha
/* 80D0C95C  38 84 CE 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 80D0C960  3C A0 80 D1 */	lis r5, __dt__4cXyzFv@ha
/* 80D0C964  38 A5 C2 DC */	addi r5, r5, __dt__4cXyzFv@l
/* 80D0C968  38 C0 00 0C */	li r6, 0xc
/* 80D0C96C  38 E0 00 32 */	li r7, 0x32
/* 80D0C970  4B 65 53 F0 */	b __construct_array
/* 80D0C974  38 7E 0D 48 */	addi r3, r30, 0xd48
/* 80D0C978  3C 80 80 D1 */	lis r4, __ct__5csXyzFv@ha
/* 80D0C97C  38 84 CE 60 */	addi r4, r4, __ct__5csXyzFv@l
/* 80D0C980  3C A0 80 D1 */	lis r5, __dt__5csXyzFv@ha
/* 80D0C984  38 A5 C3 18 */	addi r5, r5, __dt__5csXyzFv@l
/* 80D0C988  38 C0 00 06 */	li r6, 6
/* 80D0C98C  38 E0 00 32 */	li r7, 0x32
/* 80D0C990  4B 65 53 D0 */	b __construct_array
/* 80D0C994  38 7E 0E 74 */	addi r3, r30, 0xe74
/* 80D0C998  3C 80 80 D1 */	lis r4, __ct__5csXyzFv@ha
/* 80D0C99C  38 84 CE 60 */	addi r4, r4, __ct__5csXyzFv@l
/* 80D0C9A0  3C A0 80 D1 */	lis r5, __dt__5csXyzFv@ha
/* 80D0C9A4  38 A5 C3 18 */	addi r5, r5, __dt__5csXyzFv@l
/* 80D0C9A8  38 C0 00 06 */	li r6, 6
/* 80D0C9AC  38 E0 00 32 */	li r7, 0x32
/* 80D0C9B0  4B 65 53 B0 */	b __construct_array
/* 80D0C9B4  38 7E 10 AC */	addi r3, r30, 0x10ac
/* 80D0C9B8  4B 5B 1E 8C */	b __ct__16Z2SoundObjSimpleFv
/* 80D0C9BC  38 7E 11 B0 */	addi r3, r30, 0x11b0
/* 80D0C9C0  4B 36 94 EC */	b __ct__12dBgS_AcchCirFv
/* 80D0C9C4  3B BE 11 F0 */	addi r29, r30, 0x11f0
/* 80D0C9C8  7F A3 EB 78 */	mr r3, r29
/* 80D0C9CC  4B 36 96 D4 */	b __ct__9dBgS_AcchFv
/* 80D0C9D0  3C 60 80 D1 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80D0C9D4  38 63 D3 D0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80D0C9D8  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80D0C9DC  38 03 00 0C */	addi r0, r3, 0xc
/* 80D0C9E0  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80D0C9E4  38 03 00 18 */	addi r0, r3, 0x18
/* 80D0C9E8  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80D0C9EC  38 7D 00 14 */	addi r3, r29, 0x14
/* 80D0C9F0  4B 36 C4 78 */	b SetObj__16dBgS_PolyPassChkFv
/* 80D0C9F4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D0C9F8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D0C9FC  90 1E 13 E0 */	stw r0, 0x13e0(r30)
/* 80D0CA00  38 7E 13 E4 */	addi r3, r30, 0x13e4
/* 80D0CA04  4B 37 6D 5C */	b __ct__10dCcD_GSttsFv
/* 80D0CA08  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D0CA0C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D0CA10  90 7E 13 E0 */	stw r3, 0x13e0(r30)
/* 80D0CA14  3B A3 00 20 */	addi r29, r3, 0x20
/* 80D0CA18  93 BE 13 E4 */	stw r29, 0x13e4(r30)
/* 80D0CA1C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D0CA20  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D0CA24  90 1E 14 1C */	stw r0, 0x141c(r30)
/* 80D0CA28  38 7E 14 20 */	addi r3, r30, 0x1420
/* 80D0CA2C  4B 37 6D 34 */	b __ct__10dCcD_GSttsFv
/* 80D0CA30  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D0CA34  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80D0CA38  90 1E 14 1C */	stw r0, 0x141c(r30)
/* 80D0CA3C  93 BE 14 20 */	stw r29, 0x1420(r30)
/* 80D0CA40  38 7E 14 40 */	addi r3, r30, 0x1440
/* 80D0CA44  3C 80 80 D1 */	lis r4, __ct__8dCcD_SphFv@ha
/* 80D0CA48  38 84 CD 24 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80D0CA4C  3C A0 80 D1 */	lis r5, __dt__8dCcD_SphFv@ha
/* 80D0CA50  38 A5 CC 58 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80D0CA54  38 C0 01 38 */	li r6, 0x138
/* 80D0CA58  38 E0 00 05 */	li r7, 5
/* 80D0CA5C  4B 65 53 04 */	b __construct_array
/* 80D0CA60  3B BE 1A 58 */	addi r29, r30, 0x1a58
/* 80D0CA64  7F A3 EB 78 */	mr r3, r29
/* 80D0CA68  4B 37 6F C0 */	b __ct__12dCcD_GObjInfFv
/* 80D0CA6C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D0CA70  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D0CA74  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D0CA78  3C 60 80 D1 */	lis r3, __vt__8cM3dGAab@ha
/* 80D0CA7C  38 03 D3 C4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D0CA80  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80D0CA84  3C 60 80 D1 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D0CA88  38 03 D3 B8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D0CA8C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D0CA90  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D0CA94  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D0CA98  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80D0CA9C  38 03 00 58 */	addi r0, r3, 0x58
/* 80D0CAA0  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D0CAA4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D0CAA8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D0CAAC  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80D0CAB0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D0CAB4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D0CAB8  38 03 00 84 */	addi r0, r3, 0x84
/* 80D0CABC  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_80D0CAC0:
/* 80D0CAC0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D0CAC4  60 00 00 08 */	ori r0, r0, 8
/* 80D0CAC8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D0CACC:
/* 80D0CACC  38 7F 11 A8 */	addi r3, r31, 0x11a8
/* 80D0CAD0  3C 80 80 D1 */	lis r4, l_arcName@ha
/* 80D0CAD4  38 84 D3 34 */	addi r4, r4, l_arcName@l
/* 80D0CAD8  80 84 00 00 */	lwz r4, 0(r4)
/* 80D0CADC  4B 32 03 E0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D0CAE0  7C 7D 1B 78 */	mr r29, r3
/* 80D0CAE4  2C 1D 00 04 */	cmpwi r29, 4
/* 80D0CAE8  40 82 00 C4 */	bne lbl_80D0CBAC
/* 80D0CAEC  3C 60 80 D1 */	lis r3, lit_3988@ha
/* 80D0CAF0  C0 03 D2 80 */	lfs f0, lit_3988@l(r3)
/* 80D0CAF4  D0 1F 10 A0 */	stfs f0, 0x10a0(r31)
/* 80D0CAF8  3C 60 80 D1 */	lis r3, lit_4656@ha
/* 80D0CAFC  C0 03 D2 BC */	lfs f0, lit_4656@l(r3)
/* 80D0CB00  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80D0CB04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0CB08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D0CB0C  3C 63 00 02 */	addis r3, r3, 2
/* 80D0CB10  3C 80 80 D1 */	lis r4, l_arcName@ha
/* 80D0CB14  38 84 D3 34 */	addi r4, r4, l_arcName@l
/* 80D0CB18  80 84 00 00 */	lwz r4, 0(r4)
/* 80D0CB1C  3C A0 80 D1 */	lis r5, stringBase0@ha
/* 80D0CB20  38 A5 D2 D0 */	addi r5, r5, stringBase0@l
/* 80D0CB24  38 A5 00 54 */	addi r5, r5, 0x54
/* 80D0CB28  38 63 C2 F8 */	addi r3, r3, -15624
/* 80D0CB2C  4B 32 FB 8C */	b getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80D0CB30  7C 65 1B 78 */	mr r5, r3
/* 80D0CB34  38 00 00 00 */	li r0, 0
/* 80D0CB38  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80D0CB3C  7F E3 FB 78 */	mr r3, r31
/* 80D0CB40  3C 80 80 D1 */	lis r4, l_arcName@ha
/* 80D0CB44  38 84 D3 34 */	addi r4, r4, l_arcName@l
/* 80D0CB48  80 84 00 00 */	lwz r4, 0(r4)
/* 80D0CB4C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80D0CB50  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80D0CB54  38 E0 40 00 */	li r7, 0x4000
/* 80D0CB58  39 00 00 00 */	li r8, 0
/* 80D0CB5C  4B 36 BC 60 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D0CB60  7C 7D 1B 78 */	mr r29, r3
/* 80D0CB64  2C 1D 00 05 */	cmpwi r29, 5
/* 80D0CB68  40 82 00 08 */	bne lbl_80D0CB70
/* 80D0CB6C  48 00 00 44 */	b lbl_80D0CBB0
lbl_80D0CB70:
/* 80D0CB70  80 7F 10 D4 */	lwz r3, 0x10d4(r31)
/* 80D0CB74  38 03 00 24 */	addi r0, r3, 0x24
/* 80D0CB78  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D0CB7C  7F E3 FB 78 */	mr r3, r31
/* 80D0CB80  4B FF F6 B9 */	bl initCcCylinder__13daObjTHASHI_cFv
/* 80D0CB84  38 00 00 00 */	li r0, 0
/* 80D0CB88  B0 1F 06 36 */	sth r0, 0x636(r31)
/* 80D0CB8C  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80D0CB90  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80D0CB94  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D0CB98  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 80D0CB9C  D0 3F 05 C4 */	stfs f1, 0x5c4(r31)
/* 80D0CBA0  D0 5F 05 C8 */	stfs f2, 0x5c8(r31)
/* 80D0CBA4  7F E3 FB 78 */	mr r3, r31
/* 80D0CBA8  4B FF FA 8D */	bl daObjTHASHI_Execute__FP13daObjTHASHI_c
lbl_80D0CBAC:
/* 80D0CBAC  7F A3 EB 78 */	mr r3, r29
lbl_80D0CBB0:
/* 80D0CBB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D0CBB4  4B 65 56 74 */	b _restgpr_29
/* 80D0CBB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D0CBBC  7C 08 03 A6 */	mtlr r0
/* 80D0CBC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80D0CBC4  4E 80 00 20 */	blr 
