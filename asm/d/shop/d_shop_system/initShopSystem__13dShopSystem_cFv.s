lbl_80197338:
/* 80197338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019733C  7C 08 02 A6 */	mflr r0
/* 80197340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80197344  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80197348  93 C1 00 08 */	stw r30, 8(r1)
/* 8019734C  7C 7F 1B 78 */	mr r31, r3
/* 80197350  38 00 00 03 */	li r0, 3
/* 80197354  98 0D 8A D8 */	stb r0, data_80451058(r13)
/* 80197358  38 E0 00 00 */	li r7, 0
/* 8019735C  98 ED 8A E0 */	stb r7, data_80451060(r13)
/* 80197360  7C E4 3B 78 */	mr r4, r7
/* 80197364  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha
/* 80197368  38 C3 B8 A4 */	addi r6, r3, dShopSystem_itemActor@l
/* 8019736C  38 A0 00 FF */	li r5, 0xff
/* 80197370  38 6D 81 68 */	la r3, dShopSystem_itemNo(r13) /* 804506E8-_SDA_BASE_ */
/* 80197374  38 00 00 07 */	li r0, 7
/* 80197378  7C 09 03 A6 */	mtctr r0
lbl_8019737C:
/* 8019737C  7C E6 21 2E */	stwx r7, r6, r4
/* 80197380  98 A3 00 00 */	stb r5, 0(r3)
/* 80197384  38 63 00 01 */	addi r3, r3, 1
/* 80197388  38 84 00 04 */	addi r4, r4, 4
/* 8019738C  42 00 FF F0 */	bdnz lbl_8019737C
/* 80197390  38 A0 00 00 */	li r5, 0
/* 80197394  90 AD 8A DC */	stw r5, dShopSystem_item_count(r13)
/* 80197398  38 60 00 00 */	li r3, 0
/* 8019739C  38 8D 81 70 */	la r4, dShopSystem_cameraActor(r13) /* 804506F0-_SDA_BASE_ */
/* 801973A0  38 00 00 02 */	li r0, 2
/* 801973A4  7C 09 03 A6 */	mtctr r0
lbl_801973A8:
/* 801973A8  7C A4 19 2E */	stwx r5, r4, r3
/* 801973AC  38 63 00 04 */	addi r3, r3, 4
/* 801973B0  42 00 FF F8 */	bdnz lbl_801973A8
/* 801973B4  38 00 00 00 */	li r0, 0
/* 801973B8  90 0D 8A E4 */	stw r0, dShopSystem_camera_count(r13)
/* 801973BC  80 1F 0E 40 */	lwz r0, 0xe40(r31)
/* 801973C0  28 00 00 00 */	cmplwi r0, 0
/* 801973C4  40 82 00 50 */	bne lbl_80197414
/* 801973C8  38 60 00 30 */	li r3, 0x30
/* 801973CC  48 13 78 81 */	bl __nw__FUl
/* 801973D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 801973D4  41 82 00 3C */	beq lbl_80197410
/* 801973D8  3C 80 80 3A */	lis r4, __vt__9STControl@ha
/* 801973DC  38 04 72 60 */	addi r0, r4, __vt__9STControl@l
/* 801973E0  90 1E 00 00 */	stw r0, 0(r30)
/* 801973E4  38 80 00 0F */	li r4, 0xf
/* 801973E8  38 A0 00 0F */	li r5, 0xf
/* 801973EC  38 C0 00 00 */	li r6, 0
/* 801973F0  38 E0 00 00 */	li r7, 0
/* 801973F4  C0 22 A1 00 */	lfs f1, lit_4097(r2)
/* 801973F8  C0 42 A1 04 */	lfs f2, lit_4098(r2)
/* 801973FC  39 00 00 00 */	li r8, 0
/* 80197400  39 20 20 00 */	li r9, 0x2000
/* 80197404  4B E9 AC 85 */	bl setWaitParm__9STControlFssssffss
/* 80197408  7F C3 F3 78 */	mr r3, r30
/* 8019740C  4B E9 AC A1 */	bl init__9STControlFv
lbl_80197410:
/* 80197410  93 DF 0E 40 */	stw r30, 0xe40(r31)
lbl_80197414:
/* 80197414  80 1F 0E 44 */	lwz r0, 0xe44(r31)
/* 80197418  28 00 00 00 */	cmplwi r0, 0
/* 8019741C  40 82 00 48 */	bne lbl_80197464
/* 80197420  38 60 00 B8 */	li r3, 0xb8
/* 80197424  48 13 78 29 */	bl __nw__FUl
/* 80197428  7C 60 1B 79 */	or. r0, r3, r3
/* 8019742C  41 82 00 18 */	beq lbl_80197444
/* 80197430  38 80 00 01 */	li r4, 1
/* 80197434  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 80197438  38 A0 00 00 */	li r5, 0
/* 8019743C  4B FF CD E5 */	bl __ct__16dSelect_cursor_cFUcfP10JKRArchive
/* 80197440  7C 60 1B 78 */	mr r0, r3
lbl_80197444:
/* 80197444  90 1F 0E 44 */	stw r0, 0xe44(r31)
/* 80197448  80 7F 0E 44 */	lwz r3, 0xe44(r31)
/* 8019744C  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 80197450  FC 40 08 90 */	fmr f2, f1
/* 80197454  C0 62 A1 0C */	lfs f3, lit_4100(r2)
/* 80197458  C0 82 A1 10 */	lfs f4, lit_4101(r2)
/* 8019745C  FC A0 20 90 */	fmr f5, f4
/* 80197460  4B FF DD 51 */	bl setParam__16dSelect_cursor_cFfffff
lbl_80197464:
/* 80197464  38 00 FF FF */	li r0, -1
/* 80197468  90 1F 0F 64 */	stw r0, 0xf64(r31)
/* 8019746C  38 80 00 00 */	li r4, 0
/* 80197470  90 9F 0F 54 */	stw r4, 0xf54(r31)
/* 80197474  90 9F 0F 58 */	stw r4, 0xf58(r31)
/* 80197478  B0 9F 0F 6A */	sth r4, 0xf6a(r31)
/* 8019747C  98 9F 0F 6E */	stb r4, 0xf6e(r31)
/* 80197480  98 9F 0F 6F */	stb r4, 0xf6f(r31)
/* 80197484  B0 9F 0F 68 */	sth r4, 0xf68(r31)
/* 80197488  98 9F 0F 70 */	stb r4, 0xf70(r31)
/* 8019748C  88 1F 0F 70 */	lbz r0, 0xf70(r31)
/* 80197490  98 1F 0F 71 */	stb r0, 0xf71(r31)
/* 80197494  98 9F 0F 79 */	stb r4, 0xf79(r31)
/* 80197498  98 9F 0F 7A */	stb r4, 0xf7a(r31)
/* 8019749C  98 9F 0F 72 */	stb r4, 0xf72(r31)
/* 801974A0  38 60 00 FF */	li r3, 0xff
/* 801974A4  98 7F 0F 73 */	stb r3, 0xf73(r31)
/* 801974A8  98 9F 0F 74 */	stb r4, 0xf74(r31)
/* 801974AC  98 9F 0F 75 */	stb r4, 0xf75(r31)
/* 801974B0  B0 9F 0F 6C */	sth r4, 0xf6c(r31)
/* 801974B4  98 9F 0F 76 */	stb r4, 0xf76(r31)
/* 801974B8  38 00 00 09 */	li r0, 9
/* 801974BC  98 1F 0F 77 */	stb r0, 0xf77(r31)
/* 801974C0  98 7F 0F 78 */	stb r3, 0xf78(r31)
/* 801974C4  38 00 00 01 */	li r0, 1
/* 801974C8  98 1F 09 BC */	stb r0, 0x9bc(r31)
/* 801974CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801974D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801974D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801974D8  7C 08 03 A6 */	mtlr r0
/* 801974DC  38 21 00 10 */	addi r1, r1, 0x10
/* 801974E0  4E 80 00 20 */	blr 
