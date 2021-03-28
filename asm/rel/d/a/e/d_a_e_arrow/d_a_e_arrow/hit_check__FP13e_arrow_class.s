lbl_8067CBA4:
/* 8067CBA4  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 8067CBA8  7C 08 02 A6 */	mflr r0
/* 8067CBAC  90 01 01 84 */	stw r0, 0x184(r1)
/* 8067CBB0  39 61 01 80 */	addi r11, r1, 0x180
/* 8067CBB4  4B CE 56 1C */	b _savegpr_26
/* 8067CBB8  7C 7D 1B 78 */	mr r29, r3
/* 8067CBBC  3C 60 80 68 */	lis r3, lit_1109@ha
/* 8067CBC0  3B C3 EB 18 */	addi r30, r3, lit_1109@l
/* 8067CBC4  3C 60 80 68 */	lis r3, lit_3983@ha
/* 8067CBC8  3B E3 E8 80 */	addi r31, r3, lit_3983@l
/* 8067CBCC  38 61 01 0C */	addi r3, r1, 0x10c
/* 8067CBD0  4B 9F AB E0 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 8067CBD4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8067CBD8  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8067CBDC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8067CBE0  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 8067CBE4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8067CBE8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8067CBEC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8067CBF0  EC 01 00 2A */	fadds f0, f1, f0
/* 8067CBF4  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8067CBF8  38 61 01 0C */	addi r3, r1, 0x10c
/* 8067CBFC  38 81 00 90 */	addi r4, r1, 0x90
/* 8067CC00  4B BE B1 28 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8067CC04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067CC08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067CC0C  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 8067CC10  7F 63 DB 78 */	mr r3, r27
/* 8067CC14  38 81 01 0C */	addi r4, r1, 0x10c
/* 8067CC18  4B 9F 78 88 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8067CC1C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8067CC20  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8067CC24  4C 40 13 82 */	cror 2, 0, 2
/* 8067CC28  40 82 00 30 */	bne lbl_8067CC58
/* 8067CC2C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8067CC30  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8067CC34  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 8067CC38  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8067CC3C  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 8067CC40  7F A3 EB 78 */	mr r3, r29
/* 8067CC44  4B 99 D0 38 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8067CC48  38 61 01 0C */	addi r3, r1, 0x10c
/* 8067CC4C  38 80 FF FF */	li r4, -1
/* 8067CC50  4B 9F AB F8 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 8067CC54  48 00 05 B0 */	b lbl_8067D204
lbl_8067CC58:
/* 8067CC58  38 61 00 9C */	addi r3, r1, 0x9c
/* 8067CC5C  4B 9F B5 7C */	b __ct__16dBgS_ArrowLinChkFv
/* 8067CC60  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8067CC64  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8067CC68  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8067CC6C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8067CC70  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8067CC74  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8067CC78  3B 80 00 00 */	li r28, 0
lbl_8067CC7C:
/* 8067CC7C  38 61 00 84 */	addi r3, r1, 0x84
/* 8067CC80  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8067CC84  7C 65 1B 78 */	mr r5, r3
/* 8067CC88  4B CC A4 2C */	b PSVECSubtract
/* 8067CC8C  3B 9C 00 01 */	addi r28, r28, 1
/* 8067CC90  2C 1C 00 02 */	cmpwi r28, 2
/* 8067CC94  41 80 FF E8 */	blt lbl_8067CC7C
/* 8067CC98  38 61 00 9C */	addi r3, r1, 0x9c
/* 8067CC9C  38 81 00 84 */	addi r4, r1, 0x84
/* 8067CCA0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8067CCA4  7F A6 EB 78 */	mr r6, r29
/* 8067CCA8  4B 9F B0 BC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8067CCAC  7F 63 DB 78 */	mr r3, r27
/* 8067CCB0  38 81 00 9C */	addi r4, r1, 0x9c
/* 8067CCB4  4B 9F 77 00 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8067CCB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8067CCBC  41 82 01 A0 */	beq lbl_8067CE5C
/* 8067CCC0  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 8067CCC4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8067CCC8  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8067CCCC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8067CCD0  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8067CCD4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8067CCD8  7F 63 DB 78 */	mr r3, r27
/* 8067CCDC  3B 81 00 B0 */	addi r28, r1, 0xb0
/* 8067CCE0  7F 84 E3 78 */	mr r4, r28
/* 8067CCE4  7F A5 EB 78 */	mr r5, r29
/* 8067CCE8  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 8067CCEC  4B 9F 8F 08 */	b ArrowStickCallBack__4dBgSFRC13cBgS_PolyInfoP10fopAc_ac_cR4cXyz
/* 8067CCF0  88 1D 05 B9 */	lbz r0, 0x5b9(r29)
/* 8067CCF4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8067CCF8  41 82 00 20 */	beq lbl_8067CD18
/* 8067CCFC  38 00 00 04 */	li r0, 4
/* 8067CD00  B0 1D 05 C2 */	sth r0, 0x5c2(r29)
/* 8067CD04  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8067CD08  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8067CD0C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8067CD10  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8067CD14  48 00 00 2C */	b lbl_8067CD40
lbl_8067CD18:
/* 8067CD18  38 00 00 01 */	li r0, 1
/* 8067CD1C  B0 1D 05 C2 */	sth r0, 0x5c2(r29)
/* 8067CD20  38 61 00 54 */	addi r3, r1, 0x54
/* 8067CD24  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8067CD28  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8067CD2C  4B BE 9E 58 */	b __ml__4cXyzCFf
/* 8067CD30  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8067CD34  38 81 00 54 */	addi r4, r1, 0x54
/* 8067CD38  7C 65 1B 78 */	mr r5, r3
/* 8067CD3C  4B CC A3 78 */	b PSVECSubtract
lbl_8067CD40:
/* 8067CD40  38 00 00 00 */	li r0, 0
/* 8067CD44  B0 1D 05 C4 */	sth r0, 0x5c4(r29)
/* 8067CD48  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8067CD4C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8067CD50  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 8067CD54  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8067CD58  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 8067CD5C  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 8067CD60  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
/* 8067CD64  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8067CD68  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8067CD6C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8067CD70  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8067CD74  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8067CD78  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8067CD7C  38 61 00 48 */	addi r3, r1, 0x48
/* 8067CD80  38 80 00 03 */	li r4, 3
/* 8067CD84  28 1D 00 00 */	cmplwi r29, 0
/* 8067CD88  41 82 00 0C */	beq lbl_8067CD94
/* 8067CD8C  80 BD 00 04 */	lwz r5, 4(r29)
/* 8067CD90  48 00 00 08 */	b lbl_8067CD98
lbl_8067CD94:
/* 8067CD94  38 A0 FF FF */	li r5, -1
lbl_8067CD98:
/* 8067CD98  38 C0 00 0A */	li r6, 0xa
/* 8067CD9C  4B B2 B4 24 */	b dKy_Sound_set__F4cXyziUii
/* 8067CDA0  7F 63 DB 78 */	mr r3, r27
/* 8067CDA4  7F 84 E3 78 */	mr r4, r28
/* 8067CDA8  4B 9F 80 A8 */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8067CDAC  7C 7B 1B 78 */	mr r27, r3
/* 8067CDB0  7F 83 E3 78 */	mr r3, r28
/* 8067CDB4  4B B2 E7 0C */	b dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 8067CDB8  38 00 00 05 */	li r0, 5
/* 8067CDBC  B0 1D 05 CE */	sth r0, 0x5ce(r29)
/* 8067CDC0  2C 1B 00 05 */	cmpwi r27, 5
/* 8067CDC4  40 82 00 0C */	bne lbl_8067CDD0
/* 8067CDC8  38 00 00 14 */	li r0, 0x14
/* 8067CDCC  B0 1D 05 CE */	sth r0, 0x5ce(r29)
lbl_8067CDD0:
/* 8067CDD0  7F 83 E3 78 */	mr r3, r28
/* 8067CDD4  4B B2 E6 EC */	b dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 8067CDD8  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8067CDDC  38 7D 0A 18 */	addi r3, r29, 0xa18
/* 8067CDE0  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040007@ha */
/* 8067CDE4  38 84 00 07 */	addi r4, r4, 0x0007 /* 0x00040007@l */
/* 8067CDE8  38 C0 00 00 */	li r6, 0
/* 8067CDEC  4B C4 16 B8 */	b startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
/* 8067CDF0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8067CDF4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8067CDF8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8067CDFC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8067CE00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067CE04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067CE08  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8067CE0C  38 00 00 FF */	li r0, 0xff
/* 8067CE10  90 01 00 08 */	stw r0, 8(r1)
/* 8067CE14  38 80 00 00 */	li r4, 0
/* 8067CE18  90 81 00 0C */	stw r4, 0xc(r1)
/* 8067CE1C  38 00 FF FF */	li r0, -1
/* 8067CE20  90 01 00 10 */	stw r0, 0x10(r1)
/* 8067CE24  90 81 00 14 */	stw r4, 0x14(r1)
/* 8067CE28  90 81 00 18 */	stw r4, 0x18(r1)
/* 8067CE2C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8067CE30  80 9D 09 E0 */	lwz r4, 0x9e0(r29)
/* 8067CE34  38 A0 00 00 */	li r5, 0
/* 8067CE38  38 C0 00 E6 */	li r6, 0xe6
/* 8067CE3C  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 8067CE40  39 1D 01 0C */	addi r8, r29, 0x10c
/* 8067CE44  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 8067CE48  39 41 00 78 */	addi r10, r1, 0x78
/* 8067CE4C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8067CE50  4B 9D 06 7C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8067CE54  90 7D 09 E0 */	stw r3, 0x9e0(r29)
/* 8067CE58  48 00 03 94 */	b lbl_8067D1EC
lbl_8067CE5C:
/* 8067CE5C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8067CE60  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8067CE64  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8067CE68  4B BE 9D 1C */	b __ml__4cXyzCFf
/* 8067CE6C  38 61 00 30 */	addi r3, r1, 0x30
/* 8067CE70  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8067CE74  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8067CE78  4B BE 9C 6C */	b __pl__4cXyzCFRC3Vec
/* 8067CE7C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8067CE80  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8067CE84  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8067CE88  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8067CE8C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8067CE90  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8067CE94  38 7D 08 7C */	addi r3, r29, 0x87c
/* 8067CE98  38 81 00 6C */	addi r4, r1, 0x6c
/* 8067CE9C  4B BF 27 AC */	b SetC__8cM3dGSphFRC4cXyz
/* 8067CEA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067CEA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067CEA8  3B 83 23 3C */	addi r28, r3, 0x233c
/* 8067CEAC  7F 83 E3 78 */	mr r3, r28
/* 8067CEB0  38 9D 07 58 */	addi r4, r29, 0x758
/* 8067CEB4  4B BE 7C F4 */	b Set__4cCcSFP8cCcD_Obj
/* 8067CEB8  80 1D 06 7C */	lwz r0, 0x67c(r29)
/* 8067CEBC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8067CEC0  41 82 01 60 */	beq lbl_8067D020
/* 8067CEC4  3B 7D 06 78 */	addi r27, r29, 0x678
/* 8067CEC8  7F 63 DB 78 */	mr r3, r27
/* 8067CECC  4B A0 67 BC */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8067CED0  28 03 00 00 */	cmplwi r3, 0
/* 8067CED4  41 82 01 4C */	beq lbl_8067D020
/* 8067CED8  7F 63 DB 78 */	mr r3, r27
/* 8067CEDC  4B A0 67 AC */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8067CEE0  A8 03 00 08 */	lha r0, 8(r3)
/* 8067CEE4  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8067CEE8  40 82 01 38 */	bne lbl_8067D020
/* 8067CEEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067CEF0  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 8067CEF4  80 7B 5D B4 */	lwz r3, 0x5db4(r27)
/* 8067CEF8  4B A5 FB 34 */	b checkWoodShieldEquipNotIronBall__9daAlink_cCFv
/* 8067CEFC  2C 03 00 00 */	cmpwi r3, 0
/* 8067CF00  41 82 01 20 */	beq lbl_8067D020
/* 8067CF04  38 00 00 03 */	li r0, 3
/* 8067CF08  B0 1D 05 C2 */	sth r0, 0x5c2(r29)
/* 8067CF0C  38 00 00 00 */	li r0, 0
/* 8067CF10  B0 1D 05 C4 */	sth r0, 0x5c4(r29)
/* 8067CF14  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8067CF18  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8067CF1C  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 8067CF20  28 00 00 01 */	cmplwi r0, 1
/* 8067CF24  40 82 00 40 */	bne lbl_8067CF64
/* 8067CF28  3B 40 00 01 */	li r26, 1
/* 8067CF2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067CF30  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 8067CF34  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8067CF38  38 63 02 10 */	addi r3, r3, 0x210
/* 8067CF3C  80 9D 09 E4 */	lwz r4, 0x9e4(r29)
/* 8067CF40  4B 9C E9 D8 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 8067CF44  28 03 00 00 */	cmplwi r3, 0
/* 8067CF48  41 82 00 20 */	beq lbl_8067CF68
/* 8067CF4C  4B C0 1D 14 */	b deleteAllParticle__14JPABaseEmitterFv
/* 8067CF50  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8067CF54  38 63 02 10 */	addi r3, r3, 0x210
/* 8067CF58  80 9D 09 E4 */	lwz r4, 0x9e4(r29)
/* 8067CF5C  4B 9C E9 58 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 8067CF60  48 00 00 08 */	b lbl_8067CF68
lbl_8067CF64:
/* 8067CF64  3B 40 00 00 */	li r26, 0
lbl_8067CF68:
/* 8067CF68  38 00 00 00 */	li r0, 0
/* 8067CF6C  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 8067CF70  B0 1D 05 CE */	sth r0, 0x5ce(r29)
/* 8067CF74  80 7B 5D B4 */	lwz r3, 0x5db4(r27)
/* 8067CF78  7F A4 EB 78 */	mr r4, r29
/* 8067CF7C  7F 45 D3 78 */	mr r5, r26
/* 8067CF80  4B A5 F9 44 */	b setArrowShieldActor__9daAlink_cFP10fopAc_ac_ci
/* 8067CF84  80 7B 5D B4 */	lwz r3, 0x5db4(r27)
/* 8067CF88  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8067CF8C  38 BD 04 E4 */	addi r5, r29, 0x4e4
/* 8067CF90  38 DD 09 D4 */	addi r6, r29, 0x9d4
/* 8067CF94  38 FD 09 C8 */	addi r7, r29, 0x9c8
/* 8067CF98  4B A5 FD DC */	b setArrowShieldPos__9daAlink_cCFP4cXyzP5csXyzPC4cXyzPC4cXyz
/* 8067CF9C  88 1E 00 4C */	lbz r0, 0x4c(r30)
/* 8067CFA0  7C 00 07 75 */	extsb. r0, r0
/* 8067CFA4  40 82 00 34 */	bne lbl_8067CFD8
/* 8067CFA8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8067CFAC  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 8067CFB0  38 7E 00 50 */	addi r3, r30, 0x50
/* 8067CFB4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8067CFB8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8067CFBC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8067CFC0  3C 80 80 68 */	lis r4, __dt__4cXyzFv@ha
/* 8067CFC4  38 84 CB 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 8067CFC8  38 BE 00 40 */	addi r5, r30, 0x40
/* 8067CFCC  4B FF F7 8D */	bl __register_global_object
/* 8067CFD0  38 00 00 01 */	li r0, 1
/* 8067CFD4  98 1E 00 4C */	stb r0, 0x4c(r30)
lbl_8067CFD8:
/* 8067CFD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067CFDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067CFE0  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8067CFE4  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8067CFE8  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 8067CFEC  4B CC 98 FC */	b PSMTXTrans
/* 8067CFF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067CFF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067CFF8  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 8067CFFC  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 8067D000  38 C0 00 00 */	li r6, 0
/* 8067D004  4B 98 F2 9C */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 8067D008  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067D00C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067D010  38 9E 00 50 */	addi r4, r30, 0x50
/* 8067D014  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8067D018  4B CC 9D 54 */	b PSMTXMultVec
/* 8067D01C  48 00 01 D0 */	b lbl_8067D1EC
lbl_8067D020:
/* 8067D020  38 7D 07 58 */	addi r3, r29, 0x758
/* 8067D024  4B A0 74 3C */	b ChkTgHit__12dCcD_GObjInfFv
/* 8067D028  28 03 00 00 */	cmplwi r3, 0
/* 8067D02C  40 82 00 10 */	bne lbl_8067D03C
/* 8067D030  80 1D 06 7C */	lwz r0, 0x67c(r29)
/* 8067D034  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8067D038  41 82 01 14 */	beq lbl_8067D14C
lbl_8067D03C:
/* 8067D03C  38 00 00 02 */	li r0, 2
/* 8067D040  B0 1D 05 C2 */	sth r0, 0x5c2(r29)
/* 8067D044  38 00 00 00 */	li r0, 0
/* 8067D048  B0 1D 05 C4 */	sth r0, 0x5c4(r29)
/* 8067D04C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8067D050  4B BE A9 3C */	b cM_rndFX__Ff
/* 8067D054  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8067D058  EC 01 00 28 */	fsubs f0, f1, f0
/* 8067D05C  FC 00 00 1E */	fctiwz f0, f0
/* 8067D060  D8 01 01 60 */	stfd f0, 0x160(r1)
/* 8067D064  80 01 01 64 */	lwz r0, 0x164(r1)
/* 8067D068  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 8067D06C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 8067D070  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8067D074  EC 01 00 32 */	fmuls f0, f1, f0
/* 8067D078  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8067D07C  38 7D 07 58 */	addi r3, r29, 0x758
/* 8067D080  4B A0 73 E0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8067D084  28 03 00 00 */	cmplwi r3, 0
/* 8067D088  41 82 00 5C */	beq lbl_8067D0E4
/* 8067D08C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8067D090  4B BE A8 FC */	b cM_rndFX__Ff
/* 8067D094  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8067D098  EC 00 08 2A */	fadds f0, f0, f1
/* 8067D09C  FC 00 00 1E */	fctiwz f0, f0
/* 8067D0A0  D8 01 01 60 */	stfd f0, 0x160(r1)
/* 8067D0A4  80 61 01 64 */	lwz r3, 0x164(r1)
/* 8067D0A8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8067D0AC  7C 00 1A 14 */	add r0, r0, r3
/* 8067D0B0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8067D0B4  3C 60 00 04 */	lis r3, 0x0004 /* 0x0004001A@ha */
/* 8067D0B8  38 03 00 1A */	addi r0, r3, 0x001A /* 0x0004001A@l */
/* 8067D0BC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8067D0C0  38 7D 0A 18 */	addi r3, r29, 0xa18
/* 8067D0C4  38 81 00 20 */	addi r4, r1, 0x20
/* 8067D0C8  38 A0 00 00 */	li r5, 0
/* 8067D0CC  38 C0 FF FF */	li r6, -1
/* 8067D0D0  81 9D 0A 28 */	lwz r12, 0xa28(r29)
/* 8067D0D4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8067D0D8  7D 89 03 A6 */	mtctr r12
/* 8067D0DC  4E 80 04 21 */	bctrl 
/* 8067D0E0  48 00 00 2C */	b lbl_8067D10C
lbl_8067D0E4:
/* 8067D0E4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8067D0E8  4B BE A8 A4 */	b cM_rndFX__Ff
/* 8067D0EC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8067D0F0  EC 00 08 2A */	fadds f0, f0, f1
/* 8067D0F4  FC 00 00 1E */	fctiwz f0, f0
/* 8067D0F8  D8 01 01 60 */	stfd f0, 0x160(r1)
/* 8067D0FC  80 61 01 64 */	lwz r3, 0x164(r1)
/* 8067D100  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8067D104  7C 00 1A 14 */	add r0, r0, r3
/* 8067D108  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_8067D10C:
/* 8067D10C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8067D110  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8067D114  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8067D118  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8067D11C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8067D120  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8067D124  38 61 00 24 */	addi r3, r1, 0x24
/* 8067D128  38 80 00 03 */	li r4, 3
/* 8067D12C  28 1D 00 00 */	cmplwi r29, 0
/* 8067D130  41 82 00 0C */	beq lbl_8067D13C
/* 8067D134  80 BD 00 04 */	lwz r5, 4(r29)
/* 8067D138  48 00 00 08 */	b lbl_8067D140
lbl_8067D13C:
/* 8067D13C  38 A0 FF FF */	li r5, -1
lbl_8067D140:
/* 8067D140  38 C0 00 0A */	li r6, 0xa
/* 8067D144  4B B2 B0 7C */	b dKy_Sound_set__F4cXyziUii
/* 8067D148  48 00 00 A4 */	b lbl_8067D1EC
lbl_8067D14C:
/* 8067D14C  38 7D 06 20 */	addi r3, r29, 0x620
/* 8067D150  38 81 00 6C */	addi r4, r1, 0x6c
/* 8067D154  4B A0 79 70 */	b MoveCAt__8dCcD_SphFR4cXyz
/* 8067D158  7F 83 E3 78 */	mr r3, r28
/* 8067D15C  38 9D 06 20 */	addi r4, r29, 0x620
/* 8067D160  4B BE 7A 48 */	b Set__4cCcSFP8cCcD_Obj
/* 8067D164  38 7D 06 20 */	addi r3, r29, 0x620
/* 8067D168  4B A0 71 58 */	b ChkAtHit__12dCcD_GObjInfFv
/* 8067D16C  28 03 00 00 */	cmplwi r3, 0
/* 8067D170  41 82 00 7C */	beq lbl_8067D1EC
/* 8067D174  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8067D178  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8067D17C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8067D180  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8067D184  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067D188  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8067D18C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8067D190  38 80 00 01 */	li r4, 1
/* 8067D194  7F A5 EB 78 */	mr r5, r29
/* 8067D198  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 8067D19C  38 FD 04 E4 */	addi r7, r29, 0x4e4
/* 8067D1A0  39 01 00 60 */	addi r8, r1, 0x60
/* 8067D1A4  39 20 00 00 */	li r9, 0
/* 8067D1A8  4B 9C F0 70 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 8067D1AC  7F A3 EB 78 */	mr r3, r29
/* 8067D1B0  4B 99 CA CC */	b fopAcM_delete__FP10fopAc_ac_c
/* 8067D1B4  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 8067D1B8  28 00 00 01 */	cmplwi r0, 1
/* 8067D1BC  40 82 00 30 */	bne lbl_8067D1EC
/* 8067D1C0  38 00 00 00 */	li r0, 0
/* 8067D1C4  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 8067D1C8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8067D1CC  38 63 02 10 */	addi r3, r3, 0x210
/* 8067D1D0  80 9D 09 EC */	lwz r4, 0x9ec(r29)
/* 8067D1D4  4B 9C E7 44 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 8067D1D8  28 03 00 00 */	cmplwi r3, 0
/* 8067D1DC  41 82 00 10 */	beq lbl_8067D1EC
/* 8067D1E0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8067D1E4  60 00 00 04 */	ori r0, r0, 4
/* 8067D1E8  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_8067D1EC:
/* 8067D1EC  38 61 00 9C */	addi r3, r1, 0x9c
/* 8067D1F0  38 80 FF FF */	li r4, -1
/* 8067D1F4  4B 9F B0 4C */	b __dt__16dBgS_ArrowLinChkFv
/* 8067D1F8  38 61 01 0C */	addi r3, r1, 0x10c
/* 8067D1FC  38 80 FF FF */	li r4, -1
/* 8067D200  4B 9F A6 48 */	b __dt__18dBgS_ObjGndChk_SplFv
lbl_8067D204:
/* 8067D204  39 61 01 80 */	addi r11, r1, 0x180
/* 8067D208  4B CE 50 14 */	b _restgpr_26
/* 8067D20C  80 01 01 84 */	lwz r0, 0x184(r1)
/* 8067D210  7C 08 03 A6 */	mtlr r0
/* 8067D214  38 21 01 80 */	addi r1, r1, 0x180
/* 8067D218  4E 80 00 20 */	blr 
