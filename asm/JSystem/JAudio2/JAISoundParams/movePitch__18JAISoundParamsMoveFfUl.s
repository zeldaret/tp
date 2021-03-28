lbl_802A2E0C:
/* 802A2E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A2E10  28 04 00 00 */	cmplwi r4, 0
/* 802A2E14  40 82 00 14 */	bne lbl_802A2E28
/* 802A2E18  D0 23 00 08 */	stfs f1, 8(r3)
/* 802A2E1C  38 00 00 00 */	li r0, 0
/* 802A2E20  90 03 00 28 */	stw r0, 0x28(r3)
/* 802A2E24  48 00 00 38 */	b lbl_802A2E5C
lbl_802A2E28:
/* 802A2E28  C0 03 00 08 */	lfs f0, 8(r3)
/* 802A2E2C  90 83 00 28 */	stw r4, 0x28(r3)
/* 802A2E30  EC 61 00 28 */	fsubs f3, f1, f0
/* 802A2E34  80 03 00 28 */	lwz r0, 0x28(r3)
/* 802A2E38  C8 42 BD E8 */	lfd f2, lit_292(r2)
/* 802A2E3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A2E40  3C 00 43 30 */	lis r0, 0x4330
/* 802A2E44  90 01 00 08 */	stw r0, 8(r1)
/* 802A2E48  C8 01 00 08 */	lfd f0, 8(r1)
/* 802A2E4C  EC 00 10 28 */	fsubs f0, f0, f2
/* 802A2E50  EC 03 00 24 */	fdivs f0, f3, f0
/* 802A2E54  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802A2E58  D0 23 00 24 */	stfs f1, 0x24(r3)
lbl_802A2E5C:
/* 802A2E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A2E60  4E 80 00 20 */	blr 
