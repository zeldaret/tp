lbl_80D20B40:
/* 80D20B40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D20B44  7C 08 02 A6 */	mflr r0
/* 80D20B48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D20B4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D20B50  4B 64 16 8D */	bl _savegpr_29
/* 80D20B54  7C 7E 1B 78 */	mr r30, r3
/* 80D20B58  3C 80 80 D2 */	lis r4, lit_3707@ha /* 0x80D20DE0@ha */
/* 80D20B5C  3B E4 0D E0 */	addi r31, r4, lit_3707@l /* 0x80D20DE0@l */
/* 80D20B60  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D20B64  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D20B68  40 82 00 A8 */	bne lbl_80D20C10
/* 80D20B6C  7F C0 F3 79 */	or. r0, r30, r30
/* 80D20B70  41 82 00 94 */	beq lbl_80D20C04
/* 80D20B74  7C 1D 03 78 */	mr r29, r0
/* 80D20B78  4B 2F 7F ED */	bl __ct__10fopAc_ac_cFv
/* 80D20B7C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D20B80  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D20B84  90 1D 05 D4 */	stw r0, 0x5d4(r29)
/* 80D20B88  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 80D20B8C  4B 36 2B D5 */	bl __ct__10dCcD_GSttsFv
/* 80D20B90  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D20B94  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D20B98  90 7D 05 D4 */	stw r3, 0x5d4(r29)
/* 80D20B9C  38 03 00 20 */	addi r0, r3, 0x20
/* 80D20BA0  90 1D 05 D8 */	stw r0, 0x5d8(r29)
/* 80D20BA4  3B BD 05 F8 */	addi r29, r29, 0x5f8
/* 80D20BA8  7F A3 EB 78 */	mr r3, r29
/* 80D20BAC  4B 36 2E 7D */	bl __ct__12dCcD_GObjInfFv
/* 80D20BB0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D20BB4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D20BB8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D20BBC  3C 60 80 D2 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D20EC8@ha */
/* 80D20BC0  38 03 0E C8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D20EC8@l */
/* 80D20BC4  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80D20BC8  3C 60 80 D2 */	lis r3, __vt__8cM3dGSph@ha /* 0x80D20EBC@ha */
/* 80D20BCC  38 03 0E BC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80D20EBC@l */
/* 80D20BD0  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80D20BD4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80D20BD8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80D20BDC  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80D20BE0  38 03 00 58 */	addi r0, r3, 0x58
/* 80D20BE4  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80D20BE8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80D20BEC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80D20BF0  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80D20BF4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D20BF8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D20BFC  38 03 00 84 */	addi r0, r3, 0x84
/* 80D20C00  90 1D 01 34 */	stw r0, 0x134(r29)
lbl_80D20C04:
/* 80D20C04  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D20C08  60 00 00 08 */	ori r0, r0, 8
/* 80D20C0C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D20C10:
/* 80D20C10  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D20C14  3C 80 80 D2 */	lis r4, d_a_obj_udoor__stringBase0@ha /* 0x80D20E10@ha */
/* 80D20C18  38 84 0E 10 */	addi r4, r4, d_a_obj_udoor__stringBase0@l /* 0x80D20E10@l */
/* 80D20C1C  4B 30 C2 A1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D20C20  7C 7D 1B 78 */	mr r29, r3
/* 80D20C24  2C 1D 00 04 */	cmpwi r29, 4
/* 80D20C28  40 82 01 04 */	bne lbl_80D20D2C
/* 80D20C2C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D20C30  98 1E 05 70 */	stb r0, 0x570(r30)
/* 80D20C34  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80D20C38  28 00 00 FF */	cmplwi r0, 0xff
/* 80D20C3C  40 82 00 0C */	bne lbl_80D20C48
/* 80D20C40  38 00 00 00 */	li r0, 0
/* 80D20C44  98 1E 05 70 */	stb r0, 0x570(r30)
lbl_80D20C48:
/* 80D20C48  7F C3 F3 78 */	mr r3, r30
/* 80D20C4C  3C 80 80 D2 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80D20A1C@ha */
/* 80D20C50  38 84 0A 1C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80D20A1C@l */
/* 80D20C54  38 A0 0D 20 */	li r5, 0xd20
/* 80D20C58  4B 2F 98 59 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D20C5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D20C60  40 82 00 0C */	bne lbl_80D20C6C
/* 80D20C64  38 60 00 05 */	li r3, 5
/* 80D20C68  48 00 00 C8 */	b lbl_80D20D30
lbl_80D20C6C:
/* 80D20C6C  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 80D20C70  28 04 00 00 */	cmplwi r4, 0
/* 80D20C74  41 82 00 28 */	beq lbl_80D20C9C
/* 80D20C78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D20C7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D20C80  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D20C84  7F C5 F3 78 */	mr r5, r30
/* 80D20C88  4B 35 3D 81 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D20C8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D20C90  41 82 00 0C */	beq lbl_80D20C9C
/* 80D20C94  38 60 00 05 */	li r3, 5
/* 80D20C98  48 00 00 98 */	b lbl_80D20D30
lbl_80D20C9C:
/* 80D20C9C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80D20CA0  38 80 00 FF */	li r4, 0xff
/* 80D20CA4  38 A0 00 00 */	li r5, 0
/* 80D20CA8  7F C6 F3 78 */	mr r6, r30
/* 80D20CAC  4B 36 2B B5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D20CB0  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80D20CB4  3C 80 80 D2 */	lis r4, cc_sph_src@ha /* 0x80D20E2C@ha */
/* 80D20CB8  38 84 0E 2C */	addi r4, r4, cc_sph_src@l /* 0x80D20E2C@l */
/* 80D20CBC  4B 36 3D 79 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80D20CC0  38 1E 05 BC */	addi r0, r30, 0x5bc
/* 80D20CC4  90 1E 06 3C */	stw r0, 0x63c(r30)
/* 80D20CC8  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D20CCC  38 03 00 24 */	addi r0, r3, 0x24
/* 80D20CD0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D20CD4  7F C3 F3 78 */	mr r3, r30
/* 80D20CD8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80D20CDC  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80D20CE0  FC 60 08 90 */	fmr f3, f1
/* 80D20CE4  4B 2F 98 45 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80D20CE8  7F C3 F3 78 */	mr r3, r30
/* 80D20CEC  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80D20CF0  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80D20CF4  FC 60 08 90 */	fmr f3, f1
/* 80D20CF8  4B 2F 98 41 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80D20CFC  38 60 00 00 */	li r3, 0
/* 80D20D00  4B 30 BC 7D */	bl getLayerNo__14dComIfG_play_cFi
/* 80D20D04  2C 03 00 01 */	cmpwi r3, 1
/* 80D20D08  41 82 00 1C */	beq lbl_80D20D24
/* 80D20D0C  38 60 00 00 */	li r3, 0
/* 80D20D10  4B 30 BC 6D */	bl getLayerNo__14dComIfG_play_cFi
/* 80D20D14  2C 03 00 03 */	cmpwi r3, 3
/* 80D20D18  41 82 00 0C */	beq lbl_80D20D24
/* 80D20D1C  38 00 00 02 */	li r0, 2
/* 80D20D20  98 1E 05 67 */	stb r0, 0x567(r30)
lbl_80D20D24:
/* 80D20D24  7F C3 F3 78 */	mr r3, r30
/* 80D20D28  4B FF FA 75 */	bl daObj_Udoor_Execute__FP15obj_udoor_class
lbl_80D20D2C:
/* 80D20D2C  7F A3 EB 78 */	mr r3, r29
lbl_80D20D30:
/* 80D20D30  39 61 00 20 */	addi r11, r1, 0x20
/* 80D20D34  4B 64 14 F5 */	bl _restgpr_29
/* 80D20D38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D20D3C  7C 08 03 A6 */	mtlr r0
/* 80D20D40  38 21 00 20 */	addi r1, r1, 0x20
/* 80D20D44  4E 80 00 20 */	blr 
