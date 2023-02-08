lbl_805ADDD8:
/* 805ADDD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805ADDDC  7C 08 02 A6 */	mflr r0
/* 805ADDE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805ADDE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805ADDE8  3C A0 80 5B */	lis r5, lit_3850@ha /* 0x805ADF50@ha */
/* 805ADDEC  3B E5 DF 50 */	addi r31, r5, lit_3850@l /* 0x805ADF50@l */
/* 805ADDF0  4B D9 95 AD */	bl PSVECSquareDistance
/* 805ADDF4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805ADDF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805ADDFC  40 81 00 58 */	ble lbl_805ADE54
/* 805ADE00  FC 00 08 34 */	frsqrte f0, f1
/* 805ADE04  C8 9F 01 30 */	lfd f4, 0x130(r31)
/* 805ADE08  FC 44 00 32 */	fmul f2, f4, f0
/* 805ADE0C  C8 7F 01 38 */	lfd f3, 0x138(r31)
/* 805ADE10  FC 00 00 32 */	fmul f0, f0, f0
/* 805ADE14  FC 01 00 32 */	fmul f0, f1, f0
/* 805ADE18  FC 03 00 28 */	fsub f0, f3, f0
/* 805ADE1C  FC 02 00 32 */	fmul f0, f2, f0
/* 805ADE20  FC 44 00 32 */	fmul f2, f4, f0
/* 805ADE24  FC 00 00 32 */	fmul f0, f0, f0
/* 805ADE28  FC 01 00 32 */	fmul f0, f1, f0
/* 805ADE2C  FC 03 00 28 */	fsub f0, f3, f0
/* 805ADE30  FC 02 00 32 */	fmul f0, f2, f0
/* 805ADE34  FC 44 00 32 */	fmul f2, f4, f0
/* 805ADE38  FC 00 00 32 */	fmul f0, f0, f0
/* 805ADE3C  FC 01 00 32 */	fmul f0, f1, f0
/* 805ADE40  FC 03 00 28 */	fsub f0, f3, f0
/* 805ADE44  FC 02 00 32 */	fmul f0, f2, f0
/* 805ADE48  FC 21 00 32 */	fmul f1, f1, f0
/* 805ADE4C  FC 20 08 18 */	frsp f1, f1
/* 805ADE50  48 00 00 88 */	b lbl_805ADED8
lbl_805ADE54:
/* 805ADE54  C8 1F 01 40 */	lfd f0, 0x140(r31)
/* 805ADE58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805ADE5C  40 80 00 10 */	bge lbl_805ADE6C
/* 805ADE60  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805ADE64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805ADE68  48 00 00 70 */	b lbl_805ADED8
lbl_805ADE6C:
/* 805ADE6C  D0 21 00 08 */	stfs f1, 8(r1)
/* 805ADE70  80 81 00 08 */	lwz r4, 8(r1)
/* 805ADE74  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805ADE78  3C 00 7F 80 */	lis r0, 0x7f80
/* 805ADE7C  7C 03 00 00 */	cmpw r3, r0
/* 805ADE80  41 82 00 14 */	beq lbl_805ADE94
/* 805ADE84  40 80 00 40 */	bge lbl_805ADEC4
/* 805ADE88  2C 03 00 00 */	cmpwi r3, 0
/* 805ADE8C  41 82 00 20 */	beq lbl_805ADEAC
/* 805ADE90  48 00 00 34 */	b lbl_805ADEC4
lbl_805ADE94:
/* 805ADE94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805ADE98  41 82 00 0C */	beq lbl_805ADEA4
/* 805ADE9C  38 00 00 01 */	li r0, 1
/* 805ADEA0  48 00 00 28 */	b lbl_805ADEC8
lbl_805ADEA4:
/* 805ADEA4  38 00 00 02 */	li r0, 2
/* 805ADEA8  48 00 00 20 */	b lbl_805ADEC8
lbl_805ADEAC:
/* 805ADEAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805ADEB0  41 82 00 0C */	beq lbl_805ADEBC
/* 805ADEB4  38 00 00 05 */	li r0, 5
/* 805ADEB8  48 00 00 10 */	b lbl_805ADEC8
lbl_805ADEBC:
/* 805ADEBC  38 00 00 03 */	li r0, 3
/* 805ADEC0  48 00 00 08 */	b lbl_805ADEC8
lbl_805ADEC4:
/* 805ADEC4  38 00 00 04 */	li r0, 4
lbl_805ADEC8:
/* 805ADEC8  2C 00 00 01 */	cmpwi r0, 1
/* 805ADECC  40 82 00 0C */	bne lbl_805ADED8
/* 805ADED0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805ADED4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805ADED8:
/* 805ADED8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805ADEDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805ADEE0  7C 08 03 A6 */	mtlr r0
/* 805ADEE4  38 21 00 20 */	addi r1, r1, 0x20
/* 805ADEE8  4E 80 00 20 */	blr 
