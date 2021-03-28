lbl_801FC7BC:
/* 801FC7BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC7C0  7C 08 02 A6 */	mflr r0
/* 801FC7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC7C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC7CC  7C 7F 1B 78 */	mr r31, r3
/* 801FC7D0  48 00 08 C5 */	bl markMemSize__5dMw_cFv
/* 801FC7D4  38 60 03 E8 */	li r3, 0x3e8
/* 801FC7D8  48 0D 24 75 */	bl __nw__FUl
/* 801FC7DC  7C 60 1B 79 */	or. r0, r3, r3
/* 801FC7E0  41 82 00 18 */	beq lbl_801FC7F8
/* 801FC7E4  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 801FC7E8  80 BF 01 04 */	lwz r5, 0x104(r31)
/* 801FC7EC  80 DF 01 08 */	lwz r6, 0x108(r31)
/* 801FC7F0  4B FE 05 D1 */	bl __ct__14dMenu_Letter_cFP10JKRExpHeapP9STControlP10CSTControl
/* 801FC7F4  7C 60 1B 78 */	mr r0, r3
lbl_801FC7F8:
/* 801FC7F8  90 1F 01 28 */	stw r0, 0x128(r31)
/* 801FC7FC  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 801FC800  28 00 00 00 */	cmplwi r0, 0
/* 801FC804  40 82 00 44 */	bne lbl_801FC848
/* 801FC808  38 60 00 08 */	li r3, 8
/* 801FC80C  48 0D 24 41 */	bl __nw__FUl
/* 801FC810  28 03 00 00 */	cmplwi r3, 0
/* 801FC814  41 82 00 30 */	beq lbl_801FC844
/* 801FC818  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha
/* 801FC81C  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l
/* 801FC820  90 03 00 00 */	stw r0, 0(r3)
/* 801FC824  3C 80 80 3C */	lis r4, __vt__20dDlst_MENU_CAPTURE_c@ha
/* 801FC828  38 04 F0 D4 */	addi r0, r4, __vt__20dDlst_MENU_CAPTURE_c@l
/* 801FC82C  90 03 00 00 */	stw r0, 0(r3)
/* 801FC830  38 80 00 00 */	li r4, 0
/* 801FC834  98 83 00 04 */	stb r4, 4(r3)
/* 801FC838  38 00 00 FF */	li r0, 0xff
/* 801FC83C  98 03 00 05 */	stb r0, 5(r3)
/* 801FC840  98 83 00 06 */	stb r4, 6(r3)
lbl_801FC844:
/* 801FC844  90 7F 01 0C */	stw r3, 0x10c(r31)
lbl_801FC848:
/* 801FC848  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC84C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC850  7C 08 03 A6 */	mtlr r0
/* 801FC854  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC858  4E 80 00 20 */	blr 
