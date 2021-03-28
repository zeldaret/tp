lbl_801CE0CC:
/* 801CE0CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CE0D0  7C 08 02 A6 */	mflr r0
/* 801CE0D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CE0D8  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801CE0DC  39 61 00 18 */	addi r11, r1, 0x18
/* 801CE0E0  48 19 40 FD */	bl _savegpr_29
/* 801CE0E4  7C 7D 1B 78 */	mr r29, r3
/* 801CE0E8  7C 9E 23 78 */	mr r30, r4
/* 801CE0EC  FF E0 08 90 */	fmr f31, f1
/* 801CE0F0  7C BF 2B 78 */	mr r31, r5
/* 801CE0F4  88 63 00 00 */	lbz r3, 0(r3)
/* 801CE0F8  88 84 00 00 */	lbz r4, 0(r4)
/* 801CE0FC  4B FF FF 6D */	bl twoValueLineInterpolation__FUcUcf
/* 801CE100  98 7F 00 00 */	stb r3, 0(r31)
/* 801CE104  88 7D 00 01 */	lbz r3, 1(r29)
/* 801CE108  88 9E 00 01 */	lbz r4, 1(r30)
/* 801CE10C  FC 20 F8 90 */	fmr f1, f31
/* 801CE110  4B FF FF 59 */	bl twoValueLineInterpolation__FUcUcf
/* 801CE114  98 7F 00 01 */	stb r3, 1(r31)
/* 801CE118  88 7D 00 02 */	lbz r3, 2(r29)
/* 801CE11C  88 9E 00 02 */	lbz r4, 2(r30)
/* 801CE120  FC 20 F8 90 */	fmr f1, f31
/* 801CE124  4B FF FF 45 */	bl twoValueLineInterpolation__FUcUcf
/* 801CE128  98 7F 00 02 */	stb r3, 2(r31)
/* 801CE12C  88 7D 00 03 */	lbz r3, 3(r29)
/* 801CE130  88 9E 00 03 */	lbz r4, 3(r30)
/* 801CE134  FC 20 F8 90 */	fmr f1, f31
/* 801CE138  4B FF FF 31 */	bl twoValueLineInterpolation__FUcUcf
/* 801CE13C  98 7F 00 03 */	stb r3, 3(r31)
/* 801CE140  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801CE144  39 61 00 18 */	addi r11, r1, 0x18
/* 801CE148  48 19 40 E1 */	bl _restgpr_29
/* 801CE14C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CE150  7C 08 03 A6 */	mtlr r0
/* 801CE154  38 21 00 20 */	addi r1, r1, 0x20
/* 801CE158  4E 80 00 20 */	blr 
