lbl_80C34BD8:
/* 80C34BD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C34BDC  7C 08 02 A6 */	mflr r0
/* 80C34BE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C34BE4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C34BE8  4B 72 D5 F4 */	b _savegpr_29
/* 80C34BEC  7C 7D 1B 78 */	mr r29, r3
/* 80C34BF0  3C 80 80 C3 */	lis r4, lit_3806@ha
/* 80C34BF4  3B E4 4E EC */	addi r31, r4, lit_3806@l
/* 80C34BF8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C34BFC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C34C00  40 82 00 B8 */	bne lbl_80C34CB8
/* 80C34C04  7F A0 EB 79 */	or. r0, r29, r29
/* 80C34C08  41 82 00 A4 */	beq lbl_80C34CAC
/* 80C34C0C  7C 1E 03 78 */	mr r30, r0
/* 80C34C10  4B 3E 3F 54 */	b __ct__10fopAc_ac_cFv
/* 80C34C14  38 7E 05 88 */	addi r3, r30, 0x588
/* 80C34C18  4B 68 9C 2C */	b __ct__16Z2SoundObjSimpleFv
/* 80C34C1C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80C34C20  4B 44 12 8C */	b __ct__12dBgS_AcchCirFv
/* 80C34C24  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C34C28  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C34C2C  90 1E 06 14 */	stw r0, 0x614(r30)
/* 80C34C30  38 7E 06 18 */	addi r3, r30, 0x618
/* 80C34C34  4B 44 EB 2C */	b __ct__10dCcD_GSttsFv
/* 80C34C38  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C34C3C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C34C40  90 7E 06 14 */	stw r3, 0x614(r30)
/* 80C34C44  38 03 00 20 */	addi r0, r3, 0x20
/* 80C34C48  90 1E 06 18 */	stw r0, 0x618(r30)
/* 80C34C4C  3B DE 06 38 */	addi r30, r30, 0x638
/* 80C34C50  7F C3 F3 78 */	mr r3, r30
/* 80C34C54  4B 44 ED D4 */	b __ct__12dCcD_GObjInfFv
/* 80C34C58  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C34C5C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C34C60  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C34C64  3C 60 80 C3 */	lis r3, __vt__8cM3dGAab@ha
/* 80C34C68  38 03 50 94 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C34C6C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80C34C70  3C 60 80 C3 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C34C74  38 03 50 88 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C34C78  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C34C7C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C34C80  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C34C84  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C34C88  38 03 00 58 */	addi r0, r3, 0x58
/* 80C34C8C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C34C90  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C34C94  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C34C98  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C34C9C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C34CA0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C34CA4  38 03 00 84 */	addi r0, r3, 0x84
/* 80C34CA8  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C34CAC:
/* 80C34CAC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80C34CB0  60 00 00 08 */	ori r0, r0, 8
/* 80C34CB4  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80C34CB8:
/* 80C34CB8  38 7D 05 B4 */	addi r3, r29, 0x5b4
/* 80C34CBC  3C 80 80 C3 */	lis r4, l_arcName@ha
/* 80C34CC0  38 84 4F C0 */	addi r4, r4, l_arcName@l
/* 80C34CC4  80 84 00 00 */	lwz r4, 0(r4)
/* 80C34CC8  4B 3F 81 F4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C34CCC  7C 7E 1B 78 */	mr r30, r3
/* 80C34CD0  2C 1E 00 04 */	cmpwi r30, 4
/* 80C34CD4  40 82 01 5C */	bne lbl_80C34E30
/* 80C34CD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C34CDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C34CE0  38 63 09 58 */	addi r3, r3, 0x958
/* 80C34CE4  38 80 00 03 */	li r4, 3
/* 80C34CE8  4B 3F FC 4C */	b isDungeonItem__12dSv_memBit_cCFi
/* 80C34CEC  2C 03 00 00 */	cmpwi r3, 0
/* 80C34CF0  41 82 00 3C */	beq lbl_80C34D2C
/* 80C34CF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C34CF8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C34CFC  88 04 4E 0A */	lbz r0, 0x4e0a(r4)
/* 80C34D00  2C 00 00 32 */	cmpwi r0, 0x32
/* 80C34D04  40 82 00 28 */	bne lbl_80C34D2C
/* 80C34D08  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C34D0C  38 63 4F A0 */	addi r3, r3, stringBase0@l
/* 80C34D10  38 63 00 16 */	addi r3, r3, 0x16
/* 80C34D14  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80C34D18  4B 73 3C 7C */	b strcmp
/* 80C34D1C  2C 03 00 00 */	cmpwi r3, 0
/* 80C34D20  40 82 00 0C */	bne lbl_80C34D2C
/* 80C34D24  38 60 00 05 */	li r3, 5
/* 80C34D28  48 00 01 0C */	b lbl_80C34E34
lbl_80C34D2C:
/* 80C34D2C  7F A3 EB 78 */	mr r3, r29
/* 80C34D30  3C 80 80 C3 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80C34D34  38 84 42 D4 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80C34D38  38 A0 08 D0 */	li r5, 0x8d0
/* 80C34D3C  4B 3E 57 74 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C34D40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C34D44  40 82 00 0C */	bne lbl_80C34D50
/* 80C34D48  38 60 00 05 */	li r3, 5
/* 80C34D4C  48 00 00 E8 */	b lbl_80C34E34
lbl_80C34D50:
/* 80C34D50  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80C34D54  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80C34D58  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80C34D5C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C34D60  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80C34D64  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80C34D68  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80C34D6C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C34D70  EC 21 00 2A */	fadds f1, f1, f0
/* 80C34D74  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C34D78  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C34D7C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C34D80  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C34D84  38 61 00 08 */	addi r3, r1, 8
/* 80C34D88  4B 3E 8F 34 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80C34D8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C34D90  41 82 00 10 */	beq lbl_80C34DA0
/* 80C34D94  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80C34D98  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80C34D9C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_80C34DA0:
/* 80C34DA0  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80C34DA4  93 A3 00 14 */	stw r29, 0x14(r3)
/* 80C34DA8  38 C0 00 00 */	li r6, 0
/* 80C34DAC  3C 60 80 C3 */	lis r3, JointCallBack__FP8J3DJointi@ha
/* 80C34DB0  38 83 42 88 */	addi r4, r3, JointCallBack__FP8J3DJointi@l
/* 80C34DB4  48 00 00 18 */	b lbl_80C34DCC
lbl_80C34DB8:
/* 80C34DB8  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80C34DBC  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80C34DC0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C34DC4  90 83 00 04 */	stw r4, 4(r3)
/* 80C34DC8  38 C6 00 01 */	addi r6, r6, 1
lbl_80C34DCC:
/* 80C34DCC  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80C34DD0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80C34DD4  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 80C34DD8  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80C34DDC  7C 00 18 40 */	cmplw r0, r3
/* 80C34DE0  41 80 FF D8 */	blt lbl_80C34DB8
/* 80C34DE4  38 00 00 80 */	li r0, 0x80
/* 80C34DE8  B0 1D 05 7E */	sth r0, 0x57e(r29)
/* 80C34DEC  38 00 05 00 */	li r0, 0x500
/* 80C34DF0  B0 1D 05 74 */	sth r0, 0x574(r29)
/* 80C34DF4  B0 1D 05 76 */	sth r0, 0x576(r29)
/* 80C34DF8  38 00 00 00 */	li r0, 0
/* 80C34DFC  B0 1D 05 7A */	sth r0, 0x57a(r29)
/* 80C34E00  7F A3 EB 78 */	mr r3, r29
/* 80C34E04  4B FF F5 8D */	bl initCcCylinder__13daObjKaisou_cFv
/* 80C34E08  7F A3 EB 78 */	mr r3, r29
/* 80C34E0C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80C34E10  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80C34E14  FC 60 08 90 */	fmr f3, f1
/* 80C34E18  C0 9F 00 AC */	lfs f4, 0xac(r31)
/* 80C34E1C  C0 BF 00 B0 */	lfs f5, 0xb0(r31)
/* 80C34E20  FC C0 20 90 */	fmr f6, f4
/* 80C34E24  4B 3E 57 24 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C34E28  7F A3 EB 78 */	mr r3, r29
/* 80C34E2C  4B FF FD 8D */	bl daObjKaisou_Execute__FP13daObjKaisou_c
lbl_80C34E30:
/* 80C34E30  7F C3 F3 78 */	mr r3, r30
lbl_80C34E34:
/* 80C34E34  39 61 00 30 */	addi r11, r1, 0x30
/* 80C34E38  4B 72 D3 F0 */	b _restgpr_29
/* 80C34E3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C34E40  7C 08 03 A6 */	mtlr r0
/* 80C34E44  38 21 00 30 */	addi r1, r1, 0x30
/* 80C34E48  4E 80 00 20 */	blr 
