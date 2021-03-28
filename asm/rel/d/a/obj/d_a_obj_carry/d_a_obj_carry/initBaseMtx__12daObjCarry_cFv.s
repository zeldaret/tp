lbl_8046F724:
/* 8046F724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046F728  7C 08 02 A6 */	mflr r0
/* 8046F72C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046F730  3C 80 80 43 */	lis r4, Zero__4cXyz@ha
/* 8046F734  C4 04 0C F4 */	lfsu f0, Zero__4cXyz@l(r4)
/* 8046F738  D0 03 0C F4 */	stfs f0, 0xcf4(r3)
/* 8046F73C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8046F740  D0 03 0C F8 */	stfs f0, 0xcf8(r3)
/* 8046F744  C0 04 00 08 */	lfs f0, 8(r4)
/* 8046F748  D0 03 0C FC */	stfs f0, 0xcfc(r3)
/* 8046F74C  38 00 00 00 */	li r0, 0
/* 8046F750  B0 03 0D 00 */	sth r0, 0xd00(r3)
/* 8046F754  3C 80 80 3A */	lis r4, ZeroQuat@ha
/* 8046F758  C4 04 72 40 */	lfsu f0, ZeroQuat@l(r4)
/* 8046F75C  D0 03 0D 3C */	stfs f0, 0xd3c(r3)
/* 8046F760  C0 04 00 04 */	lfs f0, 4(r4)
/* 8046F764  D0 03 0D 40 */	stfs f0, 0xd40(r3)
/* 8046F768  C0 04 00 08 */	lfs f0, 8(r4)
/* 8046F76C  D0 03 0D 44 */	stfs f0, 0xd44(r3)
/* 8046F770  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8046F774  D0 03 0D 48 */	stfs f0, 0xd48(r3)
/* 8046F778  C0 03 0D 3C */	lfs f0, 0xd3c(r3)
/* 8046F77C  D0 03 0D 4C */	stfs f0, 0xd4c(r3)
/* 8046F780  C0 03 0D 40 */	lfs f0, 0xd40(r3)
/* 8046F784  D0 03 0D 50 */	stfs f0, 0xd50(r3)
/* 8046F788  C0 03 0D 44 */	lfs f0, 0xd44(r3)
/* 8046F78C  D0 03 0D 54 */	stfs f0, 0xd54(r3)
/* 8046F790  C0 03 0D 48 */	lfs f0, 0xd48(r3)
/* 8046F794  D0 03 0D 58 */	stfs f0, 0xd58(r3)
/* 8046F798  48 00 00 15 */	bl setBaseMtx__12daObjCarry_cFv
/* 8046F79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046F7A0  7C 08 03 A6 */	mtlr r0
/* 8046F7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8046F7A8  4E 80 00 20 */	blr 
