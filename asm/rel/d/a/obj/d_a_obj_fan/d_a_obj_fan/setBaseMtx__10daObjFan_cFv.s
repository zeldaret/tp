lbl_80BE4E44:
/* 80BE4E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE4E48  7C 08 02 A6 */	mflr r0
/* 80BE4E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE4E50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE4E54  7C 7F 1B 78 */	mr r31, r3
/* 80BE4E58  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BE4E5C  4B 42 7F 09 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BE4E60  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BE4E64  4B 42 80 E1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BE4E68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE4E6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE4E70  A8 9F 0A CE */	lha r4, 0xace(r31)
/* 80BE4E74  4B 42 76 59 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80BE4E78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE4E7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE4E80  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BE4E84  38 84 00 24 */	addi r4, r4, 0x24
/* 80BE4E88  4B 76 16 29 */	bl PSMTXCopy
/* 80BE4E8C  88 1F 0A D4 */	lbz r0, 0xad4(r31)
/* 80BE4E90  28 00 00 00 */	cmplwi r0, 0
/* 80BE4E94  41 82 00 1C */	beq lbl_80BE4EB0
/* 80BE4E98  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80BE4E9C  28 03 00 00 */	cmplwi r3, 0
/* 80BE4EA0  41 82 00 24 */	beq lbl_80BE4EC4
/* 80BE4EA4  4B 68 33 31 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80BE4EA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE4EAC  41 82 00 18 */	beq lbl_80BE4EC4
lbl_80BE4EB0:
/* 80BE4EB0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BE4EB4  4B 42 7E B1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BE4EB8  38 7F 04 B4 */	addi r3, r31, 0x4b4
/* 80BE4EBC  4B 42 80 89 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BE4EC0  48 00 00 24 */	b lbl_80BE4EE4
lbl_80BE4EC4:
/* 80BE4EC4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BE4EC8  4B 42 7E 9D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BE4ECC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BE4ED0  4B 42 80 75 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BE4ED4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE4ED8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE4EDC  A8 9F 0A CE */	lha r4, 0xace(r31)
/* 80BE4EE0  4B 42 75 ED */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80BE4EE4:
/* 80BE4EE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE4EE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE4EEC  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BE4EF0  4B 76 15 C1 */	bl PSMTXCopy
/* 80BE4EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE4EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE4EFC  7C 08 03 A6 */	mtlr r0
/* 80BE4F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE4F04  4E 80 00 20 */	blr 
