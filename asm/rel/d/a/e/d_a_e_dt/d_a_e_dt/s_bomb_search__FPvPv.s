lbl_806AFF8C:
/* 806AFF8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806AFF90  7C 08 02 A6 */	mflr r0
/* 806AFF94  90 01 00 24 */	stw r0, 0x24(r1)
/* 806AFF98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806AFF9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806AFFA0  7C 7F 1B 78 */	mr r31, r3
/* 806AFFA4  3C 80 80 6B */	lis r4, lit_3792@ha /* 0x806B5CD4@ha */
/* 806AFFA8  3B C4 5C D4 */	addi r30, r4, lit_3792@l /* 0x806B5CD4@l */
/* 806AFFAC  4B 96 8D 35 */	bl fopAc_IsActor__FPv
/* 806AFFB0  2C 03 00 00 */	cmpwi r3, 0
/* 806AFFB4  41 82 01 44 */	beq lbl_806B00F8
/* 806AFFB8  28 1F 00 00 */	cmplwi r31, 0
/* 806AFFBC  41 82 00 0C */	beq lbl_806AFFC8
/* 806AFFC0  80 7F 00 04 */	lwz r3, 4(r31)
/* 806AFFC4  48 00 00 08 */	b lbl_806AFFCC
lbl_806AFFC8:
/* 806AFFC8  38 60 FF FF */	li r3, -1
lbl_806AFFCC:
/* 806AFFCC  4B 97 21 6D */	bl fpcM_IsCreating__FUi
/* 806AFFD0  2C 03 00 00 */	cmpwi r3, 0
/* 806AFFD4  40 82 01 24 */	bne lbl_806B00F8
/* 806AFFD8  A8 1F 00 08 */	lha r0, 8(r31)
/* 806AFFDC  2C 00 02 21 */	cmpwi r0, 0x221
/* 806AFFE0  40 82 01 18 */	bne lbl_806B00F8
/* 806AFFE4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 806AFFE8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 806AFFEC  40 82 01 0C */	bne lbl_806B00F8
/* 806AFFF0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806AFFF4  3C 80 80 6B */	lis r4, m_tongue_pos__6E_DT_n@ha /* 0x806B6340@ha */
/* 806AFFF8  38 84 63 40 */	addi r4, r4, m_tongue_pos__6E_DT_n@l /* 0x806B6340@l */
/* 806AFFFC  4B C9 73 A1 */	bl PSVECSquareDistance
/* 806B0000  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B0004  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B0008  40 81 00 58 */	ble lbl_806B0060
/* 806B000C  FC 00 08 34 */	frsqrte f0, f1
/* 806B0010  C8 9E 00 90 */	lfd f4, 0x90(r30)
/* 806B0014  FC 44 00 32 */	fmul f2, f4, f0
/* 806B0018  C8 7E 00 98 */	lfd f3, 0x98(r30)
/* 806B001C  FC 00 00 32 */	fmul f0, f0, f0
/* 806B0020  FC 01 00 32 */	fmul f0, f1, f0
/* 806B0024  FC 03 00 28 */	fsub f0, f3, f0
/* 806B0028  FC 02 00 32 */	fmul f0, f2, f0
/* 806B002C  FC 44 00 32 */	fmul f2, f4, f0
/* 806B0030  FC 00 00 32 */	fmul f0, f0, f0
/* 806B0034  FC 01 00 32 */	fmul f0, f1, f0
/* 806B0038  FC 03 00 28 */	fsub f0, f3, f0
/* 806B003C  FC 02 00 32 */	fmul f0, f2, f0
/* 806B0040  FC 44 00 32 */	fmul f2, f4, f0
/* 806B0044  FC 00 00 32 */	fmul f0, f0, f0
/* 806B0048  FC 01 00 32 */	fmul f0, f1, f0
/* 806B004C  FC 03 00 28 */	fsub f0, f3, f0
/* 806B0050  FC 02 00 32 */	fmul f0, f2, f0
/* 806B0054  FC 21 00 32 */	fmul f1, f1, f0
/* 806B0058  FC 20 08 18 */	frsp f1, f1
/* 806B005C  48 00 00 88 */	b lbl_806B00E4
lbl_806B0060:
/* 806B0060  C8 1E 00 A0 */	lfd f0, 0xa0(r30)
/* 806B0064  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B0068  40 80 00 10 */	bge lbl_806B0078
/* 806B006C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806B0070  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806B0074  48 00 00 70 */	b lbl_806B00E4
lbl_806B0078:
/* 806B0078  D0 21 00 08 */	stfs f1, 8(r1)
/* 806B007C  80 81 00 08 */	lwz r4, 8(r1)
/* 806B0080  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806B0084  3C 00 7F 80 */	lis r0, 0x7f80
/* 806B0088  7C 03 00 00 */	cmpw r3, r0
/* 806B008C  41 82 00 14 */	beq lbl_806B00A0
/* 806B0090  40 80 00 40 */	bge lbl_806B00D0
/* 806B0094  2C 03 00 00 */	cmpwi r3, 0
/* 806B0098  41 82 00 20 */	beq lbl_806B00B8
/* 806B009C  48 00 00 34 */	b lbl_806B00D0
lbl_806B00A0:
/* 806B00A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806B00A4  41 82 00 0C */	beq lbl_806B00B0
/* 806B00A8  38 00 00 01 */	li r0, 1
/* 806B00AC  48 00 00 28 */	b lbl_806B00D4
lbl_806B00B0:
/* 806B00B0  38 00 00 02 */	li r0, 2
/* 806B00B4  48 00 00 20 */	b lbl_806B00D4
lbl_806B00B8:
/* 806B00B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806B00BC  41 82 00 0C */	beq lbl_806B00C8
/* 806B00C0  38 00 00 05 */	li r0, 5
/* 806B00C4  48 00 00 10 */	b lbl_806B00D4
lbl_806B00C8:
/* 806B00C8  38 00 00 03 */	li r0, 3
/* 806B00CC  48 00 00 08 */	b lbl_806B00D4
lbl_806B00D0:
/* 806B00D0  38 00 00 04 */	li r0, 4
lbl_806B00D4:
/* 806B00D4  2C 00 00 01 */	cmpwi r0, 1
/* 806B00D8  40 82 00 0C */	bne lbl_806B00E4
/* 806B00DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806B00E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806B00E4:
/* 806B00E4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 806B00E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B00EC  40 80 00 0C */	bge lbl_806B00F8
/* 806B00F0  7F E3 FB 78 */	mr r3, r31
/* 806B00F4  48 00 00 08 */	b lbl_806B00FC
lbl_806B00F8:
/* 806B00F8  38 60 00 00 */	li r3, 0
lbl_806B00FC:
/* 806B00FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806B0100  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806B0104  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B0108  7C 08 03 A6 */	mtlr r0
/* 806B010C  38 21 00 20 */	addi r1, r1, 0x20
/* 806B0110  4E 80 00 20 */	blr 
