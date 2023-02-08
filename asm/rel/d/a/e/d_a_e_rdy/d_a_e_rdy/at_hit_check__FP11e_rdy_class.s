lbl_8076E00C:
/* 8076E00C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076E010  7C 08 02 A6 */	mflr r0
/* 8076E014  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076E018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8076E01C  7C 7F 1B 78 */	mr r31, r3
/* 8076E020  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8076E024  2C 00 00 0A */	cmpwi r0, 0xa
/* 8076E028  41 80 00 0C */	blt lbl_8076E034
/* 8076E02C  38 60 00 00 */	li r3, 0
/* 8076E030  48 00 00 28 */	b lbl_8076E058
lbl_8076E034:
/* 8076E034  38 7F 11 D0 */	addi r3, r31, 0x11d0
/* 8076E038  4B 91 62 89 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 8076E03C  28 03 00 00 */	cmplwi r3, 0
/* 8076E040  41 82 00 14 */	beq lbl_8076E054
/* 8076E044  38 7F 11 D0 */	addi r3, r31, 0x11d0
/* 8076E048  4B 91 63 11 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 8076E04C  4B AF 59 FD */	bl GetAc__8cCcD_ObjFv
/* 8076E050  48 00 00 08 */	b lbl_8076E058
lbl_8076E054:
/* 8076E054  38 60 00 00 */	li r3, 0
lbl_8076E058:
/* 8076E058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8076E05C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076E060  7C 08 03 A6 */	mtlr r0
/* 8076E064  38 21 00 10 */	addi r1, r1, 0x10
/* 8076E068  4E 80 00 20 */	blr 
