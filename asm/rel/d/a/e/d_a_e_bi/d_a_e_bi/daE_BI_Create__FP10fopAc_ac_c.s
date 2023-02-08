lbl_8068CC00:
/* 8068CC00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8068CC04  7C 08 02 A6 */	mflr r0
/* 8068CC08  90 01 00 44 */	stw r0, 0x44(r1)
/* 8068CC0C  39 61 00 40 */	addi r11, r1, 0x40
/* 8068CC10  4B CD 55 C9 */	bl _savegpr_28
/* 8068CC14  7C 7E 1B 78 */	mr r30, r3
/* 8068CC18  3C 80 80 69 */	lis r4, lit_3903@ha /* 0x8068D7EC@ha */
/* 8068CC1C  3B E4 D7 EC */	addi r31, r4, lit_3903@l /* 0x8068D7EC@l */
/* 8068CC20  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8068CC24  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8068CC28  40 82 01 48 */	bne lbl_8068CD70
/* 8068CC2C  7F C0 F3 79 */	or. r0, r30, r30
/* 8068CC30  41 82 01 34 */	beq lbl_8068CD64
/* 8068CC34  7C 1D 03 78 */	mr r29, r0
/* 8068CC38  4B 98 BF 2D */	bl __ct__10fopAc_ac_cFv
/* 8068CC3C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8068CC40  4B C3 43 25 */	bl __ct__15Z2CreatureEnemyFv
/* 8068CC44  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8068CC48  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8068CC4C  90 1D 06 CC */	stw r0, 0x6cc(r29)
/* 8068CC50  38 7D 06 D0 */	addi r3, r29, 0x6d0
/* 8068CC54  4B 9F 6B 0D */	bl __ct__10dCcD_GSttsFv
/* 8068CC58  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8068CC5C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8068CC60  90 7D 06 CC */	stw r3, 0x6cc(r29)
/* 8068CC64  38 03 00 20 */	addi r0, r3, 0x20
/* 8068CC68  90 1D 06 D0 */	stw r0, 0x6d0(r29)
/* 8068CC6C  3B 9D 06 F0 */	addi r28, r29, 0x6f0
/* 8068CC70  7F 83 E3 78 */	mr r3, r28
/* 8068CC74  4B 9F 6D B5 */	bl __ct__12dCcD_GObjInfFv
/* 8068CC78  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8068CC7C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8068CC80  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8068CC84  3C 60 80 69 */	lis r3, __vt__8cM3dGAab@ha /* 0x8068DA8C@ha */
/* 8068CC88  38 03 DA 8C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8068DA8C@l */
/* 8068CC8C  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8068CC90  3C 60 80 69 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8068DA80@ha */
/* 8068CC94  38 03 DA 80 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8068DA80@l */
/* 8068CC98  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8068CC9C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8068CCA0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8068CCA4  90 7C 01 20 */	stw r3, 0x120(r28)
/* 8068CCA8  38 03 00 58 */	addi r0, r3, 0x58
/* 8068CCAC  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8068CCB0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8068CCB4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8068CCB8  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8068CCBC  38 03 00 2C */	addi r0, r3, 0x2c
/* 8068CCC0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8068CCC4  38 03 00 84 */	addi r0, r3, 0x84
/* 8068CCC8  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8068CCCC  3B 9D 08 2C */	addi r28, r29, 0x82c
/* 8068CCD0  7F 83 E3 78 */	mr r3, r28
/* 8068CCD4  4B 9F 6D 55 */	bl __ct__12dCcD_GObjInfFv
/* 8068CCD8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8068CCDC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8068CCE0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8068CCE4  3C 60 80 69 */	lis r3, __vt__8cM3dGAab@ha /* 0x8068DA8C@ha */
/* 8068CCE8  38 03 DA 8C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8068DA8C@l */
/* 8068CCEC  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8068CCF0  3C 60 80 69 */	lis r3, __vt__8cM3dGSph@ha /* 0x8068DA74@ha */
/* 8068CCF4  38 03 DA 74 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8068DA74@l */
/* 8068CCF8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8068CCFC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8068CD00  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8068CD04  90 7C 01 20 */	stw r3, 0x120(r28)
/* 8068CD08  38 03 00 58 */	addi r0, r3, 0x58
/* 8068CD0C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8068CD10  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8068CD14  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8068CD18  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8068CD1C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8068CD20  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8068CD24  38 03 00 84 */	addi r0, r3, 0x84
/* 8068CD28  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8068CD2C  38 7D 09 8C */	addi r3, r29, 0x98c
/* 8068CD30  4B 9E 91 7D */	bl __ct__12dBgS_AcchCirFv
/* 8068CD34  3B 9D 09 CC */	addi r28, r29, 0x9cc
/* 8068CD38  7F 83 E3 78 */	mr r3, r28
/* 8068CD3C  4B 9E 93 65 */	bl __ct__9dBgS_AcchFv
/* 8068CD40  3C 60 80 69 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8068DA50@ha */
/* 8068CD44  38 63 DA 50 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8068DA50@l */
/* 8068CD48  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8068CD4C  38 03 00 0C */	addi r0, r3, 0xc
/* 8068CD50  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8068CD54  38 03 00 18 */	addi r0, r3, 0x18
/* 8068CD58  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8068CD5C  38 7C 00 14 */	addi r3, r28, 0x14
/* 8068CD60  4B 9E C1 09 */	bl SetObj__16dBgS_PolyPassChkFv
lbl_8068CD64:
/* 8068CD64  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8068CD68  60 00 00 08 */	ori r0, r0, 8
/* 8068CD6C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8068CD70:
/* 8068CD70  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 8068CD74  3C 80 80 69 */	lis r4, d_a_e_bi__stringBase0@ha /* 0x8068D8D8@ha */
/* 8068CD78  38 84 D8 D8 */	addi r4, r4, d_a_e_bi__stringBase0@l /* 0x8068D8D8@l */
/* 8068CD7C  4B 9A 01 41 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8068CD80  7C 7D 1B 78 */	mr r29, r3
/* 8068CD84  2C 1D 00 04 */	cmpwi r29, 4
/* 8068CD88  40 82 02 DC */	bne lbl_8068D064
/* 8068CD8C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8068CD90  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 8068CD94  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8068CD98  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8068CD9C  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 8068CDA0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8068CDA4  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8068CDA8  98 1E 05 B6 */	stb r0, 0x5b6(r30)
/* 8068CDAC  7F C3 F3 78 */	mr r3, r30
/* 8068CDB0  3C 80 80 69 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8068CB08@ha */
/* 8068CDB4  38 84 CB 08 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8068CB08@l */
/* 8068CDB8  38 A0 27 A0 */	li r5, 0x27a0
/* 8068CDBC  4B 98 D6 F5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8068CDC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8068CDC4  40 82 00 0C */	bne lbl_8068CDD0
/* 8068CDC8  38 60 00 05 */	li r3, 5
/* 8068CDCC  48 00 02 9C */	b lbl_8068D068
lbl_8068CDD0:
/* 8068CDD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068CDD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068CDD8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8068CDDC  3C 80 80 69 */	lis r4, d_a_e_bi__stringBase0@ha /* 0x8068D8D8@ha */
/* 8068CDE0  38 84 D8 D8 */	addi r4, r4, d_a_e_bi__stringBase0@l /* 0x8068D8D8@l */
/* 8068CDE4  38 84 00 05 */	addi r4, r4, 5
/* 8068CDE8  4B CD BB AD */	bl strcmp
/* 8068CDEC  2C 03 00 00 */	cmpwi r3, 0
/* 8068CDF0  40 82 00 28 */	bne lbl_8068CE18
/* 8068CDF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068CDF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068CDFC  38 63 09 58 */	addi r3, r3, 0x958
/* 8068CE00  38 80 00 03 */	li r4, 3
/* 8068CE04  4B 9A 7B 31 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8068CE08  2C 03 00 00 */	cmpwi r3, 0
/* 8068CE0C  41 82 00 0C */	beq lbl_8068CE18
/* 8068CE10  38 60 00 05 */	li r3, 5
/* 8068CE14  48 00 02 54 */	b lbl_8068D068
lbl_8068CE18:
/* 8068CE18  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 8068CE1C  28 00 00 35 */	cmplwi r0, 0x35
/* 8068CE20  40 82 00 0C */	bne lbl_8068CE2C
/* 8068CE24  7F A3 EB 78 */	mr r3, r29
/* 8068CE28  48 00 02 40 */	b lbl_8068D068
lbl_8068CE2C:
/* 8068CE2C  3C 60 80 69 */	lis r3, struct_8068DB1C+0x1@ha /* 0x8068DB1D@ha */
/* 8068CE30  8C 03 DB 1D */	lbzu r0, struct_8068DB1C+0x1@l(r3)  /* 0x8068DB1D@l */
/* 8068CE34  28 00 00 00 */	cmplwi r0, 0
/* 8068CE38  40 82 00 20 */	bne lbl_8068CE58
/* 8068CE3C  38 00 00 01 */	li r0, 1
/* 8068CE40  98 1E 0B FC */	stb r0, 0xbfc(r30)
/* 8068CE44  98 03 00 00 */	stb r0, 0(r3)
/* 8068CE48  38 00 FF FF */	li r0, -1
/* 8068CE4C  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x8068DB2C@ha */
/* 8068CE50  38 63 DB 2C */	addi r3, r3, l_HIO@l /* 0x8068DB2C@l */
/* 8068CE54  98 03 00 04 */	stb r0, 4(r3)
lbl_8068CE58:
/* 8068CE58  38 00 00 04 */	li r0, 4
/* 8068CE5C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8068CE60  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8068CE64  80 63 00 04 */	lwz r3, 4(r3)
/* 8068CE68  38 03 00 24 */	addi r0, r3, 0x24
/* 8068CE6C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8068CE70  7F C3 F3 78 */	mr r3, r30
/* 8068CE74  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8068CE78  FC 40 08 90 */	fmr f2, f1
/* 8068CE7C  FC 60 08 90 */	fmr f3, f1
/* 8068CE80  4B 98 D6 A9 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8068CE84  7F C3 F3 78 */	mr r3, r30
/* 8068CE88  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8068CE8C  FC 40 08 90 */	fmr f2, f1
/* 8068CE90  FC 60 08 90 */	fmr f3, f1
/* 8068CE94  4B 98 D6 A5 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8068CE98  38 00 00 1E */	li r0, 0x1e
/* 8068CE9C  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8068CEA0  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 8068CEA4  38 7E 06 B4 */	addi r3, r30, 0x6b4
/* 8068CEA8  38 80 00 64 */	li r4, 0x64
/* 8068CEAC  38 A0 00 00 */	li r5, 0
/* 8068CEB0  7F C6 F3 78 */	mr r6, r30
/* 8068CEB4  4B 9F 69 AD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8068CEB8  38 7E 06 F0 */	addi r3, r30, 0x6f0
/* 8068CEBC  3C 80 80 69 */	lis r4, cc_cyl_src@ha /* 0x8068D958@ha */
/* 8068CEC0  38 84 D9 58 */	addi r4, r4, cc_cyl_src@l /* 0x8068D958@l */
/* 8068CEC4  4B 9F 79 F1 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8068CEC8  38 1E 06 B4 */	addi r0, r30, 0x6b4
/* 8068CECC  90 1E 07 34 */	stw r0, 0x734(r30)
/* 8068CED0  38 7E 08 2C */	addi r3, r30, 0x82c
/* 8068CED4  3C 80 80 69 */	lis r4, at_sph_src@ha /* 0x8068D99C@ha */
/* 8068CED8  38 84 D9 9C */	addi r4, r4, at_sph_src@l /* 0x8068D99C@l */
/* 8068CEDC  4B 9F 7B 59 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8068CEE0  38 1E 06 B4 */	addi r0, r30, 0x6b4
/* 8068CEE4  90 1E 08 70 */	stw r0, 0x870(r30)
/* 8068CEE8  38 00 00 00 */	li r0, 0
/* 8068CEEC  90 01 00 08 */	stw r0, 8(r1)
/* 8068CEF0  38 7E 09 CC */	addi r3, r30, 0x9cc
/* 8068CEF4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8068CEF8  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 8068CEFC  7F C6 F3 78 */	mr r6, r30
/* 8068CF00  38 E0 00 01 */	li r7, 1
/* 8068CF04  39 1E 09 8C */	addi r8, r30, 0x98c
/* 8068CF08  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 8068CF0C  39 40 00 00 */	li r10, 0
/* 8068CF10  4B 9E 93 39 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8068CF14  38 7E 09 8C */	addi r3, r30, 0x98c
/* 8068CF18  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8068CF1C  FC 40 08 90 */	fmr f2, f1
/* 8068CF20  4B 9E 90 39 */	bl SetWall__12dBgS_AcchCirFff
/* 8068CF24  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8068CF28  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8068CF2C  38 BE 05 38 */	addi r5, r30, 0x538
/* 8068CF30  38 C0 00 03 */	li r6, 3
/* 8068CF34  38 E0 00 01 */	li r7, 1
/* 8068CF38  4B C3 41 5D */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8068CF3C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8068CF40  90 7E 09 6C */	stw r3, 0x96c(r30)
/* 8068CF44  38 00 00 01 */	li r0, 1
/* 8068CF48  98 1E 09 82 */	stb r0, 0x982(r30)
/* 8068CF4C  3C 80 80 69 */	lis r4, d_a_e_bi__stringBase0@ha /* 0x8068D8D8@ha */
/* 8068CF50  38 84 D8 D8 */	addi r4, r4, d_a_e_bi__stringBase0@l /* 0x8068D8D8@l */
/* 8068CF54  38 84 00 0D */	addi r4, r4, 0xd
/* 8068CF58  4B C3 4C 39 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 8068CF5C  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 8068CF60  4B BD A9 F5 */	bl cM_rndF__Ff
/* 8068CF64  FC 00 08 1E */	fctiwz f0, f1
/* 8068CF68  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8068CF6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8068CF70  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8068CF74  38 00 00 2A */	li r0, 0x2a
/* 8068CF78  98 1E 05 48 */	stb r0, 0x548(r30)
/* 8068CF7C  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 8068CF80  28 00 00 01 */	cmplwi r0, 1
/* 8068CF84  41 82 00 AC */	beq lbl_8068D030
/* 8068CF88  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 8068CF8C  28 00 00 01 */	cmplwi r0, 1
/* 8068CF90  40 82 00 10 */	bne lbl_8068CFA0
/* 8068CF94  38 00 00 0A */	li r0, 0xa
/* 8068CF98  98 1E 0B AC */	stb r0, 0xbac(r30)
/* 8068CF9C  48 00 00 4C */	b lbl_8068CFE8
lbl_8068CFA0:
/* 8068CFA0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8068CFA4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8068CFA8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8068CFAC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8068CFB0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8068CFB4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8068CFB8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8068CFBC  EC 01 00 2A */	fadds f0, f1, f0
/* 8068CFC0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8068CFC4  38 61 00 10 */	addi r3, r1, 0x10
/* 8068CFC8  4B 99 0C F5 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8068CFCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8068CFD0  41 82 00 18 */	beq lbl_8068CFE8
/* 8068CFD4  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 8068CFD8  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 8068CFDC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8068CFE0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8068CFE4  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
lbl_8068CFE8:
/* 8068CFE8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8068CFEC  7C 07 07 74 */	extsb r7, r0
/* 8068CFF0  38 00 00 00 */	li r0, 0
/* 8068CFF4  90 01 00 08 */	stw r0, 8(r1)
/* 8068CFF8  38 60 03 05 */	li r3, 0x305
/* 8068CFFC  28 1E 00 00 */	cmplwi r30, 0
/* 8068D000  41 82 00 0C */	beq lbl_8068D00C
/* 8068D004  80 9E 00 04 */	lwz r4, 4(r30)
/* 8068D008  48 00 00 08 */	b lbl_8068D010
lbl_8068D00C:
/* 8068D00C  38 80 FF FF */	li r4, -1
lbl_8068D010:
/* 8068D010  88 BE 05 B5 */	lbz r5, 0x5b5(r30)
/* 8068D014  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 8068D018  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8068D01C  39 20 00 00 */	li r9, 0
/* 8068D020  39 40 FF FF */	li r10, -1
/* 8068D024  4B 98 CE CD */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8068D028  90 7E 0B A4 */	stw r3, 0xba4(r30)
/* 8068D02C  48 00 00 14 */	b lbl_8068D040
lbl_8068D030:
/* 8068D030  38 00 FF FE */	li r0, -2
/* 8068D034  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8068D038  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 8068D03C  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_8068D040:
/* 8068D040  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8068D044  2C 00 00 32 */	cmpwi r0, 0x32
/* 8068D048  40 82 00 14 */	bne lbl_8068D05C
/* 8068D04C  38 00 00 04 */	li r0, 4
/* 8068D050  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8068D054  38 00 00 16 */	li r0, 0x16
/* 8068D058  98 1E 05 46 */	stb r0, 0x546(r30)
lbl_8068D05C:
/* 8068D05C  7F C3 F3 78 */	mr r3, r30
/* 8068D060  4B FF F3 69 */	bl daE_BI_Execute__FP10e_bi_class
lbl_8068D064:
/* 8068D064  7F A3 EB 78 */	mr r3, r29
lbl_8068D068:
/* 8068D068  39 61 00 40 */	addi r11, r1, 0x40
/* 8068D06C  4B CD 51 B9 */	bl _restgpr_28
/* 8068D070  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8068D074  7C 08 03 A6 */	mtlr r0
/* 8068D078  38 21 00 40 */	addi r1, r1, 0x40
/* 8068D07C  4E 80 00 20 */	blr 
