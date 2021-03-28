lbl_804E0C44:
/* 804E0C44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E0C48  80 83 09 94 */	lwz r4, 0x994(r3)
/* 804E0C4C  28 04 00 00 */	cmplwi r4, 0
/* 804E0C50  41 82 00 28 */	beq lbl_804E0C78
/* 804E0C54  E0 03 04 D0 */	psq_l f0, 1232(r3), 0, 0 /* qr0 */
/* 804E0C58  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 804E0C5C  F0 01 00 14 */	psq_st f0, 20(r1), 0, 0 /* qr0 */
/* 804E0C60  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804E0C64  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804E0C68  D0 04 00 A4 */	stfs f0, 0xa4(r4)
/* 804E0C6C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804E0C70  D0 04 00 A8 */	stfs f0, 0xa8(r4)
/* 804E0C74  D0 24 00 AC */	stfs f1, 0xac(r4)
lbl_804E0C78:
/* 804E0C78  80 83 09 98 */	lwz r4, 0x998(r3)
/* 804E0C7C  28 04 00 00 */	cmplwi r4, 0
/* 804E0C80  41 82 00 28 */	beq lbl_804E0CA8
/* 804E0C84  E0 03 04 D0 */	psq_l f0, 1232(r3), 0, 0 /* qr0 */
/* 804E0C88  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 804E0C8C  F0 01 00 08 */	psq_st f0, 8(r1), 0, 0 /* qr0 */
/* 804E0C90  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804E0C94  C0 01 00 08 */	lfs f0, 8(r1)
/* 804E0C98  D0 04 00 A4 */	stfs f0, 0xa4(r4)
/* 804E0C9C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804E0CA0  D0 04 00 A8 */	stfs f0, 0xa8(r4)
/* 804E0CA4  D0 24 00 AC */	stfs f1, 0xac(r4)
lbl_804E0CA8:
/* 804E0CA8  38 21 00 20 */	addi r1, r1, 0x20
/* 804E0CAC  4E 80 00 20 */	blr 
