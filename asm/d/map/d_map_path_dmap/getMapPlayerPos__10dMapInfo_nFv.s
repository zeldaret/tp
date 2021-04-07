lbl_8003EE5C:
/* 8003EE5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003EE60  7C 08 02 A6 */	mflr r0
/* 8003EE64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003EE68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003EE6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003EE70  7C 7E 1B 78 */	mr r30, r3
/* 8003EE74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8003EE78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8003EE7C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8003EE80  28 03 00 00 */	cmplwi r3, 0
/* 8003EE84  41 82 00 20 */	beq lbl_8003EEA4
/* 8003EE88  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8003EE8C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8003EE90  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8003EE94  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8003EE98  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8003EE9C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8003EEA0  48 00 00 14 */	b lbl_8003EEB4
lbl_8003EEA4:
/* 8003EEA4  C0 02 84 28 */	lfs f0, lit_3796(r2)
/* 8003EEA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8003EEAC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8003EEB0  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_8003EEB4:
/* 8003EEB4  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8003EEB8  7C 00 07 74 */	extsb r0, r0
/* 8003EEBC  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8003EEC0  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8003EEC4  1C 00 04 04 */	mulli r0, r0, 0x404
/* 8003EEC8  7C 63 02 14 */	add r3, r3, r0
/* 8003EECC  83 E3 00 20 */	lwz r31, 0x20(r3)
/* 8003EED0  28 1F 00 00 */	cmplwi r31, 0
/* 8003EED4  41 82 00 1C */	beq lbl_8003EEF0
/* 8003EED8  7F E3 FB 78 */	mr r3, r31
/* 8003EEDC  38 81 00 08 */	addi r4, r1, 8
/* 8003EEE0  4B FF FF 0D */	bl rotAngle__10dMapInfo_nFPC21dStage_FileList2_dt_cP3Vec
/* 8003EEE4  7F E3 FB 78 */	mr r3, r31
/* 8003EEE8  38 81 00 08 */	addi r4, r1, 8
/* 8003EEEC  4B FF FE D5 */	bl offsetPlus__10dMapInfo_nFPC21dStage_FileList2_dt_cP3Vec
lbl_8003EEF0:
/* 8003EEF0  80 61 00 08 */	lwz r3, 8(r1)
/* 8003EEF4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8003EEF8  90 7E 00 00 */	stw r3, 0(r30)
/* 8003EEFC  90 1E 00 04 */	stw r0, 4(r30)
/* 8003EF00  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8003EF04  90 1E 00 08 */	stw r0, 8(r30)
/* 8003EF08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003EF0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003EF10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003EF14  7C 08 03 A6 */	mtlr r0
/* 8003EF18  38 21 00 20 */	addi r1, r1, 0x20
/* 8003EF1C  4E 80 00 20 */	blr 
