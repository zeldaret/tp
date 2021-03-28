lbl_80A2D4F8:
/* 80A2D4F8  3C 80 80 A4 */	lis r4, cNullVec__6Z2Calc@ha
/* 80A2D4FC  38 A4 0D 34 */	addi r5, r4, cNullVec__6Z2Calc@l
/* 80A2D500  88 03 15 AE */	lbz r0, 0x15ae(r3)
/* 80A2D504  7C 00 07 74 */	extsb r0, r0
/* 80A2D508  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A2D50C  41 82 00 84 */	beq lbl_80A2D590
/* 80A2D510  40 80 00 1C */	bge lbl_80A2D52C
/* 80A2D514  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A2D518  41 82 00 40 */	beq lbl_80A2D558
/* 80A2D51C  40 80 00 58 */	bge lbl_80A2D574
/* 80A2D520  2C 00 00 0D */	cmpwi r0, 0xd
/* 80A2D524  40 80 00 18 */	bge lbl_80A2D53C
/* 80A2D528  48 00 00 BC */	b lbl_80A2D5E4
lbl_80A2D52C:
/* 80A2D52C  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A2D530  41 82 00 98 */	beq lbl_80A2D5C8
/* 80A2D534  40 80 00 B0 */	bge lbl_80A2D5E4
/* 80A2D538  48 00 00 74 */	b lbl_80A2D5AC
lbl_80A2D53C:
/* 80A2D53C  80 85 0C 0C */	lwz r4, 0xc0c(r5)
/* 80A2D540  80 05 0C 10 */	lwz r0, 0xc10(r5)
/* 80A2D544  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D548  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D54C  80 05 0C 14 */	lwz r0, 0xc14(r5)
/* 80A2D550  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D554  4E 80 00 20 */	blr 
lbl_80A2D558:
/* 80A2D558  80 85 0C 18 */	lwz r4, 0xc18(r5)
/* 80A2D55C  80 05 0C 1C */	lwz r0, 0xc1c(r5)
/* 80A2D560  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D564  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D568  80 05 0C 20 */	lwz r0, 0xc20(r5)
/* 80A2D56C  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D570  4E 80 00 20 */	blr 
lbl_80A2D574:
/* 80A2D574  80 85 0C 24 */	lwz r4, 0xc24(r5)
/* 80A2D578  80 05 0C 28 */	lwz r0, 0xc28(r5)
/* 80A2D57C  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D580  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D584  80 05 0C 2C */	lwz r0, 0xc2c(r5)
/* 80A2D588  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D58C  4E 80 00 20 */	blr 
lbl_80A2D590:
/* 80A2D590  80 85 0C 30 */	lwz r4, 0xc30(r5)
/* 80A2D594  80 05 0C 34 */	lwz r0, 0xc34(r5)
/* 80A2D598  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D59C  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D5A0  80 05 0C 38 */	lwz r0, 0xc38(r5)
/* 80A2D5A4  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D5A8  4E 80 00 20 */	blr 
lbl_80A2D5AC:
/* 80A2D5AC  80 85 0C 3C */	lwz r4, 0xc3c(r5)
/* 80A2D5B0  80 05 0C 40 */	lwz r0, 0xc40(r5)
/* 80A2D5B4  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D5B8  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D5BC  80 05 0C 44 */	lwz r0, 0xc44(r5)
/* 80A2D5C0  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D5C4  4E 80 00 20 */	blr 
lbl_80A2D5C8:
/* 80A2D5C8  80 85 0C 48 */	lwz r4, 0xc48(r5)
/* 80A2D5CC  80 05 0C 4C */	lwz r0, 0xc4c(r5)
/* 80A2D5D0  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D5D4  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D5D8  80 05 0C 50 */	lwz r0, 0xc50(r5)
/* 80A2D5DC  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D5E0  4E 80 00 20 */	blr 
lbl_80A2D5E4:
/* 80A2D5E4  80 85 0C 54 */	lwz r4, 0xc54(r5)
/* 80A2D5E8  80 05 0C 58 */	lwz r0, 0xc58(r5)
/* 80A2D5EC  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D5F0  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D5F4  80 05 0C 5C */	lwz r0, 0xc5c(r5)
/* 80A2D5F8  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D5FC  4E 80 00 20 */	blr 
