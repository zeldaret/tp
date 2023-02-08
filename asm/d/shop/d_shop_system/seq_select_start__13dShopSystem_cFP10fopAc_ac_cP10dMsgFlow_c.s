lbl_801993C4:
/* 801993C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801993C8  7C 08 02 A6 */	mflr r0
/* 801993CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801993D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801993D4  7C 7F 1B 78 */	mr r31, r3
/* 801993D8  80 03 0F 60 */	lwz r0, 0xf60(r3)
/* 801993DC  2C 00 00 00 */	cmpwi r0, 0
/* 801993E0  40 80 00 34 */	bge lbl_80199414
/* 801993E4  88 1F 0F 76 */	lbz r0, 0xf76(r31)
/* 801993E8  28 00 00 00 */	cmplwi r0, 0
/* 801993EC  40 82 00 28 */	bne lbl_80199414
/* 801993F0  80 8D 8A DC */	lwz r4, dShopSystem_item_count(r13)
/* 801993F4  2C 04 FF FF */	cmpwi r4, -1
/* 801993F8  41 82 00 1C */	beq lbl_80199414
/* 801993FC  88 0D 8A D8 */	lbz r0, data_80451058(r13)
/* 80199400  7C 04 00 00 */	cmpw r4, r0
/* 80199404  41 82 00 0C */	beq lbl_80199410
/* 80199408  38 60 00 00 */	li r3, 0
/* 8019940C  48 00 01 7C */	b lbl_80199588
lbl_80199410:
/* 80199410  48 00 11 C1 */	bl searchItemActor__13dShopSystem_cFv
lbl_80199414:
/* 80199414  7F E3 FB 78 */	mr r3, r31
/* 80199418  88 9F 0F 6E */	lbz r4, 0xf6e(r31)
/* 8019941C  38 84 FF FF */	addi r4, r4, -1
/* 80199420  4B FF E1 D9 */	bl isFlag__13dShopSystem_cFi
/* 80199424  2C 03 00 00 */	cmpwi r3, 0
/* 80199428  41 82 01 0C */	beq lbl_80199534
/* 8019942C  88 1F 0F 6E */	lbz r0, 0xf6e(r31)
/* 80199430  2C 00 00 02 */	cmpwi r0, 2
/* 80199434  41 82 00 6C */	beq lbl_801994A0
/* 80199438  40 80 00 10 */	bge lbl_80199448
/* 8019943C  2C 00 00 01 */	cmpwi r0, 1
/* 80199440  40 80 00 14 */	bge lbl_80199454
/* 80199444  48 00 00 F0 */	b lbl_80199534
lbl_80199448:
/* 80199448  2C 00 00 04 */	cmpwi r0, 4
/* 8019944C  40 80 00 E8 */	bge lbl_80199534
/* 80199450  48 00 00 9C */	b lbl_801994EC
lbl_80199454:
/* 80199454  38 00 00 02 */	li r0, 2
/* 80199458  98 1F 0F 6E */	stb r0, 0xf6e(r31)
/* 8019945C  7F E3 FB 78 */	mr r3, r31
/* 80199460  88 9F 0F 6E */	lbz r4, 0xf6e(r31)
/* 80199464  38 84 FF FF */	addi r4, r4, -1
/* 80199468  4B FF E1 91 */	bl isFlag__13dShopSystem_cFi
/* 8019946C  2C 03 00 00 */	cmpwi r3, 0
/* 80199470  41 82 00 C4 */	beq lbl_80199534
/* 80199474  38 00 00 03 */	li r0, 3
/* 80199478  98 1F 0F 6E */	stb r0, 0xf6e(r31)
/* 8019947C  7F E3 FB 78 */	mr r3, r31
/* 80199480  88 9F 0F 6E */	lbz r4, 0xf6e(r31)
/* 80199484  38 84 FF FF */	addi r4, r4, -1
/* 80199488  4B FF E1 71 */	bl isFlag__13dShopSystem_cFi
/* 8019948C  2C 03 00 00 */	cmpwi r3, 0
/* 80199490  41 82 00 A4 */	beq lbl_80199534
/* 80199494  38 00 00 00 */	li r0, 0
/* 80199498  98 1F 0F 6E */	stb r0, 0xf6e(r31)
/* 8019949C  48 00 00 98 */	b lbl_80199534
lbl_801994A0:
/* 801994A0  38 00 00 01 */	li r0, 1
/* 801994A4  98 1F 0F 6E */	stb r0, 0xf6e(r31)
/* 801994A8  7F E3 FB 78 */	mr r3, r31
/* 801994AC  88 9F 0F 6E */	lbz r4, 0xf6e(r31)
/* 801994B0  38 84 FF FF */	addi r4, r4, -1
/* 801994B4  4B FF E1 45 */	bl isFlag__13dShopSystem_cFi
/* 801994B8  2C 03 00 00 */	cmpwi r3, 0
/* 801994BC  41 82 00 78 */	beq lbl_80199534
/* 801994C0  38 00 00 03 */	li r0, 3
/* 801994C4  98 1F 0F 6E */	stb r0, 0xf6e(r31)
/* 801994C8  7F E3 FB 78 */	mr r3, r31
/* 801994CC  88 9F 0F 6E */	lbz r4, 0xf6e(r31)
/* 801994D0  38 84 FF FF */	addi r4, r4, -1
/* 801994D4  4B FF E1 25 */	bl isFlag__13dShopSystem_cFi
/* 801994D8  2C 03 00 00 */	cmpwi r3, 0
/* 801994DC  41 82 00 58 */	beq lbl_80199534
/* 801994E0  38 00 00 00 */	li r0, 0
/* 801994E4  98 1F 0F 6E */	stb r0, 0xf6e(r31)
/* 801994E8  48 00 00 4C */	b lbl_80199534
lbl_801994EC:
/* 801994EC  38 00 00 02 */	li r0, 2
/* 801994F0  98 1F 0F 6E */	stb r0, 0xf6e(r31)
/* 801994F4  7F E3 FB 78 */	mr r3, r31
/* 801994F8  88 9F 0F 6E */	lbz r4, 0xf6e(r31)
/* 801994FC  38 84 FF FF */	addi r4, r4, -1
/* 80199500  4B FF E0 F9 */	bl isFlag__13dShopSystem_cFi
/* 80199504  2C 03 00 00 */	cmpwi r3, 0
/* 80199508  41 82 00 2C */	beq lbl_80199534
/* 8019950C  38 00 00 01 */	li r0, 1
/* 80199510  98 1F 0F 6E */	stb r0, 0xf6e(r31)
/* 80199514  7F E3 FB 78 */	mr r3, r31
/* 80199518  88 9F 0F 6E */	lbz r4, 0xf6e(r31)
/* 8019951C  38 84 FF FF */	addi r4, r4, -1
/* 80199520  4B FF E0 D9 */	bl isFlag__13dShopSystem_cFi
/* 80199524  2C 03 00 00 */	cmpwi r3, 0
/* 80199528  41 82 00 0C */	beq lbl_80199534
/* 8019952C  38 00 00 00 */	li r0, 0
/* 80199530  98 1F 0F 6E */	stb r0, 0xf6e(r31)
lbl_80199534:
/* 80199534  88 1F 0F 6E */	lbz r0, 0xf6e(r31)
/* 80199538  B0 1F 0F 4C */	sth r0, 0xf4c(r31)
/* 8019953C  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80199540  D0 3F 0F 38 */	stfs f1, 0xf38(r31)
/* 80199544  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 80199548  D0 1F 0F 3C */	stfs f0, 0xf3c(r31)
/* 8019954C  D0 3F 0F 40 */	stfs f1, 0xf40(r31)
/* 80199550  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80199554  D0 1F 0F 44 */	stfs f0, 0xf44(r31)
/* 80199558  7F E3 FB 78 */	mr r3, r31
/* 8019955C  38 80 00 04 */	li r4, 4
/* 80199560  38 A0 00 00 */	li r5, 0
/* 80199564  4B FF EE E1 */	bl moveCursor__13dShopSystem_cFiUc
/* 80199568  7C 64 1B 78 */	mr r4, r3
/* 8019956C  7F E3 FB 78 */	mr r3, r31
/* 80199570  38 A0 00 00 */	li r5, 0
/* 80199574  4B FB 26 7D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80199578  7F E3 FB 78 */	mr r3, r31
/* 8019957C  38 80 00 04 */	li r4, 4
/* 80199580  48 00 0D C5 */	bl setSeq__13dShopSystem_cFUc
/* 80199584  38 60 00 00 */	li r3, 0
lbl_80199588:
/* 80199588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019958C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80199590  7C 08 03 A6 */	mtlr r0
/* 80199594  38 21 00 10 */	addi r1, r1, 0x10
/* 80199598  4E 80 00 20 */	blr 
