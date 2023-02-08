lbl_80D55FD8:
/* 80D55FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D55FDC  7C 08 02 A6 */	mflr r0
/* 80D55FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D55FE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D55FE8  7C 7F 1B 78 */	mr r31, r3
/* 80D55FEC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D55FF0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D55FF4  40 82 00 28 */	bne lbl_80D5601C
/* 80D55FF8  28 1F 00 00 */	cmplwi r31, 0
/* 80D55FFC  41 82 00 14 */	beq lbl_80D56010
/* 80D56000  4B 2C 2B 65 */	bl __ct__10fopAc_ac_cFv
/* 80D56004  3C 60 80 D5 */	lis r3, __vt__18daTag_BottleItem_c@ha /* 0x80D566CC@ha */
/* 80D56008  38 03 66 CC */	addi r0, r3, __vt__18daTag_BottleItem_c@l /* 0x80D566CC@l */
/* 80D5600C  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80D56010:
/* 80D56010  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D56014  60 00 00 08 */	ori r0, r0, 8
/* 80D56018  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D5601C:
/* 80D5601C  7F E3 FB 78 */	mr r3, r31
/* 80D56020  48 00 00 B9 */	bl setTypeFromParam__18daTag_BottleItem_cFv
/* 80D56024  88 7F 05 76 */	lbz r3, 0x576(r31)
/* 80D56028  4B 34 56 E1 */	bl isBottleItem__FUc
/* 80D5602C  2C 03 00 00 */	cmpwi r3, 0
/* 80D56030  40 82 00 0C */	bne lbl_80D5603C
/* 80D56034  38 60 00 05 */	li r3, 5
/* 80D56038  48 00 00 10 */	b lbl_80D56048
lbl_80D5603C:
/* 80D5603C  7F E3 FB 78 */	mr r3, r31
/* 80D56040  48 00 01 31 */	bl initialize__18daTag_BottleItem_cFv
/* 80D56044  38 60 00 04 */	li r3, 4
lbl_80D56048:
/* 80D56048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5604C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D56050  7C 08 03 A6 */	mtlr r0
/* 80D56054  38 21 00 10 */	addi r1, r1, 0x10
/* 80D56058  4E 80 00 20 */	blr 
