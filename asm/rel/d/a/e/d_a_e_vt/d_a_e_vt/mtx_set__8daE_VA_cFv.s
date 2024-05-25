lbl_807CC4D0:
/* 807CC4D0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807CC4D4  7C 08 02 A6 */	mflr r0
/* 807CC4D8  90 01 00 94 */	stw r0, 0x94(r1)
/* 807CC4DC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 807CC4E0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 807CC4E4  39 61 00 80 */	addi r11, r1, 0x80
/* 807CC4E8  4B B9 5C DD */	bl _savegpr_23
/* 807CC4EC  7C 7D 1B 78 */	mr r29, r3
/* 807CC4F0  3C 60 80 7D */	lis r3, lit_3907@ha /* 0x807CECA8@ha */
/* 807CC4F4  3B E3 EC A8 */	addi r31, r3, lit_3907@l /* 0x807CECA8@l */
/* 807CC4F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC4FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CC500  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 807CC504  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 807CC508  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 807CC50C  4B B7 A3 DD */	bl PSMTXTrans
/* 807CC510  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 807CC514  4B 84 0A 31 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807CC518  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CC51C  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 807CC520  FC 60 08 90 */	fmr f3, f1
/* 807CC524  4B 84 08 79 */	bl transM__14mDoMtx_stack_cFfff
/* 807CC528  38 7D 13 04 */	addi r3, r29, 0x1304
/* 807CC52C  4B 84 0A 19 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807CC530  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CC534  C0 5F 01 E4 */	lfs f2, 0x1e4(r31)
/* 807CC538  FC 60 08 90 */	fmr f3, f1
/* 807CC53C  4B 84 08 61 */	bl transM__14mDoMtx_stack_cFfff
/* 807CC540  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807CC544  3B 03 F4 C4 */	addi r24, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807CC548  C0 38 00 08 */	lfs f1, 8(r24)
/* 807CC54C  FC 40 08 90 */	fmr f2, f1
/* 807CC550  FC 60 08 90 */	fmr f3, f1
/* 807CC554  4B 84 08 E5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 807CC558  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807CC55C  83 23 00 04 */	lwz r25, 4(r3)
/* 807CC560  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC564  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CC568  38 99 00 24 */	addi r4, r25, 0x24
/* 807CC56C  4B B7 9F 45 */	bl PSMTXCopy
/* 807CC570  88 1D 13 8A */	lbz r0, 0x138a(r29)
/* 807CC574  28 00 00 00 */	cmplwi r0, 0
/* 807CC578  41 82 00 24 */	beq lbl_807CC59C
/* 807CC57C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807CC580  80 83 00 04 */	lwz r4, 4(r3)
/* 807CC584  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC588  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CC58C  38 84 00 24 */	addi r4, r4, 0x24
/* 807CC590  4B B7 9F 21 */	bl PSMTXCopy
/* 807CC594  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807CC598  4B 84 4C 55 */	bl modelCalc__16mDoExt_McaMorfSOFv
lbl_807CC59C:
/* 807CC59C  38 00 00 00 */	li r0, 0
/* 807CC5A0  98 1D 13 8B */	stb r0, 0x138b(r29)
/* 807CC5A4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807CC5A8  4B 84 4C 45 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 807CC5AC  7F A3 EB 78 */	mr r3, r29
/* 807CC5B0  4B FF 64 9D */	bl calcJointSleeve__8daE_VA_cFv
/* 807CC5B4  38 00 00 01 */	li r0, 1
/* 807CC5B8  98 1D 13 8B */	stb r0, 0x138b(r29)
/* 807CC5BC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807CC5C0  4B 84 4C 2D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 807CC5C4  88 1D 13 87 */	lbz r0, 0x1387(r29)
/* 807CC5C8  28 00 00 00 */	cmplwi r0, 0
/* 807CC5CC  40 82 00 28 */	bne lbl_807CC5F4
/* 807CC5D0  80 9D 05 BC */	lwz r4, 0x5bc(r29)
/* 807CC5D4  28 04 00 00 */	cmplwi r4, 0
/* 807CC5D8  41 82 02 6C */	beq lbl_807CC844
/* 807CC5DC  80 79 00 84 */	lwz r3, 0x84(r25)
/* 807CC5E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807CC5E4  38 63 04 50 */	addi r3, r3, 0x450
/* 807CC5E8  38 84 00 24 */	addi r4, r4, 0x24
/* 807CC5EC  4B B7 9E C5 */	bl PSMTXCopy
/* 807CC5F0  48 00 02 54 */	b lbl_807CC844
lbl_807CC5F4:
/* 807CC5F4  80 1D 05 BC */	lwz r0, 0x5bc(r29)
/* 807CC5F8  28 00 00 00 */	cmplwi r0, 0
/* 807CC5FC  41 82 00 FC */	beq lbl_807CC6F8
/* 807CC600  88 1D 12 40 */	lbz r0, 0x1240(r29)
/* 807CC604  2C 00 00 01 */	cmpwi r0, 1
/* 807CC608  41 82 00 9C */	beq lbl_807CC6A4
/* 807CC60C  40 80 00 EC */	bge lbl_807CC6F8
/* 807CC610  2C 00 00 00 */	cmpwi r0, 0
/* 807CC614  40 80 00 08 */	bge lbl_807CC61C
/* 807CC618  48 00 00 E0 */	b lbl_807CC6F8
lbl_807CC61C:
/* 807CC61C  38 7D 12 2C */	addi r3, r29, 0x122c
/* 807CC620  4B 84 07 45 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 807CC624  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CC628  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 807CC62C  FC 60 08 90 */	fmr f3, f1
/* 807CC630  4B 84 07 6D */	bl transM__14mDoMtx_stack_cFfff
/* 807CC634  38 7D 12 38 */	addi r3, r29, 0x1238
/* 807CC638  4B 84 09 0D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807CC63C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CC640  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 807CC644  FC 60 08 90 */	fmr f3, f1
/* 807CC648  4B 84 07 55 */	bl transM__14mDoMtx_stack_cFfff
/* 807CC64C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CC650  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 807CC654  FC 60 08 90 */	fmr f3, f1
/* 807CC658  4B 84 07 45 */	bl transM__14mDoMtx_stack_cFfff
/* 807CC65C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC660  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CC664  A8 9D 12 3E */	lha r4, 0x123e(r29)
/* 807CC668  4B 83 FD 35 */	bl mDoMtx_XrotM__FPA4_fs
/* 807CC66C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CC670  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 807CC674  FC 60 08 90 */	fmr f3, f1
/* 807CC678  4B 84 07 25 */	bl transM__14mDoMtx_stack_cFfff
/* 807CC67C  C0 38 00 08 */	lfs f1, 8(r24)
/* 807CC680  FC 40 08 90 */	fmr f2, f1
/* 807CC684  FC 60 08 90 */	fmr f3, f1
/* 807CC688  4B 84 07 B1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 807CC68C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC690  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CC694  80 9D 05 BC */	lwz r4, 0x5bc(r29)
/* 807CC698  38 84 00 24 */	addi r4, r4, 0x24
/* 807CC69C  4B B7 9E 15 */	bl PSMTXCopy
/* 807CC6A0  48 00 00 58 */	b lbl_807CC6F8
lbl_807CC6A4:
/* 807CC6A4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807CC6A8  80 63 00 04 */	lwz r3, 4(r3)
/* 807CC6AC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807CC6B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807CC6B4  38 63 04 50 */	addi r3, r3, 0x450
/* 807CC6B8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC6BC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CC6C0  4B B7 9D F1 */	bl PSMTXCopy
/* 807CC6C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC6C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CC6CC  80 9D 05 BC */	lwz r4, 0x5bc(r29)
/* 807CC6D0  38 84 00 24 */	addi r4, r4, 0x24
/* 807CC6D4  4B B7 9D DD */	bl PSMTXCopy
/* 807CC6D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC6DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CC6E0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807CC6E4  D0 1D 12 2C */	stfs f0, 0x122c(r29)
/* 807CC6E8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807CC6EC  D0 1D 12 30 */	stfs f0, 0x1230(r29)
/* 807CC6F0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807CC6F4  D0 1D 12 34 */	stfs f0, 0x1234(r29)
lbl_807CC6F8:
/* 807CC6F8  3B C0 00 00 */	li r30, 0
/* 807CC6FC  3B 80 00 00 */	li r28, 0
/* 807CC700  3B 60 00 00 */	li r27, 0
/* 807CC704  3C 60 80 7D */	lis r3, va_tag_set_num@ha /* 0x807CF0AC@ha */
/* 807CC708  3B 03 F0 AC */	addi r24, r3, va_tag_set_num@l /* 0x807CF0AC@l */
/* 807CC70C  3C 60 80 7D */	lis r3, va_tag_offset@ha /* 0x807CF0D4@ha */
/* 807CC710  3B 23 F0 D4 */	addi r25, r3, va_tag_offset@l /* 0x807CF0D4@l */
/* 807CC714  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC718  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_807CC71C:
/* 807CC71C  38 1E 09 30 */	addi r0, r30, 0x930
/* 807CC720  7C 1D 00 AE */	lbzx r0, r29, r0
/* 807CC724  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 807CC728  2C 00 00 01 */	cmpwi r0, 1
/* 807CC72C  41 82 00 28 */	beq lbl_807CC754
/* 807CC730  40 80 00 10 */	bge lbl_807CC740
/* 807CC734  2C 00 00 00 */	cmpwi r0, 0
/* 807CC738  40 80 00 14 */	bge lbl_807CC74C
/* 807CC73C  48 00 00 24 */	b lbl_807CC760
lbl_807CC740:
/* 807CC740  2C 00 00 03 */	cmpwi r0, 3
/* 807CC744  40 80 00 1C */	bge lbl_807CC760
/* 807CC748  48 00 00 14 */	b lbl_807CC75C
lbl_807CC74C:
/* 807CC74C  C3 FF 00 6C */	lfs f31, 0x6c(r31)
/* 807CC750  48 00 00 10 */	b lbl_807CC760
lbl_807CC754:
/* 807CC754  C3 FF 00 70 */	lfs f31, 0x70(r31)
/* 807CC758  48 00 00 08 */	b lbl_807CC760
lbl_807CC75C:
/* 807CC75C  C3 FF 01 B0 */	lfs f31, 0x1b0(r31)
lbl_807CC760:
/* 807CC760  88 B8 00 00 */	lbz r5, 0(r24)
/* 807CC764  38 61 00 2C */	addi r3, r1, 0x2c
/* 807CC768  38 05 00 01 */	addi r0, r5, 1
/* 807CC76C  1C 80 00 0C */	mulli r4, r0, 0xc
/* 807CC770  38 84 09 94 */	addi r4, r4, 0x994
/* 807CC774  7C 9D 22 14 */	add r4, r29, r4
/* 807CC778  1C A5 00 0C */	mulli r5, r5, 0xc
/* 807CC77C  3A E5 09 94 */	addi r23, r5, 0x994
/* 807CC780  7E FD BA 14 */	add r23, r29, r23
/* 807CC784  7E E5 BB 78 */	mr r5, r23
/* 807CC788  4B A9 A3 AD */	bl __mi__4cXyzCFRC3Vec
/* 807CC78C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807CC790  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807CC794  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807CC798  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807CC79C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807CC7A0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807CC7A4  38 61 00 20 */	addi r3, r1, 0x20
/* 807CC7A8  38 81 00 44 */	addi r4, r1, 0x44
/* 807CC7AC  4B A9 A7 9D */	bl normalizeZP__4cXyzFv
/* 807CC7B0  38 61 00 14 */	addi r3, r1, 0x14
/* 807CC7B4  38 81 00 44 */	addi r4, r1, 0x44
/* 807CC7B8  7C 39 DC 2E */	lfsx f1, r25, r27
/* 807CC7BC  4B A9 A3 C9 */	bl __ml__4cXyzCFf
/* 807CC7C0  38 61 00 08 */	addi r3, r1, 8
/* 807CC7C4  7E E4 BB 78 */	mr r4, r23
/* 807CC7C8  38 A1 00 14 */	addi r5, r1, 0x14
/* 807CC7CC  4B A9 A3 19 */	bl __pl__4cXyzCFRC3Vec
/* 807CC7D0  C0 01 00 08 */	lfs f0, 8(r1)
/* 807CC7D4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807CC7D8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807CC7DC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807CC7E0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807CC7E4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807CC7E8  38 61 00 38 */	addi r3, r1, 0x38
/* 807CC7EC  4B 84 05 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 807CC7F0  38 7C 06 60 */	addi r3, r28, 0x660
/* 807CC7F4  7C 7D 1A 14 */	add r3, r29, r3
/* 807CC7F8  4B 84 07 4D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807CC7FC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CC800  FC 40 F8 50 */	fneg f2, f31
/* 807CC804  FC 60 08 90 */	fmr f3, f1
/* 807CC808  4B 84 05 95 */	bl transM__14mDoMtx_stack_cFfff
/* 807CC80C  7F 43 D3 78 */	mr r3, r26
/* 807CC810  38 80 40 00 */	li r4, 0x4000
/* 807CC814  4B 83 FB 89 */	bl mDoMtx_XrotM__FPA4_fs
/* 807CC818  7F 43 D3 78 */	mr r3, r26
/* 807CC81C  38 1B 05 C0 */	addi r0, r27, 0x5c0
/* 807CC820  7C 9D 00 2E */	lwzx r4, r29, r0
/* 807CC824  38 84 00 24 */	addi r4, r4, 0x24
/* 807CC828  4B B7 9C 89 */	bl PSMTXCopy
/* 807CC82C  3B DE 00 01 */	addi r30, r30, 1
/* 807CC830  2C 1E 00 28 */	cmpwi r30, 0x28
/* 807CC834  3B 9C 00 06 */	addi r28, r28, 6
/* 807CC838  3B 7B 00 04 */	addi r27, r27, 4
/* 807CC83C  3B 18 00 01 */	addi r24, r24, 1
/* 807CC840  41 80 FE DC */	blt lbl_807CC71C
lbl_807CC844:
/* 807CC844  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 807CC848  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 807CC84C  39 61 00 80 */	addi r11, r1, 0x80
/* 807CC850  4B B9 59 C1 */	bl _restgpr_23
/* 807CC854  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807CC858  7C 08 03 A6 */	mtlr r0
/* 807CC85C  38 21 00 90 */	addi r1, r1, 0x90
/* 807CC860  4E 80 00 20 */	blr 
