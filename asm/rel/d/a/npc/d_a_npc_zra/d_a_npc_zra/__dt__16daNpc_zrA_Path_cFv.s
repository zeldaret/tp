lbl_80B7EF88:
/* 80B7EF88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7EF8C  7C 08 02 A6 */	mflr r0
/* 80B7EF90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7EF94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7EF98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B7EF9C  41 82 00 44 */	beq lbl_80B7EFE0
/* 80B7EFA0  3C 60 80 B9 */	lis r3, __vt__16daNpc_zrA_Path_c@ha /* 0x80B8DA04@ha */
/* 80B7EFA4  38 03 DA 04 */	addi r0, r3, __vt__16daNpc_zrA_Path_c@l /* 0x80B8DA04@l */
/* 80B7EFA8  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B7EFAC  41 82 00 24 */	beq lbl_80B7EFD0
/* 80B7EFB0  3C 60 80 B9 */	lis r3, __vt__13daNpcF_Path_c@ha /* 0x80B8DA1C@ha */
/* 80B7EFB4  38 03 DA 1C */	addi r0, r3, __vt__13daNpcF_Path_c@l /* 0x80B8DA1C@l */
/* 80B7EFB8  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B7EFBC  34 1F 00 20 */	addic. r0, r31, 0x20
/* 80B7EFC0  41 82 00 10 */	beq lbl_80B7EFD0
/* 80B7EFC4  3C 60 80 B9 */	lis r3, __vt__16daNpcF_SPCurve_c@ha /* 0x80B8DA10@ha */
/* 80B7EFC8  38 03 DA 10 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l /* 0x80B8DA10@l */
/* 80B7EFCC  90 1F 06 28 */	stw r0, 0x628(r31)
lbl_80B7EFD0:
/* 80B7EFD0  7C 80 07 35 */	extsh. r0, r4
/* 80B7EFD4  40 81 00 0C */	ble lbl_80B7EFE0
/* 80B7EFD8  7F E3 FB 78 */	mr r3, r31
/* 80B7EFDC  4B 74 FD 61 */	bl __dl__FPv
lbl_80B7EFE0:
/* 80B7EFE0  7F E3 FB 78 */	mr r3, r31
/* 80B7EFE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7EFE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7EFEC  7C 08 03 A6 */	mtlr r0
/* 80B7EFF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7EFF4  4E 80 00 20 */	blr 
