lbl_8000D7DC:
/* 8000D7DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000D7E0  7C 08 02 A6 */	mflr r0
/* 8000D7E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8000D7E8  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8000D7EC  39 61 00 28 */	addi r11, r1, 0x28
/* 8000D7F0  48 35 49 E5 */	bl _savegpr_27
/* 8000D7F4  7C 7F 1B 78 */	mr r31, r3
/* 8000D7F8  7C BB 2B 78 */	mr r27, r5
/* 8000D7FC  7C DC 33 78 */	mr r28, r6
/* 8000D800  FF E0 08 90 */	fmr f31, f1
/* 8000D804  7C FD 3B 78 */	mr r29, r7
/* 8000D808  7D 1E 43 78 */	mr r30, r8
/* 8000D80C  90 83 00 14 */	stw r4, 0x14(r3)
/* 8000D810  55 20 06 3F */	clrlwi. r0, r9, 0x18
/* 8000D814  40 82 00 58 */	bne lbl_8000D86C
/* 8000D818  38 60 00 0C */	li r3, 0xc
/* 8000D81C  48 2C 14 31 */	bl __nw__FUl
/* 8000D820  28 03 00 00 */	cmplwi r3, 0
/* 8000D824  41 82 00 30 */	beq lbl_8000D854
/* 8000D828  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8000D82C  3C 80 80 3A */	lis r4, __vt__10J3DMtxCalc@ha
/* 8000D830  38 04 34 68 */	addi r0, r4, __vt__10J3DMtxCalc@l
/* 8000D834  90 03 00 00 */	stw r0, 0(r3)
/* 8000D838  3C 80 80 3A */	lis r4, __vt__17J3DMtxCalcAnmBase@ha
/* 8000D83C  38 04 34 3C */	addi r0, r4, __vt__17J3DMtxCalcAnmBase@l
/* 8000D840  90 03 00 00 */	stw r0, 0(r3)
/* 8000D844  90 A3 00 04 */	stw r5, 4(r3)
/* 8000D848  3C 80 80 3A */	lis r4, data_803A3410@ha
/* 8000D84C  38 04 34 10 */	addi r0, r4, data_803A3410@l
/* 8000D850  90 03 00 00 */	stw r0, 0(r3)
lbl_8000D854:
/* 8000D854  90 7F 00 18 */	stw r3, 0x18(r31)
/* 8000D858  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8000D85C  28 00 00 00 */	cmplwi r0, 0
/* 8000D860  40 82 00 24 */	bne lbl_8000D884
/* 8000D864  38 60 00 00 */	li r3, 0
/* 8000D868  48 00 00 60 */	b lbl_8000D8C8
lbl_8000D86C:
/* 8000D86C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8000D870  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8000D874  81 83 00 00 */	lwz r12, 0(r3)
/* 8000D878  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8000D87C  7D 89 03 A6 */	mtctr r12
/* 8000D880  4E 80 04 21 */	bctrl 
lbl_8000D884:
/* 8000D884  2C 1B 00 00 */	cmpwi r27, 0
/* 8000D888  41 82 00 3C */	beq lbl_8000D8C4
/* 8000D88C  2C 1C 00 00 */	cmpwi r28, 0
/* 8000D890  40 80 00 10 */	bge lbl_8000D8A0
/* 8000D894  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8000D898  88 A3 00 04 */	lbz r5, 4(r3)
/* 8000D89C  48 00 00 08 */	b lbl_8000D8A4
lbl_8000D8A0:
/* 8000D8A0  7F 85 E3 78 */	mr r5, r28
lbl_8000D8A4:
/* 8000D8A4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8000D8A8  A8 83 00 06 */	lha r4, 6(r3)
/* 8000D8AC  7F E3 FB 78 */	mr r3, r31
/* 8000D8B0  FC 20 F8 90 */	fmr f1, f31
/* 8000D8B4  7F A6 EB 78 */	mr r6, r29
/* 8000D8B8  7F C7 F3 78 */	mr r7, r30
/* 8000D8BC  4B FF FA 65 */	bl initPlay__14mDoExt_baseAnmFsifss
/* 8000D8C0  48 00 00 08 */	b lbl_8000D8C8
lbl_8000D8C4:
/* 8000D8C4  38 60 00 01 */	li r3, 1
lbl_8000D8C8:
/* 8000D8C8  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8000D8CC  39 61 00 28 */	addi r11, r1, 0x28
/* 8000D8D0  48 35 49 51 */	bl _restgpr_27
/* 8000D8D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8000D8D8  7C 08 03 A6 */	mtlr r0
/* 8000D8DC  38 21 00 30 */	addi r1, r1, 0x30
/* 8000D8E0  4E 80 00 20 */	blr 
