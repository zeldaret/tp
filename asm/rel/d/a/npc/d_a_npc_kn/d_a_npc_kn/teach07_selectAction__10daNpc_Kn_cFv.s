lbl_80A2D600:
/* 80A2D600  3C 80 80 A4 */	lis r4, cNullVec__6Z2Calc@ha
/* 80A2D604  38 A4 0D 34 */	addi r5, r4, cNullVec__6Z2Calc@l
/* 80A2D608  88 03 15 AE */	lbz r0, 0x15ae(r3)
/* 80A2D60C  7C 00 07 74 */	extsb r0, r0
/* 80A2D610  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A2D614  41 82 00 84 */	beq lbl_80A2D698
/* 80A2D618  40 80 00 1C */	bge lbl_80A2D634
/* 80A2D61C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A2D620  41 82 00 40 */	beq lbl_80A2D660
/* 80A2D624  40 80 00 58 */	bge lbl_80A2D67C
/* 80A2D628  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A2D62C  40 80 00 18 */	bge lbl_80A2D644
/* 80A2D630  48 00 00 BC */	b lbl_80A2D6EC
lbl_80A2D634:
/* 80A2D634  2C 00 00 18 */	cmpwi r0, 0x18
/* 80A2D638  41 82 00 98 */	beq lbl_80A2D6D0
/* 80A2D63C  40 80 00 B0 */	bge lbl_80A2D6EC
/* 80A2D640  48 00 00 74 */	b lbl_80A2D6B4
lbl_80A2D644:
/* 80A2D644  80 85 0C 60 */	lwz r4, 0xc60(r5)
/* 80A2D648  80 05 0C 64 */	lwz r0, 0xc64(r5)
/* 80A2D64C  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D650  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D654  80 05 0C 68 */	lwz r0, 0xc68(r5)
/* 80A2D658  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D65C  4E 80 00 20 */	blr 
lbl_80A2D660:
/* 80A2D660  80 85 0C 6C */	lwz r4, 0xc6c(r5)
/* 80A2D664  80 05 0C 70 */	lwz r0, 0xc70(r5)
/* 80A2D668  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D66C  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D670  80 05 0C 74 */	lwz r0, 0xc74(r5)
/* 80A2D674  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D678  4E 80 00 20 */	blr 
lbl_80A2D67C:
/* 80A2D67C  80 85 0C 78 */	lwz r4, 0xc78(r5)
/* 80A2D680  80 05 0C 7C */	lwz r0, 0xc7c(r5)
/* 80A2D684  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D688  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D68C  80 05 0C 80 */	lwz r0, 0xc80(r5)
/* 80A2D690  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D694  4E 80 00 20 */	blr 
lbl_80A2D698:
/* 80A2D698  80 85 0C 84 */	lwz r4, 0xc84(r5)
/* 80A2D69C  80 05 0C 88 */	lwz r0, 0xc88(r5)
/* 80A2D6A0  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D6A4  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D6A8  80 05 0C 8C */	lwz r0, 0xc8c(r5)
/* 80A2D6AC  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D6B0  4E 80 00 20 */	blr 
lbl_80A2D6B4:
/* 80A2D6B4  80 85 0C 90 */	lwz r4, 0xc90(r5)
/* 80A2D6B8  80 05 0C 94 */	lwz r0, 0xc94(r5)
/* 80A2D6BC  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D6C0  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D6C4  80 05 0C 98 */	lwz r0, 0xc98(r5)
/* 80A2D6C8  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D6CC  4E 80 00 20 */	blr 
lbl_80A2D6D0:
/* 80A2D6D0  80 85 0C 9C */	lwz r4, 0xc9c(r5)
/* 80A2D6D4  80 05 0C A0 */	lwz r0, 0xca0(r5)
/* 80A2D6D8  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D6DC  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D6E0  80 05 0C A4 */	lwz r0, 0xca4(r5)
/* 80A2D6E4  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D6E8  4E 80 00 20 */	blr 
lbl_80A2D6EC:
/* 80A2D6EC  80 85 0C A8 */	lwz r4, 0xca8(r5)
/* 80A2D6F0  80 05 0C AC */	lwz r0, 0xcac(r5)
/* 80A2D6F4  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D6F8  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D6FC  80 05 0C B0 */	lwz r0, 0xcb0(r5)
/* 80A2D700  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D704  4E 80 00 20 */	blr 
