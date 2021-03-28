lbl_80672AE4:
/* 80672AE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80672AE8  7C 08 02 A6 */	mflr r0
/* 80672AEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80672AF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80672AF4  4B CE F6 E8 */	b _savegpr_29
/* 80672AF8  7C 7D 1B 78 */	mr r29, r3
/* 80672AFC  7C 9E 23 78 */	mr r30, r4
/* 80672B00  3C 60 80 67 */	lis r3, l_staff_name@ha
/* 80672B04  3B E3 75 58 */	addi r31, r3, l_staff_name@l
/* 80672B08  88 1D 00 0B */	lbz r0, 0xb(r29)
/* 80672B0C  28 00 00 00 */	cmplwi r0, 0
/* 80672B10  40 82 00 0C */	bne lbl_80672B1C
/* 80672B14  38 60 00 01 */	li r3, 1
/* 80672B18  48 00 00 40 */	b lbl_80672B58
lbl_80672B1C:
/* 80672B1C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80672B20  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80672B24  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80672B28  4B BF DC 18 */	b cLib_chaseF__FPfff
/* 80672B2C  38 7D 00 04 */	addi r3, r29, 4
/* 80672B30  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80672B34  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80672B38  4B BF DC 08 */	b cLib_chaseF__FPfff
/* 80672B3C  2C 03 00 00 */	cmpwi r3, 0
/* 80672B40  41 82 00 14 */	beq lbl_80672B54
/* 80672B44  38 00 00 00 */	li r0, 0
/* 80672B48  98 1D 00 0B */	stb r0, 0xb(r29)
/* 80672B4C  38 60 00 02 */	li r3, 2
/* 80672B50  48 00 00 08 */	b lbl_80672B58
lbl_80672B54:
/* 80672B54  38 60 00 00 */	li r3, 0
lbl_80672B58:
/* 80672B58  39 61 00 20 */	addi r11, r1, 0x20
/* 80672B5C  4B CE F6 CC */	b _restgpr_29
/* 80672B60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80672B64  7C 08 03 A6 */	mtlr r0
/* 80672B68  38 21 00 20 */	addi r1, r1, 0x20
/* 80672B6C  4E 80 00 20 */	blr 
