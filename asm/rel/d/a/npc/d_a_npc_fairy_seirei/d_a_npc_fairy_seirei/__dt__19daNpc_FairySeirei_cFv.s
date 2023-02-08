lbl_8053FF6C:
/* 8053FF6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FF70  7C 08 02 A6 */	mflr r0
/* 8053FF74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FF78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053FF7C  93 C1 00 08 */	stw r30, 8(r1)
/* 8053FF80  7C 7E 1B 79 */	or. r30, r3, r3
/* 8053FF84  7C 9F 23 78 */	mr r31, r4
/* 8053FF88  41 82 00 C8 */	beq lbl_80540050
/* 8053FF8C  3C 60 80 54 */	lis r3, __vt__19daNpc_FairySeirei_c@ha /* 0x80542010@ha */
/* 8053FF90  38 03 20 10 */	addi r0, r3, __vt__19daNpc_FairySeirei_c@l /* 0x80542010@l */
/* 8053FF94  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 8053FF98  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 8053FF9C  28 00 00 00 */	cmplwi r0, 0
/* 8053FFA0  41 82 00 0C */	beq lbl_8053FFAC
/* 8053FFA4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8053FFA8  4B AD 13 69 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8053FFAC:
/* 8053FFAC  34 1E 0E 48 */	addic. r0, r30, 0xe48
/* 8053FFB0  41 82 00 84 */	beq lbl_80540034
/* 8053FFB4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8053FFB8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8053FFBC  90 7E 0E 84 */	stw r3, 0xe84(r30)
/* 8053FFC0  38 03 00 2C */	addi r0, r3, 0x2c
/* 8053FFC4  90 1E 0F 68 */	stw r0, 0xf68(r30)
/* 8053FFC8  38 03 00 84 */	addi r0, r3, 0x84
/* 8053FFCC  90 1E 0F 80 */	stw r0, 0xf80(r30)
/* 8053FFD0  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 8053FFD4  41 82 00 54 */	beq lbl_80540028
/* 8053FFD8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8053FFDC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8053FFE0  90 7E 0F 68 */	stw r3, 0xf68(r30)
/* 8053FFE4  38 03 00 58 */	addi r0, r3, 0x58
/* 8053FFE8  90 1E 0F 80 */	stw r0, 0xf80(r30)
/* 8053FFEC  34 1E 0F 6C */	addic. r0, r30, 0xf6c
/* 8053FFF0  41 82 00 10 */	beq lbl_80540000
/* 8053FFF4  3C 60 80 54 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80542004@ha */
/* 8053FFF8  38 03 20 04 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80542004@l */
/* 8053FFFC  90 1E 0F 80 */	stw r0, 0xf80(r30)
lbl_80540000:
/* 80540000  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 80540004  41 82 00 24 */	beq lbl_80540028
/* 80540008  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8054000C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80540010  90 1E 0F 68 */	stw r0, 0xf68(r30)
/* 80540014  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 80540018  41 82 00 10 */	beq lbl_80540028
/* 8054001C  3C 60 80 54 */	lis r3, __vt__8cM3dGAab@ha /* 0x80541FF8@ha */
/* 80540020  38 03 1F F8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80541FF8@l */
/* 80540024  90 1E 0F 64 */	stw r0, 0xf64(r30)
lbl_80540028:
/* 80540028  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 8054002C  38 80 00 00 */	li r4, 0
/* 80540030  4B B4 40 B5 */	bl __dt__12dCcD_GObjInfFv
lbl_80540034:
/* 80540034  7F C3 F3 78 */	mr r3, r30
/* 80540038  38 80 00 00 */	li r4, 0
/* 8054003C  48 00 0F 0D */	bl __dt__8daNpcT_cFv
/* 80540040  7F E0 07 35 */	extsh. r0, r31
/* 80540044  40 81 00 0C */	ble lbl_80540050
/* 80540048  7F C3 F3 78 */	mr r3, r30
/* 8054004C  4B D8 EC F1 */	bl __dl__FPv
lbl_80540050:
/* 80540050  7F C3 F3 78 */	mr r3, r30
/* 80540054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80540058  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054005C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540060  7C 08 03 A6 */	mtlr r0
/* 80540064  38 21 00 10 */	addi r1, r1, 0x10
/* 80540068  4E 80 00 20 */	blr 
