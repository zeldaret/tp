lbl_8009DC6C:
/* 8009DC6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8009DC70  7C 08 02 A6 */	mflr r0
/* 8009DC74  90 01 00 34 */	stw r0, 0x34(r1)
/* 8009DC78  39 61 00 30 */	addi r11, r1, 0x30
/* 8009DC7C  48 2C 45 55 */	bl _savegpr_26
/* 8009DC80  7C 7A 1B 78 */	mr r26, r3
/* 8009DC84  7C 9F 23 78 */	mr r31, r4
/* 8009DC88  7C BB 2B 78 */	mr r27, r5
/* 8009DC8C  7C DC 33 78 */	mr r28, r6
/* 8009DC90  7C FD 3B 78 */	mr r29, r7
/* 8009DC94  7D 1E 43 78 */	mr r30, r8
/* 8009DC98  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8009DC9C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8009DCA0  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8009DCA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8009DCA8  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 8009DCAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8009DCB0  28 09 00 00 */	cmplwi r9, 0
/* 8009DCB4  41 82 00 10 */	beq lbl_8009DCC4
/* 8009DCB8  7D 23 4B 78 */	mr r3, r9
/* 8009DCBC  4B F6 F0 A9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8009DCC0  48 00 00 0C */	b lbl_8009DCCC
lbl_8009DCC4:
/* 8009DCC4  38 61 00 08 */	addi r3, r1, 8
/* 8009DCC8  4B F6 F0 9D */	bl transS__14mDoMtx_stack_cFRC4cXyz
lbl_8009DCCC:
/* 8009DCCC  7F 43 D3 78 */	mr r3, r26
/* 8009DCD0  48 04 47 2D */	bl concatMagneBootMtx__9daAlink_cFv
/* 8009DCD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009DCD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009DCDC  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 8009DCE0  4B F6 E7 55 */	bl mDoMtx_YrotM__FPA4_fs
/* 8009DCE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009DCE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009DCEC  7F 64 DB 78 */	mr r4, r27
/* 8009DCF0  7F 85 E3 78 */	mr r5, r28
/* 8009DCF4  7F A6 EB 78 */	mr r6, r29
/* 8009DCF8  4B F6 E5 A9 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8009DCFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009DD00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009DD04  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 8009DD08  7C 00 00 D0 */	neg r0, r0
/* 8009DD0C  7C 04 07 34 */	extsh r4, r0
/* 8009DD10  4B F6 E7 25 */	bl mDoMtx_YrotM__FPA4_fs
/* 8009DD14  7F 43 D3 78 */	mr r3, r26
/* 8009DD18  48 04 47 25 */	bl concatMagneBootInvMtx__9daAlink_cFv
/* 8009DD1C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8009DD20  FC 20 00 50 */	fneg f1, f0
/* 8009DD24  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8009DD28  FC 40 00 50 */	fneg f2, f0
/* 8009DD2C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8009DD30  FC 60 00 50 */	fneg f3, f0
/* 8009DD34  4B F6 F0 69 */	bl transM__14mDoMtx_stack_cFfff
/* 8009DD38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009DD3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009DD40  7F E4 FB 78 */	mr r4, r31
/* 8009DD44  7C 65 1B 78 */	mr r5, r3
/* 8009DD48  48 2A 87 9D */	bl PSMTXConcat
/* 8009DD4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009DD50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009DD54  7F E4 FB 78 */	mr r4, r31
/* 8009DD58  48 2A 87 59 */	bl PSMTXCopy
/* 8009DD5C  2C 1E 00 00 */	cmpwi r30, 0
/* 8009DD60  41 82 00 18 */	beq lbl_8009DD78
/* 8009DD64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009DD68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009DD6C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8009DD70  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8009DD74  48 2A 87 3D */	bl PSMTXCopy
lbl_8009DD78:
/* 8009DD78  39 61 00 30 */	addi r11, r1, 0x30
/* 8009DD7C  48 2C 44 A1 */	bl _restgpr_26
/* 8009DD80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8009DD84  7C 08 03 A6 */	mtlr r0
/* 8009DD88  38 21 00 30 */	addi r1, r1, 0x30
/* 8009DD8C  4E 80 00 20 */	blr 
