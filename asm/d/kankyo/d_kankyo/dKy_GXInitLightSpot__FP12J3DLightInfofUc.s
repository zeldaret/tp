lbl_8019D2C4:
/* 8019D2C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019D2C8  7C 08 02 A6 */	mflr r0
/* 8019D2CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019D2D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019D2D4  93 C1 00 08 */	stw r30, 8(r1)
/* 8019D2D8  7C 7E 1B 78 */	mr r30, r3
/* 8019D2DC  7C 9F 23 78 */	mr r31, r4
/* 8019D2E0  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019D2E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019D2E8  4C 40 13 82 */	cror 2, 0, 2
/* 8019D2EC  41 82 00 10 */	beq lbl_8019D2FC
/* 8019D2F0  C0 02 A2 2C */	lfs f0, lit_4442(r2)
/* 8019D2F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019D2F8  40 81 00 08 */	ble lbl_8019D300
lbl_8019D2FC:
/* 8019D2FC  3B E0 00 00 */	li r31, 0
lbl_8019D300:
/* 8019D300  C0 02 A2 3C */	lfs f0, lit_4502(r2)
/* 8019D304  EC 20 00 72 */	fmuls f1, f0, f1
/* 8019D308  C0 02 A2 40 */	lfs f0, lit_4503(r2)
/* 8019D30C  EC 21 00 24 */	fdivs f1, f1, f0
/* 8019D310  48 1C ED 19 */	bl cos
/* 8019D314  FC 80 08 18 */	frsp f4, f1
/* 8019D318  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8019D31C  28 00 00 06 */	cmplwi r0, 6
/* 8019D320  41 81 00 FC */	bgt lbl_8019D41C
/* 8019D324  3C 60 80 3C */	lis r3, lit_4511@ha
/* 8019D328  38 63 BF 3C */	addi r3, r3, lit_4511@l
/* 8019D32C  54 00 10 3A */	slwi r0, r0, 2
/* 8019D330  7C 03 00 2E */	lwzx r0, r3, r0
/* 8019D334  7C 09 03 A6 */	mtctr r0
/* 8019D338  4E 80 04 20 */	bctr 
/* 8019D33C  C0 02 A2 44 */	lfs f0, lit_4504(r2)
/* 8019D340  EC C0 01 32 */	fmuls f6, f0, f4
/* 8019D344  C0 22 A1 E0 */	lfs f1, lit_4353(r2)
/* 8019D348  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019D34C  48 00 00 DC */	b lbl_8019D428
/* 8019D350  FC 20 20 50 */	fneg f1, f4
/* 8019D354  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 8019D358  EC 40 20 28 */	fsubs f2, f0, f4
/* 8019D35C  EC C1 10 24 */	fdivs f6, f1, f2
/* 8019D360  EC 20 10 24 */	fdivs f1, f0, f2
/* 8019D364  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019D368  48 00 00 C0 */	b lbl_8019D428
/* 8019D36C  C0 C2 A2 0C */	lfs f6, lit_4409(r2)
/* 8019D370  FC 20 20 50 */	fneg f1, f4
/* 8019D374  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 8019D378  EC 40 20 28 */	fsubs f2, f0, f4
/* 8019D37C  EC 21 10 24 */	fdivs f1, f1, f2
/* 8019D380  EC 00 10 24 */	fdivs f0, f0, f2
/* 8019D384  48 00 00 A4 */	b lbl_8019D428
/* 8019D388  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 8019D38C  EC 00 20 28 */	fsubs f0, f0, f4
/* 8019D390  EC 40 00 32 */	fmuls f2, f0, f0
/* 8019D394  C0 22 A2 4C */	lfs f1, lit_4506(r2)
/* 8019D398  EC 04 08 28 */	fsubs f0, f4, f1
/* 8019D39C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8019D3A0  EC C0 10 24 */	fdivs f6, f0, f2
/* 8019D3A4  EC 21 10 24 */	fdivs f1, f1, f2
/* 8019D3A8  C0 02 A2 50 */	lfs f0, lit_4507(r2)
/* 8019D3AC  EC 00 10 24 */	fdivs f0, f0, f2
/* 8019D3B0  48 00 00 78 */	b lbl_8019D428
/* 8019D3B4  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 8019D3B8  EC 03 20 28 */	fsubs f0, f3, f4
/* 8019D3BC  EC A0 00 32 */	fmuls f5, f0, f0
/* 8019D3C0  C0 42 A2 54 */	lfs f2, lit_4508(r2)
/* 8019D3C4  EC 02 01 32 */	fmuls f0, f2, f4
/* 8019D3C8  EC C0 28 24 */	fdivs f6, f0, f5
/* 8019D3CC  C0 22 A2 58 */	lfs f1, lit_4509(r2)
/* 8019D3D0  EC 03 20 2A */	fadds f0, f3, f4
/* 8019D3D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8019D3D8  EC 20 28 24 */	fdivs f1, f0, f5
/* 8019D3DC  EC 02 28 24 */	fdivs f0, f2, f5
/* 8019D3E0  48 00 00 48 */	b lbl_8019D428
/* 8019D3E4  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 8019D3E8  EC 01 20 28 */	fsubs f0, f1, f4
/* 8019D3EC  EC 40 00 32 */	fmuls f2, f0, f0
/* 8019D3F0  C0 02 A2 4C */	lfs f0, lit_4506(r2)
/* 8019D3F4  EC 00 01 32 */	fmuls f0, f0, f4
/* 8019D3F8  EC 00 01 32 */	fmuls f0, f0, f4
/* 8019D3FC  EC 00 10 24 */	fdivs f0, f0, f2
/* 8019D400  EC C1 00 28 */	fsubs f6, f1, f0
/* 8019D404  C0 02 A2 58 */	lfs f0, lit_4509(r2)
/* 8019D408  EC 00 01 32 */	fmuls f0, f0, f4
/* 8019D40C  EC 20 10 24 */	fdivs f1, f0, f2
/* 8019D410  C0 02 A2 5C */	lfs f0, lit_4510(r2)
/* 8019D414  EC 00 10 24 */	fdivs f0, f0, f2
/* 8019D418  48 00 00 10 */	b lbl_8019D428
lbl_8019D41C:
/* 8019D41C  C0 C2 A2 48 */	lfs f6, lit_4505(r2)
/* 8019D420  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 8019D424  FC 00 08 90 */	fmr f0, f1
lbl_8019D428:
/* 8019D428  D0 DE 00 1C */	stfs f6, 0x1c(r30)
/* 8019D42C  D0 3E 00 20 */	stfs f1, 0x20(r30)
/* 8019D430  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 8019D434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019D438  83 C1 00 08 */	lwz r30, 8(r1)
/* 8019D43C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019D440  7C 08 03 A6 */	mtlr r0
/* 8019D444  38 21 00 10 */	addi r1, r1, 0x10
/* 8019D448  4E 80 00 20 */	blr 
