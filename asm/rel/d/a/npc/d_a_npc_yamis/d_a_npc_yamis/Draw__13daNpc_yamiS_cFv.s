lbl_80B46DFC:
/* 80B46DFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B46E00  7C 08 02 A6 */	mflr r0
/* 80B46E04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B46E08  39 61 00 20 */	addi r11, r1, 0x20
/* 80B46E0C  4B 81 B3 D0 */	b _savegpr_29
/* 80B46E10  7C 7D 1B 78 */	mr r29, r3
/* 80B46E14  88 03 0F 81 */	lbz r0, 0xf81(r3)
/* 80B46E18  7C 00 07 75 */	extsb. r0, r0
/* 80B46E1C  41 82 00 0C */	beq lbl_80B46E28
/* 80B46E20  38 60 00 00 */	li r3, 0
/* 80B46E24  48 00 00 68 */	b lbl_80B46E8C
lbl_80B46E28:
/* 80B46E28  83 DD 09 6C */	lwz r30, 0x96c(r29)
/* 80B46E2C  28 1E 00 00 */	cmplwi r30, 0
/* 80B46E30  41 82 00 30 */	beq lbl_80B46E60
/* 80B46E34  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80B46E38  80 84 00 04 */	lwz r4, 4(r4)
/* 80B46E3C  83 E4 00 04 */	lwz r31, 4(r4)
/* 80B46E40  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B46E44  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B46E48  7D 89 03 A6 */	mtctr r12
/* 80B46E4C  4E 80 04 21 */	bctrl 
/* 80B46E50  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80B46E54  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80B46E58  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B46E5C  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80B46E60:
/* 80B46E60  7F A3 EB 78 */	mr r3, r29
/* 80B46E64  38 80 00 00 */	li r4, 0
/* 80B46E68  38 A0 00 00 */	li r5, 0
/* 80B46E6C  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80B46E70  38 C0 00 00 */	li r6, 0
/* 80B46E74  3C E0 80 B5 */	lis r7, lit_4194@ha
/* 80B46E78  C0 47 97 54 */	lfs f2, lit_4194@l(r7)
/* 80B46E7C  38 E0 00 01 */	li r7, 1
/* 80B46E80  39 00 00 00 */	li r8, 0
/* 80B46E84  39 20 00 00 */	li r9, 0
/* 80B46E88  4B 60 19 E4 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
lbl_80B46E8C:
/* 80B46E8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B46E90  4B 81 B3 98 */	b _restgpr_29
/* 80B46E94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B46E98  7C 08 03 A6 */	mtlr r0
/* 80B46E9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B46EA0  4E 80 00 20 */	blr 
