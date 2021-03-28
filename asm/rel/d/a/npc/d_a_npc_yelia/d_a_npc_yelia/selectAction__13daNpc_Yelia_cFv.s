lbl_80B4EFAC:
/* 80B4EFAC  3C 80 80 B5 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B4EFB0  38 C4 24 DC */	addi r6, r4, cNullVec__6Z2Calc@l
/* 80B4EFB4  3C 80 80 3A */	lis r4, __ptmf_null@ha
/* 80B4EFB8  38 A4 21 80 */	addi r5, r4, __ptmf_null@l
/* 80B4EFBC  80 85 00 00 */	lwz r4, 0(r5)
/* 80B4EFC0  80 05 00 04 */	lwz r0, 4(r5)
/* 80B4EFC4  90 83 0F A4 */	stw r4, 0xfa4(r3)
/* 80B4EFC8  90 03 0F A8 */	stw r0, 0xfa8(r3)
/* 80B4EFCC  80 05 00 08 */	lwz r0, 8(r5)
/* 80B4EFD0  90 03 0F AC */	stw r0, 0xfac(r3)
/* 80B4EFD4  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80B4EFD8  2C 00 00 01 */	cmpwi r0, 1
/* 80B4EFDC  41 82 00 58 */	beq lbl_80B4F034
/* 80B4EFE0  40 80 00 10 */	bge lbl_80B4EFF0
/* 80B4EFE4  2C 00 00 00 */	cmpwi r0, 0
/* 80B4EFE8  40 80 00 14 */	bge lbl_80B4EFFC
/* 80B4EFEC  48 00 00 48 */	b lbl_80B4F034
lbl_80B4EFF0:
/* 80B4EFF0  2C 00 00 03 */	cmpwi r0, 3
/* 80B4EFF4  40 80 00 40 */	bge lbl_80B4F034
/* 80B4EFF8  48 00 00 20 */	b lbl_80B4F018
lbl_80B4EFFC:
/* 80B4EFFC  80 86 0C F0 */	lwz r4, 0xcf0(r6)
/* 80B4F000  80 06 0C F4 */	lwz r0, 0xcf4(r6)
/* 80B4F004  90 83 0F A4 */	stw r4, 0xfa4(r3)
/* 80B4F008  90 03 0F A8 */	stw r0, 0xfa8(r3)
/* 80B4F00C  80 06 0C F8 */	lwz r0, 0xcf8(r6)
/* 80B4F010  90 03 0F AC */	stw r0, 0xfac(r3)
/* 80B4F014  48 00 00 38 */	b lbl_80B4F04C
lbl_80B4F018:
/* 80B4F018  80 86 0C FC */	lwz r4, 0xcfc(r6)
/* 80B4F01C  80 06 0D 00 */	lwz r0, 0xd00(r6)
/* 80B4F020  90 83 0F A4 */	stw r4, 0xfa4(r3)
/* 80B4F024  90 03 0F A8 */	stw r0, 0xfa8(r3)
/* 80B4F028  80 06 0D 04 */	lwz r0, 0xd04(r6)
/* 80B4F02C  90 03 0F AC */	stw r0, 0xfac(r3)
/* 80B4F030  48 00 00 1C */	b lbl_80B4F04C
lbl_80B4F034:
/* 80B4F034  80 86 0D 08 */	lwz r4, 0xd08(r6)
/* 80B4F038  80 06 0D 0C */	lwz r0, 0xd0c(r6)
/* 80B4F03C  90 83 0F A4 */	stw r4, 0xfa4(r3)
/* 80B4F040  90 03 0F A8 */	stw r0, 0xfa8(r3)
/* 80B4F044  80 06 0D 10 */	lwz r0, 0xd10(r6)
/* 80B4F048  90 03 0F AC */	stw r0, 0xfac(r3)
lbl_80B4F04C:
/* 80B4F04C  38 60 00 01 */	li r3, 1
/* 80B4F050  4E 80 00 20 */	blr 
