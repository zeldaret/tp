lbl_80C53B3C:
/* 80C53B3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C53B40  7C 08 02 A6 */	mflr r0
/* 80C53B44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C53B48  39 61 00 30 */	addi r11, r1, 0x30
/* 80C53B4C  4B 70 E6 81 */	bl _savegpr_25
/* 80C53B50  7C 7B 1B 78 */	mr r27, r3
/* 80C53B54  3C 80 80 C5 */	lis r4, lit_3768@ha /* 0x80C53FBC@ha */
/* 80C53B58  3B E4 3F BC */	addi r31, r4, lit_3768@l /* 0x80C53FBC@l */
/* 80C53B5C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C53B60  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C53B64  40 82 01 34 */	bne lbl_80C53C98
/* 80C53B68  7F 60 DB 79 */	or. r0, r27, r27
/* 80C53B6C  41 82 01 20 */	beq lbl_80C53C8C
/* 80C53B70  7C 1A 03 78 */	mr r26, r0
/* 80C53B74  4B 3C 4F F1 */	bl __ct__10fopAc_ac_cFv
/* 80C53B78  38 7A 05 88 */	addi r3, r26, 0x588
/* 80C53B7C  4B 42 23 31 */	bl __ct__12dBgS_AcchCirFv
/* 80C53B80  3B 3A 05 C8 */	addi r25, r26, 0x5c8
/* 80C53B84  7F 23 CB 78 */	mr r3, r25
/* 80C53B88  4B 42 25 19 */	bl __ct__9dBgS_AcchFv
/* 80C53B8C  3C 60 80 C5 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C540B0@ha */
/* 80C53B90  38 63 40 B0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C540B0@l */
/* 80C53B94  90 79 00 10 */	stw r3, 0x10(r25)
/* 80C53B98  38 03 00 0C */	addi r0, r3, 0xc
/* 80C53B9C  90 19 00 14 */	stw r0, 0x14(r25)
/* 80C53BA0  38 03 00 18 */	addi r0, r3, 0x18
/* 80C53BA4  90 19 00 24 */	stw r0, 0x24(r25)
/* 80C53BA8  38 79 00 14 */	addi r3, r25, 0x14
/* 80C53BAC  4B 42 52 BD */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C53BB0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C53BB4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C53BB8  90 1A 07 B8 */	stw r0, 0x7b8(r26)
/* 80C53BBC  38 7A 07 BC */	addi r3, r26, 0x7bc
/* 80C53BC0  4B 42 FB A1 */	bl __ct__10dCcD_GSttsFv
/* 80C53BC4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C53BC8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C53BCC  90 7A 07 B8 */	stw r3, 0x7b8(r26)
/* 80C53BD0  38 03 00 20 */	addi r0, r3, 0x20
/* 80C53BD4  90 1A 07 BC */	stw r0, 0x7bc(r26)
/* 80C53BD8  3B 3A 07 DC */	addi r25, r26, 0x7dc
/* 80C53BDC  7F 23 CB 78 */	mr r3, r25
/* 80C53BE0  4B 42 FE 49 */	bl __ct__12dCcD_GObjInfFv
/* 80C53BE4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C53BE8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C53BEC  90 19 01 20 */	stw r0, 0x120(r25)
/* 80C53BF0  3C 60 80 C5 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C540A4@ha */
/* 80C53BF4  38 03 40 A4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C540A4@l */
/* 80C53BF8  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80C53BFC  3C 60 80 C5 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C54098@ha */
/* 80C53C00  38 03 40 98 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C54098@l */
/* 80C53C04  90 19 01 34 */	stw r0, 0x134(r25)
/* 80C53C08  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C53C0C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C53C10  90 79 01 20 */	stw r3, 0x120(r25)
/* 80C53C14  3B C3 00 58 */	addi r30, r3, 0x58
/* 80C53C18  93 D9 01 34 */	stw r30, 0x134(r25)
/* 80C53C1C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C53C20  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C53C24  90 79 00 3C */	stw r3, 0x3c(r25)
/* 80C53C28  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80C53C2C  93 B9 01 20 */	stw r29, 0x120(r25)
/* 80C53C30  3B 83 00 84 */	addi r28, r3, 0x84
/* 80C53C34  93 99 01 34 */	stw r28, 0x134(r25)
/* 80C53C38  3B 3A 09 14 */	addi r25, r26, 0x914
/* 80C53C3C  7F 23 CB 78 */	mr r3, r25
/* 80C53C40  4B 42 FD E9 */	bl __ct__12dCcD_GObjInfFv
/* 80C53C44  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C53C48  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C53C4C  90 19 01 20 */	stw r0, 0x120(r25)
/* 80C53C50  3C 60 80 C5 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C540A4@ha */
/* 80C53C54  38 03 40 A4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C540A4@l */
/* 80C53C58  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80C53C5C  3C 60 80 C5 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C54098@ha */
/* 80C53C60  38 03 40 98 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C54098@l */
/* 80C53C64  90 19 01 34 */	stw r0, 0x134(r25)
/* 80C53C68  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C53C6C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C53C70  90 19 01 20 */	stw r0, 0x120(r25)
/* 80C53C74  93 D9 01 34 */	stw r30, 0x134(r25)
/* 80C53C78  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C53C7C  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C53C80  90 19 00 3C */	stw r0, 0x3c(r25)
/* 80C53C84  93 B9 01 20 */	stw r29, 0x120(r25)
/* 80C53C88  93 99 01 34 */	stw r28, 0x134(r25)
lbl_80C53C8C:
/* 80C53C8C  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 80C53C90  60 00 00 08 */	ori r0, r0, 8
/* 80C53C94  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_80C53C98:
/* 80C53C98  38 7B 05 68 */	addi r3, r27, 0x568
/* 80C53C9C  3C 80 80 C5 */	lis r4, d_a_obj_lbox__stringBase0@ha /* 0x80C53FFC@ha */
/* 80C53CA0  38 84 3F FC */	addi r4, r4, d_a_obj_lbox__stringBase0@l /* 0x80C53FFC@l */
/* 80C53CA4  4B 3D 92 19 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C53CA8  7C 7C 1B 78 */	mr r28, r3
/* 80C53CAC  2C 1C 00 04 */	cmpwi r28, 4
/* 80C53CB0  40 82 01 48 */	bne lbl_80C53DF8
/* 80C53CB4  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80C53CB8  98 1B 05 70 */	stb r0, 0x570(r27)
/* 80C53CBC  88 1B 05 70 */	lbz r0, 0x570(r27)
/* 80C53CC0  28 00 00 FF */	cmplwi r0, 0xff
/* 80C53CC4  40 82 00 0C */	bne lbl_80C53CD0
/* 80C53CC8  38 00 00 00 */	li r0, 0
/* 80C53CCC  98 1B 05 70 */	stb r0, 0x570(r27)
lbl_80C53CD0:
/* 80C53CD0  7F 63 DB 78 */	mr r3, r27
/* 80C53CD4  3C 80 80 C5 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80C53A38@ha */
/* 80C53CD8  38 84 3A 38 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80C53A38@l */
/* 80C53CDC  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80C53CE0  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80C53CE4  4B 3C 67 CD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C53CE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C53CEC  40 82 00 0C */	bne lbl_80C53CF8
/* 80C53CF0  38 60 00 05 */	li r3, 5
/* 80C53CF4  48 00 01 08 */	b lbl_80C53DFC
lbl_80C53CF8:
/* 80C53CF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C53CFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C53D00  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C53D04  80 9B 0A 80 */	lwz r4, 0xa80(r27)
/* 80C53D08  7F 65 DB 78 */	mr r5, r27
/* 80C53D0C  4B 42 0C FD */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C53D10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C53D14  41 82 00 0C */	beq lbl_80C53D20
/* 80C53D18  38 60 00 05 */	li r3, 5
/* 80C53D1C  48 00 00 E0 */	b lbl_80C53DFC
lbl_80C53D20:
/* 80C53D20  3C 60 80 C5 */	lis r3, data_80C540E8@ha /* 0x80C540E8@ha */
/* 80C53D24  8C 03 40 E8 */	lbzu r0, data_80C540E8@l(r3)  /* 0x80C540E8@l */
/* 80C53D28  28 00 00 00 */	cmplwi r0, 0
/* 80C53D2C  40 82 00 20 */	bne lbl_80C53D4C
/* 80C53D30  38 00 00 01 */	li r0, 1
/* 80C53D34  98 1B 0A 8C */	stb r0, 0xa8c(r27)
/* 80C53D38  98 03 00 00 */	stb r0, 0(r3)
/* 80C53D3C  38 00 FF FF */	li r0, -1
/* 80C53D40  3C 60 80 C5 */	lis r3, l_HIO@ha /* 0x80C540F8@ha */
/* 80C53D44  38 63 40 F8 */	addi r3, r3, l_HIO@l /* 0x80C540F8@l */
/* 80C53D48  98 03 00 04 */	stb r0, 4(r3)
lbl_80C53D4C:
/* 80C53D4C  80 7B 05 74 */	lwz r3, 0x574(r27)
/* 80C53D50  38 03 00 24 */	addi r0, r3, 0x24
/* 80C53D54  90 1B 05 04 */	stw r0, 0x504(r27)
/* 80C53D58  7F 63 DB 78 */	mr r3, r27
/* 80C53D5C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C53D60  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80C53D64  FC 60 08 90 */	fmr f3, f1
/* 80C53D68  4B 3C 67 C1 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80C53D6C  7F 63 DB 78 */	mr r3, r27
/* 80C53D70  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C53D74  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80C53D78  FC 60 08 90 */	fmr f3, f1
/* 80C53D7C  4B 3C 67 BD */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80C53D80  38 7B 07 A0 */	addi r3, r27, 0x7a0
/* 80C53D84  38 80 00 FF */	li r4, 0xff
/* 80C53D88  38 A0 00 00 */	li r5, 0
/* 80C53D8C  7F 66 DB 78 */	mr r6, r27
/* 80C53D90  4B 42 FA D1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C53D94  38 7B 07 DC */	addi r3, r27, 0x7dc
/* 80C53D98  3C 80 80 C5 */	lis r4, cc_sph_src@ha /* 0x80C54008@ha */
/* 80C53D9C  38 84 40 08 */	addi r4, r4, cc_sph_src@l /* 0x80C54008@l */
/* 80C53DA0  4B 43 0C 95 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C53DA4  38 1B 07 A0 */	addi r0, r27, 0x7a0
/* 80C53DA8  90 1B 08 20 */	stw r0, 0x820(r27)
/* 80C53DAC  38 00 00 00 */	li r0, 0
/* 80C53DB0  90 01 00 08 */	stw r0, 8(r1)
/* 80C53DB4  38 7B 05 C8 */	addi r3, r27, 0x5c8
/* 80C53DB8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80C53DBC  38 BB 04 BC */	addi r5, r27, 0x4bc
/* 80C53DC0  7F 66 DB 78 */	mr r6, r27
/* 80C53DC4  38 E0 00 01 */	li r7, 1
/* 80C53DC8  39 1B 05 88 */	addi r8, r27, 0x588
/* 80C53DCC  39 3B 04 F8 */	addi r9, r27, 0x4f8
/* 80C53DD0  39 40 00 00 */	li r10, 0
/* 80C53DD4  4B 42 24 75 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C53DD8  38 7B 05 88 */	addi r3, r27, 0x588
/* 80C53DDC  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C53DE0  FC 40 08 90 */	fmr f2, f1
/* 80C53DE4  4B 42 21 75 */	bl SetWall__12dBgS_AcchCirFff
/* 80C53DE8  38 00 00 16 */	li r0, 0x16
/* 80C53DEC  98 1B 05 46 */	stb r0, 0x546(r27)
/* 80C53DF0  7F 63 DB 78 */	mr r3, r27
/* 80C53DF4  4B FF FB 79 */	bl daObj_Lbox_Execute__FP14obj_lbox_class
lbl_80C53DF8:
/* 80C53DF8  7F 83 E3 78 */	mr r3, r28
lbl_80C53DFC:
/* 80C53DFC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C53E00  4B 70 E4 19 */	bl _restgpr_25
/* 80C53E04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C53E08  7C 08 03 A6 */	mtlr r0
/* 80C53E0C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C53E10  4E 80 00 20 */	blr 
