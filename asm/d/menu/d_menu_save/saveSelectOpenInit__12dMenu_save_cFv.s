lbl_801F5278:
/* 801F5278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F527C  7C 08 02 A6 */	mflr r0
/* 801F5280  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F5284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F5288  7C 7F 1B 78 */	mr r31, r3
/* 801F528C  88 03 00 64 */	lbz r0, 0x64(r3)
/* 801F5290  28 00 00 00 */	cmplwi r0, 0
/* 801F5294  40 82 00 10 */	bne lbl_801F52A4
/* 801F5298  88 1F 00 65 */	lbz r0, 0x65(r31)
/* 801F529C  28 00 00 00 */	cmplwi r0, 0
/* 801F52A0  41 82 00 14 */	beq lbl_801F52B4
lbl_801F52A4:
/* 801F52A4  7F E3 FB 78 */	mr r3, r31
/* 801F52A8  38 80 00 21 */	li r4, 0x21
/* 801F52AC  38 A0 00 01 */	li r5, 1
/* 801F52B0  48 00 00 8D */	bl selectDataBaseMoveAnmInitSet__12dMenu_save_cFii
lbl_801F52B4:
/* 801F52B4  88 1F 00 D2 */	lbz r0, 0xd2(r31)
/* 801F52B8  28 00 00 00 */	cmplwi r0, 0
/* 801F52BC  40 82 00 10 */	bne lbl_801F52CC
/* 801F52C0  88 1F 00 D3 */	lbz r0, 0xd3(r31)
/* 801F52C4  28 00 00 00 */	cmplwi r0, 0
/* 801F52C8  41 82 00 14 */	beq lbl_801F52DC
lbl_801F52CC:
/* 801F52CC  7F E3 FB 78 */	mr r3, r31
/* 801F52D0  38 80 0B 2B */	li r4, 0xb2b
/* 801F52D4  38 A0 0B 21 */	li r5, 0xb21
/* 801F52D8  48 00 0C 1D */	bl errorMoveAnmInitSet__12dMenu_save_cFii
lbl_801F52DC:
/* 801F52DC  88 1F 00 9C */	lbz r0, 0x9c(r31)
/* 801F52E0  28 00 00 00 */	cmplwi r0, 0
/* 801F52E4  40 82 00 08 */	bne lbl_801F52EC
/* 801F52E8  41 82 00 18 */	beq lbl_801F5300
lbl_801F52EC:
/* 801F52EC  7F E3 FB 78 */	mr r3, r31
/* 801F52F0  38 80 08 33 */	li r4, 0x833
/* 801F52F4  38 A0 08 29 */	li r5, 0x829
/* 801F52F8  38 C0 00 00 */	li r6, 0
/* 801F52FC  48 00 04 49 */	bl yesnoMenuMoveAnmInitSet__12dMenu_save_cFiiUc
lbl_801F5300:
/* 801F5300  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801F5304  4B F9 CE 5D */	bl init__15dFile_warning_cFv
/* 801F5308  7F E3 FB 78 */	mr r3, r31
/* 801F530C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 801F5310  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 801F5314  4B FF F5 49 */	bl headerTxtSet__12dMenu_save_cFUs
/* 801F5318  38 00 00 00 */	li r0, 0
/* 801F531C  98 1F 01 7A */	stb r0, 0x17a(r31)
/* 801F5320  38 00 00 2E */	li r0, 0x2e
/* 801F5324  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F5328  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F532C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F5330  7C 08 03 A6 */	mtlr r0
/* 801F5334  38 21 00 10 */	addi r1, r1, 0x10
/* 801F5338  4E 80 00 20 */	blr 
