lbl_8063CD14:
/* 8063CD14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063CD18  7C 08 02 A6 */	mflr r0
/* 8063CD1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063CD20  3C 80 80 64 */	lis r4, lit_3776@ha /* 0x8063DC84@ha */
/* 8063CD24  38 84 DC 84 */	addi r4, r4, lit_3776@l /* 0x8063DC84@l */
/* 8063CD28  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8063CD2C  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 8063CD30  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8063CD34  4C 40 13 82 */	cror 2, 0, 2
/* 8063CD38  40 82 00 3C */	bne lbl_8063CD74
/* 8063CD3C  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 8063CD40  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8063CD44  40 82 00 3C */	bne lbl_8063CD80
/* 8063CD48  C0 04 00 FC */	lfs f0, 0xfc(r4)
/* 8063CD4C  D0 03 06 C0 */	stfs f0, 0x6c0(r3)
/* 8063CD50  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 8063CD54  B0 03 06 C4 */	sth r0, 0x6c4(r3)
/* 8063CD58  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 8063CD5C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8063CD60  D0 03 06 B4 */	stfs f0, 0x6b4(r3)
/* 8063CD64  C0 04 00 00 */	lfs f0, 0(r4)
/* 8063CD68  D0 03 06 B8 */	stfs f0, 0x6b8(r3)
/* 8063CD6C  D0 23 06 BC */	stfs f1, 0x6bc(r3)
/* 8063CD70  48 00 00 10 */	b lbl_8063CD80
lbl_8063CD74:
/* 8063CD74  38 63 06 C0 */	addi r3, r3, 0x6c0
/* 8063CD78  C0 44 01 00 */	lfs f2, 0x100(r4)
/* 8063CD7C  4B C3 39 C5 */	bl cLib_chaseF__FPfff
lbl_8063CD80:
/* 8063CD80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063CD84  7C 08 03 A6 */	mtlr r0
/* 8063CD88  38 21 00 10 */	addi r1, r1, 0x10
/* 8063CD8C  4E 80 00 20 */	blr 
