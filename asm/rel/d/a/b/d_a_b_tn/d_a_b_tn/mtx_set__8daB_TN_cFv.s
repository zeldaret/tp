lbl_8062BA5C:
/* 8062BA5C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8062BA60  7C 08 02 A6 */	mflr r0
/* 8062BA64  90 01 00 74 */	stw r0, 0x74(r1)
/* 8062BA68  39 61 00 70 */	addi r11, r1, 0x70
/* 8062BA6C  4B D3 67 49 */	bl _savegpr_19
/* 8062BA70  7C 7F 1B 78 */	mr r31, r3
/* 8062BA74  3C 60 80 63 */	lis r3, lit_3920@ha /* 0x8062E634@ha */
/* 8062BA78  3A E3 E6 34 */	addi r23, r3, lit_3920@l /* 0x8062E634@l */
/* 8062BA7C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8062BA80  4B 9E 12 E5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8062BA84  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8062BA88  4B 9E 14 BD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8062BA8C  3C 60 80 63 */	lis r3, l_HIO@ha /* 0x8062F02C@ha */
/* 8062BA90  3A 83 F0 2C */	addi r20, r3, l_HIO@l /* 0x8062F02C@l */
/* 8062BA94  C0 34 00 08 */	lfs f1, 8(r20)
/* 8062BA98  FC 40 08 90 */	fmr f2, f1
/* 8062BA9C  FC 60 08 90 */	fmr f3, f1
/* 8062BAA0  4B 9E 13 99 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8062BAA4  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062BAA8  83 03 00 04 */	lwz r24, 4(r3)
/* 8062BAAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062BAB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062BAB4  38 98 00 24 */	addi r4, r24, 0x24
/* 8062BAB8  4B D1 A9 F9 */	bl PSMTXCopy
/* 8062BABC  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062BAC0  4B 9E 57 2D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8062BAC4  3B C0 00 00 */	li r30, 0
/* 8062BAC8  3B 20 00 00 */	li r25, 0
/* 8062BACC  3B 40 00 00 */	li r26, 0
/* 8062BAD0  3A A0 00 00 */	li r21, 0
/* 8062BAD4  3B 60 00 00 */	li r27, 0
/* 8062BAD8  3A C0 00 00 */	li r22, 0
/* 8062BADC  3B 80 00 00 */	li r28, 0
lbl_8062BAE0:
/* 8062BAE0  2C 1E 00 0F */	cmpwi r30, 0xf
/* 8062BAE4  40 82 00 10 */	bne lbl_8062BAF4
/* 8062BAE8  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 8062BAEC  83 A3 00 04 */	lwz r29, 4(r3)
/* 8062BAF0  48 00 00 0C */	b lbl_8062BAFC
lbl_8062BAF4:
/* 8062BAF4  38 1C 05 BC */	addi r0, r28, 0x5bc
/* 8062BAF8  7F BF 00 2E */	lwzx r29, r31, r0
lbl_8062BAFC:
/* 8062BAFC  38 16 09 FC */	addi r0, r22, 0x9fc
/* 8062BB00  7C 1F 02 2E */	lhzx r0, r31, r0
/* 8062BB04  2C 00 00 01 */	cmpwi r0, 1
/* 8062BB08  41 82 01 3C */	beq lbl_8062BC44
/* 8062BB0C  40 80 00 10 */	bge lbl_8062BB1C
/* 8062BB10  2C 00 00 00 */	cmpwi r0, 0
/* 8062BB14  40 80 00 14 */	bge lbl_8062BB28
/* 8062BB18  48 00 02 54 */	b lbl_8062BD6C
lbl_8062BB1C:
/* 8062BB1C  2C 00 00 06 */	cmpwi r0, 6
/* 8062BB20  40 80 02 4C */	bge lbl_8062BD6C
/* 8062BB24  48 00 01 94 */	b lbl_8062BCB8
lbl_8062BB28:
/* 8062BB28  80 78 00 84 */	lwz r3, 0x84(r24)
/* 8062BB2C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8062BB30  3C 60 80 63 */	lis r3, data_8062EBA8@ha /* 0x8062EBA8@ha */
/* 8062BB34  38 63 EB A8 */	addi r3, r3, data_8062EBA8@l /* 0x8062EBA8@l */
/* 8062BB38  7C 03 E0 2E */	lwzx r0, r3, r28
/* 8062BB3C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8062BB40  7C 64 02 14 */	add r3, r4, r0
/* 8062BB44  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062BB48  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062BB4C  4B D1 A9 65 */	bl PSMTXCopy
/* 8062BB50  80 1F 0A 60 */	lwz r0, 0xa60(r31)
/* 8062BB54  2C 00 00 00 */	cmpwi r0, 0
/* 8062BB58  41 82 00 D8 */	beq lbl_8062BC30
/* 8062BB5C  2C 1E 00 0B */	cmpwi r30, 0xb
/* 8062BB60  41 81 00 D0 */	bgt lbl_8062BC30
/* 8062BB64  2C 1E 00 05 */	cmpwi r30, 5
/* 8062BB68  41 82 00 C8 */	beq lbl_8062BC30
/* 8062BB6C  2C 1E 00 04 */	cmpwi r30, 4
/* 8062BB70  41 82 00 C0 */	beq lbl_8062BC30
/* 8062BB74  1C 00 00 60 */	mulli r0, r0, 0x60
/* 8062BB78  7C 00 07 34 */	extsh r0, r0
/* 8062BB7C  A8 7F 0A 64 */	lha r3, 0xa64(r31)
/* 8062BB80  38 63 05 00 */	addi r3, r3, 0x500
/* 8062BB84  B0 7F 0A 64 */	sth r3, 0xa64(r31)
/* 8062BB88  A8 DF 0A 64 */	lha r6, 0xa64(r31)
/* 8062BB8C  7C 7B 30 50 */	subf r3, r27, r6
/* 8062BB90  54 65 04 38 */	rlwinm r5, r3, 0, 0x10, 0x1c
/* 8062BB94  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8062BB98  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8062BB9C  7C 44 2C 2E */	lfsx f2, r4, r5
/* 8062BBA0  7C 66 AA 14 */	add r3, r6, r21
/* 8062BBA4  54 63 04 38 */	rlwinm r3, r3, 0, 0x10, 0x1c
/* 8062BBA8  7C 64 1C 2E */	lfsx f3, r4, r3
/* 8062BBAC  7C 66 DA 14 */	add r3, r6, r27
/* 8062BBB0  54 63 04 38 */	rlwinm r3, r3, 0, 0x10, 0x1c
/* 8062BBB4  7C 84 1C 2E */	lfsx f4, r4, r3
/* 8062BBB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062BBBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062BBC0  C8 37 00 80 */	lfd f1, 0x80(r23)
/* 8062BBC4  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8062BBC8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8062BBCC  3C 00 43 30 */	lis r0, 0x4330
/* 8062BBD0  90 01 00 08 */	stw r0, 8(r1)
/* 8062BBD4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8062BBD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8062BBDC  EC 00 01 32 */	fmuls f0, f0, f4
/* 8062BBE0  FC 00 00 1E */	fctiwz f0, f0
/* 8062BBE4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8062BBE8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8062BBEC  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8062BBF0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8062BBF4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8062BBF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8062BBFC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8062BC00  FC 00 00 1E */	fctiwz f0, f0
/* 8062BC04  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8062BC08  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8062BC0C  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8062BC10  90 01 00 28 */	stw r0, 0x28(r1)
/* 8062BC14  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8062BC18  EC 00 08 28 */	fsubs f0, f0, f1
/* 8062BC1C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8062BC20  FC 00 00 1E */	fctiwz f0, f0
/* 8062BC24  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8062BC28  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 8062BC2C  4B 9E 06 75 */	bl mDoMtx_ZXYrotM__FPA4_fsss
lbl_8062BC30:
/* 8062BC30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062BC34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062BC38  38 9D 00 24 */	addi r4, r29, 0x24
/* 8062BC3C  4B D1 A8 75 */	bl PSMTXCopy
/* 8062BC40  48 00 01 2C */	b lbl_8062BD6C
lbl_8062BC44:
/* 8062BC44  2C 1E 00 0F */	cmpwi r30, 0xf
/* 8062BC48  40 82 00 58 */	bne lbl_8062BCA0
/* 8062BC4C  80 78 00 84 */	lwz r3, 0x84(r24)
/* 8062BC50  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062BC54  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8062BC58  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062BC5C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062BC60  4B D1 A8 51 */	bl PSMTXCopy
/* 8062BC64  C0 37 02 70 */	lfs f1, 0x270(r23)
/* 8062BC68  C0 57 02 74 */	lfs f2, 0x274(r23)
/* 8062BC6C  C0 77 02 78 */	lfs f3, 0x278(r23)
/* 8062BC70  4B 9E 11 2D */	bl transM__14mDoMtx_stack_cFfff
/* 8062BC74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062BC78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062BC7C  38 80 88 89 */	li r4, -30583
/* 8062BC80  38 A0 E1 A0 */	li r5, -7776
/* 8062BC84  38 C0 37 64 */	li r6, 0x3764
/* 8062BC88  4B 9E 06 19 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8062BC8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062BC90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062BC94  38 9D 00 24 */	addi r4, r29, 0x24
/* 8062BC98  4B D1 A8 19 */	bl PSMTXCopy
/* 8062BC9C  48 00 00 D0 */	b lbl_8062BD6C
lbl_8062BCA0:
/* 8062BCA0  80 78 00 84 */	lwz r3, 0x84(r24)
/* 8062BCA4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062BCA8  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8062BCAC  38 9D 00 24 */	addi r4, r29, 0x24
/* 8062BCB0  4B D1 A8 01 */	bl PSMTXCopy
/* 8062BCB4  48 00 00 B8 */	b lbl_8062BD6C
lbl_8062BCB8:
/* 8062BCB8  88 1F 0A A5 */	lbz r0, 0xaa5(r31)
/* 8062BCBC  28 00 00 01 */	cmplwi r0, 1
/* 8062BCC0  40 82 00 24 */	bne lbl_8062BCE4
/* 8062BCC4  2C 1E 00 05 */	cmpwi r30, 5
/* 8062BCC8  40 82 00 1C */	bne lbl_8062BCE4
/* 8062BCCC  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8062BCD0  38 63 00 24 */	addi r3, r3, 0x24
/* 8062BCD4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062BCD8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062BCDC  4B D1 A7 D5 */	bl PSMTXCopy
/* 8062BCE0  48 00 00 7C */	b lbl_8062BD5C
lbl_8062BCE4:
/* 8062BCE4  38 7A 07 5C */	addi r3, r26, 0x75c
/* 8062BCE8  7C 7F 1A 14 */	add r3, r31, r3
/* 8062BCEC  4B 9E 10 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8062BCF0  2C 1E 00 04 */	cmpwi r30, 4
/* 8062BCF4  40 82 00 3C */	bne lbl_8062BD30
/* 8062BCF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062BCFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062BD00  7E 7F CA 14 */	add r19, r31, r25
/* 8062BD04  A8 93 09 9E */	lha r4, 0x99e(r19)
/* 8062BD08  4B 9E 07 2D */	bl mDoMtx_YrotM__FPA4_fs
/* 8062BD0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062BD10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062BD14  A8 93 09 A0 */	lha r4, 0x9a0(r19)
/* 8062BD18  4B 9E 07 B5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8062BD1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062BD20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062BD24  A8 93 09 9C */	lha r4, 0x99c(r19)
/* 8062BD28  4B 9E 06 75 */	bl mDoMtx_XrotM__FPA4_fs
/* 8062BD2C  48 00 00 10 */	b lbl_8062BD3C
lbl_8062BD30:
/* 8062BD30  38 79 09 9C */	addi r3, r25, 0x99c
/* 8062BD34  7C 7F 1A 14 */	add r3, r31, r3
/* 8062BD38  4B 9E 12 0D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_8062BD3C:
/* 8062BD3C  3C 60 80 63 */	lis r3, data_8062F11C@ha /* 0x8062F11C@ha */
/* 8062BD40  38 03 F1 1C */	addi r0, r3, data_8062F11C@l /* 0x8062F11C@l */
/* 8062BD44  7C 60 D2 14 */	add r3, r0, r26
/* 8062BD48  4B 9E 10 8D */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 8062BD4C  C0 34 00 08 */	lfs f1, 8(r20)
/* 8062BD50  FC 40 08 90 */	fmr f2, f1
/* 8062BD54  FC 60 08 90 */	fmr f3, f1
/* 8062BD58  4B 9E 10 E1 */	bl scaleM__14mDoMtx_stack_cFfff
lbl_8062BD5C:
/* 8062BD5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062BD60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062BD64  38 9D 00 24 */	addi r4, r29, 0x24
/* 8062BD68  4B D1 A7 49 */	bl PSMTXCopy
lbl_8062BD6C:
/* 8062BD6C  3B DE 00 01 */	addi r30, r30, 1
/* 8062BD70  2C 1E 00 10 */	cmpwi r30, 0x10
/* 8062BD74  3B 39 00 06 */	addi r25, r25, 6
/* 8062BD78  3B 5A 00 0C */	addi r26, r26, 0xc
/* 8062BD7C  3A B5 60 00 */	addi r21, r21, 0x6000
/* 8062BD80  3B 7B 20 00 */	addi r27, r27, 0x2000
/* 8062BD84  3A D6 00 02 */	addi r22, r22, 2
/* 8062BD88  3B 9C 00 04 */	addi r28, r28, 4
/* 8062BD8C  41 80 FD 54 */	blt lbl_8062BAE0
/* 8062BD90  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 8062BD94  4B 9E 54 59 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8062BD98  88 1F 0A 90 */	lbz r0, 0xa90(r31)
/* 8062BD9C  28 00 00 00 */	cmplwi r0, 0
/* 8062BDA0  41 82 00 14 */	beq lbl_8062BDB4
/* 8062BDA4  38 7F 07 2C */	addi r3, r31, 0x72c
/* 8062BDA8  80 9F 06 48 */	lwz r4, 0x648(r31)
/* 8062BDAC  38 84 00 24 */	addi r4, r4, 0x24
/* 8062BDB0  4B D1 A7 01 */	bl PSMTXCopy
lbl_8062BDB4:
/* 8062BDB4  39 61 00 70 */	addi r11, r1, 0x70
/* 8062BDB8  4B D3 64 49 */	bl _restgpr_19
/* 8062BDBC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8062BDC0  7C 08 03 A6 */	mtlr r0
/* 8062BDC4  38 21 00 70 */	addi r1, r1, 0x70
/* 8062BDC8  4E 80 00 20 */	blr 
