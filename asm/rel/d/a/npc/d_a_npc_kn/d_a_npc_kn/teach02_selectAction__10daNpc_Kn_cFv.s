lbl_80A3EF1C:
/* 80A3EF1C  3C 80 80 A4 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A40D34@ha */
/* 80A3EF20  38 A4 0D 34 */	addi r5, r4, cNullVec__6Z2Calc@l /* 0x80A40D34@l */
/* 80A3EF24  88 03 15 AE */	lbz r0, 0x15ae(r3)
/* 80A3EF28  7C 00 07 74 */	extsb r0, r0
/* 80A3EF2C  2C 00 00 06 */	cmpwi r0, 6
/* 80A3EF30  41 82 00 5C */	beq lbl_80A3EF8C
/* 80A3EF34  40 80 00 14 */	bge lbl_80A3EF48
/* 80A3EF38  2C 00 00 04 */	cmpwi r0, 4
/* 80A3EF3C  41 82 00 18 */	beq lbl_80A3EF54
/* 80A3EF40  40 80 00 30 */	bge lbl_80A3EF70
/* 80A3EF44  48 00 00 80 */	b lbl_80A3EFC4
lbl_80A3EF48:
/* 80A3EF48  2C 00 00 08 */	cmpwi r0, 8
/* 80A3EF4C  40 80 00 78 */	bge lbl_80A3EFC4
/* 80A3EF50  48 00 00 58 */	b lbl_80A3EFA8
lbl_80A3EF54:
/* 80A3EF54  80 85 21 C4 */	lwz r4, 0x21c4(r5)
/* 80A3EF58  80 05 21 C8 */	lwz r0, 0x21c8(r5)
/* 80A3EF5C  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A3EF60  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A3EF64  80 05 21 CC */	lwz r0, 0x21cc(r5)
/* 80A3EF68  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A3EF6C  4E 80 00 20 */	blr 
lbl_80A3EF70:
/* 80A3EF70  80 85 21 D0 */	lwz r4, 0x21d0(r5)
/* 80A3EF74  80 05 21 D4 */	lwz r0, 0x21d4(r5)
/* 80A3EF78  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A3EF7C  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A3EF80  80 05 21 D8 */	lwz r0, 0x21d8(r5)
/* 80A3EF84  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A3EF88  4E 80 00 20 */	blr 
lbl_80A3EF8C:
/* 80A3EF8C  80 85 21 DC */	lwz r4, 0x21dc(r5)
/* 80A3EF90  80 05 21 E0 */	lwz r0, 0x21e0(r5)
/* 80A3EF94  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A3EF98  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A3EF9C  80 05 21 E4 */	lwz r0, 0x21e4(r5)
/* 80A3EFA0  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A3EFA4  4E 80 00 20 */	blr 
lbl_80A3EFA8:
/* 80A3EFA8  80 85 21 E8 */	lwz r4, 0x21e8(r5)
/* 80A3EFAC  80 05 21 EC */	lwz r0, 0x21ec(r5)
/* 80A3EFB0  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A3EFB4  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A3EFB8  80 05 21 F0 */	lwz r0, 0x21f0(r5)
/* 80A3EFBC  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A3EFC0  4E 80 00 20 */	blr 
lbl_80A3EFC4:
/* 80A3EFC4  80 85 21 F4 */	lwz r4, 0x21f4(r5)
/* 80A3EFC8  80 05 21 F8 */	lwz r0, 0x21f8(r5)
/* 80A3EFCC  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A3EFD0  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A3EFD4  80 05 21 FC */	lwz r0, 0x21fc(r5)
/* 80A3EFD8  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A3EFDC  4E 80 00 20 */	blr 
