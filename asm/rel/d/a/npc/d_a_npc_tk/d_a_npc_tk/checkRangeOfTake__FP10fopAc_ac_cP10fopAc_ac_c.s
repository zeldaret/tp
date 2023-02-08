lbl_80B0207C:
/* 80B0207C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B02080  7C 08 02 A6 */	mflr r0
/* 80B02084  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B02088  39 61 00 40 */	addi r11, r1, 0x40
/* 80B0208C  4B 86 01 51 */	bl _savegpr_29
/* 80B02090  7C 9D 23 78 */	mr r29, r4
/* 80B02094  3C 80 80 B1 */	lis r4, lit_1109@ha /* 0x80B0C5B8@ha */
/* 80B02098  3B E4 C5 B8 */	addi r31, r4, lit_1109@l /* 0x80B0C5B8@l */
/* 80B0209C  80 03 04 E4 */	lwz r0, 0x4e4(r3)
/* 80B020A0  90 01 00 08 */	stw r0, 8(r1)
/* 80B020A4  A0 03 04 E8 */	lhz r0, 0x4e8(r3)
/* 80B020A8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B020AC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B020B0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B020B4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B020B8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B020BC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B020C0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B020C4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B020C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B020CC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B020D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B020D4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B020D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B020DC  48 00 2E 89 */	bl getTakePosY__10daNPC_TK_cFv
/* 80B020E0  3C 60 80 B1 */	lis r3, lit_4004@ha /* 0x80B0C1D8@ha */
/* 80B020E4  C0 03 C1 D8 */	lfs f0, lit_4004@l(r3)  /* 0x80B0C1D8@l */
/* 80B020E8  EC 20 08 2A */	fadds f1, f0, f1
/* 80B020EC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B020F0  EC 00 08 2A */	fadds f0, f0, f1
/* 80B020F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B020F8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B020FC  38 81 00 10 */	addi r4, r1, 0x10
/* 80B02100  4B 76 EB 05 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B02104  7C 64 1B 78 */	mr r4, r3
/* 80B02108  A8 61 00 0A */	lha r3, 0xa(r1)
/* 80B0210C  4B 76 ED 19 */	bl cLib_distanceAngleS__Fss
/* 80B02110  7C 7E 07 34 */	extsh r30, r3
/* 80B02114  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B02118  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80B0211C  FC 00 00 1E */	fctiwz f0, f0
/* 80B02120  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80B02124  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80B02128  7C 00 07 34 */	extsh r0, r0
/* 80B0212C  7C 1E 00 00 */	cmpw r30, r0
/* 80B02130  40 81 00 0C */	ble lbl_80B0213C
/* 80B02134  38 60 00 00 */	li r3, 0
/* 80B02138  48 00 00 50 */	b lbl_80B02188
lbl_80B0213C:
/* 80B0213C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B02140  38 81 00 10 */	addi r4, r1, 0x10
/* 80B02144  4B 76 EB 31 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B02148  7C 03 00 D0 */	neg r0, r3
/* 80B0214C  7C 04 07 34 */	extsh r4, r0
/* 80B02150  A8 61 00 08 */	lha r3, 8(r1)
/* 80B02154  4B 76 EC D1 */	bl cLib_distanceAngleS__Fss
/* 80B02158  7C 63 07 34 */	extsh r3, r3
/* 80B0215C  2C 03 10 00 */	cmpwi r3, 0x1000
/* 80B02160  40 81 00 0C */	ble lbl_80B0216C
/* 80B02164  38 60 00 00 */	li r3, 0
/* 80B02168  48 00 00 20 */	b lbl_80B02188
lbl_80B0216C:
/* 80B0216C  A8 1F 00 3E */	lha r0, 0x3e(r31)
/* 80B02170  7C 7E 1A 14 */	add r3, r30, r3
/* 80B02174  7C 00 18 00 */	cmpw r0, r3
/* 80B02178  40 81 00 0C */	ble lbl_80B02184
/* 80B0217C  B0 7F 00 3E */	sth r3, 0x3e(r31)
/* 80B02180  93 BF 00 40 */	stw r29, 0x40(r31)
lbl_80B02184:
/* 80B02184  38 60 00 01 */	li r3, 1
lbl_80B02188:
/* 80B02188  39 61 00 40 */	addi r11, r1, 0x40
/* 80B0218C  4B 86 00 9D */	bl _restgpr_29
/* 80B02190  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B02194  7C 08 03 A6 */	mtlr r0
/* 80B02198  38 21 00 40 */	addi r1, r1, 0x40
/* 80B0219C  4E 80 00 20 */	blr 
