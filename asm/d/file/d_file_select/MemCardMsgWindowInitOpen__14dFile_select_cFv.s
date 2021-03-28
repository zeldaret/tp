lbl_8018F6DC:
/* 8018F6DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8018F6E0  7C 08 02 A6 */	mflr r0
/* 8018F6E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018F6E8  39 61 00 30 */	addi r11, r1, 0x30
/* 8018F6EC  48 1D 2A DD */	bl _savegpr_24
/* 8018F6F0  7C 7A 1B 78 */	mr r26, r3
/* 8018F6F4  88 03 02 1E */	lbz r0, 0x21e(r3)
/* 8018F6F8  28 00 00 00 */	cmplwi r0, 0
/* 8018F6FC  40 82 00 10 */	bne lbl_8018F70C
/* 8018F700  4B FF DB 5D */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 8018F704  7C 7F 1B 78 */	mr r31, r3
/* 8018F708  48 00 00 08 */	b lbl_8018F710
lbl_8018F70C:
/* 8018F70C  3B E0 00 01 */	li r31, 1
lbl_8018F710:
/* 8018F710  3B C0 00 01 */	li r30, 1
/* 8018F714  3B A0 00 01 */	li r29, 1
/* 8018F718  3B 80 00 01 */	li r28, 1
/* 8018F71C  3B 60 00 01 */	li r27, 1
/* 8018F720  88 1A 00 B8 */	lbz r0, 0xb8(r26)
/* 8018F724  28 00 00 00 */	cmplwi r0, 0
/* 8018F728  40 82 00 10 */	bne lbl_8018F738
/* 8018F72C  88 1A 00 B9 */	lbz r0, 0xb9(r26)
/* 8018F730  28 00 00 00 */	cmplwi r0, 0
/* 8018F734  41 82 00 10 */	beq lbl_8018F744
lbl_8018F738:
/* 8018F738  7F 43 D3 78 */	mr r3, r26
/* 8018F73C  4B FF 56 11 */	bl selectDataBaseMoveAnm__14dFile_select_cFv
/* 8018F740  7C 7E 1B 78 */	mr r30, r3
lbl_8018F744:
/* 8018F744  88 1A 01 08 */	lbz r0, 0x108(r26)
/* 8018F748  28 00 00 00 */	cmplwi r0, 0
/* 8018F74C  40 82 00 10 */	bne lbl_8018F75C
/* 8018F750  88 1A 02 81 */	lbz r0, 0x281(r26)
/* 8018F754  28 00 00 00 */	cmplwi r0, 0
/* 8018F758  41 82 00 10 */	beq lbl_8018F768
lbl_8018F75C:
/* 8018F75C  7F 43 D3 78 */	mr r3, r26
/* 8018F760  4B FF 95 D9 */	bl yesnoMenuMoveAnm__14dFile_select_cFv
/* 8018F764  7C 7D 1B 78 */	mr r29, r3
lbl_8018F768:
/* 8018F768  88 1A 03 60 */	lbz r0, 0x360(r26)
/* 8018F76C  28 00 00 00 */	cmplwi r0, 0
/* 8018F770  40 82 00 10 */	bne lbl_8018F780
/* 8018F774  88 1A 02 83 */	lbz r0, 0x283(r26)
/* 8018F778  28 00 00 00 */	cmplwi r0, 0
/* 8018F77C  41 82 00 10 */	beq lbl_8018F78C
lbl_8018F780:
/* 8018F780  7F 43 D3 78 */	mr r3, r26
/* 8018F784  4B FF 75 29 */	bl menuMoveAnm__14dFile_select_cFv
/* 8018F788  7C 7C 1B 78 */	mr r28, r3
lbl_8018F78C:
/* 8018F78C  88 1A 01 4A */	lbz r0, 0x14a(r26)
/* 8018F790  28 00 00 00 */	cmplwi r0, 0
/* 8018F794  40 82 00 10 */	bne lbl_8018F7A4
/* 8018F798  88 1A 01 4B */	lbz r0, 0x14b(r26)
/* 8018F79C  28 00 00 00 */	cmplwi r0, 0
/* 8018F7A0  41 82 00 10 */	beq lbl_8018F7B0
lbl_8018F7A4:
/* 8018F7A4  7F 43 D3 78 */	mr r3, r26
/* 8018F7A8  4B FF EA 19 */	bl errorMoveAnm__14dFile_select_cFv
/* 8018F7AC  7C 7B 1B 78 */	mr r27, r3
lbl_8018F7B0:
/* 8018F7B0  7F 43 D3 78 */	mr r3, r26
/* 8018F7B4  4B FF DC 69 */	bl modoruTxtDispAnm__14dFile_select_cFv
/* 8018F7B8  7C 78 1B 78 */	mr r24, r3
/* 8018F7BC  7F 43 D3 78 */	mr r3, r26
/* 8018F7C0  4B FF DD B5 */	bl ketteiTxtDispAnm__14dFile_select_cFv
/* 8018F7C4  7C 79 1B 78 */	mr r25, r3
/* 8018F7C8  38 60 00 01 */	li r3, 1
/* 8018F7CC  88 1A 01 28 */	lbz r0, 0x128(r26)
/* 8018F7D0  28 00 00 00 */	cmplwi r0, 0
/* 8018F7D4  40 82 00 10 */	bne lbl_8018F7E4
/* 8018F7D8  88 1A 00 3C */	lbz r0, 0x3c(r26)
/* 8018F7DC  28 00 00 00 */	cmplwi r0, 0
/* 8018F7E0  41 82 00 0C */	beq lbl_8018F7EC
lbl_8018F7E4:
/* 8018F7E4  7F 43 D3 78 */	mr r3, r26
/* 8018F7E8  48 00 09 3D */	bl nameMoveAnm__14dFile_select_cFv
lbl_8018F7EC:
/* 8018F7EC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8018F7F0  28 00 00 01 */	cmplwi r0, 1
/* 8018F7F4  40 82 00 CC */	bne lbl_8018F8C0
/* 8018F7F8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8018F7FC  28 00 00 01 */	cmplwi r0, 1
/* 8018F800  40 82 00 C0 */	bne lbl_8018F8C0
/* 8018F804  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8018F808  28 00 00 01 */	cmplwi r0, 1
/* 8018F80C  40 82 00 B4 */	bne lbl_8018F8C0
/* 8018F810  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8018F814  28 00 00 01 */	cmplwi r0, 1
/* 8018F818  40 82 00 A8 */	bne lbl_8018F8C0
/* 8018F81C  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8018F820  28 00 00 01 */	cmplwi r0, 1
/* 8018F824  40 82 00 9C */	bne lbl_8018F8C0
/* 8018F828  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 8018F82C  28 00 00 01 */	cmplwi r0, 1
/* 8018F830  40 82 00 90 */	bne lbl_8018F8C0
/* 8018F834  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 8018F838  28 00 00 01 */	cmplwi r0, 1
/* 8018F83C  40 82 00 84 */	bne lbl_8018F8C0
/* 8018F840  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018F844  28 00 00 01 */	cmplwi r0, 1
/* 8018F848  40 82 00 78 */	bne lbl_8018F8C0
/* 8018F84C  80 7A 00 14 */	lwz r3, 0x14(r26)
/* 8018F850  81 83 00 00 */	lwz r12, 0(r3)
/* 8018F854  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8018F858  7D 89 03 A6 */	mtctr r12
/* 8018F85C  4E 80 04 21 */	bctrl 
/* 8018F860  7F 43 D3 78 */	mr r3, r26
/* 8018F864  4B FF D5 D5 */	bl setWakuAnm__14dFile_select_cFv
/* 8018F868  7F 43 D3 78 */	mr r3, r26
/* 8018F86C  38 80 0B 21 */	li r4, 0xb21
/* 8018F870  38 A0 0B 2B */	li r5, 0xb2b
/* 8018F874  4B FF E8 BD */	bl errorMoveAnmInitSet__14dFile_select_cFii
/* 8018F878  88 1A 02 80 */	lbz r0, 0x280(r26)
/* 8018F87C  28 00 00 00 */	cmplwi r0, 0
/* 8018F880  41 82 00 24 */	beq lbl_8018F8A4
/* 8018F884  7F 43 D3 78 */	mr r3, r26
/* 8018F888  38 80 04 73 */	li r4, 0x473
/* 8018F88C  38 A0 04 7D */	li r5, 0x47d
/* 8018F890  4B FF 93 2D */	bl yesnoMenuMoveAnmInitSet__14dFile_select_cFii
/* 8018F894  7F 43 D3 78 */	mr r3, r26
/* 8018F898  38 80 00 01 */	li r4, 1
/* 8018F89C  4B FF DC 5D */	bl ketteiTxtDispAnmInit__14dFile_select_cFUc
/* 8018F8A0  48 00 00 10 */	b lbl_8018F8B0
lbl_8018F8A4:
/* 8018F8A4  7F 43 D3 78 */	mr r3, r26
/* 8018F8A8  38 80 00 00 */	li r4, 0
/* 8018F8AC  4B FF DC 4D */	bl ketteiTxtDispAnmInit__14dFile_select_cFUc
lbl_8018F8B0:
/* 8018F8B0  38 00 00 01 */	li r0, 1
/* 8018F8B4  98 1A 02 1E */	stb r0, 0x21e(r26)
/* 8018F8B8  38 00 00 17 */	li r0, 0x17
/* 8018F8BC  98 1A 02 71 */	stb r0, 0x271(r26)
lbl_8018F8C0:
/* 8018F8C0  39 61 00 30 */	addi r11, r1, 0x30
/* 8018F8C4  48 1D 29 51 */	bl _restgpr_24
/* 8018F8C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018F8CC  7C 08 03 A6 */	mtlr r0
/* 8018F8D0  38 21 00 30 */	addi r1, r1, 0x30
/* 8018F8D4  4E 80 00 20 */	blr 
