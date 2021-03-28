lbl_802A2F14:
/* 802A2F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A2F18  28 04 00 00 */	cmplwi r4, 0
/* 802A2F1C  40 82 00 14 */	bne lbl_802A2F30
/* 802A2F20  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 802A2F24  38 00 00 00 */	li r0, 0
/* 802A2F28  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802A2F2C  48 00 00 38 */	b lbl_802A2F64
lbl_802A2F30:
/* 802A2F30  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802A2F34  90 83 00 4C */	stw r4, 0x4c(r3)
/* 802A2F38  EC 61 00 28 */	fsubs f3, f1, f0
/* 802A2F3C  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 802A2F40  C8 42 BD E8 */	lfd f2, lit_292(r2)
/* 802A2F44  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A2F48  3C 00 43 30 */	lis r0, 0x4330
/* 802A2F4C  90 01 00 08 */	stw r0, 8(r1)
/* 802A2F50  C8 01 00 08 */	lfd f0, 8(r1)
/* 802A2F54  EC 00 10 28 */	fsubs f0, f0, f2
/* 802A2F58  EC 03 00 24 */	fdivs f0, f3, f0
/* 802A2F5C  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 802A2F60  D0 23 00 48 */	stfs f1, 0x48(r3)
lbl_802A2F64:
/* 802A2F64  38 21 00 10 */	addi r1, r1, 0x10
/* 802A2F68  4E 80 00 20 */	blr 
