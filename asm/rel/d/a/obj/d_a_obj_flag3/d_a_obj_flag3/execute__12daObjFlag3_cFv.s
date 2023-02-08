lbl_80BEED3C:
/* 80BEED3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BEED40  7C 08 02 A6 */	mflr r0
/* 80BEED44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BEED48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BEED4C  7C 7F 1B 78 */	mr r31, r3
/* 80BEED50  88 03 13 2C */	lbz r0, 0x132c(r3)
/* 80BEED54  28 00 00 00 */	cmplwi r0, 0
/* 80BEED58  40 82 00 0C */	bne lbl_80BEED64
/* 80BEED5C  38 60 00 01 */	li r3, 1
/* 80BEED60  48 00 00 34 */	b lbl_80BEED94
lbl_80BEED64:
/* 80BEED64  38 7F 05 80 */	addi r3, r31, 0x580
/* 80BEED68  48 00 00 7D */	bl execute__12FlagCloth2_cFv
/* 80BEED6C  38 61 00 08 */	addi r3, r1, 8
/* 80BEED70  38 9F 05 80 */	addi r4, r31, 0x580
/* 80BEED74  48 00 16 C1 */	bl getTargetPos__12FlagCloth2_cFv
/* 80BEED78  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BEED7C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80BEED80  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BEED84  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80BEED88  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BEED8C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80BEED90  38 60 00 01 */	li r3, 1
lbl_80BEED94:
/* 80BEED94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BEED98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BEED9C  7C 08 03 A6 */	mtlr r0
/* 80BEEDA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BEEDA4  4E 80 00 20 */	blr 
