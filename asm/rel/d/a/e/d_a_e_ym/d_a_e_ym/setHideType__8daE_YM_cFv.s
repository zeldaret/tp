lbl_80814AF0:
/* 80814AF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80814AF4  7C 08 02 A6 */	mflr r0
/* 80814AF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80814AFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80814B00  7C 7F 1B 78 */	mr r31, r3
/* 80814B04  38 00 00 01 */	li r0, 1
/* 80814B08  98 03 06 A4 */	stb r0, 0x6a4(r3)
/* 80814B0C  38 00 01 45 */	li r0, 0x145
/* 80814B10  90 03 09 A0 */	stw r0, 0x9a0(r3)
/* 80814B14  3C 00 00 01 */	lis r0, 1
/* 80814B18  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80814B1C  38 00 00 00 */	li r0, 0
/* 80814B20  3C 60 80 81 */	lis r3, m_near_obj@ha
/* 80814B24  90 03 5D 5C */	stw r0, m_near_obj@l(r3)
/* 80814B28  3C 60 80 81 */	lis r3, lit_3925@ha
/* 80814B2C  C0 03 59 94 */	lfs f0, lit_3925@l(r3)
/* 80814B30  3C 60 80 81 */	lis r3, m_obj_dist@ha
/* 80814B34  D0 03 5D 60 */	stfs f0, m_obj_dist@l(r3)
/* 80814B38  3C 60 80 81 */	lis r3, s_obj_sub__FPvPv@ha
/* 80814B3C  38 63 86 98 */	addi r3, r3, s_obj_sub__FPvPv@l
/* 80814B40  7F E4 FB 78 */	mr r4, r31
/* 80814B44  4B 80 C7 F4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80814B48  3C 60 80 81 */	lis r3, m_near_obj@ha
/* 80814B4C  38 63 5D 5C */	addi r3, r3, m_near_obj@l
/* 80814B50  80 63 00 00 */	lwz r3, 0(r3)
/* 80814B54  28 03 00 00 */	cmplwi r3, 0
/* 80814B58  41 82 00 30 */	beq lbl_80814B88
/* 80814B5C  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 80814B60  D0 21 00 08 */	stfs f1, 8(r1)
/* 80814B64  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80814B68  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80814B6C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80814B70  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80814B74  D0 3F 04 D0 */	stfs f1, 0x4d0(r31)
/* 80814B78  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80814B7C  38 00 00 01 */	li r0, 1
/* 80814B80  98 1F 06 A6 */	stb r0, 0x6a6(r31)
/* 80814B84  48 00 00 0C */	b lbl_80814B90
lbl_80814B88:
/* 80814B88  38 00 00 03 */	li r0, 3
/* 80814B8C  98 1F 06 A6 */	stb r0, 0x6a6(r31)
lbl_80814B90:
/* 80814B90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80814B94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80814B98  7C 08 03 A6 */	mtlr r0
/* 80814B9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80814BA0  4E 80 00 20 */	blr 
