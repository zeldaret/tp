lbl_80198878:
/* 80198878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019887C  7C 08 02 A6 */	mflr r0
/* 80198880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80198884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80198888  7C 7F 1B 78 */	mr r31, r3
/* 8019888C  88 03 0F 70 */	lbz r0, 0xf70(r3)
/* 80198890  28 00 00 04 */	cmplwi r0, 4
/* 80198894  41 82 00 34 */	beq lbl_801988C8
/* 80198898  28 00 00 05 */	cmplwi r0, 5
/* 8019889C  41 82 00 2C */	beq lbl_801988C8
/* 801988A0  28 00 00 06 */	cmplwi r0, 6
/* 801988A4  41 82 00 0C */	beq lbl_801988B0
/* 801988A8  28 00 00 02 */	cmplwi r0, 2
/* 801988AC  40 82 00 48 */	bne lbl_801988F4
lbl_801988B0:
/* 801988B0  7F E3 FB 78 */	mr r3, r31
/* 801988B4  88 9F 0F 6E */	lbz r4, 0xf6e(r31)
/* 801988B8  38 84 FF FF */	addi r4, r4, -1
/* 801988BC  4B FF ED 3D */	bl isFlag__13dShopSystem_cFi
/* 801988C0  2C 03 00 00 */	cmpwi r3, 0
/* 801988C4  41 82 00 30 */	beq lbl_801988F4
lbl_801988C8:
/* 801988C8  88 9F 0F 6E */	lbz r4, 0xf6e(r31)
/* 801988CC  28 04 00 00 */	cmplwi r4, 0
/* 801988D0  41 82 00 24 */	beq lbl_801988F4
/* 801988D4  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 801988D8  38 84 FF FF */	addi r4, r4, -1
/* 801988DC  4B FF E1 61 */	bl isHomePos__15dShopItemCtrl_cFi
/* 801988E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801988E4  41 82 00 10 */	beq lbl_801988F4
/* 801988E8  80 7F 0E 44 */	lwz r3, 0xe44(r31)
/* 801988EC  4B FF CA 45 */	bl addAlpha__16dSelect_cursor_cFv
/* 801988F0  48 00 00 0C */	b lbl_801988FC
lbl_801988F4:
/* 801988F4  80 7F 0E 44 */	lwz r3, 0xe44(r31)
/* 801988F8  4B FF CA D5 */	bl decAlpha__16dSelect_cursor_cFv
lbl_801988FC:
/* 801988FC  80 7F 0E 44 */	lwz r3, 0xe44(r31)
/* 80198900  3C 80 80 43 */	lis r4, g_cursorHIO@ha /* 0x80430110@ha */
/* 80198904  38 84 01 10 */	addi r4, r4, g_cursorHIO@l /* 0x80430110@l */
/* 80198908  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 8019890C  4B FF C8 BD */	bl setScale__16dSelect_cursor_cFf
/* 80198910  88 1F 0F 6E */	lbz r0, 0xf6e(r31)
/* 80198914  28 00 00 00 */	cmplwi r0, 0
/* 80198918  41 82 00 20 */	beq lbl_80198938
/* 8019891C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80198920  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80198924  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80198928  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 8019892C  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 80198930  80 DF 0E 44 */	lwz r6, 0xe44(r31)
/* 80198934  4B EB DE 61 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_80198938:
/* 80198938  38 60 00 01 */	li r3, 1
/* 8019893C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80198940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80198944  7C 08 03 A6 */	mtlr r0
/* 80198948  38 21 00 10 */	addi r1, r1, 0x10
/* 8019894C  4E 80 00 20 */	blr 
