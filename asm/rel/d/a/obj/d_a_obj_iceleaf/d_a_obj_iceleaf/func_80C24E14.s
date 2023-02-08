lbl_80C24E14:
/* 80C24E14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C24E18  7C 08 02 A6 */	mflr r0
/* 80C24E1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C24E20  39 61 00 20 */	addi r11, r1, 0x20
/* 80C24E24  4B 73 D3 B9 */	bl _savegpr_29
/* 80C24E28  7C 7F 1B 78 */	mr r31, r3
/* 80C24E2C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C24E30  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C24E34  40 82 00 E0 */	bne lbl_80C24F14
/* 80C24E38  7F E0 FB 79 */	or. r0, r31, r31
/* 80C24E3C  41 82 00 CC */	beq lbl_80C24F08
/* 80C24E40  7C 1E 03 78 */	mr r30, r0
/* 80C24E44  4B 3F 3D 21 */	bl __ct__10fopAc_ac_cFv
/* 80C24E48  3B BE 05 74 */	addi r29, r30, 0x574
/* 80C24E4C  7F A3 EB 78 */	mr r3, r29
/* 80C24E50  4B 45 12 51 */	bl __ct__9dBgS_AcchFv
/* 80C24E54  3C 60 80 C2 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C25F64@ha */
/* 80C24E58  38 63 5F 64 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C25F64@l */
/* 80C24E5C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80C24E60  38 03 00 0C */	addi r0, r3, 0xc
/* 80C24E64  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C24E68  38 03 00 18 */	addi r0, r3, 0x18
/* 80C24E6C  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80C24E70  38 7D 00 14 */	addi r3, r29, 0x14
/* 80C24E74  4B 45 3F F5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C24E78  38 7E 07 4C */	addi r3, r30, 0x74c
/* 80C24E7C  4B 45 10 31 */	bl __ct__12dBgS_AcchCirFv
/* 80C24E80  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C24E84  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C24E88  90 1E 07 A4 */	stw r0, 0x7a4(r30)
/* 80C24E8C  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 80C24E90  4B 45 E8 D1 */	bl __ct__10dCcD_GSttsFv
/* 80C24E94  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C24E98  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C24E9C  90 7E 07 A4 */	stw r3, 0x7a4(r30)
/* 80C24EA0  38 03 00 20 */	addi r0, r3, 0x20
/* 80C24EA4  90 1E 07 A8 */	stw r0, 0x7a8(r30)
/* 80C24EA8  3B BE 07 C8 */	addi r29, r30, 0x7c8
/* 80C24EAC  7F A3 EB 78 */	mr r3, r29
/* 80C24EB0  4B 45 EB 79 */	bl __ct__12dCcD_GObjInfFv
/* 80C24EB4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C24EB8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C24EBC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C24EC0  3C 60 80 C2 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C25F58@ha */
/* 80C24EC4  38 03 5F 58 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C25F58@l */
/* 80C24EC8  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C24ECC  3C 60 80 C2 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C25F4C@ha */
/* 80C24ED0  38 03 5F 4C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C25F4C@l */
/* 80C24ED4  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C24ED8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C24EDC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C24EE0  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C24EE4  38 03 00 58 */	addi r0, r3, 0x58
/* 80C24EE8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C24EEC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C24EF0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C24EF4  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C24EF8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C24EFC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C24F00  38 03 00 84 */	addi r0, r3, 0x84
/* 80C24F04  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_80C24F08:
/* 80C24F08  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C24F0C  60 00 00 08 */	ori r0, r0, 8
/* 80C24F10  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C24F14:
/* 80C24F14  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C24F18  3C 80 80 C2 */	lis r4, l_arcName@ha /* 0x80C25DD0@ha */
/* 80C24F1C  38 84 5D D0 */	addi r4, r4, l_arcName@l /* 0x80C25DD0@l */
/* 80C24F20  80 84 00 00 */	lwz r4, 0(r4)
/* 80C24F24  4B 40 7F 99 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C24F28  7C 7E 1B 78 */	mr r30, r3
/* 80C24F2C  2C 1E 00 04 */	cmpwi r30, 4
/* 80C24F30  40 82 00 40 */	bne lbl_80C24F70
/* 80C24F34  7F E3 FB 78 */	mr r3, r31
/* 80C24F38  3C 80 80 C2 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x80C24718@ha */
/* 80C24F3C  38 84 47 18 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x80C24718@l */
/* 80C24F40  38 A0 0D A0 */	li r5, 0xda0
/* 80C24F44  4B 3F 55 6D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C24F48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C24F4C  40 82 00 0C */	bne lbl_80C24F58
/* 80C24F50  38 60 00 05 */	li r3, 5
/* 80C24F54  48 00 00 20 */	b lbl_80C24F74
lbl_80C24F58:
/* 80C24F58  7F E3 FB 78 */	mr r3, r31
/* 80C24F5C  4B FF FA 89 */	bl Create__14daObjIceLeaf_cFv
/* 80C24F60  2C 03 00 00 */	cmpwi r3, 0
/* 80C24F64  40 82 00 0C */	bne lbl_80C24F70
/* 80C24F68  38 60 00 05 */	li r3, 5
/* 80C24F6C  48 00 00 08 */	b lbl_80C24F74
lbl_80C24F70:
/* 80C24F70  7F C3 F3 78 */	mr r3, r30
lbl_80C24F74:
/* 80C24F74  39 61 00 20 */	addi r11, r1, 0x20
/* 80C24F78  4B 73 D2 B1 */	bl _restgpr_29
/* 80C24F7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C24F80  7C 08 03 A6 */	mtlr r0
/* 80C24F84  38 21 00 20 */	addi r1, r1, 0x20
/* 80C24F88  4E 80 00 20 */	blr 
