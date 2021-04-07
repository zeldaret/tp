lbl_80C38BB0:
/* 80C38BB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C38BB4  7C 08 02 A6 */	mflr r0
/* 80C38BB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C38BBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C38BC0  4B 72 96 1D */	bl _savegpr_29
/* 80C38BC4  7C 7F 1B 78 */	mr r31, r3
/* 80C38BC8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C38BCC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C38BD0  40 82 00 F8 */	bne lbl_80C38CC8
/* 80C38BD4  28 1F 00 00 */	cmplwi r31, 0
/* 80C38BD8  41 82 00 E4 */	beq lbl_80C38CBC
/* 80C38BDC  7F FE FB 78 */	mr r30, r31
/* 80C38BE0  4B 3D FF 85 */	bl __ct__10fopAc_ac_cFv
/* 80C38BE4  3C 60 80 3B */	lis r3, __vt__12daItemBase_c@ha /* 0x803B3610@ha */
/* 80C38BE8  38 03 36 10 */	addi r0, r3, __vt__12daItemBase_c@l /* 0x803B3610@l */
/* 80C38BEC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80C38BF0  3B BE 05 8C */	addi r29, r30, 0x58c
/* 80C38BF4  7F A3 EB 78 */	mr r3, r29
/* 80C38BF8  4B 43 D4 A9 */	bl __ct__9dBgS_AcchFv
/* 80C38BFC  3C 60 80 C4 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C397E8@ha */
/* 80C38C00  38 63 97 E8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C397E8@l */
/* 80C38C04  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80C38C08  38 03 00 0C */	addi r0, r3, 0xc
/* 80C38C0C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C38C10  38 03 00 18 */	addi r0, r3, 0x18
/* 80C38C14  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80C38C18  38 7D 00 14 */	addi r3, r29, 0x14
/* 80C38C1C  4B 44 02 4D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C38C20  38 7E 07 64 */	addi r3, r30, 0x764
/* 80C38C24  4B 43 D2 89 */	bl __ct__12dBgS_AcchCirFv
/* 80C38C28  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C38C2C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C38C30  90 1E 07 BC */	stw r0, 0x7bc(r30)
/* 80C38C34  38 7E 07 C0 */	addi r3, r30, 0x7c0
/* 80C38C38  4B 44 AB 29 */	bl __ct__10dCcD_GSttsFv
/* 80C38C3C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C38C40  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C38C44  90 7E 07 BC */	stw r3, 0x7bc(r30)
/* 80C38C48  38 03 00 20 */	addi r0, r3, 0x20
/* 80C38C4C  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 80C38C50  3B BE 07 E0 */	addi r29, r30, 0x7e0
/* 80C38C54  7F A3 EB 78 */	mr r3, r29
/* 80C38C58  4B 44 AD D1 */	bl __ct__12dCcD_GObjInfFv
/* 80C38C5C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C38C60  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C38C64  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C38C68  3C 60 80 C4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C397DC@ha */
/* 80C38C6C  38 03 97 DC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C397DC@l */
/* 80C38C70  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C38C74  3C 60 80 C4 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C397D0@ha */
/* 80C38C78  38 03 97 D0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C397D0@l */
/* 80C38C7C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C38C80  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C38C84  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C38C88  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C38C8C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C38C90  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C38C94  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C38C98  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C38C9C  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C38CA0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C38CA4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C38CA8  38 03 00 84 */	addi r0, r3, 0x84
/* 80C38CAC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C38CB0  3C 60 80 C4 */	lis r3, __vt__15daItemKantera_c@ha /* 0x80C3980C@ha */
/* 80C38CB4  38 03 98 0C */	addi r0, r3, __vt__15daItemKantera_c@l /* 0x80C3980C@l */
/* 80C38CB8  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80C38CBC:
/* 80C38CBC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C38CC0  60 00 00 08 */	ori r0, r0, 8
/* 80C38CC4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C38CC8:
/* 80C38CC8  88 1F 09 37 */	lbz r0, 0x937(r31)
/* 80C38CCC  28 00 00 00 */	cmplwi r0, 0
/* 80C38CD0  40 82 00 38 */	bne lbl_80C38D08
/* 80C38CD4  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80C38CD8  B0 1F 09 38 */	sth r0, 0x938(r31)
/* 80C38CDC  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80C38CE0  B0 1F 09 3A */	sth r0, 0x93a(r31)
/* 80C38CE4  38 00 00 00 */	li r0, 0
/* 80C38CE8  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80C38CEC  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80C38CF0  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80C38CF4  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80C38CF8  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80C38CFC  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80C38D00  38 00 00 01 */	li r0, 1
/* 80C38D04  98 1F 09 37 */	stb r0, 0x937(r31)
lbl_80C38D08:
/* 80C38D08  38 00 00 48 */	li r0, 0x48
/* 80C38D0C  98 1F 09 2A */	stb r0, 0x92a(r31)
/* 80C38D10  88 7F 09 2A */	lbz r3, 0x92a(r31)
/* 80C38D14  38 80 00 01 */	li r4, 1
/* 80C38D18  4B 45 F1 C9 */	bl checkItemGet__FUci
/* 80C38D1C  2C 03 00 00 */	cmpwi r3, 0
/* 80C38D20  41 82 00 0C */	beq lbl_80C38D2C
/* 80C38D24  38 60 00 05 */	li r3, 5
/* 80C38D28  48 00 00 6C */	b lbl_80C38D94
lbl_80C38D2C:
/* 80C38D2C  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 80C38D30  54 00 20 36 */	slwi r0, r0, 4
/* 80C38D34  3C 60 80 3B */	lis r3, field_item_res__10dItem_data@ha /* 0x803ADD88@ha */
/* 80C38D38  38 63 DD 88 */	addi r3, r3, field_item_res__10dItem_data@l /* 0x803ADD88@l */
/* 80C38D3C  7C 83 00 2E */	lwzx r4, r3, r0
/* 80C38D40  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80C38D44  4B 3F 41 79 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C38D48  7C 7E 1B 78 */	mr r30, r3
/* 80C38D4C  2C 1E 00 04 */	cmpwi r30, 4
/* 80C38D50  40 82 00 40 */	bne lbl_80C38D90
/* 80C38D54  7F E3 FB 78 */	mr r3, r31
/* 80C38D58  3C 80 80 03 */	lis r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@ha /* 0x80037B78@ha */
/* 80C38D5C  38 84 7B 78 */	addi r4, r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@l /* 0x80037B78@l */
/* 80C38D60  38 A0 19 40 */	li r5, 0x1940
/* 80C38D64  4B 3E 17 4D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C38D68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C38D6C  40 82 00 0C */	bne lbl_80C38D78
/* 80C38D70  38 60 00 05 */	li r3, 5
/* 80C38D74  48 00 00 20 */	b lbl_80C38D94
lbl_80C38D78:
/* 80C38D78  7F E3 FB 78 */	mr r3, r31
/* 80C38D7C  4B FF FC E9 */	bl Create__15daItemKantera_cFv
/* 80C38D80  2C 03 00 00 */	cmpwi r3, 0
/* 80C38D84  40 82 00 0C */	bne lbl_80C38D90
/* 80C38D88  38 60 00 05 */	li r3, 5
/* 80C38D8C  48 00 00 08 */	b lbl_80C38D94
lbl_80C38D90:
/* 80C38D90  7F C3 F3 78 */	mr r3, r30
lbl_80C38D94:
/* 80C38D94  39 61 00 20 */	addi r11, r1, 0x20
/* 80C38D98  4B 72 94 91 */	bl _restgpr_29
/* 80C38D9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C38DA0  7C 08 03 A6 */	mtlr r0
/* 80C38DA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C38DA8  4E 80 00 20 */	blr 
