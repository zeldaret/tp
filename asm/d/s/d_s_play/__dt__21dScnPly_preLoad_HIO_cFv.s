lbl_8025ADC0:
/* 8025ADC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025ADC4  7C 08 02 A6 */	mflr r0
/* 8025ADC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025ADCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025ADD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025ADD4  41 82 00 30 */	beq lbl_8025AE04
/* 8025ADD8  3C 60 80 3C */	lis r3, __vt__21dScnPly_preLoad_HIO_c@ha /* 0x803C3254@ha */
/* 8025ADDC  38 03 32 54 */	addi r0, r3, __vt__21dScnPly_preLoad_HIO_c@l /* 0x803C3254@l */
/* 8025ADE0  90 1F 00 00 */	stw r0, 0(r31)
/* 8025ADE4  41 82 00 10 */	beq lbl_8025ADF4
/* 8025ADE8  3C 60 80 3B */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x803B61B4@ha */
/* 8025ADEC  38 03 61 B4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x803B61B4@l */
/* 8025ADF0  90 1F 00 00 */	stw r0, 0(r31)
lbl_8025ADF4:
/* 8025ADF4  7C 80 07 35 */	extsh. r0, r4
/* 8025ADF8  40 81 00 0C */	ble lbl_8025AE04
/* 8025ADFC  7F E3 FB 78 */	mr r3, r31
/* 8025AE00  48 07 3F 3D */	bl __dl__FPv
lbl_8025AE04:
/* 8025AE04  7F E3 FB 78 */	mr r3, r31
/* 8025AE08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025AE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025AE10  7C 08 03 A6 */	mtlr r0
/* 8025AE14  38 21 00 10 */	addi r1, r1, 0x10
/* 8025AE18  4E 80 00 20 */	blr 
