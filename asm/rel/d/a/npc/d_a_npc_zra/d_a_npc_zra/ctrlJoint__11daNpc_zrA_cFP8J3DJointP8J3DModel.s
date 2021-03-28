lbl_80B7A864:
/* 80B7A864  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B7A868  7C 08 02 A6 */	mflr r0
/* 80B7A86C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B7A870  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B7A874  4B 7E 79 60 */	b _savegpr_27
/* 80B7A878  7C 7F 1B 78 */	mr r31, r3
/* 80B7A87C  7C BD 2B 78 */	mr r29, r5
/* 80B7A880  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B7A884  3B 83 C4 58 */	addi r28, r3, m__17daNpc_zrA_Param_c@l
/* 80B7A888  A0 84 00 14 */	lhz r4, 0x14(r4)
/* 80B7A88C  7C 9E 23 78 */	mr r30, r4
/* 80B7A890  88 1F 15 20 */	lbz r0, 0x1520(r31)
/* 80B7A894  28 00 00 00 */	cmplwi r0, 0
/* 80B7A898  41 82 01 08 */	beq lbl_80B7A9A0
/* 80B7A89C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80B7A8A0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B7A8A4  1F 64 00 30 */	mulli r27, r4, 0x30
/* 80B7A8A8  7C 60 DA 14 */	add r3, r0, r27
/* 80B7A8AC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B7A8B0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B7A8B4  4B 7C BB FC */	b PSMTXCopy
/* 80B7A8B8  2C 1E 00 1D */	cmpwi r30, 0x1d
/* 80B7A8BC  41 82 00 08 */	beq lbl_80B7A8C4
/* 80B7A8C0  48 00 00 AC */	b lbl_80B7A96C
lbl_80B7A8C4:
/* 80B7A8C4  7F E3 FB 78 */	mr r3, r31
/* 80B7A8C8  48 00 77 85 */	bl calcWaistAngle__11daNpc_zrA_cFv
/* 80B7A8CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7A8D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7A8D4  38 81 00 50 */	addi r4, r1, 0x50
/* 80B7A8D8  4B 7C BB D8 */	b PSMTXCopy
/* 80B7A8DC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80B7A8E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B7A8E4  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B7A8E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B7A8EC  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80B7A8F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B7A8F4  C0 1C 00 B0 */	lfs f0, 0xb0(r28)
/* 80B7A8F8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B7A8FC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B7A900  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B7A904  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 80B7A908  4B 49 26 04 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B7A90C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7A910  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7A914  7C 64 1B 78 */	mr r4, r3
/* 80B7A918  4B 7C BC 98 */	b PSMTXInverse
/* 80B7A91C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7A920  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7A924  38 81 00 20 */	addi r4, r1, 0x20
/* 80B7A928  4B 7C BB 88 */	b PSMTXCopy
/* 80B7A92C  38 61 00 14 */	addi r3, r1, 0x14
/* 80B7A930  4B 49 24 34 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B7A934  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 80B7A938  4B 49 26 0C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B7A93C  38 7F 15 30 */	addi r3, r31, 0x1530
/* 80B7A940  4B 49 26 04 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B7A944  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7A948  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7A94C  38 81 00 20 */	addi r4, r1, 0x20
/* 80B7A950  7C 65 1B 78 */	mr r5, r3
/* 80B7A954  4B 7C BB 90 */	b PSMTXConcat
/* 80B7A958  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7A95C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7A960  38 81 00 50 */	addi r4, r1, 0x50
/* 80B7A964  7C 65 1B 78 */	mr r5, r3
/* 80B7A968  4B 7C BB 7C */	b PSMTXConcat
lbl_80B7A96C:
/* 80B7A96C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7A970  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7A974  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 80B7A978  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B7A97C  7C 80 DA 14 */	add r4, r0, r27
/* 80B7A980  4B 7C BB 30 */	b PSMTXCopy
/* 80B7A984  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7A988  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7A98C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80B7A990  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80B7A994  4B 7C BB 1C */	b PSMTXCopy
/* 80B7A998  38 60 00 01 */	li r3, 1
/* 80B7A99C  48 00 01 E8 */	b lbl_80B7AB84
lbl_80B7A9A0:
/* 80B7A9A0  80 7C 00 F8 */	lwz r3, 0xf8(r28)
/* 80B7A9A4  80 1C 00 FC */	lwz r0, 0xfc(r28)
/* 80B7A9A8  90 61 00 08 */	stw r3, 8(r1)
/* 80B7A9AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B7A9B0  80 1C 01 00 */	lwz r0, 0x100(r28)
/* 80B7A9B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B7A9B8  2C 04 00 00 */	cmpwi r4, 0
/* 80B7A9BC  40 82 00 B0 */	bne lbl_80B7AA6C
/* 80B7A9C0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B7A9C4  80 63 00 04 */	lwz r3, 4(r3)
/* 80B7A9C8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B7A9CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B7A9D0  38 63 00 30 */	addi r3, r3, 0x30
/* 80B7A9D4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B7A9D8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B7A9DC  4B 7C BA D4 */	b PSMTXCopy
/* 80B7A9E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7A9E4  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
/* 80B7A9E8  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80B7A9EC  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 80B7A9F0  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80B7A9F4  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 80B7A9F8  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80B7A9FC  D0 1F 08 5C */	stfs f0, 0x85c(r31)
/* 80B7AA00  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B7AA04  80 63 00 04 */	lwz r3, 4(r3)
/* 80B7AA08  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B7AA0C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B7AA10  38 63 00 90 */	addi r3, r3, 0x90
/* 80B7AA14  7F 64 DB 78 */	mr r4, r27
/* 80B7AA18  4B 7C BA 98 */	b PSMTXCopy
/* 80B7AA1C  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80B7AA20  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 80B7AA24  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80B7AA28  D0 1F 08 64 */	stfs f0, 0x864(r31)
/* 80B7AA2C  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80B7AA30  D0 1F 08 68 */	stfs f0, 0x868(r31)
/* 80B7AA34  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B7AA38  80 63 00 04 */	lwz r3, 4(r3)
/* 80B7AA3C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B7AA40  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B7AA44  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80B7AA48  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B7AA4C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B7AA50  4B 7C BA 60 */	b PSMTXCopy
/* 80B7AA54  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80B7AA58  D0 1F 08 6C */	stfs f0, 0x86c(r31)
/* 80B7AA5C  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80B7AA60  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 80B7AA64  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80B7AA68  D0 1F 08 74 */	stfs f0, 0x874(r31)
lbl_80B7AA6C:
/* 80B7AA6C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80B7AA70  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B7AA74  1F 7E 00 30 */	mulli r27, r30, 0x30
/* 80B7AA78  7C 60 DA 14 */	add r3, r0, r27
/* 80B7AA7C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B7AA80  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B7AA84  4B 7C BA 2C */	b PSMTXCopy
/* 80B7AA88  2C 1E 00 02 */	cmpwi r30, 2
/* 80B7AA8C  41 82 00 34 */	beq lbl_80B7AAC0
/* 80B7AA90  40 80 00 10 */	bge lbl_80B7AAA0
/* 80B7AA94  2C 1E 00 01 */	cmpwi r30, 1
/* 80B7AA98  40 80 00 10 */	bge lbl_80B7AAA8
/* 80B7AA9C  48 00 00 24 */	b lbl_80B7AAC0
lbl_80B7AAA0:
/* 80B7AAA0  2C 1E 00 05 */	cmpwi r30, 5
/* 80B7AAA4  40 80 00 1C */	bge lbl_80B7AAC0
lbl_80B7AAA8:
/* 80B7AAA8  7F E3 FB 78 */	mr r3, r31
/* 80B7AAAC  7F C4 F3 78 */	mr r4, r30
/* 80B7AAB0  38 A1 00 08 */	addi r5, r1, 8
/* 80B7AAB4  38 DC 00 00 */	addi r6, r28, 0
/* 80B7AAB8  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80B7AABC  4B 5D 88 C0 */	b setLookatMtx__8daNpcF_cFiPif
lbl_80B7AAC0:
/* 80B7AAC0  2C 1E 00 01 */	cmpwi r30, 1
/* 80B7AAC4  40 82 00 30 */	bne lbl_80B7AAF4
/* 80B7AAC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7AACC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7AAD0  A8 9F 09 0C */	lha r4, 0x90c(r31)
/* 80B7AAD4  4B 49 19 60 */	b mDoMtx_YrotM__FPA4_fs
/* 80B7AAD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7AADC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7AAE0  A8 1F 09 08 */	lha r0, 0x908(r31)
/* 80B7AAE4  7C 00 00 D0 */	neg r0, r0
/* 80B7AAE8  7C 04 07 34 */	extsh r4, r0
/* 80B7AAEC  4B 49 19 E0 */	b mDoMtx_ZrotM__FPA4_fs
/* 80B7AAF0  48 00 00 2C */	b lbl_80B7AB1C
lbl_80B7AAF4:
/* 80B7AAF4  2C 1E 00 04 */	cmpwi r30, 4
/* 80B7AAF8  40 82 00 24 */	bne lbl_80B7AB1C
/* 80B7AAFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7AB00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7AB04  A8 9F 09 18 */	lha r4, 0x918(r31)
/* 80B7AB08  4B 49 19 2C */	b mDoMtx_YrotM__FPA4_fs
/* 80B7AB0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7AB10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7AB14  A8 9F 09 14 */	lha r4, 0x914(r31)
/* 80B7AB18  4B 49 19 B4 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80B7AB1C:
/* 80B7AB1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7AB20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7AB24  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 80B7AB28  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B7AB2C  7C 80 DA 14 */	add r4, r0, r27
/* 80B7AB30  4B 7C B9 80 */	b PSMTXCopy
/* 80B7AB34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7AB38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7AB3C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80B7AB40  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80B7AB44  4B 7C B9 6C */	b PSMTXCopy
/* 80B7AB48  2C 1E 00 04 */	cmpwi r30, 4
/* 80B7AB4C  41 82 00 0C */	beq lbl_80B7AB58
/* 80B7AB50  2C 1E 00 0E */	cmpwi r30, 0xe
/* 80B7AB54  40 82 00 2C */	bne lbl_80B7AB80
lbl_80B7AB58:
/* 80B7AB58  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80B7AB5C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B7AB60  41 82 00 20 */	beq lbl_80B7AB80
/* 80B7AB64  83 7F 05 80 */	lwz r27, 0x580(r31)
/* 80B7AB68  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B7AB6C  80 83 00 08 */	lwz r4, 8(r3)
/* 80B7AB70  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80B7AB74  4B 49 2E 1C */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80B7AB78  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B7AB7C  93 63 00 08 */	stw r27, 8(r3)
lbl_80B7AB80:
/* 80B7AB80  38 60 00 01 */	li r3, 1
lbl_80B7AB84:
/* 80B7AB84  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B7AB88  4B 7E 76 98 */	b _restgpr_27
/* 80B7AB8C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B7AB90  7C 08 03 A6 */	mtlr r0
/* 80B7AB94  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B7AB98  4E 80 00 20 */	blr 
