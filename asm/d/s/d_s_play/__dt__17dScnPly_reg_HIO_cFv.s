lbl_8025AD78:
/* 8025AD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025AD7C  7C 08 02 A6 */	mflr r0
/* 8025AD80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025AD84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025AD88  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025AD8C  41 82 00 1C */	beq lbl_8025ADA8
/* 8025AD90  3C A0 80 3C */	lis r5, __vt__17dScnPly_reg_HIO_c@ha /* 0x803C3248@ha */
/* 8025AD94  38 05 32 48 */	addi r0, r5, __vt__17dScnPly_reg_HIO_c@l /* 0x803C3248@l */
/* 8025AD98  90 1F 00 00 */	stw r0, 0(r31)
/* 8025AD9C  7C 80 07 35 */	extsh. r0, r4
/* 8025ADA0  40 81 00 08 */	ble lbl_8025ADA8
/* 8025ADA4  48 07 3F 99 */	bl __dl__FPv
lbl_8025ADA8:
/* 8025ADA8  7F E3 FB 78 */	mr r3, r31
/* 8025ADAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025ADB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025ADB4  7C 08 03 A6 */	mtlr r0
/* 8025ADB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8025ADBC  4E 80 00 20 */	blr 
