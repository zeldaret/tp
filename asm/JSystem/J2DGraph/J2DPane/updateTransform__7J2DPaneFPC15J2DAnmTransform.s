lbl_802F82C0:
/* 802F82C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802F82C4  7C 08 02 A6 */	mflr r0
/* 802F82C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 802F82CC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802F82D0  7C 7F 1B 78 */	mr r31, r3
/* 802F82D4  A0 03 00 04 */	lhz r0, 4(r3)
/* 802F82D8  28 00 FF FF */	cmplwi r0, 0xffff
/* 802F82DC  41 82 00 D8 */	beq lbl_802F83B4
/* 802F82E0  28 04 00 00 */	cmplwi r4, 0
/* 802F82E4  41 82 00 D0 */	beq lbl_802F83B4
/* 802F82E8  7C 83 23 78 */	mr r3, r4
/* 802F82EC  7C 04 03 78 */	mr r4, r0
/* 802F82F0  38 A1 00 08 */	addi r5, r1, 8
/* 802F82F4  81 83 00 00 */	lwz r12, 0(r3)
/* 802F82F8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802F82FC  7D 89 03 A6 */	mtctr r12
/* 802F8300  4E 80 04 21 */	bctrl 
/* 802F8304  C0 01 00 08 */	lfs f0, 8(r1)
/* 802F8308  D0 1F 00 CC */	stfs f0, 0xcc(r31)
/* 802F830C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802F8310  D0 1F 00 D0 */	stfs f0, 0xd0(r31)
/* 802F8314  C0 62 C8 14 */	lfs f3, lit_2890(r2)
/* 802F8318  A8 01 00 14 */	lha r0, 0x14(r1)
/* 802F831C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 802F8320  C8 42 C8 00 */	lfd f2, lit_1655(r2)
/* 802F8324  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802F8328  3C 60 43 30 */	lis r3, 0x4330
/* 802F832C  90 61 00 28 */	stw r3, 0x28(r1)
/* 802F8330  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802F8334  EC 00 10 28 */	fsubs f0, f0, f2
/* 802F8338  EC 03 00 32 */	fmuls f0, f3, f0
/* 802F833C  C0 22 C8 18 */	lfs f1, lit_2891(r2)
/* 802F8340  EC 00 08 24 */	fdivs f0, f0, f1
/* 802F8344  D0 1F 00 B8 */	stfs f0, 0xb8(r31)
/* 802F8348  A8 01 00 18 */	lha r0, 0x18(r1)
/* 802F834C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 802F8350  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F8354  90 61 00 30 */	stw r3, 0x30(r1)
/* 802F8358  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802F835C  EC 00 10 28 */	fsubs f0, f0, f2
/* 802F8360  EC 03 00 32 */	fmuls f0, f3, f0
/* 802F8364  EC 00 08 24 */	fdivs f0, f0, f1
/* 802F8368  D0 1F 00 BC */	stfs f0, 0xbc(r31)
/* 802F836C  A8 01 00 16 */	lha r0, 0x16(r1)
/* 802F8370  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 802F8374  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802F8378  90 61 00 38 */	stw r3, 0x38(r1)
/* 802F837C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802F8380  EC 00 10 28 */	fsubs f0, f0, f2
/* 802F8384  EC 03 00 32 */	fmuls f0, f3, f0
/* 802F8388  EC 00 08 24 */	fdivs f0, f0, f1
/* 802F838C  D0 1F 00 C0 */	stfs f0, 0xc0(r31)
/* 802F8390  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802F8394  D0 1F 00 D4 */	stfs f0, 0xd4(r31)
/* 802F8398  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802F839C  D0 1F 00 D8 */	stfs f0, 0xd8(r31)
/* 802F83A0  7F E3 FB 78 */	mr r3, r31
/* 802F83A4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802F83A8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802F83AC  7D 89 03 A6 */	mtctr r12
/* 802F83B0  4E 80 04 21 */	bctrl 
lbl_802F83B4:
/* 802F83B4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802F83B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802F83BC  7C 08 03 A6 */	mtlr r0
/* 802F83C0  38 21 00 50 */	addi r1, r1, 0x50
/* 802F83C4  4E 80 00 20 */	blr 
