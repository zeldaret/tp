lbl_80C5BBD4:
/* 80C5BBD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C5BBD8  7C 08 02 A6 */	mflr r0
/* 80C5BBDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C5BBE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80C5BBE4  4B 70 65 F9 */	bl _savegpr_29
/* 80C5BBE8  7C 7F 1B 78 */	mr r31, r3
/* 80C5BBEC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C5BBF0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C5BBF4  40 82 00 1C */	bne lbl_80C5BC10
/* 80C5BBF8  28 1F 00 00 */	cmplwi r31, 0
/* 80C5BBFC  41 82 00 08 */	beq lbl_80C5BC04
/* 80C5BC00  4B 3B CF 65 */	bl __ct__10fopAc_ac_cFv
lbl_80C5BC04:
/* 80C5BC04  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C5BC08  60 00 00 08 */	ori r0, r0, 8
/* 80C5BC0C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C5BC10:
/* 80C5BC10  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C5BC14  3C 80 80 C6 */	lis r4, d_a_obj_lv3WaterB__stringBase0@ha /* 0x80C5BD70@ha */
/* 80C5BC18  38 84 BD 70 */	addi r4, r4, d_a_obj_lv3WaterB__stringBase0@l /* 0x80C5BD70@l */
/* 80C5BC1C  4B 3D 12 A1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C5BC20  7C 7E 1B 78 */	mr r30, r3
/* 80C5BC24  38 7F 05 70 */	addi r3, r31, 0x570
/* 80C5BC28  3C 80 80 C6 */	lis r4, d_a_obj_lv3WaterB__stringBase0@ha /* 0x80C5BD70@ha */
/* 80C5BC2C  38 84 BD 70 */	addi r4, r4, d_a_obj_lv3WaterB__stringBase0@l /* 0x80C5BD70@l */
/* 80C5BC30  38 84 00 0A */	addi r4, r4, 0xa
/* 80C5BC34  4B 3D 12 89 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C5BC38  2C 1E 00 04 */	cmpwi r30, 4
/* 80C5BC3C  40 82 00 E4 */	bne lbl_80C5BD20
/* 80C5BC40  2C 03 00 04 */	cmpwi r3, 4
/* 80C5BC44  40 82 00 DC */	bne lbl_80C5BD20
/* 80C5BC48  7F E3 FB 78 */	mr r3, r31
/* 80C5BC4C  3C 80 80 C6 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80C5B94C@ha */
/* 80C5BC50  38 84 B9 4C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80C5B94C@l */
/* 80C5BC54  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80C5BC58  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80C5BC5C  4B 3B E8 55 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C5BC60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C5BC64  40 82 00 0C */	bne lbl_80C5BC70
/* 80C5BC68  38 60 00 05 */	li r3, 5
/* 80C5BC6C  48 00 00 C4 */	b lbl_80C5BD30
lbl_80C5BC70:
/* 80C5BC70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5BC74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5BC78  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80C5BC7C  7F A3 EB 78 */	mr r3, r29
/* 80C5BC80  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 80C5BC84  7F E5 FB 78 */	mr r5, r31
/* 80C5BC88  4B 41 8D 81 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C5BC8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C5BC90  41 82 00 0C */	beq lbl_80C5BC9C
/* 80C5BC94  38 60 00 05 */	li r3, 5
/* 80C5BC98  48 00 00 98 */	b lbl_80C5BD30
lbl_80C5BC9C:
/* 80C5BC9C  7F A3 EB 78 */	mr r3, r29
/* 80C5BCA0  80 9F 05 F4 */	lwz r4, 0x5f4(r31)
/* 80C5BCA4  7F E5 FB 78 */	mr r5, r31
/* 80C5BCA8  4B 41 8D 61 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C5BCAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C5BCB0  41 82 00 0C */	beq lbl_80C5BCBC
/* 80C5BCB4  38 60 00 05 */	li r3, 5
/* 80C5BCB8  48 00 00 78 */	b lbl_80C5BD30
lbl_80C5BCBC:
/* 80C5BCBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5BCC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5BCC4  38 63 09 58 */	addi r3, r3, 0x958
/* 80C5BCC8  38 80 00 03 */	li r4, 3
/* 80C5BCCC  4B 3D 8C 69 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80C5BCD0  2C 03 00 00 */	cmpwi r3, 0
/* 80C5BCD4  41 82 00 3C */	beq lbl_80C5BD10
/* 80C5BCD8  3C 60 80 C6 */	lis r3, lit_3752@ha /* 0x80C5BD60@ha */
/* 80C5BCDC  C0 43 BD 60 */	lfs f2, lit_3752@l(r3)  /* 0x80C5BD60@l */
/* 80C5BCE0  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80C5BCE4  3C 60 80 C6 */	lis r3, lit_3753@ha /* 0x80C5BD64@ha */
/* 80C5BCE8  C0 03 BD 64 */	lfs f0, lit_3753@l(r3)  /* 0x80C5BD64@l */
/* 80C5BCEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C5BCF0  EC 02 00 2A */	fadds f0, f2, f0
/* 80C5BCF4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C5BCF8  38 00 00 02 */	li r0, 2
/* 80C5BCFC  B0 1F 05 84 */	sth r0, 0x584(r31)
/* 80C5BD00  38 00 00 01 */	li r0, 1
/* 80C5BD04  B0 1F 05 86 */	sth r0, 0x586(r31)
/* 80C5BD08  38 00 00 00 */	li r0, 0
/* 80C5BD0C  90 1F 05 80 */	stw r0, 0x580(r31)
lbl_80C5BD10:
/* 80C5BD10  7F E3 FB 78 */	mr r3, r31
/* 80C5BD14  4B FF FB 89 */	bl daObj_Lv3waterB_Execute__FP19obj_lv3WaterB_class
/* 80C5BD18  7F C3 F3 78 */	mr r3, r30
/* 80C5BD1C  48 00 00 14 */	b lbl_80C5BD30
lbl_80C5BD20:
/* 80C5BD20  2C 1E 00 04 */	cmpwi r30, 4
/* 80C5BD24  40 82 00 08 */	bne lbl_80C5BD2C
/* 80C5BD28  48 00 00 08 */	b lbl_80C5BD30
lbl_80C5BD2C:
/* 80C5BD2C  7F C3 F3 78 */	mr r3, r30
lbl_80C5BD30:
/* 80C5BD30  39 61 00 20 */	addi r11, r1, 0x20
/* 80C5BD34  4B 70 64 F5 */	bl _restgpr_29
/* 80C5BD38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C5BD3C  7C 08 03 A6 */	mtlr r0
/* 80C5BD40  38 21 00 20 */	addi r1, r1, 0x20
/* 80C5BD44  4E 80 00 20 */	blr 
