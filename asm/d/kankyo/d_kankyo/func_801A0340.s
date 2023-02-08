lbl_801A0340:
/* 801A0340  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A0344  7C 08 02 A6 */	mflr r0
/* 801A0348  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A034C  39 61 00 40 */	addi r11, r1, 0x40
/* 801A0350  48 1C 1D F5 */	bl _savefpr_29
/* 801A0354  39 61 00 28 */	addi r11, r1, 0x28
/* 801A0358  48 1C 1E 79 */	bl _savegpr_26
/* 801A035C  7C 7A 1B 78 */	mr r26, r3
/* 801A0360  7C 9B 23 78 */	mr r27, r4
/* 801A0364  7C BC 2B 78 */	mr r28, r5
/* 801A0368  7C DD 33 78 */	mr r29, r6
/* 801A036C  7C FE 3B 78 */	mr r30, r7
/* 801A0370  FF A0 08 90 */	fmr f29, f1
/* 801A0374  FF C0 10 90 */	fmr f30, f2
/* 801A0378  7D 1F 43 78 */	mr r31, r8
/* 801A037C  FF E0 18 90 */	fmr f31, f3
/* 801A0380  88 64 00 00 */	lbz r3, 0(r4)
/* 801A0384  88 86 00 00 */	lbz r4, 0(r6)
/* 801A0388  88 A5 00 00 */	lbz r5, 0(r5)
/* 801A038C  88 C7 00 00 */	lbz r6, 0(r7)
/* 801A0390  A8 E8 00 00 */	lha r7, 0(r8)
/* 801A0394  4B FF D2 F9 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0398  B0 7A 00 00 */	sth r3, 0(r26)
/* 801A039C  88 7B 00 01 */	lbz r3, 1(r27)
/* 801A03A0  88 9D 00 01 */	lbz r4, 1(r29)
/* 801A03A4  FC 20 E8 90 */	fmr f1, f29
/* 801A03A8  88 BC 00 01 */	lbz r5, 1(r28)
/* 801A03AC  88 DE 00 01 */	lbz r6, 1(r30)
/* 801A03B0  FC 40 F0 90 */	fmr f2, f30
/* 801A03B4  A8 FF 00 02 */	lha r7, 2(r31)
/* 801A03B8  FC 60 F8 90 */	fmr f3, f31
/* 801A03BC  4B FF D2 D1 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A03C0  B0 7A 00 02 */	sth r3, 2(r26)
/* 801A03C4  88 7B 00 02 */	lbz r3, 2(r27)
/* 801A03C8  88 9D 00 02 */	lbz r4, 2(r29)
/* 801A03CC  FC 20 E8 90 */	fmr f1, f29
/* 801A03D0  88 BC 00 02 */	lbz r5, 2(r28)
/* 801A03D4  88 DE 00 02 */	lbz r6, 2(r30)
/* 801A03D8  FC 40 F0 90 */	fmr f2, f30
/* 801A03DC  A8 FF 00 04 */	lha r7, 4(r31)
/* 801A03E0  FC 60 F8 90 */	fmr f3, f31
/* 801A03E4  4B FF D2 A9 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A03E8  B0 7A 00 04 */	sth r3, 4(r26)
/* 801A03EC  39 61 00 40 */	addi r11, r1, 0x40
/* 801A03F0  48 1C 1D A1 */	bl _restfpr_29
/* 801A03F4  39 61 00 28 */	addi r11, r1, 0x28
/* 801A03F8  48 1C 1E 25 */	bl _restgpr_26
/* 801A03FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801A0400  7C 08 03 A6 */	mtlr r0
/* 801A0404  38 21 00 40 */	addi r1, r1, 0x40
/* 801A0408  4E 80 00 20 */	blr 
