lbl_80A2D3A4:
/* 80A2D3A4  88 03 15 AE */	lbz r0, 0x15ae(r3)
/* 80A2D3A8  2C 00 00 08 */	cmpwi r0, 8
/* 80A2D3AC  41 82 00 08 */	beq lbl_80A2D3B4
/* 80A2D3B0  48 00 00 28 */	b lbl_80A2D3D8
lbl_80A2D3B4:
/* 80A2D3B4  3C 80 80 A4 */	lis r4, lit_7456@ha /* 0x80A418E0@ha */
/* 80A2D3B8  38 A4 18 E0 */	addi r5, r4, lit_7456@l /* 0x80A418E0@l */
/* 80A2D3BC  80 85 00 00 */	lwz r4, 0(r5)
/* 80A2D3C0  80 05 00 04 */	lwz r0, 4(r5)
/* 80A2D3C4  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D3C8  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D3CC  80 05 00 08 */	lwz r0, 8(r5)
/* 80A2D3D0  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D3D4  4E 80 00 20 */	blr 
lbl_80A2D3D8:
/* 80A2D3D8  3C 80 80 A4 */	lis r4, lit_7458@ha /* 0x80A418EC@ha */
/* 80A2D3DC  38 A4 18 EC */	addi r5, r4, lit_7458@l /* 0x80A418EC@l */
/* 80A2D3E0  80 85 00 00 */	lwz r4, 0(r5)
/* 80A2D3E4  80 05 00 04 */	lwz r0, 4(r5)
/* 80A2D3E8  90 83 17 14 */	stw r4, 0x1714(r3)
/* 80A2D3EC  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D3F0  80 05 00 08 */	lwz r0, 8(r5)
/* 80A2D3F4  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D3F8  4E 80 00 20 */	blr 
