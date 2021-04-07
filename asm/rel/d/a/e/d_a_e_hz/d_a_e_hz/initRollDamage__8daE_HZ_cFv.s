lbl_806ED6C8:
/* 806ED6C8  3C 80 80 6F */	lis r4, lit_3966@ha /* 0x806F0860@ha */
/* 806ED6CC  38 A4 08 60 */	addi r5, r4, lit_3966@l /* 0x806F0860@l */
/* 806ED6D0  A8 83 11 FA */	lha r4, 0x11fa(r3)
/* 806ED6D4  3C 84 00 01 */	addis r4, r4, 1
/* 806ED6D8  38 04 80 00 */	addi r0, r4, -32768
/* 806ED6DC  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 806ED6E0  38 80 00 00 */	li r4, 0
/* 806ED6E4  B0 83 04 E8 */	sth r4, 0x4e8(r3)
/* 806ED6E8  B0 83 04 E4 */	sth r4, 0x4e4(r3)
/* 806ED6EC  80 03 06 C0 */	lwz r0, 0x6c0(r3)
/* 806ED6F0  2C 00 00 06 */	cmpwi r0, 6
/* 806ED6F4  40 82 00 6C */	bne lbl_806ED760
/* 806ED6F8  80 03 06 CC */	lwz r0, 0x6cc(r3)
/* 806ED6FC  2C 00 00 00 */	cmpwi r0, 0
/* 806ED700  40 82 00 18 */	bne lbl_806ED718
/* 806ED704  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 806ED708  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 806ED70C  38 00 10 00 */	li r0, 0x1000
/* 806ED710  B0 03 06 B6 */	sth r0, 0x6b6(r3)
/* 806ED714  4E 80 00 20 */	blr 
lbl_806ED718:
/* 806ED718  2C 00 00 01 */	cmpwi r0, 1
/* 806ED71C  40 82 00 18 */	bne lbl_806ED734
/* 806ED720  C0 05 00 84 */	lfs f0, 0x84(r5)
/* 806ED724  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 806ED728  38 00 14 00 */	li r0, 0x1400
/* 806ED72C  B0 03 06 B6 */	sth r0, 0x6b6(r3)
/* 806ED730  4E 80 00 20 */	blr 
lbl_806ED734:
/* 806ED734  2C 00 00 02 */	cmpwi r0, 2
/* 806ED738  40 82 00 14 */	bne lbl_806ED74C
/* 806ED73C  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 806ED740  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 806ED744  B0 83 06 B6 */	sth r4, 0x6b6(r3)
/* 806ED748  4E 80 00 20 */	blr 
lbl_806ED74C:
/* 806ED74C  C0 05 00 74 */	lfs f0, 0x74(r5)
/* 806ED750  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 806ED754  38 00 08 00 */	li r0, 0x800
/* 806ED758  B0 03 06 B6 */	sth r0, 0x6b6(r3)
/* 806ED75C  4E 80 00 20 */	blr 
lbl_806ED760:
/* 806ED760  80 03 06 CC */	lwz r0, 0x6cc(r3)
/* 806ED764  2C 00 00 00 */	cmpwi r0, 0
/* 806ED768  40 82 00 14 */	bne lbl_806ED77C
/* 806ED76C  C0 05 00 68 */	lfs f0, 0x68(r5)
/* 806ED770  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 806ED774  B0 83 06 B6 */	sth r4, 0x6b6(r3)
/* 806ED778  4E 80 00 20 */	blr 
lbl_806ED77C:
/* 806ED77C  2C 00 00 01 */	cmpwi r0, 1
/* 806ED780  40 82 00 18 */	bne lbl_806ED798
/* 806ED784  C0 05 00 74 */	lfs f0, 0x74(r5)
/* 806ED788  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 806ED78C  38 00 10 00 */	li r0, 0x1000
/* 806ED790  B0 03 06 B6 */	sth r0, 0x6b6(r3)
/* 806ED794  4E 80 00 20 */	blr 
lbl_806ED798:
/* 806ED798  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 806ED79C  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 806ED7A0  B0 83 06 B6 */	sth r4, 0x6b6(r3)
/* 806ED7A4  4E 80 00 20 */	blr 
