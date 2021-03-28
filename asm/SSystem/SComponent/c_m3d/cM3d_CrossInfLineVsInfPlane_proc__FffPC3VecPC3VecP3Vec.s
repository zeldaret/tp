lbl_80268ED4:
/* 80268ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80268ED8  7C 08 02 A6 */	mflr r0
/* 80268EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80268EE0  EC 61 10 28 */	fsubs f3, f1, f2
/* 80268EE4  FC 00 1A 10 */	fabs f0, f3
/* 80268EE8  FC 40 00 18 */	frsp f2, f0
/* 80268EEC  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 80268EF0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80268EF4  40 80 00 24 */	bge lbl_80268F18
/* 80268EF8  C0 04 00 00 */	lfs f0, 0(r4)
/* 80268EFC  D0 05 00 00 */	stfs f0, 0(r5)
/* 80268F00  C0 04 00 04 */	lfs f0, 4(r4)
/* 80268F04  D0 05 00 04 */	stfs f0, 4(r5)
/* 80268F08  C0 04 00 08 */	lfs f0, 8(r4)
/* 80268F0C  D0 05 00 08 */	stfs f0, 8(r5)
/* 80268F10  38 60 00 00 */	li r3, 0
/* 80268F14  48 00 00 10 */	b lbl_80268F24
lbl_80268F18:
/* 80268F18  EC 21 18 24 */	fdivs f1, f1, f3
/* 80268F1C  4B FF F6 95 */	bl cM3d_InDivPos2__FPC3VecPC3VecfP3Vec
/* 80268F20  38 60 00 01 */	li r3, 1
lbl_80268F24:
/* 80268F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80268F28  7C 08 03 A6 */	mtlr r0
/* 80268F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80268F30  4E 80 00 20 */	blr 
