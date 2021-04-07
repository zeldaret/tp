lbl_80C4EF38:
/* 80C4EF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4EF3C  7C 08 02 A6 */	mflr r0
/* 80C4EF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4EF44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4EF48  7C 7F 1B 78 */	mr r31, r3
/* 80C4EF4C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C4EF50  80 9F 06 18 */	lwz r4, 0x618(r31)
/* 80C4EF54  38 84 00 24 */	addi r4, r4, 0x24
/* 80C4EF58  4B 6F 75 59 */	bl PSMTXCopy
/* 80C4EF5C  38 1F 05 E8 */	addi r0, r31, 0x5e8
/* 80C4EF60  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C4EF64  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C4EF68  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C4EF6C  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C4EF70  41 82 00 40 */	beq lbl_80C4EFB0
/* 80C4EF74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4EF78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4EF7C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C4EF80  7C 05 07 74 */	extsb r5, r0
/* 80C4EF84  4B 3E 63 DD */	bl isSwitch__10dSv_info_cCFii
/* 80C4EF88  2C 03 00 00 */	cmpwi r3, 0
/* 80C4EF8C  41 82 00 24 */	beq lbl_80C4EFB0
/* 80C4EF90  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C4EF94  54 00 C7 FF */	rlwinm. r0, r0, 0x18, 0x1f, 0x1f
/* 80C4EF98  41 82 00 10 */	beq lbl_80C4EFA8
/* 80C4EF9C  38 00 00 40 */	li r0, 0x40
/* 80C4EFA0  B0 1F 06 1C */	sth r0, 0x61c(r31)
/* 80C4EFA4  48 00 00 0C */	b lbl_80C4EFB0
lbl_80C4EFA8:
/* 80C4EFA8  38 00 FF C0 */	li r0, -64
/* 80C4EFAC  B0 1F 06 1C */	sth r0, 0x61c(r31)
lbl_80C4EFB0:
/* 80C4EFB0  7F E3 FB 78 */	mr r3, r31
/* 80C4EFB4  3C 80 80 C5 */	lis r4, l_cull_box@ha /* 0x80C4F6CC@ha */
/* 80C4EFB8  C4 24 F6 CC */	lfsu f1, l_cull_box@l(r4)  /* 0x80C4F6CC@l */
/* 80C4EFBC  C0 44 00 04 */	lfs f2, 4(r4)
/* 80C4EFC0  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C4EFC4  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80C4EFC8  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80C4EFCC  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80C4EFD0  4B 3C B5 79 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C4EFD4  38 60 00 01 */	li r3, 1
/* 80C4EFD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4EFDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4EFE0  7C 08 03 A6 */	mtlr r0
/* 80C4EFE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4EFE8  4E 80 00 20 */	blr 
