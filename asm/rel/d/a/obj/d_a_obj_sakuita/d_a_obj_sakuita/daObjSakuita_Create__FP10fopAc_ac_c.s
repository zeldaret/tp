lbl_80CC4E40:
/* 80CC4E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC4E44  7C 08 02 A6 */	mflr r0
/* 80CC4E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4E4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC4E50  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC4E54  7C 7F 1B 78 */	mr r31, r3
/* 80CC4E58  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CC4E5C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CC4E60  40 82 00 A8 */	bne lbl_80CC4F08
/* 80CC4E64  7F E0 FB 79 */	or. r0, r31, r31
/* 80CC4E68  41 82 00 94 */	beq lbl_80CC4EFC
/* 80CC4E6C  7C 1E 03 78 */	mr r30, r0
/* 80CC4E70  4B 35 3C F5 */	bl __ct__10fopAc_ac_cFv
/* 80CC4E74  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CC4E78  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CC4E7C  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 80CC4E80  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80CC4E84  4B 3B E8 DD */	bl __ct__10dCcD_GSttsFv
/* 80CC4E88  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CC4E8C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CC4E90  90 7E 05 BC */	stw r3, 0x5bc(r30)
/* 80CC4E94  38 03 00 20 */	addi r0, r3, 0x20
/* 80CC4E98  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 80CC4E9C  3B DE 05 E0 */	addi r30, r30, 0x5e0
/* 80CC4EA0  7F C3 F3 78 */	mr r3, r30
/* 80CC4EA4  4B 3B EB 85 */	bl __ct__12dCcD_GObjInfFv
/* 80CC4EA8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CC4EAC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CC4EB0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CC4EB4  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha /* 0x80CC5198@ha */
/* 80CC4EB8  38 03 51 98 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CC5198@l */
/* 80CC4EBC  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80CC4EC0  3C 60 80 CC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CC51A4@ha */
/* 80CC4EC4  38 03 51 A4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CC51A4@l */
/* 80CC4EC8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CC4ECC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CC4ED0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CC4ED4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CC4ED8  38 03 00 58 */	addi r0, r3, 0x58
/* 80CC4EDC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CC4EE0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CC4EE4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CC4EE8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CC4EEC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CC4EF0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CC4EF4  38 03 00 84 */	addi r0, r3, 0x84
/* 80CC4EF8  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80CC4EFC:
/* 80CC4EFC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CC4F00  60 00 00 08 */	ori r0, r0, 8
/* 80CC4F04  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CC4F08:
/* 80CC4F08  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80CC4F0C  3C 80 80 CC */	lis r4, l_arcName@ha /* 0x80CC512C@ha */
/* 80CC4F10  38 84 51 2C */	addi r4, r4, l_arcName@l /* 0x80CC512C@l */
/* 80CC4F14  80 84 00 00 */	lwz r4, 0(r4)
/* 80CC4F18  4B 36 7F A5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CC4F1C  7C 7E 1B 78 */	mr r30, r3
/* 80CC4F20  2C 1E 00 04 */	cmpwi r30, 4
/* 80CC4F24  40 82 00 38 */	bne lbl_80CC4F5C
/* 80CC4F28  7F E3 FB 78 */	mr r3, r31
/* 80CC4F2C  3C 80 80 CC */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha /* 0x80CC4B5C@ha */
/* 80CC4F30  38 84 4B 5C */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l /* 0x80CC4B5C@l */
/* 80CC4F34  38 A0 40 00 */	li r5, 0x4000
/* 80CC4F38  4B 35 55 79 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CC4F3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CC4F40  40 82 00 0C */	bne lbl_80CC4F4C
/* 80CC4F44  3B C0 00 05 */	li r30, 5
/* 80CC4F48  48 00 00 14 */	b lbl_80CC4F5C
lbl_80CC4F4C:
/* 80CC4F4C  7F E3 FB 78 */	mr r3, r31
/* 80CC4F50  4B FF F7 A9 */	bl create_init__14daObjSakuita_cFv
/* 80CC4F54  38 1F 05 74 */	addi r0, r31, 0x574
/* 80CC4F58  90 1F 05 04 */	stw r0, 0x504(r31)
lbl_80CC4F5C:
/* 80CC4F5C  7F C3 F3 78 */	mr r3, r30
/* 80CC4F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC4F64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC4F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC4F6C  7C 08 03 A6 */	mtlr r0
/* 80CC4F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC4F74  4E 80 00 20 */	blr 
