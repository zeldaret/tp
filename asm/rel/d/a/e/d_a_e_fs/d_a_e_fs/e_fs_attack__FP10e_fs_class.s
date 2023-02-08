lbl_806BC444:
/* 806BC444  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806BC448  7C 08 02 A6 */	mflr r0
/* 806BC44C  90 01 00 64 */	stw r0, 0x64(r1)
/* 806BC450  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 806BC454  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 806BC458  39 61 00 50 */	addi r11, r1, 0x50
/* 806BC45C  4B CA 5D 7D */	bl _savegpr_28
/* 806BC460  7C 7E 1B 78 */	mr r30, r3
/* 806BC464  3C 80 80 6C */	lis r4, lit_3917@ha /* 0x806BE48C@ha */
/* 806BC468  3B E4 E4 8C */	addi r31, r4, lit_3917@l /* 0x806BE48C@l */
/* 806BC46C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BC470  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BC474  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 806BC478  80 83 05 D0 */	lwz r4, 0x5d0(r3)
/* 806BC47C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 806BC480  FC 00 00 1E */	fctiwz f0, f0
/* 806BC484  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806BC488  83 81 00 34 */	lwz r28, 0x34(r1)
/* 806BC48C  A8 03 06 80 */	lha r0, 0x680(r3)
/* 806BC490  2C 00 00 01 */	cmpwi r0, 1
/* 806BC494  41 82 00 50 */	beq lbl_806BC4E4
/* 806BC498  40 80 01 24 */	bge lbl_806BC5BC
/* 806BC49C  2C 00 00 00 */	cmpwi r0, 0
/* 806BC4A0  40 80 00 08 */	bge lbl_806BC4A8
/* 806BC4A4  48 00 01 18 */	b lbl_806BC5BC
lbl_806BC4A8:
/* 806BC4A8  38 80 00 05 */	li r4, 5
/* 806BC4AC  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 806BC4B0  38 A0 00 00 */	li r5, 0
/* 806BC4B4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806BC4B8  4B FF F6 59 */	bl anm_init__FP10e_fs_classifUcf
/* 806BC4BC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806BC4C0  D0 1E 05 B8 */	stfs f0, 0x5b8(r30)
/* 806BC4C4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806BC4C8  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 806BC4CC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806BC4D0  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 806BC4D4  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 806BC4D8  38 03 00 01 */	addi r0, r3, 1
/* 806BC4DC  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 806BC4E0  48 00 00 DC */	b lbl_806BC5BC
lbl_806BC4E4:
/* 806BC4E4  38 64 00 0C */	addi r3, r4, 0xc
/* 806BC4E8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806BC4EC  4B C6 BF 41 */	bl checkPass__12J3DFrameCtrlFf
/* 806BC4F0  2C 03 00 00 */	cmpwi r3, 0
/* 806BC4F4  41 82 00 30 */	beq lbl_806BC524
/* 806BC4F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700E3@ha */
/* 806BC4FC  38 03 00 E3 */	addi r0, r3, 0x00E3 /* 0x000700E3@l */
/* 806BC500  90 01 00 10 */	stw r0, 0x10(r1)
/* 806BC504  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806BC508  38 81 00 10 */	addi r4, r1, 0x10
/* 806BC50C  38 A0 00 00 */	li r5, 0
/* 806BC510  38 C0 FF FF */	li r6, -1
/* 806BC514  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806BC518  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BC51C  7D 89 03 A6 */	mtctr r12
/* 806BC520  4E 80 04 21 */	bctrl 
lbl_806BC524:
/* 806BC524  2C 1C 00 1F */	cmpwi r28, 0x1f
/* 806BC528  41 80 00 54 */	blt lbl_806BC57C
/* 806BC52C  2C 1C 00 24 */	cmpwi r28, 0x24
/* 806BC530  40 80 00 4C */	bge lbl_806BC57C
/* 806BC534  2C 1C 00 1F */	cmpwi r28, 0x1f
/* 806BC538  40 82 00 3C */	bne lbl_806BC574
/* 806BC53C  38 00 00 01 */	li r0, 1
/* 806BC540  98 1E 06 92 */	stb r0, 0x692(r30)
/* 806BC544  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700D5@ha */
/* 806BC548  38 03 00 D5 */	addi r0, r3, 0x00D5 /* 0x000700D5@l */
/* 806BC54C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806BC550  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806BC554  38 81 00 0C */	addi r4, r1, 0xc
/* 806BC558  38 A0 00 00 */	li r5, 0
/* 806BC55C  38 C0 FF FF */	li r6, -1
/* 806BC560  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806BC564  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BC568  7D 89 03 A6 */	mtctr r12
/* 806BC56C  4E 80 04 21 */	bctrl 
/* 806BC570  48 00 00 0C */	b lbl_806BC57C
lbl_806BC574:
/* 806BC574  38 00 00 02 */	li r0, 2
/* 806BC578  98 1E 06 92 */	stb r0, 0x692(r30)
lbl_806BC57C:
/* 806BC57C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806BC580  38 80 00 01 */	li r4, 1
/* 806BC584  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806BC588  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806BC58C  40 82 00 18 */	bne lbl_806BC5A4
/* 806BC590  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806BC594  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806BC598  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806BC59C  41 82 00 08 */	beq lbl_806BC5A4
/* 806BC5A0  38 80 00 00 */	li r4, 0
lbl_806BC5A4:
/* 806BC5A4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806BC5A8  41 82 00 14 */	beq lbl_806BC5BC
/* 806BC5AC  38 00 00 01 */	li r0, 1
/* 806BC5B0  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 806BC5B4  38 00 FF FF */	li r0, -1
/* 806BC5B8  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_806BC5BC:
/* 806BC5BC  38 61 00 14 */	addi r3, r1, 0x14
/* 806BC5C0  38 9E 05 B8 */	addi r4, r30, 0x5b8
/* 806BC5C4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806BC5C8  4B BA A5 6D */	bl __mi__4cXyzCFRC3Vec
/* 806BC5CC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806BC5D0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806BC5D4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806BC5D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806BC5DC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806BC5E0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806BC5E4  C3 FF 00 04 */	lfs f31, 4(r31)
/* 806BC5E8  38 61 00 20 */	addi r3, r1, 0x20
/* 806BC5EC  4B C8 AB 4D */	bl PSVECSquareMag
/* 806BC5F0  FC 00 F8 90 */	fmr f0, f31
/* 806BC5F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BC5F8  40 81 00 58 */	ble lbl_806BC650
/* 806BC5FC  FC 00 08 34 */	frsqrte f0, f1
/* 806BC600  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806BC604  FC 44 00 32 */	fmul f2, f4, f0
/* 806BC608  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806BC60C  FC 00 00 32 */	fmul f0, f0, f0
/* 806BC610  FC 01 00 32 */	fmul f0, f1, f0
/* 806BC614  FC 03 00 28 */	fsub f0, f3, f0
/* 806BC618  FC 02 00 32 */	fmul f0, f2, f0
/* 806BC61C  FC 44 00 32 */	fmul f2, f4, f0
/* 806BC620  FC 00 00 32 */	fmul f0, f0, f0
/* 806BC624  FC 01 00 32 */	fmul f0, f1, f0
/* 806BC628  FC 03 00 28 */	fsub f0, f3, f0
/* 806BC62C  FC 02 00 32 */	fmul f0, f2, f0
/* 806BC630  FC 44 00 32 */	fmul f2, f4, f0
/* 806BC634  FC 00 00 32 */	fmul f0, f0, f0
/* 806BC638  FC 01 00 32 */	fmul f0, f1, f0
/* 806BC63C  FC 03 00 28 */	fsub f0, f3, f0
/* 806BC640  FC 02 00 32 */	fmul f0, f2, f0
/* 806BC644  FC 21 00 32 */	fmul f1, f1, f0
/* 806BC648  FC 20 08 18 */	frsp f1, f1
/* 806BC64C  48 00 00 88 */	b lbl_806BC6D4
lbl_806BC650:
/* 806BC650  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806BC654  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BC658  40 80 00 10 */	bge lbl_806BC668
/* 806BC65C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806BC660  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806BC664  48 00 00 70 */	b lbl_806BC6D4
lbl_806BC668:
/* 806BC668  D0 21 00 08 */	stfs f1, 8(r1)
/* 806BC66C  80 81 00 08 */	lwz r4, 8(r1)
/* 806BC670  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806BC674  3C 00 7F 80 */	lis r0, 0x7f80
/* 806BC678  7C 03 00 00 */	cmpw r3, r0
/* 806BC67C  41 82 00 14 */	beq lbl_806BC690
/* 806BC680  40 80 00 40 */	bge lbl_806BC6C0
/* 806BC684  2C 03 00 00 */	cmpwi r3, 0
/* 806BC688  41 82 00 20 */	beq lbl_806BC6A8
/* 806BC68C  48 00 00 34 */	b lbl_806BC6C0
lbl_806BC690:
/* 806BC690  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806BC694  41 82 00 0C */	beq lbl_806BC6A0
/* 806BC698  38 00 00 01 */	li r0, 1
/* 806BC69C  48 00 00 28 */	b lbl_806BC6C4
lbl_806BC6A0:
/* 806BC6A0  38 00 00 02 */	li r0, 2
/* 806BC6A4  48 00 00 20 */	b lbl_806BC6C4
lbl_806BC6A8:
/* 806BC6A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806BC6AC  41 82 00 0C */	beq lbl_806BC6B8
/* 806BC6B0  38 00 00 05 */	li r0, 5
/* 806BC6B4  48 00 00 10 */	b lbl_806BC6C4
lbl_806BC6B8:
/* 806BC6B8  38 00 00 03 */	li r0, 3
/* 806BC6BC  48 00 00 08 */	b lbl_806BC6C4
lbl_806BC6C0:
/* 806BC6C0  38 00 00 04 */	li r0, 4
lbl_806BC6C4:
/* 806BC6C4  2C 00 00 01 */	cmpwi r0, 1
/* 806BC6C8  40 82 00 0C */	bne lbl_806BC6D4
/* 806BC6CC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806BC6D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806BC6D4:
/* 806BC6D4  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806BE7B0@ha */
/* 806BC6D8  38 63 E7 B0 */	addi r3, r3, l_HIO@l /* 0x806BE7B0@l */
/* 806BC6DC  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 806BC6E0  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 806BC6E4  EC 03 10 28 */	fsubs f0, f3, f2
/* 806BC6E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BC6EC  40 80 00 0C */	bge lbl_806BC6F8
/* 806BC6F0  C3 FF 00 80 */	lfs f31, 0x80(r31)
/* 806BC6F4  48 00 00 14 */	b lbl_806BC708
lbl_806BC6F8:
/* 806BC6F8  EC 02 18 2A */	fadds f0, f2, f3
/* 806BC6FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BC700  40 81 00 08 */	ble lbl_806BC708
/* 806BC704  C3 FF 00 48 */	lfs f31, 0x48(r31)
lbl_806BC708:
/* 806BC708  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806BC70C  FC 20 F8 90 */	fmr f1, f31
/* 806BC710  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 806BC714  C0 7F 00 08 */	lfs f3, 8(r31)
/* 806BC718  4B BB 33 25 */	bl cLib_addCalc2__FPffff
/* 806BC71C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806BC720  A8 9E 05 C6 */	lha r4, 0x5c6(r30)
/* 806BC724  38 A0 00 05 */	li r5, 5
/* 806BC728  38 C0 04 00 */	li r6, 0x400
/* 806BC72C  4B BB 3E DD */	bl cLib_addCalcAngleS2__FPssss
/* 806BC730  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 806BC734  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 806BC738  39 61 00 50 */	addi r11, r1, 0x50
/* 806BC73C  4B CA 5A E9 */	bl _restgpr_28
/* 806BC740  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806BC744  7C 08 03 A6 */	mtlr r0
/* 806BC748  38 21 00 60 */	addi r1, r1, 0x60
/* 806BC74C  4E 80 00 20 */	blr 
