lbl_80A02184:
/* 80A02184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A02188  7C 08 02 A6 */	mflr r0
/* 80A0218C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A02190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A02194  7C 7F 1B 78 */	mr r31, r3
/* 80A02198  4B 61 6B 49 */	bl fopAc_IsActor__FPv
/* 80A0219C  2C 03 00 00 */	cmpwi r3, 0
/* 80A021A0  41 82 00 24 */	beq lbl_80A021C4
/* 80A021A4  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A021A8  2C 00 03 08 */	cmpwi r0, 0x308
/* 80A021AC  40 82 00 18 */	bne lbl_80A021C4
/* 80A021B0  88 1F 09 3C */	lbz r0, 0x93c(r31)
/* 80A021B4  28 00 00 01 */	cmplwi r0, 1
/* 80A021B8  40 82 00 0C */	bne lbl_80A021C4
/* 80A021BC  7F E3 FB 78 */	mr r3, r31
/* 80A021C0  48 00 00 08 */	b lbl_80A021C8
lbl_80A021C4:
/* 80A021C4  38 60 00 00 */	li r3, 0
lbl_80A021C8:
/* 80A021C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A021CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A021D0  7C 08 03 A6 */	mtlr r0
/* 80A021D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A021D8  4E 80 00 20 */	blr 
