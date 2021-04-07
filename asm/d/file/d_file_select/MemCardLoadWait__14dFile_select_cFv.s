lbl_8018E7C4:
/* 8018E7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018E7C8  7C 08 02 A6 */	mflr r0
/* 8018E7CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018E7D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018E7D4  7C 7F 1B 78 */	mr r31, r3
/* 8018E7D8  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 8018E7DC  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 8018E7E0  38 9F 03 B8 */	addi r4, r31, 0x3b8
/* 8018E7E4  38 A0 1F BC */	li r5, 0x1fbc
/* 8018E7E8  38 C0 00 00 */	li r6, 0
/* 8018E7EC  4B E8 82 C5 */	bl LoadSync__15mDoMemCd_Ctrl_cFPvUlUl
/* 8018E7F0  2C 03 00 00 */	cmpwi r3, 0
/* 8018E7F4  41 82 01 34 */	beq lbl_8018E928
/* 8018E7F8  2C 03 00 01 */	cmpwi r3, 1
/* 8018E7FC  40 82 01 1C */	bne lbl_8018E918
/* 8018E800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8018E804  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8018E808  88 03 0F 1A */	lbz r0, 0xf1a(r3)
/* 8018E80C  28 00 00 00 */	cmplwi r0, 0
/* 8018E810  41 82 00 0C */	beq lbl_8018E81C
/* 8018E814  38 00 00 00 */	li r0, 0
/* 8018E818  98 03 0F 1A */	stb r0, 0xf1a(r3)
lbl_8018E81C:
/* 8018E81C  7F E3 FB 78 */	mr r3, r31
/* 8018E820  4B FF 66 19 */	bl dataSelectInAnmSet__14dFile_select_cFv
/* 8018E824  88 1F 01 4A */	lbz r0, 0x14a(r31)
/* 8018E828  28 00 00 00 */	cmplwi r0, 0
/* 8018E82C  40 82 00 10 */	bne lbl_8018E83C
/* 8018E830  88 1F 01 4B */	lbz r0, 0x14b(r31)
/* 8018E834  28 00 00 00 */	cmplwi r0, 0
/* 8018E838  41 82 00 14 */	beq lbl_8018E84C
lbl_8018E83C:
/* 8018E83C  7F E3 FB 78 */	mr r3, r31
/* 8018E840  38 80 0B 2B */	li r4, 0xb2b
/* 8018E844  38 A0 0B 21 */	li r5, 0xb21
/* 8018E848  4B FF F8 E9 */	bl errorMoveAnmInitSet__14dFile_select_cFii
lbl_8018E84C:
/* 8018E84C  88 1F 01 08 */	lbz r0, 0x108(r31)
/* 8018E850  28 00 00 00 */	cmplwi r0, 0
/* 8018E854  40 82 00 10 */	bne lbl_8018E864
/* 8018E858  88 1F 02 81 */	lbz r0, 0x281(r31)
/* 8018E85C  28 00 00 00 */	cmplwi r0, 0
/* 8018E860  41 82 00 14 */	beq lbl_8018E874
lbl_8018E864:
/* 8018E864  7F E3 FB 78 */	mr r3, r31
/* 8018E868  38 80 04 7D */	li r4, 0x47d
/* 8018E86C  38 A0 04 73 */	li r5, 0x473
/* 8018E870  4B FF A3 4D */	bl yesnoMenuMoveAnmInitSet__14dFile_select_cFii
lbl_8018E874:
/* 8018E874  88 1F 01 28 */	lbz r0, 0x128(r31)
/* 8018E878  28 00 00 00 */	cmplwi r0, 0
/* 8018E87C  41 82 00 14 */	beq lbl_8018E890
/* 8018E880  7F E3 FB 78 */	mr r3, r31
/* 8018E884  38 80 0D 29 */	li r4, 0xd29
/* 8018E888  38 A0 0D 1F */	li r5, 0xd1f
/* 8018E88C  48 00 17 E9 */	bl nameMoveAnmInitSet__14dFile_select_cFii
lbl_8018E890:
/* 8018E890  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 8018E894  28 00 00 00 */	cmplwi r0, 0
/* 8018E898  41 82 00 20 */	beq lbl_8018E8B8
/* 8018E89C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8018E8A0  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 8018E8A4  48 00 69 FD */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8018E8A8  7F E3 FB 78 */	mr r3, r31
/* 8018E8AC  38 80 0D 29 */	li r4, 0xd29
/* 8018E8B0  38 A0 0D 1F */	li r5, 0xd1f
/* 8018E8B4  4B FF 93 35 */	bl copySelMoveAnmInitSet__14dFile_select_cFii
lbl_8018E8B8:
/* 8018E8B8  88 1F 03 60 */	lbz r0, 0x360(r31)
/* 8018E8BC  28 00 00 00 */	cmplwi r0, 0
/* 8018E8C0  40 82 00 10 */	bne lbl_8018E8D0
/* 8018E8C4  88 1F 02 83 */	lbz r0, 0x283(r31)
/* 8018E8C8  28 00 00 00 */	cmplwi r0, 0
/* 8018E8CC  41 82 00 14 */	beq lbl_8018E8E0
lbl_8018E8D0:
/* 8018E8D0  7F E3 FB 78 */	mr r3, r31
/* 8018E8D4  38 80 03 29 */	li r4, 0x329
/* 8018E8D8  38 A0 03 1F */	li r5, 0x31f
/* 8018E8DC  4B FF 82 6D */	bl menuMoveAnmInitSet__14dFile_select_cFii
lbl_8018E8E0:
/* 8018E8E0  7F E3 FB 78 */	mr r3, r31
/* 8018E8E4  38 80 00 00 */	li r4, 0
/* 8018E8E8  4B FF EA B9 */	bl modoruTxtDispAnmInit__14dFile_select_cFUc
/* 8018E8EC  7F E3 FB 78 */	mr r3, r31
/* 8018E8F0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 8018E8F4  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 8018E8F8  38 A0 00 00 */	li r5, 0
/* 8018E8FC  38 C0 00 00 */	li r6, 0
/* 8018E900  4B FF E7 E5 */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 8018E904  38 00 00 00 */	li r0, 0
/* 8018E908  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8018E90C  38 00 00 01 */	li r0, 1
/* 8018E910  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 8018E914  48 00 00 14 */	b lbl_8018E928
lbl_8018E918:
/* 8018E918  2C 03 00 02 */	cmpwi r3, 2
/* 8018E91C  40 82 00 0C */	bne lbl_8018E928
/* 8018E920  38 00 00 00 */	li r0, 0
/* 8018E924  98 1F 02 71 */	stb r0, 0x271(r31)
lbl_8018E928:
/* 8018E928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018E92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018E930  7C 08 03 A6 */	mtlr r0
/* 8018E934  38 21 00 10 */	addi r1, r1, 0x10
/* 8018E938  4E 80 00 20 */	blr 
