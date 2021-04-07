lbl_8057EFB0:
/* 8057EFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057EFB4  7C 08 02 A6 */	mflr r0
/* 8057EFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057EFBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057EFC0  7C 7F 1B 78 */	mr r31, r3
/* 8057EFC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057EFC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057EFCC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8057EFD0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8057EFD4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8057EFD8  7C 05 07 74 */	extsb r5, r0
/* 8057EFDC  4B AB 62 25 */	bl onSwitch__10dSv_info_cFii
/* 8057EFE0  7F E3 FB 78 */	mr r3, r31
/* 8057EFE4  4B A9 AC 99 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8057EFE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057EFEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057EFF0  7C 08 03 A6 */	mtlr r0
/* 8057EFF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057EFF8  4E 80 00 20 */	blr 
