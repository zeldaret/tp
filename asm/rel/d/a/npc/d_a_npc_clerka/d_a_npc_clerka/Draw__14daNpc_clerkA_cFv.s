lbl_80992E5C:
/* 80992E5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80992E60  7C 08 02 A6 */	mflr r0
/* 80992E64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80992E68  39 61 00 20 */	addi r11, r1, 0x20
/* 80992E6C  4B 9C F3 70 */	b _savegpr_29
/* 80992E70  7C 7D 1B 78 */	mr r29, r3
/* 80992E74  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80992E78  28 1E 00 00 */	cmplwi r30, 0
/* 80992E7C  41 82 00 30 */	beq lbl_80992EAC
/* 80992E80  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80992E84  80 84 00 04 */	lwz r4, 4(r4)
/* 80992E88  83 E4 00 04 */	lwz r31, 4(r4)
/* 80992E8C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80992E90  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80992E94  7D 89 03 A6 */	mtctr r12
/* 80992E98  4E 80 04 21 */	bctrl 
/* 80992E9C  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80992EA0  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80992EA4  7C 64 00 2E */	lwzx r3, r4, r0
/* 80992EA8  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80992EAC:
/* 80992EAC  7F A3 EB 78 */	mr r3, r29
/* 80992EB0  38 80 00 00 */	li r4, 0
/* 80992EB4  38 A0 00 00 */	li r5, 0
/* 80992EB8  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80992EBC  38 C0 00 00 */	li r6, 0
/* 80992EC0  3C E0 80 99 */	lis r7, lit_4124@ha
/* 80992EC4  C0 47 59 24 */	lfs f2, lit_4124@l(r7)
/* 80992EC8  38 E0 00 00 */	li r7, 0
/* 80992ECC  39 00 00 00 */	li r8, 0
/* 80992ED0  39 20 00 00 */	li r9, 0
/* 80992ED4  4B 7B 59 98 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80992ED8  39 61 00 20 */	addi r11, r1, 0x20
/* 80992EDC  4B 9C F3 4C */	b _restgpr_29
/* 80992EE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80992EE4  7C 08 03 A6 */	mtlr r0
/* 80992EE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80992EEC  4E 80 00 20 */	blr 
