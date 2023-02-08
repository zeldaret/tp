lbl_801E9118:
/* 801E9118  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801E911C  7C 08 02 A6 */	mflr r0
/* 801E9120  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801E9124  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801E9128  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 801E912C  39 61 00 90 */	addi r11, r1, 0x90
/* 801E9130  48 17 90 81 */	bl _savegpr_18
/* 801E9134  7C 7F 1B 78 */	mr r31, r3
/* 801E9138  7C BA 2B 78 */	mr r26, r5
/* 801E913C  3C 60 80 39 */	lis r3, xy_text@ha /* 0x80397738@ha */
/* 801E9140  3B C3 77 38 */	addi r30, r3, xy_text@l /* 0x80397738@l */
/* 801E9144  3C 60 80 3A */	lis r3, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 801E9148  38 03 6F 88 */	addi r0, r3, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 801E914C  90 1F 00 00 */	stw r0, 0(r31)
/* 801E9150  3C 60 80 3C */	lis r3, __vt__12dMenu_Ring_c@ha /* 0x803BDF5C@ha */
/* 801E9154  38 03 DF 5C */	addi r0, r3, __vt__12dMenu_Ring_c@l /* 0x803BDF5C@l */
/* 801E9158  90 1F 00 00 */	stw r0, 0(r31)
/* 801E915C  90 9F 00 04 */	stw r4, 4(r31)
/* 801E9160  93 5F 00 08 */	stw r26, 8(r31)
/* 801E9164  90 DF 00 0C */	stw r6, 0xc(r31)
/* 801E9168  98 FF 06 BC */	stb r7, 0x6bc(r31)
/* 801E916C  38 00 00 00 */	li r0, 0
/* 801E9170  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801E9174  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801E9178  98 03 00 E8 */	stb r0, 0xe8(r3)
/* 801E917C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E9180  48 0E 56 05 */	bl getTotalFreeSize__7JKRHeapFv
/* 801E9184  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801E9188  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 801E918C  88 1F 06 BC */	lbz r0, 0x6bc(r31)
/* 801E9190  28 00 00 00 */	cmplwi r0, 0
/* 801E9194  40 82 00 14 */	bne lbl_801E91A8
/* 801E9198  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 801E919C  C0 02 A9 8C */	lfs f0, lit_4301(r2)
/* 801E91A0  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 801E91A4  48 00 00 18 */	b lbl_801E91BC
lbl_801E91A8:
/* 801E91A8  28 00 00 02 */	cmplwi r0, 2
/* 801E91AC  40 82 00 10 */	bne lbl_801E91BC
/* 801E91B0  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 801E91B4  C0 02 A9 90 */	lfs f0, lit_4302(r2)
/* 801E91B8  D0 1F 05 6C */	stfs f0, 0x56c(r31)
lbl_801E91BC:
/* 801E91BC  88 1F 06 BC */	lbz r0, 0x6bc(r31)
/* 801E91C0  28 00 00 03 */	cmplwi r0, 3
/* 801E91C4  40 82 00 18 */	bne lbl_801E91DC
/* 801E91C8  C0 02 A9 94 */	lfs f0, lit_4303(r2)
/* 801E91CC  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 801E91D0  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801E91D4  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 801E91D8  48 00 00 2C */	b lbl_801E9204
lbl_801E91DC:
/* 801E91DC  28 00 00 01 */	cmplwi r0, 1
/* 801E91E0  40 82 00 18 */	bne lbl_801E91F8
/* 801E91E4  C0 02 A9 98 */	lfs f0, lit_4304(r2)
/* 801E91E8  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 801E91EC  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801E91F0  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 801E91F4  48 00 00 10 */	b lbl_801E9204
lbl_801E91F8:
/* 801E91F8  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801E91FC  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 801E9200  D0 1F 05 6C */	stfs f0, 0x56c(r31)
lbl_801E9204:
/* 801E9204  C0 22 A9 88 */	lfs f1, lit_4300(r2)
/* 801E9208  D0 3F 05 8C */	stfs f1, 0x58c(r31)
/* 801E920C  D0 3F 05 90 */	stfs f1, 0x590(r31)
/* 801E9210  C0 02 A9 9C */	lfs f0, lit_4305(r2)
/* 801E9214  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 801E9218  38 60 00 00 */	li r3, 0
/* 801E921C  38 00 00 0A */	li r0, 0xa
/* 801E9220  7C 09 03 A6 */	mtctr r0
lbl_801E9224:
/* 801E9224  38 03 05 98 */	addi r0, r3, 0x598
/* 801E9228  7C 3F 05 2E */	stfsx f1, r31, r0
/* 801E922C  38 03 05 C0 */	addi r0, r3, 0x5c0
/* 801E9230  7C 3F 05 2E */	stfsx f1, r31, r0
/* 801E9234  38 03 05 E8 */	addi r0, r3, 0x5e8
/* 801E9238  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801E923C  38 63 00 04 */	addi r3, r3, 4
/* 801E9240  42 00 FF E4 */	bdnz lbl_801E9224
/* 801E9244  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801E9248  D0 3F 06 10 */	stfs f1, 0x610(r31)
/* 801E924C  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801E9250  D0 1F 06 14 */	stfs f0, 0x614(r31)
/* 801E9254  D0 1F 06 18 */	stfs f0, 0x618(r31)
/* 801E9258  D0 3F 06 1C */	stfs f1, 0x61c(r31)
/* 801E925C  D0 3F 06 20 */	stfs f1, 0x620(r31)
/* 801E9260  D0 3F 06 24 */	stfs f1, 0x624(r31)
/* 801E9264  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801E9268  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801E926C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 801E9270  80 03 05 74 */	lwz r0, 0x574(r3)
/* 801E9274  54 00 01 8C */	rlwinm r0, r0, 0, 6, 6
/* 801E9278  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 801E927C  38 80 00 00 */	li r4, 0
/* 801E9280  90 9F 06 30 */	stw r4, 0x630(r31)
/* 801E9284  B0 9F 06 3A */	sth r4, 0x63a(r31)
/* 801E9288  B0 9F 06 3C */	sth r4, 0x63c(r31)
/* 801E928C  B0 9F 06 38 */	sth r4, 0x638(r31)
/* 801E9290  98 9F 06 B0 */	stb r4, 0x6b0(r31)
/* 801E9294  98 9F 06 B1 */	stb r4, 0x6b1(r31)
/* 801E9298  98 9F 06 B2 */	stb r4, 0x6b2(r31)
/* 801E929C  B0 9F 06 72 */	sth r4, 0x672(r31)
/* 801E92A0  D0 1F 03 80 */	stfs f0, 0x380(r31)
/* 801E92A4  D0 1F 03 84 */	stfs f0, 0x384(r31)
/* 801E92A8  D0 1F 03 88 */	stfs f0, 0x388(r31)
/* 801E92AC  98 9F 06 A8 */	stb r4, 0x6a8(r31)
/* 801E92B0  98 9F 06 A9 */	stb r4, 0x6a9(r31)
/* 801E92B4  38 60 00 FF */	li r3, 0xff
/* 801E92B8  98 7F 06 AA */	stb r3, 0x6aa(r31)
/* 801E92BC  98 7F 06 AB */	stb r3, 0x6ab(r31)
/* 801E92C0  98 7F 06 AC */	stb r3, 0x6ac(r31)
/* 801E92C4  98 7F 06 AD */	stb r3, 0x6ad(r31)
/* 801E92C8  B0 9F 06 70 */	sth r4, 0x670(r31)
/* 801E92CC  B0 9F 06 7E */	sth r4, 0x67e(r31)
/* 801E92D0  98 9F 06 B3 */	stb r4, 0x6b3(r31)
/* 801E92D4  D0 1F 05 14 */	stfs f0, 0x514(r31)
/* 801E92D8  98 9F 06 BD */	stb r4, 0x6bd(r31)
/* 801E92DC  98 9F 06 AF */	stb r4, 0x6af(r31)
/* 801E92E0  38 00 00 04 */	li r0, 4
/* 801E92E4  B0 1F 06 7C */	sth r0, 0x67c(r31)
/* 801E92E8  98 9F 06 C5 */	stb r4, 0x6c5(r31)
/* 801E92EC  B0 9F 06 80 */	sth r4, 0x680(r31)
/* 801E92F0  B0 9F 06 84 */	sth r4, 0x684(r31)
/* 801E92F4  98 9F 06 C6 */	stb r4, 0x6c6(r31)
/* 801E92F8  98 7F 06 C4 */	stb r3, 0x6c4(r31)
/* 801E92FC  98 9F 06 CC */	stb r4, 0x6cc(r31)
/* 801E9300  98 7F 06 CB */	stb r3, 0x6cb(r31)
/* 801E9304  98 7F 06 CD */	stb r3, 0x6cd(r31)
/* 801E9308  98 9F 06 CE */	stb r4, 0x6ce(r31)
/* 801E930C  B0 9F 06 8E */	sth r4, 0x68e(r31)
/* 801E9310  98 7F 06 CF */	stb r3, 0x6cf(r31)
/* 801E9314  98 7F 06 D0 */	stb r3, 0x6d0(r31)
/* 801E9318  98 7F 06 D1 */	stb r3, 0x6d1(r31)
/* 801E931C  98 7F 06 D2 */	stb r3, 0x6d2(r31)
/* 801E9320  98 7F 06 D3 */	stb r3, 0x6d3(r31)
/* 801E9324  38 60 00 00 */	li r3, 0
/* 801E9328  38 00 00 03 */	li r0, 3
/* 801E932C  7C 09 03 A6 */	mtctr r0
lbl_801E9330:
/* 801E9330  38 03 05 80 */	addi r0, r3, 0x580
/* 801E9334  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801E9338  38 03 05 74 */	addi r0, r3, 0x574
/* 801E933C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801E9340  38 63 00 04 */	addi r3, r3, 4
/* 801E9344  42 00 FF EC */	bdnz lbl_801E9330
/* 801E9348  38 00 00 FF */	li r0, 0xff
/* 801E934C  98 1F 06 C3 */	stb r0, 0x6c3(r31)
/* 801E9350  38 80 00 00 */	li r4, 0
/* 801E9354  98 9F 06 C2 */	stb r4, 0x6c2(r31)
/* 801E9358  38 60 00 00 */	li r3, 0
/* 801E935C  38 00 00 03 */	li r0, 3
/* 801E9360  7C 09 03 A6 */	mtctr r0
lbl_801E9364:
/* 801E9364  38 03 03 74 */	addi r0, r3, 0x374
/* 801E9368  7C 9F 01 2E */	stwx r4, r31, r0
/* 801E936C  38 63 00 04 */	addi r3, r3, 4
/* 801E9370  42 00 FF F4 */	bdnz lbl_801E9364
/* 801E9374  38 80 00 00 */	li r4, 0
/* 801E9378  38 60 00 FF */	li r3, 0xff
/* 801E937C  38 00 00 04 */	li r0, 4
/* 801E9380  7C 09 03 A6 */	mtctr r0
lbl_801E9384:
/* 801E9384  38 04 06 C7 */	addi r0, r4, 0x6c7
/* 801E9388  7C 7F 01 AE */	stbx r3, r31, r0
/* 801E938C  38 84 00 01 */	addi r4, r4, 1
/* 801E9390  42 00 FF F4 */	bdnz lbl_801E9384
/* 801E9394  88 1F 06 BC */	lbz r0, 0x6bc(r31)
/* 801E9398  2C 00 00 01 */	cmpwi r0, 1
/* 801E939C  41 82 00 2C */	beq lbl_801E93C8
/* 801E93A0  40 80 00 10 */	bge lbl_801E93B0
/* 801E93A4  2C 00 00 00 */	cmpwi r0, 0
/* 801E93A8  40 80 00 14 */	bge lbl_801E93BC
/* 801E93AC  48 00 00 34 */	b lbl_801E93E0
lbl_801E93B0:
/* 801E93B0  2C 00 00 03 */	cmpwi r0, 3
/* 801E93B4  40 80 00 2C */	bge lbl_801E93E0
/* 801E93B8  48 00 00 1C */	b lbl_801E93D4
lbl_801E93BC:
/* 801E93BC  38 00 80 00 */	li r0, -32768
/* 801E93C0  B0 1F 06 82 */	sth r0, 0x682(r31)
/* 801E93C4  48 00 00 24 */	b lbl_801E93E8
lbl_801E93C8:
/* 801E93C8  38 00 40 00 */	li r0, 0x4000
/* 801E93CC  B0 1F 06 82 */	sth r0, 0x682(r31)
/* 801E93D0  48 00 00 18 */	b lbl_801E93E8
lbl_801E93D4:
/* 801E93D4  38 00 00 00 */	li r0, 0
/* 801E93D8  B0 1F 06 82 */	sth r0, 0x682(r31)
/* 801E93DC  48 00 00 0C */	b lbl_801E93E8
lbl_801E93E0:
/* 801E93E0  38 00 C0 00 */	li r0, -16384
/* 801E93E4  B0 1F 06 82 */	sth r0, 0x682(r31)
lbl_801E93E8:
/* 801E93E8  39 00 00 00 */	li r8, 0
/* 801E93EC  38 60 00 00 */	li r3, 0
/* 801E93F0  38 80 00 00 */	li r4, 0
/* 801E93F4  38 A0 00 00 */	li r5, 0
/* 801E93F8  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801E93FC  38 00 00 04 */	li r0, 4
/* 801E9400  7C 09 03 A6 */	mtctr r0
lbl_801E9404:
/* 801E9404  38 E0 00 00 */	li r7, 0
/* 801E9408  38 05 06 74 */	addi r0, r5, 0x674
/* 801E940C  7C FF 03 2E */	sthx r7, r31, r0
/* 801E9410  38 04 05 18 */	addi r0, r4, 0x518
/* 801E9414  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801E9418  38 04 05 28 */	addi r0, r4, 0x528
/* 801E941C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801E9420  38 04 05 38 */	addi r0, r4, 0x538
/* 801E9424  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801E9428  38 08 06 B4 */	addi r0, r8, 0x6b4
/* 801E942C  7C FF 01 AE */	stbx r7, r31, r0
/* 801E9430  38 C0 00 FF */	li r6, 0xff
/* 801E9434  38 08 06 B8 */	addi r0, r8, 0x6b8
/* 801E9438  7C DF 01 AE */	stbx r6, r31, r0
/* 801E943C  38 03 00 68 */	addi r0, r3, 0x68
/* 801E9440  7C FF 01 2E */	stwx r7, r31, r0
/* 801E9444  38 03 00 6C */	addi r0, r3, 0x6c
/* 801E9448  7C FF 01 2E */	stwx r7, r31, r0
/* 801E944C  38 03 00 70 */	addi r0, r3, 0x70
/* 801E9450  7C FF 01 2E */	stwx r7, r31, r0
/* 801E9454  38 05 06 86 */	addi r0, r5, 0x686
/* 801E9458  7C FF 03 2E */	sthx r7, r31, r0
/* 801E945C  39 08 00 01 */	addi r8, r8, 1
/* 801E9460  38 63 00 0C */	addi r3, r3, 0xc
/* 801E9464  38 84 00 04 */	addi r4, r4, 4
/* 801E9468  38 A5 00 02 */	addi r5, r5, 2
/* 801E946C  42 00 FF 98 */	bdnz lbl_801E9404
/* 801E9470  39 20 00 00 */	li r9, 0
/* 801E9474  38 60 00 00 */	li r3, 0
/* 801E9478  38 80 00 00 */	li r4, 0
/* 801E947C  38 A0 00 00 */	li r5, 0
/* 801E9480  C0 02 A9 88 */	lfs f0, lit_4300(r2)
lbl_801E9484:
/* 801E9484  38 05 03 EC */	addi r0, r5, 0x3ec
/* 801E9488  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801E948C  38 05 03 8C */	addi r0, r5, 0x38c
/* 801E9490  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801E9494  38 C0 00 00 */	li r6, 0
/* 801E9498  39 00 00 00 */	li r8, 0
/* 801E949C  38 00 00 03 */	li r0, 3
/* 801E94A0  7C 09 03 A6 */	mtctr r0
lbl_801E94A4:
/* 801E94A4  7C FF 32 14 */	add r7, r31, r6
/* 801E94A8  38 07 00 98 */	addi r0, r7, 0x98
/* 801E94AC  7D 04 01 2E */	stwx r8, r4, r0
/* 801E94B0  38 07 02 50 */	addi r0, r7, 0x250
/* 801E94B4  7D 04 01 2E */	stwx r8, r4, r0
/* 801E94B8  38 C6 00 04 */	addi r6, r6, 4
/* 801E94BC  42 00 FF E8 */	bdnz lbl_801E94A4
/* 801E94C0  38 C0 00 00 */	li r6, 0
/* 801E94C4  38 09 06 90 */	addi r0, r9, 0x690
/* 801E94C8  7C DF 01 AE */	stbx r6, r31, r0
/* 801E94CC  38 03 06 3E */	addi r0, r3, 0x63e
/* 801E94D0  7C DF 03 2E */	sthx r6, r31, r0
/* 801E94D4  38 05 04 AC */	addi r0, r5, 0x4ac
/* 801E94D8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801E94DC  38 05 04 4C */	addi r0, r5, 0x44c
/* 801E94E0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801E94E4  39 29 00 01 */	addi r9, r9, 1
/* 801E94E8  2C 09 00 18 */	cmpwi r9, 0x18
/* 801E94EC  38 63 00 02 */	addi r3, r3, 2
/* 801E94F0  38 84 00 0C */	addi r4, r4, 0xc
/* 801E94F4  38 A5 00 04 */	addi r5, r5, 4
/* 801E94F8  41 80 FF 8C */	blt lbl_801E9484
/* 801E94FC  3A 60 00 00 */	li r19, 0
/* 801E9500  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801E9504  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801E9508  3B A3 00 9C */	addi r29, r3, 0x9c
lbl_801E950C:
/* 801E950C  7F A3 EB 78 */	mr r3, r29
/* 801E9510  7E 64 9B 78 */	mr r4, r19
/* 801E9514  4B E4 9E 41 */	bl getLineUpItem__17dSv_player_item_cCFi
/* 801E9518  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801E951C  28 00 00 FF */	cmplwi r0, 0xff
/* 801E9520  41 82 00 10 */	beq lbl_801E9530
/* 801E9524  88 7F 06 AF */	lbz r3, 0x6af(r31)
/* 801E9528  38 03 00 01 */	addi r0, r3, 1
/* 801E952C  98 1F 06 AF */	stb r0, 0x6af(r31)
lbl_801E9530:
/* 801E9530  3A 73 00 01 */	addi r19, r19, 1
/* 801E9534  2C 13 00 18 */	cmpwi r19, 0x18
/* 801E9538  41 80 FF D4 */	blt lbl_801E950C
/* 801E953C  88 1F 06 AF */	lbz r0, 0x6af(r31)
/* 801E9540  28 00 00 01 */	cmplwi r0, 1
/* 801E9544  40 80 00 10 */	bge lbl_801E9554
/* 801E9548  38 00 00 01 */	li r0, 1
/* 801E954C  98 1F 06 AE */	stb r0, 0x6ae(r31)
/* 801E9550  48 00 00 08 */	b lbl_801E9558
lbl_801E9554:
/* 801E9554  98 1F 06 AE */	stb r0, 0x6ae(r31)
lbl_801E9558:
/* 801E9558  3A 60 00 00 */	li r19, 0
lbl_801E955C:
/* 801E955C  7F A3 EB 78 */	mr r3, r29
/* 801E9560  7E 64 9B 78 */	mr r4, r19
/* 801E9564  4B E4 9D F1 */	bl getLineUpItem__17dSv_player_item_cCFi
/* 801E9568  38 13 06 90 */	addi r0, r19, 0x690
/* 801E956C  7C 7F 01 AE */	stbx r3, r31, r0
/* 801E9570  3A 73 00 01 */	addi r19, r19, 1
/* 801E9574  2C 13 00 18 */	cmpwi r19, 0x18
/* 801E9578  41 80 FF E4 */	blt lbl_801E955C
/* 801E957C  3A C0 00 00 */	li r22, 0
/* 801E9580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801E9584  3A A3 61 C0 */	addi r21, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801E9588  7E B3 AB 78 */	mr r19, r21
/* 801E958C  48 00 00 A0 */	b lbl_801E962C
lbl_801E9590:
/* 801E9590  7F A3 EB 78 */	mr r3, r29
/* 801E9594  7E C4 B3 78 */	mr r4, r22
/* 801E9598  4B E4 9D BD */	bl getLineUpItem__17dSv_player_item_cCFi
/* 801E959C  38 16 06 90 */	addi r0, r22, 0x690
/* 801E95A0  7C 7F 01 AE */	stbx r3, r31, r0
/* 801E95A4  7F A3 EB 78 */	mr r3, r29
/* 801E95A8  7E C4 B3 78 */	mr r4, r22
/* 801E95AC  4B E4 9D A9 */	bl getLineUpItem__17dSv_player_item_cCFi
/* 801E95B0  7C 74 1B 78 */	mr r20, r3
/* 801E95B4  7E A3 AB 78 */	mr r3, r21
/* 801E95B8  38 80 00 00 */	li r4, 0
/* 801E95BC  4B E4 94 A1 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801E95C0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801E95C4  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 801E95C8  7C 03 00 40 */	cmplw r3, r0
/* 801E95CC  40 82 00 08 */	bne lbl_801E95D4
/* 801E95D0  9A DF 06 AA */	stb r22, 0x6aa(r31)
lbl_801E95D4:
/* 801E95D4  7F A3 EB 78 */	mr r3, r29
/* 801E95D8  7E C4 B3 78 */	mr r4, r22
/* 801E95DC  4B E4 9D 79 */	bl getLineUpItem__17dSv_player_item_cCFi
/* 801E95E0  7C 74 1B 78 */	mr r20, r3
/* 801E95E4  7E A3 AB 78 */	mr r3, r21
/* 801E95E8  38 80 00 01 */	li r4, 1
/* 801E95EC  4B E4 94 71 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801E95F0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801E95F4  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 801E95F8  7C 03 00 40 */	cmplw r3, r0
/* 801E95FC  40 82 00 08 */	bne lbl_801E9604
/* 801E9600  9A DF 06 AB */	stb r22, 0x6ab(r31)
lbl_801E9604:
/* 801E9604  7C 75 B2 14 */	add r3, r21, r22
/* 801E9608  8A 83 5E 95 */	lbz r20, 0x5e95(r3)
/* 801E960C  7E 63 9B 78 */	mr r3, r19
/* 801E9610  38 80 00 02 */	li r4, 2
/* 801E9614  4B E4 94 49 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801E9618  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801E961C  7C 00 A0 40 */	cmplw r0, r20
/* 801E9620  40 82 00 08 */	bne lbl_801E9628
/* 801E9624  9A DF 06 AC */	stb r22, 0x6ac(r31)
lbl_801E9628:
/* 801E9628  3A D6 00 01 */	addi r22, r22, 1
lbl_801E962C:
/* 801E962C  88 1F 06 AE */	lbz r0, 0x6ae(r31)
/* 801E9630  7C 16 00 00 */	cmpw r22, r0
/* 801E9634  41 80 FF 5C */	blt lbl_801E9590
/* 801E9638  3C 60 80 43 */	lis r3, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801E963C  38 63 FA FC */	addi r3, r3, g_ringHIO@l /* 0x8042FAFC@l */
/* 801E9640  C0 03 00 08 */	lfs f0, 8(r3)
/* 801E9644  D0 1F 05 0C */	stfs f0, 0x50c(r31)
/* 801E9648  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801E964C  D0 1F 05 10 */	stfs f0, 0x510(r31)
/* 801E9650  38 00 80 00 */	li r0, -32768
/* 801E9654  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 801E9658  3C 60 00 01 */	lis r3, 1
/* 801E965C  88 1F 06 AE */	lbz r0, 0x6ae(r31)
/* 801E9660  7C 03 03 D6 */	divw r0, r3, r0
/* 801E9664  90 1F 06 34 */	stw r0, 0x634(r31)
/* 801E9668  3A C0 00 00 */	li r22, 0
/* 801E966C  3A 60 00 00 */	li r19, 0
/* 801E9670  3A A0 00 00 */	li r21, 0
/* 801E9674  3B 00 00 00 */	li r24, 0
/* 801E9678  C3 E2 A9 88 */	lfs f31, lit_4300(r2)
/* 801E967C  3A 9F 06 BE */	addi r20, r31, 0x6be
lbl_801E9680:
/* 801E9680  3B 80 00 00 */	li r28, 0
/* 801E9684  3A E0 00 00 */	li r23, 0
lbl_801E9688:
/* 801E9688  3A 40 00 00 */	li r18, 0
/* 801E968C  3B 20 00 00 */	li r25, 0
/* 801E9690  7F 78 BA 14 */	add r27, r24, r23
lbl_801E9694:
/* 801E9694  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E9698  38 80 0C 00 */	li r4, 0xc00
/* 801E969C  38 A0 00 20 */	li r5, 0x20
/* 801E96A0  48 0E 4E 35 */	bl alloc__7JKRHeapFUli
/* 801E96A4  7C 9F CA 14 */	add r4, r31, r25
/* 801E96A8  38 04 01 F0 */	addi r0, r4, 0x1f0
/* 801E96AC  7C 7B 01 2E */	stwx r3, r27, r0
/* 801E96B0  3A 52 00 01 */	addi r18, r18, 1
/* 801E96B4  2C 12 00 02 */	cmpwi r18, 2
/* 801E96B8  3B 39 00 04 */	addi r25, r25, 4
/* 801E96BC  41 80 FF D8 */	blt lbl_801E9694
/* 801E96C0  3B 9C 00 01 */	addi r28, r28, 1
/* 801E96C4  2C 1C 00 03 */	cmpwi r28, 3
/* 801E96C8  3A F7 00 08 */	addi r23, r23, 8
/* 801E96CC  41 80 FF BC */	blt lbl_801E9688
/* 801E96D0  38 60 00 00 */	li r3, 0
/* 801E96D4  38 16 06 BE */	addi r0, r22, 0x6be
/* 801E96D8  7C 7F 01 AE */	stbx r3, r31, r0
/* 801E96DC  2C 16 00 02 */	cmpwi r22, 2
/* 801E96E0  40 82 00 18 */	bne lbl_801E96F8
/* 801E96E4  7F E3 FB 78 */	mr r3, r31
/* 801E96E8  7E C4 B3 78 */	mr r4, r22
/* 801E96EC  38 A0 00 00 */	li r5, 0
/* 801E96F0  48 00 44 25 */	bl setSelectItem__12dMenu_Ring_cFiUc
/* 801E96F4  48 00 00 14 */	b lbl_801E9708
lbl_801E96F8:
/* 801E96F8  7F E3 FB 78 */	mr r3, r31
/* 801E96FC  7E C4 B3 78 */	mr r4, r22
/* 801E9700  38 A0 00 43 */	li r5, 0x43
/* 801E9704  48 00 44 11 */	bl setSelectItem__12dMenu_Ring_cFiUc
lbl_801E9708:
/* 801E9708  3A E0 00 00 */	li r23, 0
/* 801E970C  3B 20 00 00 */	li r25, 0
lbl_801E9710:
/* 801E9710  38 60 01 50 */	li r3, 0x150
/* 801E9714  48 0E 55 39 */	bl __nw__FUl
/* 801E9718  7C 64 1B 79 */	or. r4, r3, r3
/* 801E971C  41 82 00 20 */	beq lbl_801E973C
/* 801E9720  88 14 00 00 */	lbz r0, 0(r20)
/* 801E9724  54 00 18 38 */	slwi r0, r0, 3
/* 801E9728  7C 9F 02 14 */	add r4, r31, r0
/* 801E972C  38 04 01 F0 */	addi r0, r4, 0x1f0
/* 801E9730  7C 98 00 2E */	lwzx r4, r24, r0
/* 801E9734  48 11 2F D5 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801E9738  7C 64 1B 78 */	mr r4, r3
lbl_801E973C:
/* 801E973C  7C 7F CA 14 */	add r3, r31, r25
/* 801E9740  38 03 00 68 */	addi r0, r3, 0x68
/* 801E9744  7C 95 01 2E */	stwx r4, r21, r0
/* 801E9748  7C 75 00 2E */	lwzx r3, r21, r0
/* 801E974C  38 80 00 04 */	li r4, 4
/* 801E9750  48 10 DF A9 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801E9754  3A F7 00 01 */	addi r23, r23, 1
/* 801E9758  2C 17 00 03 */	cmpwi r23, 3
/* 801E975C  3B 39 00 04 */	addi r25, r25, 4
/* 801E9760  41 80 FF B0 */	blt lbl_801E9710
/* 801E9764  38 13 05 48 */	addi r0, r19, 0x548
/* 801E9768  7F FF 05 2E */	stfsx f31, r31, r0
/* 801E976C  38 13 05 58 */	addi r0, r19, 0x558
/* 801E9770  7F FF 05 2E */	stfsx f31, r31, r0
/* 801E9774  3A D6 00 01 */	addi r22, r22, 1
/* 801E9778  2C 16 00 04 */	cmpwi r22, 4
/* 801E977C  3A 73 00 04 */	addi r19, r19, 4
/* 801E9780  3A 94 00 01 */	addi r20, r20, 1
/* 801E9784  3A B5 00 0C */	addi r21, r21, 0xc
/* 801E9788  3B 18 00 18 */	addi r24, r24, 0x18
/* 801E978C  41 80 FE F4 */	blt lbl_801E9680
/* 801E9790  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801E9794  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801E9798  82 7B 5D 30 */	lwz r19, 0x5d30(r27)
/* 801E979C  38 60 00 00 */	li r3, 0
/* 801E97A0  48 03 4B 29 */	bl dMeter2Info_getNumberTextureName__Fi
/* 801E97A4  7C 65 1B 78 */	mr r5, r3
/* 801E97A8  7E 63 9B 78 */	mr r3, r19
/* 801E97AC  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801E97B0  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801E97B4  81 93 00 00 */	lwz r12, 0(r19)
/* 801E97B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801E97BC  7D 89 03 A6 */	mtctr r12
/* 801E97C0  4E 80 04 21 */	bctrl 
/* 801E97C4  7C 72 1B 78 */	mr r18, r3
/* 801E97C8  3A 80 00 00 */	li r20, 0
/* 801E97CC  3A 60 00 00 */	li r19, 0
lbl_801E97D0:
/* 801E97D0  38 60 01 50 */	li r3, 0x150
/* 801E97D4  48 0E 54 79 */	bl __nw__FUl
/* 801E97D8  7C 64 1B 79 */	or. r4, r3, r3
/* 801E97DC  41 82 00 10 */	beq lbl_801E97EC
/* 801E97E0  7E 44 93 78 */	mr r4, r18
/* 801E97E4  48 11 2F 25 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801E97E8  7C 64 1B 78 */	mr r4, r3
lbl_801E97EC:
/* 801E97EC  38 13 01 BC */	addi r0, r19, 0x1bc
/* 801E97F0  7C 9F 01 2E */	stwx r4, r31, r0
/* 801E97F4  3A 94 00 01 */	addi r20, r20, 1
/* 801E97F8  2C 14 00 03 */	cmpwi r20, 3
/* 801E97FC  3A 73 00 04 */	addi r19, r19, 4
/* 801E9800  41 80 FF D0 */	blt lbl_801E97D0
/* 801E9804  38 60 00 10 */	li r3, 0x10
/* 801E9808  48 0E 54 45 */	bl __nw__FUl
/* 801E980C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E9810  41 82 00 0C */	beq lbl_801E981C
/* 801E9814  4B FC 51 25 */	bl __ct__15dKantera_icon_cFv
/* 801E9818  7C 60 1B 78 */	mr r0, r3
lbl_801E981C:
/* 801E981C  90 1F 00 54 */	stw r0, 0x54(r31)
/* 801E9820  38 60 01 18 */	li r3, 0x118
/* 801E9824  48 0E 54 29 */	bl __nw__FUl
/* 801E9828  7C 60 1B 79 */	or. r0, r3, r3
/* 801E982C  41 82 00 0C */	beq lbl_801E9838
/* 801E9830  48 10 EC 69 */	bl __ct__9J2DScreenFv
/* 801E9834  7C 60 1B 78 */	mr r0, r3
lbl_801E9838:
/* 801E9838  90 1F 00 58 */	stw r0, 0x58(r31)
/* 801E983C  38 7F 03 74 */	addi r3, r31, 0x374
/* 801E9840  80 9F 00 04 */	lwz r4, 4(r31)
/* 801E9844  80 BF 00 58 */	lwz r5, 0x58(r31)
/* 801E9848  3C C0 80 39 */	lis r6, d_menu_d_menu_ring__stringBase0@ha /* 0x803978C8@ha */
/* 801E984C  38 C6 78 C8 */	addi r6, r6, d_menu_d_menu_ring__stringBase0@l /* 0x803978C8@l */
/* 801E9850  3C E0 00 02 */	lis r7, 2
/* 801E9854  3D 00 80 40 */	lis r8, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801E9858  3B 88 61 C0 */	addi r28, r8, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801E985C  81 1C 5C E8 */	lwz r8, 0x5ce8(r28)
/* 801E9860  48 06 B9 25 */	bl dPaneClass_setPriority__FPPvP7JKRHeapP9J2DScreenPCcUlP10JKRArchive
/* 801E9864  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9868  48 06 B8 81 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801E986C  38 60 00 1C */	li r3, 0x1c
/* 801E9870  48 0E 53 DD */	bl __nw__FUl
/* 801E9874  7C 60 1B 79 */	or. r0, r3, r3
/* 801E9878  41 82 00 24 */	beq lbl_801E989C
/* 801E987C  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 801E9880  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801E9884  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801E9888  38 A0 00 6E */	li r5, 0x6e
/* 801E988C  38 E0 00 02 */	li r7, 2
/* 801E9890  39 00 00 00 */	li r8, 0
/* 801E9894  48 06 BB 69 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801E9898  7C 60 1B 78 */	mr r0, r3
lbl_801E989C:
/* 801E989C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801E98A0  38 60 00 6C */	li r3, 0x6c
/* 801E98A4  48 0E 53 A9 */	bl __nw__FUl
/* 801E98A8  7C 60 1B 79 */	or. r0, r3, r3
/* 801E98AC  41 82 00 24 */	beq lbl_801E98D0
/* 801E98B0  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 801E98B4  3C A0 00 72 */	lis r5, 0x0072 /* 0x00725F6E@ha */
/* 801E98B8  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x00725F6E@l */
/* 801E98BC  38 A0 00 00 */	li r5, 0
/* 801E98C0  38 E0 00 00 */	li r7, 0
/* 801E98C4  39 00 00 00 */	li r8, 0
/* 801E98C8  48 06 A0 BD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E98CC  7C 60 1B 78 */	mr r0, r3
lbl_801E98D0:
/* 801E98D0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801E98D4  38 60 00 6C */	li r3, 0x6c
/* 801E98D8  48 0E 53 75 */	bl __nw__FUl
/* 801E98DC  7C 60 1B 79 */	or. r0, r3, r3
/* 801E98E0  41 82 00 24 */	beq lbl_801E9904
/* 801E98E4  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 801E98E8  3C A0 00 63 */	lis r5, 0x0063 /* 0x00635F6E@ha */
/* 801E98EC  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x00635F6E@l */
/* 801E98F0  38 A0 00 00 */	li r5, 0
/* 801E98F4  38 E0 00 02 */	li r7, 2
/* 801E98F8  39 00 00 00 */	li r8, 0
/* 801E98FC  48 06 A0 89 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E9900  7C 60 1B 78 */	mr r0, r3
lbl_801E9904:
/* 801E9904  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801E9908  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E990C  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801E9910  48 06 BE C1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801E9914  38 00 00 00 */	li r0, 0
/* 801E9918  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 801E991C  38 60 00 6C */	li r3, 0x6c
/* 801E9920  48 0E 53 2D */	bl __nw__FUl
/* 801E9924  7C 60 1B 79 */	or. r0, r3, r3
/* 801E9928  41 82 00 28 */	beq lbl_801E9950
/* 801E992C  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 801E9930  3C A0 65 6E */	lis r5, 0x656E /* 0x656E5F6E@ha */
/* 801E9934  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x656E5F6E@l */
/* 801E9938  3C A0 00 63 */	lis r5, 0x0063 /* 0x00635F73@ha */
/* 801E993C  38 A5 5F 73 */	addi r5, r5, 0x5F73 /* 0x00635F73@l */
/* 801E9940  38 E0 00 02 */	li r7, 2
/* 801E9944  39 00 00 00 */	li r8, 0
/* 801E9948  48 06 A0 3D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E994C  7C 60 1B 78 */	mr r0, r3
lbl_801E9950:
/* 801E9950  90 1F 00 30 */	stw r0, 0x30(r31)
/* 801E9954  38 60 00 6C */	li r3, 0x6c
/* 801E9958  48 0E 52 F5 */	bl __nw__FUl
/* 801E995C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E9960  41 82 00 24 */	beq lbl_801E9984
/* 801E9964  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 801E9968  3C A0 67 72 */	lis r5, 0x6772 /* 0x67725F6E@ha */
/* 801E996C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x67725F6E@l */
/* 801E9970  38 A0 00 00 */	li r5, 0
/* 801E9974  38 E0 00 02 */	li r7, 2
/* 801E9978  39 00 00 00 */	li r8, 0
/* 801E997C  48 06 A0 09 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E9980  7C 60 1B 78 */	mr r0, r3
lbl_801E9984:
/* 801E9984  90 1F 00 34 */	stw r0, 0x34(r31)
/* 801E9988  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801E998C  48 06 BC 7D */	bl hide__13CPaneMgrAlphaFv
/* 801E9990  38 60 00 14 */	li r3, 0x14
/* 801E9994  38 80 00 00 */	li r4, 0
/* 801E9998  38 00 00 05 */	li r0, 5
/* 801E999C  7C 09 03 A6 */	mtctr r0
lbl_801E99A0:
/* 801E99A0  38 03 00 24 */	addi r0, r3, 0x24
/* 801E99A4  7C 9F 01 2E */	stwx r4, r31, r0
/* 801E99A8  38 63 00 04 */	addi r3, r3, 4
/* 801E99AC  42 00 FF F4 */	bdnz lbl_801E99A0
/* 801E99B0  3B 20 00 00 */	li r25, 0
/* 801E99B4  3B 00 00 00 */	li r24, 0
/* 801E99B8  3A E0 00 00 */	li r23, 0
/* 801E99BC  48 00 01 C4 */	b lbl_801E9B80
lbl_801E99C0:
/* 801E99C0  3A 40 00 00 */	li r18, 0
/* 801E99C4  3A 60 00 00 */	li r19, 0
lbl_801E99C8:
/* 801E99C8  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E99CC  38 80 0C 00 */	li r4, 0xc00
/* 801E99D0  38 A0 00 20 */	li r5, 0x20
/* 801E99D4  48 0E 4B 01 */	bl alloc__7JKRHeapFUli
/* 801E99D8  7C 9F 9A 14 */	add r4, r31, r19
/* 801E99DC  38 04 02 50 */	addi r0, r4, 0x250
/* 801E99E0  7C 77 01 2E */	stwx r3, r23, r0
/* 801E99E4  3A 52 00 01 */	addi r18, r18, 1
/* 801E99E8  2C 12 00 03 */	cmpwi r18, 3
/* 801E99EC  3A 73 00 04 */	addi r19, r19, 4
/* 801E99F0  41 80 FF D8 */	blt lbl_801E99C8
/* 801E99F4  7F A3 EB 78 */	mr r3, r29
/* 801E99F8  38 19 06 90 */	addi r0, r25, 0x690
/* 801E99FC  7C 9F 00 AE */	lbzx r4, r31, r0
/* 801E9A00  38 A0 00 00 */	li r5, 0
/* 801E9A04  4B E4 96 2D */	bl getItem__17dSv_player_item_cCFib
/* 801E9A08  7C 75 1B 78 */	mr r21, r3
/* 801E9A0C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801E9A10  28 00 00 FF */	cmplwi r0, 0xff
/* 801E9A14  41 82 01 60 */	beq lbl_801E9B74
/* 801E9A18  28 00 00 53 */	cmplwi r0, 0x53
/* 801E9A1C  40 82 00 08 */	bne lbl_801E9A24
/* 801E9A20  3A A0 00 43 */	li r21, 0x43
lbl_801E9A24:
/* 801E9A24  7D 3F BA 14 */	add r9, r31, r23
/* 801E9A28  80 A9 02 50 */	lwz r5, 0x250(r9)
/* 801E9A2C  38 00 00 00 */	li r0, 0
/* 801E9A30  90 01 00 08 */	stw r0, 8(r1)
/* 801E9A34  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E9A38  38 00 FF FF */	li r0, -1
/* 801E9A3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801E9A40  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801E9A44  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801E9A48  7E A4 AB 78 */	mr r4, r21
/* 801E9A4C  38 C0 00 00 */	li r6, 0
/* 801E9A50  80 E9 02 54 */	lwz r7, 0x254(r9)
/* 801E9A54  39 00 00 00 */	li r8, 0
/* 801E9A58  81 29 02 58 */	lwz r9, 0x258(r9)
/* 801E9A5C  39 40 00 00 */	li r10, 0
/* 801E9A60  48 03 34 A9 */	bl readItemTexture__13dMeter2Info_cFUcPvP10J2DPicturePvP10J2DPicturePvP10J2DPicturePvP10J2DPicturei
/* 801E9A64  7C 76 1B 78 */	mr r22, r3
/* 801E9A68  3A 80 00 00 */	li r20, 0
/* 801E9A6C  3A 60 00 00 */	li r19, 0
/* 801E9A70  48 00 00 48 */	b lbl_801E9AB8
lbl_801E9A74:
/* 801E9A74  38 60 01 50 */	li r3, 0x150
/* 801E9A78  48 0E 51 D5 */	bl __nw__FUl
/* 801E9A7C  7C 64 1B 79 */	or. r4, r3, r3
/* 801E9A80  41 82 00 18 */	beq lbl_801E9A98
/* 801E9A84  7C 9F 9A 14 */	add r4, r31, r19
/* 801E9A88  38 04 02 50 */	addi r0, r4, 0x250
/* 801E9A8C  7C 97 00 2E */	lwzx r4, r23, r0
/* 801E9A90  48 11 2C 79 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801E9A94  7C 64 1B 78 */	mr r4, r3
lbl_801E9A98:
/* 801E9A98  7C 7F 9A 14 */	add r3, r31, r19
/* 801E9A9C  38 03 00 98 */	addi r0, r3, 0x98
/* 801E9AA0  7C 97 01 2E */	stwx r4, r23, r0
/* 801E9AA4  7C 77 00 2E */	lwzx r3, r23, r0
/* 801E9AA8  38 80 00 04 */	li r4, 4
/* 801E9AAC  48 10 DC 4D */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801E9AB0  3A 94 00 01 */	addi r20, r20, 1
/* 801E9AB4  3A 73 00 04 */	addi r19, r19, 4
lbl_801E9AB8:
/* 801E9AB8  7C 14 B0 00 */	cmpw r20, r22
/* 801E9ABC  41 80 FF B8 */	blt lbl_801E9A74
/* 801E9AC0  7C FF BA 14 */	add r7, r31, r23
/* 801E9AC4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801E9AC8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801E9ACC  7E A4 AB 78 */	mr r4, r21
/* 801E9AD0  80 A7 00 98 */	lwz r5, 0x98(r7)
/* 801E9AD4  80 C7 00 9C */	lwz r6, 0x9c(r7)
/* 801E9AD8  80 E7 00 A0 */	lwz r7, 0xa0(r7)
/* 801E9ADC  39 00 00 00 */	li r8, 0
/* 801E9AE0  48 03 38 8D */	bl setItemColor__13dMeter2Info_cFUcP10J2DPictureP10J2DPictureP10J2DPictureP10J2DPicture
/* 801E9AE4  56 A0 06 3E */	clrlwi r0, r21, 0x18
/* 801E9AE8  1C 80 00 18 */	mulli r4, r0, 0x18
/* 801E9AEC  3C 60 80 3B */	lis r3, item_resource__10dItem_data@ha /* 0x803AC5A0@ha */
/* 801E9AF0  38 03 C5 A0 */	addi r0, r3, item_resource__10dItem_data@l /* 0x803AC5A0@l */
/* 801E9AF4  7C 60 22 14 */	add r3, r0, r4
/* 801E9AF8  88 03 00 12 */	lbz r0, 0x12(r3)
/* 801E9AFC  C8 42 A9 B8 */	lfd f2, lit_4312(r2)
/* 801E9B00  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801E9B04  3C A0 43 30 */	lis r5, 0x4330
/* 801E9B08  90 A1 00 38 */	stw r5, 0x38(r1)
/* 801E9B0C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801E9B10  EC 20 10 28 */	fsubs f1, f0, f2
/* 801E9B14  C0 02 A9 A0 */	lfs f0, lit_4306(r2)
/* 801E9B18  EC 61 00 24 */	fdivs f3, f1, f0
/* 801E9B1C  38 97 02 50 */	addi r4, r23, 0x250
/* 801E9B20  7C 7F 20 2E */	lwzx r3, r31, r4
/* 801E9B24  A0 03 00 02 */	lhz r0, 2(r3)
/* 801E9B28  90 01 00 44 */	stw r0, 0x44(r1)
/* 801E9B2C  90 A1 00 40 */	stw r5, 0x40(r1)
/* 801E9B30  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801E9B34  EC 00 10 28 */	fsubs f0, f0, f2
/* 801E9B38  C0 22 A9 A4 */	lfs f1, lit_4307(r2)
/* 801E9B3C  EC 00 08 24 */	fdivs f0, f0, f1
/* 801E9B40  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801E9B44  38 18 04 4C */	addi r0, r24, 0x44c
/* 801E9B48  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801E9B4C  7C 7F 20 2E */	lwzx r3, r31, r4
/* 801E9B50  A0 03 00 04 */	lhz r0, 4(r3)
/* 801E9B54  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801E9B58  90 A1 00 48 */	stw r5, 0x48(r1)
/* 801E9B5C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 801E9B60  EC 00 10 28 */	fsubs f0, f0, f2
/* 801E9B64  EC 00 08 24 */	fdivs f0, f0, f1
/* 801E9B68  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801E9B6C  38 18 04 AC */	addi r0, r24, 0x4ac
/* 801E9B70  7C 1F 05 2E */	stfsx f0, r31, r0
lbl_801E9B74:
/* 801E9B74  3B 39 00 01 */	addi r25, r25, 1
/* 801E9B78  3B 18 00 04 */	addi r24, r24, 4
/* 801E9B7C  3A F7 00 0C */	addi r23, r23, 0xc
lbl_801E9B80:
/* 801E9B80  88 1F 06 AF */	lbz r0, 0x6af(r31)
/* 801E9B84  7C 19 00 00 */	cmpw r25, r0
/* 801E9B88  41 80 FE 38 */	blt lbl_801E99C0
/* 801E9B8C  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9B90  3C 80 74 6E */	lis r4, 0x746E /* 0x746E5F6E@ha */
/* 801E9B94  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x746E5F6E@l */
/* 801E9B98  3C 80 00 72 */	lis r4, 0x0072 /* 0x00725F62@ha */
/* 801E9B9C  38 A4 5F 62 */	addi r5, r4, 0x5F62 /* 0x00725F62@l */
/* 801E9BA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9BA4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9BA8  7D 89 03 A6 */	mtctr r12
/* 801E9BAC  4E 80 04 21 */	bctrl 
/* 801E9BB0  38 00 00 00 */	li r0, 0
/* 801E9BB4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9BB8  80 1F 06 2C */	lwz r0, 0x62c(r31)
/* 801E9BBC  28 00 00 00 */	cmplwi r0, 0
/* 801E9BC0  41 82 02 14 */	beq lbl_801E9DD4
/* 801E9BC4  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9BC8  3C 80 65 5F */	lis r4, 0x655F /* 0x655F7331@ha */
/* 801E9BCC  38 C4 73 31 */	addi r6, r4, 0x7331 /* 0x655F7331@l */
/* 801E9BD0  3C 80 79 78 */	lis r4, 0x7978 /* 0x79785F74@ha */
/* 801E9BD4  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x79785F74@l */
/* 801E9BD8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9BDC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9BE0  7D 89 03 A6 */	mtctr r12
/* 801E9BE4  4E 80 04 21 */	bctrl 
/* 801E9BE8  38 00 00 00 */	li r0, 0
/* 801E9BEC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9BF0  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9BF4  3C 80 65 5F */	lis r4, 0x655F /* 0x655F7332@ha */
/* 801E9BF8  38 C4 73 32 */	addi r6, r4, 0x7332 /* 0x655F7332@l */
/* 801E9BFC  3C 80 79 78 */	lis r4, 0x7978 /* 0x79785F74@ha */
/* 801E9C00  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x79785F74@l */
/* 801E9C04  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9C08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9C0C  7D 89 03 A6 */	mtctr r12
/* 801E9C10  4E 80 04 21 */	bctrl 
/* 801E9C14  38 00 00 00 */	li r0, 0
/* 801E9C18  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9C1C  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9C20  3C 80 65 5F */	lis r4, 0x655F /* 0x655F7333@ha */
/* 801E9C24  38 C4 73 33 */	addi r6, r4, 0x7333 /* 0x655F7333@l */
/* 801E9C28  3C 80 79 78 */	lis r4, 0x7978 /* 0x79785F74@ha */
/* 801E9C2C  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x79785F74@l */
/* 801E9C30  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9C34  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9C38  7D 89 03 A6 */	mtctr r12
/* 801E9C3C  4E 80 04 21 */	bctrl 
/* 801E9C40  38 00 00 00 */	li r0, 0
/* 801E9C44  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9C48  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9C4C  3C 80 65 5F */	lis r4, 0x655F /* 0x655F7334@ha */
/* 801E9C50  38 C4 73 34 */	addi r6, r4, 0x7334 /* 0x655F7334@l */
/* 801E9C54  3C 80 79 78 */	lis r4, 0x7978 /* 0x79785F74@ha */
/* 801E9C58  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x79785F74@l */
/* 801E9C5C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9C60  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9C64  7D 89 03 A6 */	mtctr r12
/* 801E9C68  4E 80 04 21 */	bctrl 
/* 801E9C6C  38 00 00 00 */	li r0, 0
/* 801E9C70  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9C74  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9C78  3C 80 74 65 */	lis r4, 0x7465 /* 0x74657874@ha */
/* 801E9C7C  38 C4 78 74 */	addi r6, r4, 0x7874 /* 0x74657874@l */
/* 801E9C80  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079785F@ha */
/* 801E9C84  38 A4 78 5F */	addi r5, r4, 0x785F /* 0x0079785F@l */
/* 801E9C88  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9C8C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9C90  7D 89 03 A6 */	mtctr r12
/* 801E9C94  4E 80 04 21 */	bctrl 
/* 801E9C98  38 00 00 00 */	li r0, 0
/* 801E9C9C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9CA0  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9CA4  3C 80 74 65 */	lis r4, 0x7465 /* 0x74655F31@ha */
/* 801E9CA8  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x74655F31@l */
/* 801E9CAC  3C 80 66 79 */	lis r4, 0x6679 /* 0x6679785F@ha */
/* 801E9CB0  38 A4 78 5F */	addi r5, r4, 0x785F /* 0x6679785F@l */
/* 801E9CB4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9CB8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9CBC  7D 89 03 A6 */	mtctr r12
/* 801E9CC0  4E 80 04 21 */	bctrl 
/* 801E9CC4  38 00 00 00 */	li r0, 0
/* 801E9CC8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9CCC  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9CD0  3C 80 74 65 */	lis r4, 0x7465 /* 0x74655F32@ha */
/* 801E9CD4  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x74655F32@l */
/* 801E9CD8  3C 80 66 79 */	lis r4, 0x6679 /* 0x6679785F@ha */
/* 801E9CDC  38 A4 78 5F */	addi r5, r4, 0x785F /* 0x6679785F@l */
/* 801E9CE0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9CE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9CE8  7D 89 03 A6 */	mtctr r12
/* 801E9CEC  4E 80 04 21 */	bctrl 
/* 801E9CF0  38 00 00 00 */	li r0, 0
/* 801E9CF4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9CF8  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9CFC  3C 80 74 65 */	lis r4, 0x7465 /* 0x74655F33@ha */
/* 801E9D00  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x74655F33@l */
/* 801E9D04  3C 80 66 79 */	lis r4, 0x6679 /* 0x6679785F@ha */
/* 801E9D08  38 A4 78 5F */	addi r5, r4, 0x785F /* 0x6679785F@l */
/* 801E9D0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9D10  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9D14  7D 89 03 A6 */	mtctr r12
/* 801E9D18  4E 80 04 21 */	bctrl 
/* 801E9D1C  38 00 00 00 */	li r0, 0
/* 801E9D20  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9D24  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9D28  3C 80 74 65 */	lis r4, 0x7465 /* 0x74655F34@ha */
/* 801E9D2C  38 C4 5F 34 */	addi r6, r4, 0x5F34 /* 0x74655F34@l */
/* 801E9D30  3C 80 66 79 */	lis r4, 0x6679 /* 0x6679785F@ha */
/* 801E9D34  38 A4 78 5F */	addi r5, r4, 0x785F /* 0x6679785F@l */
/* 801E9D38  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9D3C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9D40  7D 89 03 A6 */	mtctr r12
/* 801E9D44  4E 80 04 21 */	bctrl 
/* 801E9D48  38 00 00 00 */	li r0, 0
/* 801E9D4C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9D50  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9D54  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F746578@ha */
/* 801E9D58  38 C4 65 78 */	addi r6, r4, 0x6578 /* 0x5F746578@l */
/* 801E9D5C  3C 80 00 66 */	lis r4, 0x0066 /* 0x00667978@ha */
/* 801E9D60  38 A4 79 78 */	addi r5, r4, 0x7978 /* 0x00667978@l */
/* 801E9D64  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9D68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9D6C  7D 89 03 A6 */	mtctr r12
/* 801E9D70  4E 80 04 21 */	bctrl 
/* 801E9D74  38 00 00 00 */	li r0, 0
/* 801E9D78  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9D7C  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9D80  3C 80 74 6E */	lis r4, 0x746E /* 0x746E5F6E@ha */
/* 801E9D84  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x746E5F6E@l */
/* 801E9D88  3C 80 00 78 */	lis r4, 0x0078 /* 0x00785F62@ha */
/* 801E9D8C  38 A4 5F 62 */	addi r5, r4, 0x5F62 /* 0x00785F62@l */
/* 801E9D90  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9D94  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9D98  7D 89 03 A6 */	mtctr r12
/* 801E9D9C  4E 80 04 21 */	bctrl 
/* 801E9DA0  38 00 00 00 */	li r0, 0
/* 801E9DA4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9DA8  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9DAC  3C 80 74 6E */	lis r4, 0x746E /* 0x746E5F6E@ha */
/* 801E9DB0  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x746E5F6E@l */
/* 801E9DB4  3C 80 00 79 */	lis r4, 0x0079 /* 0x00795F62@ha */
/* 801E9DB8  38 A4 5F 62 */	addi r5, r4, 0x5F62 /* 0x00795F62@l */
/* 801E9DBC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9DC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9DC4  7D 89 03 A6 */	mtctr r12
/* 801E9DC8  4E 80 04 21 */	bctrl 
/* 801E9DCC  38 00 00 00 */	li r0, 0
/* 801E9DD0  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_801E9DD4:
/* 801E9DD4  38 60 00 2C */	li r3, 0x2c
/* 801E9DD8  48 0E 4E 75 */	bl __nw__FUl
/* 801E9DDC  7C 60 1B 79 */	or. r0, r3, r3
/* 801E9DE0  41 82 00 0C */	beq lbl_801E9DEC
/* 801E9DE4  48 05 FE 3D */	bl __ct__12dMsgString_cFv
/* 801E9DE8  7C 60 1B 78 */	mr r0, r3
lbl_801E9DEC:
/* 801E9DEC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801E9DF0  3A E0 00 00 */	li r23, 0
/* 801E9DF4  3A 80 00 00 */	li r20, 0
/* 801E9DF8  3A DE 00 28 */	addi r22, r30, 0x28
/* 801E9DFC  3A BE 00 00 */	addi r21, r30, 0
/* 801E9E00  3C 60 80 39 */	lis r3, d_menu_d_menu_ring__stringBase0@ha /* 0x803978C8@ha */
/* 801E9E04  3A 63 78 C8 */	addi r19, r3, d_menu_d_menu_ring__stringBase0@l /* 0x803978C8@l */
lbl_801E9E08:
/* 801E9E08  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9E0C  7C D6 A2 14 */	add r6, r22, r20
/* 801E9E10  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E9E14  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E9E18  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9E1C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9E20  7D 89 03 A6 */	mtctr r12
/* 801E9E24  4E 80 04 21 */	bctrl 
/* 801E9E28  7C 72 1B 78 */	mr r18, r3
/* 801E9E2C  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9E30  7C D5 A2 14 */	add r6, r21, r20
/* 801E9E34  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E9E38  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E9E3C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9E40  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9E44  7D 89 03 A6 */	mtctr r12
/* 801E9E48  4E 80 04 21 */	bctrl 
/* 801E9E4C  38 00 00 00 */	li r0, 0
/* 801E9E50  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9E54  4B E2 AB 9D */	bl mDoExt_getMesgFont__Fv
/* 801E9E58  7C 64 1B 78 */	mr r4, r3
/* 801E9E5C  7E 43 93 78 */	mr r3, r18
/* 801E9E60  81 92 00 00 */	lwz r12, 0(r18)
/* 801E9E64  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E9E68  7D 89 03 A6 */	mtctr r12
/* 801E9E6C  4E 80 04 21 */	bctrl 
/* 801E9E70  7E 43 93 78 */	mr r3, r18
/* 801E9E74  38 80 00 40 */	li r4, 0x40
/* 801E9E78  38 B3 00 2D */	addi r5, r19, 0x2d
/* 801E9E7C  4C C6 31 82 */	crclr 6
/* 801E9E80  48 11 68 CD */	bl setString__10J2DTextBoxFsPCce
/* 801E9E84  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801E9E88  38 80 03 80 */	li r4, 0x380
/* 801E9E8C  7E 45 93 78 */	mr r5, r18
/* 801E9E90  38 C0 00 00 */	li r6, 0
/* 801E9E94  38 E0 00 00 */	li r7, 0
/* 801E9E98  39 00 00 00 */	li r8, 0
/* 801E9E9C  39 20 00 00 */	li r9, 0
/* 801E9EA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9EA4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E9EA8  7D 89 03 A6 */	mtctr r12
/* 801E9EAC  4E 80 04 21 */	bctrl 
/* 801E9EB0  D0 3F 05 80 */	stfs f1, 0x580(r31)
/* 801E9EB4  3A F7 00 01 */	addi r23, r23, 1
/* 801E9EB8  2C 17 00 05 */	cmpwi r23, 5
/* 801E9EBC  3A 94 00 08 */	addi r20, r20, 8
/* 801E9EC0  41 80 FF 48 */	blt lbl_801E9E08
/* 801E9EC4  3A E0 00 00 */	li r23, 0
/* 801E9EC8  3A 80 00 00 */	li r20, 0
/* 801E9ECC  3A DE 00 78 */	addi r22, r30, 0x78
/* 801E9ED0  3A BE 00 50 */	addi r21, r30, 0x50
/* 801E9ED4  3C 60 80 39 */	lis r3, d_menu_d_menu_ring__stringBase0@ha /* 0x803978C8@ha */
/* 801E9ED8  3A 63 78 C8 */	addi r19, r3, d_menu_d_menu_ring__stringBase0@l /* 0x803978C8@l */
lbl_801E9EDC:
/* 801E9EDC  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9EE0  7C D6 A2 14 */	add r6, r22, r20
/* 801E9EE4  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E9EE8  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E9EEC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9EF0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9EF4  7D 89 03 A6 */	mtctr r12
/* 801E9EF8  4E 80 04 21 */	bctrl 
/* 801E9EFC  7C 72 1B 78 */	mr r18, r3
/* 801E9F00  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9F04  7C D5 A2 14 */	add r6, r21, r20
/* 801E9F08  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E9F0C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E9F10  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9F14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9F18  7D 89 03 A6 */	mtctr r12
/* 801E9F1C  4E 80 04 21 */	bctrl 
/* 801E9F20  38 00 00 00 */	li r0, 0
/* 801E9F24  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9F28  4B E2 AA C9 */	bl mDoExt_getMesgFont__Fv
/* 801E9F2C  7C 64 1B 78 */	mr r4, r3
/* 801E9F30  7E 43 93 78 */	mr r3, r18
/* 801E9F34  81 92 00 00 */	lwz r12, 0(r18)
/* 801E9F38  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E9F3C  7D 89 03 A6 */	mtctr r12
/* 801E9F40  4E 80 04 21 */	bctrl 
/* 801E9F44  7E 43 93 78 */	mr r3, r18
/* 801E9F48  38 80 00 40 */	li r4, 0x40
/* 801E9F4C  38 B3 00 2D */	addi r5, r19, 0x2d
/* 801E9F50  4C C6 31 82 */	crclr 6
/* 801E9F54  48 11 67 F9 */	bl setString__10J2DTextBoxFsPCce
/* 801E9F58  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801E9F5C  38 80 03 7F */	li r4, 0x37f
/* 801E9F60  7E 45 93 78 */	mr r5, r18
/* 801E9F64  38 C0 00 00 */	li r6, 0
/* 801E9F68  38 E0 00 00 */	li r7, 0
/* 801E9F6C  39 00 00 00 */	li r8, 0
/* 801E9F70  39 20 00 00 */	li r9, 0
/* 801E9F74  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9F78  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E9F7C  7D 89 03 A6 */	mtctr r12
/* 801E9F80  4E 80 04 21 */	bctrl 
/* 801E9F84  D0 3F 05 84 */	stfs f1, 0x584(r31)
/* 801E9F88  3A F7 00 01 */	addi r23, r23, 1
/* 801E9F8C  2C 17 00 05 */	cmpwi r23, 5
/* 801E9F90  3A 94 00 08 */	addi r20, r20, 8
/* 801E9F94  41 80 FF 48 */	blt lbl_801E9EDC
/* 801E9F98  3A E0 00 00 */	li r23, 0
/* 801E9F9C  3A 80 00 00 */	li r20, 0
/* 801E9FA0  3A DE 00 C8 */	addi r22, r30, 0xc8
/* 801E9FA4  3A BE 00 A0 */	addi r21, r30, 0xa0
/* 801E9FA8  3C 60 80 39 */	lis r3, d_menu_d_menu_ring__stringBase0@ha /* 0x803978C8@ha */
/* 801E9FAC  3A 63 78 C8 */	addi r19, r3, d_menu_d_menu_ring__stringBase0@l /* 0x803978C8@l */
lbl_801E9FB0:
/* 801E9FB0  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9FB4  7C D6 A2 14 */	add r6, r22, r20
/* 801E9FB8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E9FBC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E9FC0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9FC4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9FC8  7D 89 03 A6 */	mtctr r12
/* 801E9FCC  4E 80 04 21 */	bctrl 
/* 801E9FD0  7C 72 1B 78 */	mr r18, r3
/* 801E9FD4  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E9FD8  7C D5 A2 14 */	add r6, r21, r20
/* 801E9FDC  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E9FE0  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E9FE4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E9FE8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E9FEC  7D 89 03 A6 */	mtctr r12
/* 801E9FF0  4E 80 04 21 */	bctrl 
/* 801E9FF4  38 00 00 00 */	li r0, 0
/* 801E9FF8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E9FFC  4B E2 A9 F5 */	bl mDoExt_getMesgFont__Fv
/* 801EA000  7C 64 1B 78 */	mr r4, r3
/* 801EA004  7E 43 93 78 */	mr r3, r18
/* 801EA008  81 92 00 00 */	lwz r12, 0(r18)
/* 801EA00C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801EA010  7D 89 03 A6 */	mtctr r12
/* 801EA014  4E 80 04 21 */	bctrl 
/* 801EA018  7E 43 93 78 */	mr r3, r18
/* 801EA01C  38 80 00 40 */	li r4, 0x40
/* 801EA020  38 B3 00 2D */	addi r5, r19, 0x2d
/* 801EA024  4C C6 31 82 */	crclr 6
/* 801EA028  48 11 67 25 */	bl setString__10J2DTextBoxFsPCce
/* 801EA02C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801EA030  38 80 04 CD */	li r4, 0x4cd
/* 801EA034  7E 45 93 78 */	mr r5, r18
/* 801EA038  38 C0 00 00 */	li r6, 0
/* 801EA03C  38 E0 00 00 */	li r7, 0
/* 801EA040  39 00 00 00 */	li r8, 0
/* 801EA044  39 20 00 00 */	li r9, 0
/* 801EA048  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA04C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EA050  7D 89 03 A6 */	mtctr r12
/* 801EA054  4E 80 04 21 */	bctrl 
/* 801EA058  D0 3F 05 88 */	stfs f1, 0x588(r31)
/* 801EA05C  3A F7 00 01 */	addi r23, r23, 1
/* 801EA060  2C 17 00 05 */	cmpwi r23, 5
/* 801EA064  3A 94 00 08 */	addi r20, r20, 8
/* 801EA068  41 80 FF 48 */	blt lbl_801E9FB0
/* 801EA06C  3A 80 00 00 */	li r20, 0
/* 801EA070  3A A0 00 00 */	li r21, 0
/* 801EA074  3A C0 00 00 */	li r22, 0
/* 801EA078  3B 1E 01 18 */	addi r24, r30, 0x118
/* 801EA07C  3A FE 00 F0 */	addi r23, r30, 0xf0
/* 801EA080  3C 60 80 39 */	lis r3, d_menu_d_menu_ring__stringBase0@ha /* 0x803978C8@ha */
/* 801EA084  3A 63 78 C8 */	addi r19, r3, d_menu_d_menu_ring__stringBase0@l /* 0x803978C8@l */
lbl_801EA088:
/* 801EA088  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801EA08C  7C D8 B2 14 */	add r6, r24, r22
/* 801EA090  80 A6 00 00 */	lwz r5, 0(r6)
/* 801EA094  80 C6 00 04 */	lwz r6, 4(r6)
/* 801EA098  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA09C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EA0A0  7D 89 03 A6 */	mtctr r12
/* 801EA0A4  4E 80 04 21 */	bctrl 
/* 801EA0A8  38 15 01 C8 */	addi r0, r21, 0x1c8
/* 801EA0AC  7C 7F 01 2E */	stwx r3, r31, r0
/* 801EA0B0  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801EA0B4  7C D7 B2 14 */	add r6, r23, r22
/* 801EA0B8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801EA0BC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801EA0C0  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA0C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EA0C8  7D 89 03 A6 */	mtctr r12
/* 801EA0CC  4E 80 04 21 */	bctrl 
/* 801EA0D0  38 00 00 00 */	li r0, 0
/* 801EA0D4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801EA0D8  38 15 01 C8 */	addi r0, r21, 0x1c8
/* 801EA0DC  7C 7F 00 2E */	lwzx r3, r31, r0
/* 801EA0E0  38 80 00 40 */	li r4, 0x40
/* 801EA0E4  38 B3 00 2D */	addi r5, r19, 0x2d
/* 801EA0E8  4C C6 31 82 */	crclr 6
/* 801EA0EC  48 11 66 61 */	bl setString__10J2DTextBoxFsPCce
/* 801EA0F0  4B E2 A9 01 */	bl mDoExt_getMesgFont__Fv
/* 801EA0F4  7C 64 1B 78 */	mr r4, r3
/* 801EA0F8  38 15 01 C8 */	addi r0, r21, 0x1c8
/* 801EA0FC  7C 7F 00 2E */	lwzx r3, r31, r0
/* 801EA100  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA104  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801EA108  7D 89 03 A6 */	mtctr r12
/* 801EA10C  4E 80 04 21 */	bctrl 
/* 801EA110  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801EA114  38 80 04 D2 */	li r4, 0x4d2
/* 801EA118  38 15 01 C8 */	addi r0, r21, 0x1c8
/* 801EA11C  7C BF 00 2E */	lwzx r5, r31, r0
/* 801EA120  38 C0 00 00 */	li r6, 0
/* 801EA124  38 E0 00 00 */	li r7, 0
/* 801EA128  39 00 00 00 */	li r8, 0
/* 801EA12C  39 20 00 00 */	li r9, 0
/* 801EA130  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA134  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EA138  7D 89 03 A6 */	mtctr r12
/* 801EA13C  4E 80 04 21 */	bctrl 
/* 801EA140  3A 94 00 01 */	addi r20, r20, 1
/* 801EA144  2C 14 00 05 */	cmpwi r20, 5
/* 801EA148  3A B5 00 04 */	addi r21, r21, 4
/* 801EA14C  3A D6 00 08 */	addi r22, r22, 8
/* 801EA150  41 80 FF 38 */	blt lbl_801EA088
/* 801EA154  3A 80 00 00 */	li r20, 0
/* 801EA158  3A A0 00 00 */	li r21, 0
/* 801EA15C  3A C0 00 00 */	li r22, 0
/* 801EA160  3A FE 01 68 */	addi r23, r30, 0x168
/* 801EA164  3B 1E 01 40 */	addi r24, r30, 0x140
/* 801EA168  3C 60 80 39 */	lis r3, d_menu_d_menu_ring__stringBase0@ha /* 0x803978C8@ha */
/* 801EA16C  3A 63 78 C8 */	addi r19, r3, d_menu_d_menu_ring__stringBase0@l /* 0x803978C8@l */
lbl_801EA170:
/* 801EA170  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801EA174  7C D7 B2 14 */	add r6, r23, r22
/* 801EA178  80 A6 00 00 */	lwz r5, 0(r6)
/* 801EA17C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801EA180  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA184  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EA188  7D 89 03 A6 */	mtctr r12
/* 801EA18C  4E 80 04 21 */	bctrl 
/* 801EA190  38 15 01 DC */	addi r0, r21, 0x1dc
/* 801EA194  7C 7F 01 2E */	stwx r3, r31, r0
/* 801EA198  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801EA19C  7C D8 B2 14 */	add r6, r24, r22
/* 801EA1A0  80 A6 00 00 */	lwz r5, 0(r6)
/* 801EA1A4  80 C6 00 04 */	lwz r6, 4(r6)
/* 801EA1A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA1AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EA1B0  7D 89 03 A6 */	mtctr r12
/* 801EA1B4  4E 80 04 21 */	bctrl 
/* 801EA1B8  38 00 00 00 */	li r0, 0
/* 801EA1BC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801EA1C0  38 15 01 DC */	addi r0, r21, 0x1dc
/* 801EA1C4  7C 7F 00 2E */	lwzx r3, r31, r0
/* 801EA1C8  38 80 00 40 */	li r4, 0x40
/* 801EA1CC  38 B3 00 2D */	addi r5, r19, 0x2d
/* 801EA1D0  4C C6 31 82 */	crclr 6
/* 801EA1D4  48 11 65 79 */	bl setString__10J2DTextBoxFsPCce
/* 801EA1D8  4B E2 A8 19 */	bl mDoExt_getMesgFont__Fv
/* 801EA1DC  7C 64 1B 78 */	mr r4, r3
/* 801EA1E0  38 15 01 DC */	addi r0, r21, 0x1dc
/* 801EA1E4  7C 7F 00 2E */	lwzx r3, r31, r0
/* 801EA1E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA1EC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801EA1F0  7D 89 03 A6 */	mtctr r12
/* 801EA1F4  4E 80 04 21 */	bctrl 
/* 801EA1F8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801EA1FC  38 80 04 D3 */	li r4, 0x4d3
/* 801EA200  38 15 01 DC */	addi r0, r21, 0x1dc
/* 801EA204  7C BF 00 2E */	lwzx r5, r31, r0
/* 801EA208  38 C0 00 00 */	li r6, 0
/* 801EA20C  38 E0 00 00 */	li r7, 0
/* 801EA210  39 00 00 00 */	li r8, 0
/* 801EA214  39 20 00 00 */	li r9, 0
/* 801EA218  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA21C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EA220  7D 89 03 A6 */	mtctr r12
/* 801EA224  4E 80 04 21 */	bctrl 
/* 801EA228  3A 94 00 01 */	addi r20, r20, 1
/* 801EA22C  2C 14 00 05 */	cmpwi r20, 5
/* 801EA230  3A B5 00 04 */	addi r21, r21, 4
/* 801EA234  3A D6 00 08 */	addi r22, r22, 8
/* 801EA238  41 80 FF 38 */	blt lbl_801EA170
/* 801EA23C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801EA240  48 0E 45 45 */	bl getTotalFreeSize__7JKRHeapFv
/* 801EA244  80 7B 5D 30 */	lwz r3, 0x5d30(r27)
/* 801EA248  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801EA24C  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801EA250  3C A0 80 39 */	lis r5, d_menu_d_menu_ring__stringBase0@ha /* 0x803978C8@ha */
/* 801EA254  38 A5 78 C8 */	addi r5, r5, d_menu_d_menu_ring__stringBase0@l /* 0x803978C8@l */
/* 801EA258  38 A5 00 2E */	addi r5, r5, 0x2e
/* 801EA25C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA260  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801EA264  7D 89 03 A6 */	mtctr r12
/* 801EA268  4E 80 04 21 */	bctrl 
/* 801EA26C  7C 73 1B 78 */	mr r19, r3
/* 801EA270  38 60 01 50 */	li r3, 0x150
/* 801EA274  48 0E 49 D9 */	bl __nw__FUl
/* 801EA278  7C 60 1B 79 */	or. r0, r3, r3
/* 801EA27C  41 82 00 10 */	beq lbl_801EA28C
/* 801EA280  7E 64 9B 78 */	mr r4, r19
/* 801EA284  48 11 24 85 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801EA288  7C 60 1B 78 */	mr r0, r3
lbl_801EA28C:
/* 801EA28C  90 1F 01 B8 */	stw r0, 0x1b8(r31)
/* 801EA290  38 60 00 00 */	li r3, 0
/* 801EA294  98 61 00 18 */	stb r3, 0x18(r1)
/* 801EA298  98 61 00 19 */	stb r3, 0x19(r1)
/* 801EA29C  98 61 00 1A */	stb r3, 0x1a(r1)
/* 801EA2A0  38 00 00 FF */	li r0, 0xff
/* 801EA2A4  98 01 00 1B */	stb r0, 0x1b(r1)
/* 801EA2A8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801EA2AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801EA2B0  98 61 00 20 */	stb r3, 0x20(r1)
/* 801EA2B4  98 61 00 21 */	stb r3, 0x21(r1)
/* 801EA2B8  98 61 00 22 */	stb r3, 0x22(r1)
/* 801EA2BC  98 61 00 23 */	stb r3, 0x23(r1)
/* 801EA2C0  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801EA2C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EA2C8  80 7F 01 B8 */	lwz r3, 0x1b8(r31)
/* 801EA2CC  38 81 00 24 */	addi r4, r1, 0x24
/* 801EA2D0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801EA2D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA2D8  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801EA2DC  7D 89 03 A6 */	mtctr r12
/* 801EA2E0  4E 80 04 21 */	bctrl 
/* 801EA2E4  80 7F 01 B8 */	lwz r3, 0x1b8(r31)
/* 801EA2E8  38 80 00 00 */	li r4, 0
/* 801EA2EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA2F0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801EA2F4  7D 89 03 A6 */	mtctr r12
/* 801EA2F8  4E 80 04 21 */	bctrl 
/* 801EA2FC  38 60 01 18 */	li r3, 0x118
/* 801EA300  48 0E 49 4D */	bl __nw__FUl
/* 801EA304  7C 60 1B 79 */	or. r0, r3, r3
/* 801EA308  41 82 00 0C */	beq lbl_801EA314
/* 801EA30C  48 10 E1 8D */	bl __ct__9J2DScreenFv
/* 801EA310  7C 60 1B 78 */	mr r0, r3
lbl_801EA314:
/* 801EA314  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 801EA318  38 7F 03 78 */	addi r3, r31, 0x378
/* 801EA31C  80 9F 00 04 */	lwz r4, 4(r31)
/* 801EA320  80 BF 00 5C */	lwz r5, 0x5c(r31)
/* 801EA324  3C C0 80 39 */	lis r6, d_menu_d_menu_ring__stringBase0@ha /* 0x803978C8@ha */
/* 801EA328  38 C6 78 C8 */	addi r6, r6, d_menu_d_menu_ring__stringBase0@l /* 0x803978C8@l */
/* 801EA32C  38 C6 00 3E */	addi r6, r6, 0x3e
/* 801EA330  3C E0 00 02 */	lis r7, 2
/* 801EA334  81 1C 5C E8 */	lwz r8, 0x5ce8(r28)
/* 801EA338  48 06 AE 4D */	bl dPaneClass_setPriority__FPPvP7JKRHeapP9J2DScreenPCcUlP10JKRArchive
/* 801EA33C  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801EA340  48 06 AD A9 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801EA344  38 60 00 1C */	li r3, 0x1c
/* 801EA348  48 0E 49 05 */	bl __nw__FUl
/* 801EA34C  7C 60 1B 79 */	or. r0, r3, r3
/* 801EA350  41 82 00 24 */	beq lbl_801EA374
/* 801EA354  80 9F 00 5C */	lwz r4, 0x5c(r31)
/* 801EA358  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801EA35C  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801EA360  38 A0 00 6E */	li r5, 0x6e
/* 801EA364  38 E0 00 02 */	li r7, 2
/* 801EA368  39 00 00 00 */	li r8, 0
/* 801EA36C  48 06 B0 91 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801EA370  7C 60 1B 78 */	mr r0, r3
lbl_801EA374:
/* 801EA374  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801EA378  38 60 01 18 */	li r3, 0x118
/* 801EA37C  48 0E 48 D1 */	bl __nw__FUl
/* 801EA380  7C 60 1B 79 */	or. r0, r3, r3
/* 801EA384  41 82 00 0C */	beq lbl_801EA390
/* 801EA388  48 10 E1 11 */	bl __ct__9J2DScreenFv
/* 801EA38C  7C 60 1B 78 */	mr r0, r3
lbl_801EA390:
/* 801EA390  90 1F 00 64 */	stw r0, 0x64(r31)
/* 801EA394  38 7F 03 7C */	addi r3, r31, 0x37c
/* 801EA398  80 9F 00 04 */	lwz r4, 4(r31)
/* 801EA39C  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 801EA3A0  3C C0 80 39 */	lis r6, d_menu_d_menu_ring__stringBase0@ha /* 0x803978C8@ha */
/* 801EA3A4  38 C6 78 C8 */	addi r6, r6, d_menu_d_menu_ring__stringBase0@l /* 0x803978C8@l */
/* 801EA3A8  38 C6 00 64 */	addi r6, r6, 0x64
/* 801EA3AC  3C E0 00 02 */	lis r7, 2
/* 801EA3B0  81 1C 5C E8 */	lwz r8, 0x5ce8(r28)
/* 801EA3B4  48 06 AD D1 */	bl dPaneClass_setPriority__FPPvP7JKRHeapP9J2DScreenPCcUlP10JKRArchive
/* 801EA3B8  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801EA3BC  48 06 AD 2D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801EA3C0  38 60 00 1C */	li r3, 0x1c
/* 801EA3C4  48 0E 48 89 */	bl __nw__FUl
/* 801EA3C8  7C 60 1B 79 */	or. r0, r3, r3
/* 801EA3CC  41 82 00 28 */	beq lbl_801EA3F4
/* 801EA3D0  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 801EA3D4  3C A0 65 72 */	lis r5, 0x6572 /* 0x65725F6E@ha */
/* 801EA3D8  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x65725F6E@l */
/* 801EA3DC  3C A0 63 65 */	lis r5, 0x6365 /* 0x63656E74@ha */
/* 801EA3E0  38 A5 6E 74 */	addi r5, r5, 0x6E74 /* 0x63656E74@l */
/* 801EA3E4  38 E0 00 02 */	li r7, 2
/* 801EA3E8  39 00 00 00 */	li r8, 0
/* 801EA3EC  48 06 B0 11 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801EA3F0  7C 60 1B 78 */	mr r0, r3
lbl_801EA3F4:
/* 801EA3F4  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801EA3F8  38 60 00 6C */	li r3, 0x6c
/* 801EA3FC  48 0E 48 51 */	bl __nw__FUl
/* 801EA400  7C 60 1B 79 */	or. r0, r3, r3
/* 801EA404  41 82 00 28 */	beq lbl_801EA42C
/* 801EA408  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 801EA40C  3C A0 65 6C */	lis r5, 0x656C /* 0x656C5F6E@ha */
/* 801EA410  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x656C5F6E@l */
/* 801EA414  3C A0 00 6C */	lis r5, 0x006C /* 0x006C6162@ha */
/* 801EA418  38 A5 61 62 */	addi r5, r5, 0x6162 /* 0x006C6162@l */
/* 801EA41C  38 E0 00 01 */	li r7, 1
/* 801EA420  39 00 00 00 */	li r8, 0
/* 801EA424  48 06 95 61 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801EA428  7C 60 1B 78 */	mr r0, r3
lbl_801EA42C:
/* 801EA42C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 801EA430  38 60 00 6C */	li r3, 0x6c
/* 801EA434  48 0E 48 19 */	bl __nw__FUl
/* 801EA438  7C 60 1B 79 */	or. r0, r3, r3
/* 801EA43C  41 82 00 28 */	beq lbl_801EA464
/* 801EA440  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 801EA444  3C A0 6C 65 */	lis r5, 0x6C65 /* 0x6C655F6E@ha */
/* 801EA448  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6C655F6E@l */
/* 801EA44C  3C A0 63 69 */	lis r5, 0x6369 /* 0x63697263@ha */
/* 801EA450  38 A5 72 63 */	addi r5, r5, 0x7263 /* 0x63697263@l */
/* 801EA454  38 E0 00 02 */	li r7, 2
/* 801EA458  39 00 00 00 */	li r8, 0
/* 801EA45C  48 06 95 29 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801EA460  7C 60 1B 78 */	mr r0, r3
lbl_801EA464:
/* 801EA464  90 1F 00 50 */	stw r0, 0x50(r31)
/* 801EA468  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801EA46C  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F6E31@ha */
/* 801EA470  38 C4 6E 31 */	addi r6, r4, 0x6E31 /* 0x6D5F6E31@l */
/* 801EA474  3C 80 66 69 */	lis r4, 0x6669 /* 0x66697465@ha */
/* 801EA478  38 A4 74 65 */	addi r5, r4, 0x7465 /* 0x66697465@l */
/* 801EA47C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA480  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EA484  7D 89 03 A6 */	mtctr r12
/* 801EA488  4E 80 04 21 */	bctrl 
/* 801EA48C  90 61 00 28 */	stw r3, 0x28(r1)
/* 801EA490  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801EA494  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F6E32@ha */
/* 801EA498  38 C4 6E 32 */	addi r6, r4, 0x6E32 /* 0x6D5F6E32@l */
/* 801EA49C  3C 80 66 69 */	lis r4, 0x6669 /* 0x66697465@ha */
/* 801EA4A0  38 A4 74 65 */	addi r5, r4, 0x7465 /* 0x66697465@l */
/* 801EA4A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA4A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EA4AC  7D 89 03 A6 */	mtctr r12
/* 801EA4B0  4E 80 04 21 */	bctrl 
/* 801EA4B4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 801EA4B8  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801EA4BC  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F6E33@ha */
/* 801EA4C0  38 C4 6E 33 */	addi r6, r4, 0x6E33 /* 0x6D5F6E33@l */
/* 801EA4C4  3C 80 66 69 */	lis r4, 0x6669 /* 0x66697465@ha */
/* 801EA4C8  38 A4 74 65 */	addi r5, r4, 0x7465 /* 0x66697465@l */
/* 801EA4CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA4D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EA4D4  7D 89 03 A6 */	mtctr r12
/* 801EA4D8  4E 80 04 21 */	bctrl 
/* 801EA4DC  90 61 00 30 */	stw r3, 0x30(r1)
/* 801EA4E0  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801EA4E4  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F6E34@ha */
/* 801EA4E8  38 C4 6E 34 */	addi r6, r4, 0x6E34 /* 0x6D5F6E34@l */
/* 801EA4EC  3C 80 66 69 */	lis r4, 0x6669 /* 0x66697465@ha */
/* 801EA4F0  38 A4 74 65 */	addi r5, r4, 0x7465 /* 0x66697465@l */
/* 801EA4F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA4F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EA4FC  7D 89 03 A6 */	mtctr r12
/* 801EA500  4E 80 04 21 */	bctrl 
/* 801EA504  90 61 00 34 */	stw r3, 0x34(r1)
/* 801EA508  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801EA50C  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3034@ha */
/* 801EA510  38 C4 30 34 */	addi r6, r4, 0x3034 /* 0x5F6E3034@l */
/* 801EA514  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801EA518  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801EA51C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA520  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EA524  7D 89 03 A6 */	mtctr r12
/* 801EA528  4E 80 04 21 */	bctrl 
/* 801EA52C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801EA530  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3035@ha */
/* 801EA534  38 C4 30 35 */	addi r6, r4, 0x3035 /* 0x5F6E3035@l */
/* 801EA538  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801EA53C  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801EA540  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA544  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EA548  7D 89 03 A6 */	mtctr r12
/* 801EA54C  4E 80 04 21 */	bctrl 
/* 801EA550  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801EA554  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3036@ha */
/* 801EA558  38 C4 30 36 */	addi r6, r4, 0x3036 /* 0x5F6E3036@l */
/* 801EA55C  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801EA560  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801EA564  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA568  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EA56C  7D 89 03 A6 */	mtctr r12
/* 801EA570  4E 80 04 21 */	bctrl 
/* 801EA574  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801EA578  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3037@ha */
/* 801EA57C  38 C4 30 37 */	addi r6, r4, 0x3037 /* 0x5F6E3037@l */
/* 801EA580  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801EA584  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801EA588  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA58C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EA590  7D 89 03 A6 */	mtctr r12
/* 801EA594  4E 80 04 21 */	bctrl 
/* 801EA598  3A 40 00 00 */	li r18, 0
/* 801EA59C  3A 80 00 00 */	li r20, 0
/* 801EA5A0  3A A1 00 28 */	addi r21, r1, 0x28
/* 801EA5A4  3C 60 80 39 */	lis r3, d_menu_d_menu_ring__stringBase0@ha /* 0x803978C8@ha */
/* 801EA5A8  3A 63 78 C8 */	addi r19, r3, d_menu_d_menu_ring__stringBase0@l /* 0x803978C8@l */
lbl_801EA5AC:
/* 801EA5AC  4B E2 A4 45 */	bl mDoExt_getMesgFont__Fv
/* 801EA5B0  7C 64 1B 78 */	mr r4, r3
/* 801EA5B4  7E D5 A0 2E */	lwzx r22, r21, r20
/* 801EA5B8  7E C3 B3 78 */	mr r3, r22
/* 801EA5BC  81 96 00 00 */	lwz r12, 0(r22)
/* 801EA5C0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801EA5C4  7D 89 03 A6 */	mtctr r12
/* 801EA5C8  4E 80 04 21 */	bctrl 
/* 801EA5CC  7E C3 B3 78 */	mr r3, r22
/* 801EA5D0  38 80 00 40 */	li r4, 0x40
/* 801EA5D4  38 B3 00 2D */	addi r5, r19, 0x2d
/* 801EA5D8  4C C6 31 82 */	crclr 6
/* 801EA5DC  48 11 61 71 */	bl setString__10J2DTextBoxFsPCce
/* 801EA5E0  3A 52 00 01 */	addi r18, r18, 1
/* 801EA5E4  2C 12 00 04 */	cmpwi r18, 4
/* 801EA5E8  3A 94 00 04 */	addi r20, r20, 4
/* 801EA5EC  41 80 FF C0 */	blt lbl_801EA5AC
/* 801EA5F0  7F E3 FB 78 */	mr r3, r31
/* 801EA5F4  48 00 4B 29 */	bl textCentering__12dMenu_Ring_cFv
/* 801EA5F8  38 60 00 B8 */	li r3, 0xb8
/* 801EA5FC  48 0E 46 51 */	bl __nw__FUl
/* 801EA600  7C 60 1B 79 */	or. r0, r3, r3
/* 801EA604  41 82 00 20 */	beq lbl_801EA624
/* 801EA608  38 80 00 02 */	li r4, 2
/* 801EA60C  3C A0 80 43 */	lis r5, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EA610  38 A5 FA FC */	addi r5, r5, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EA614  C0 25 00 28 */	lfs f1, 0x28(r5)
/* 801EA618  80 BB 5D 30 */	lwz r5, 0x5d30(r27)
/* 801EA61C  4B FA 9C 05 */	bl __ct__16dSelect_cursor_cFUcfP10JKRArchive
/* 801EA620  7C 60 1B 78 */	mr r0, r3
lbl_801EA624:
/* 801EA624  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801EA628  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801EA62C  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EA630  4B FA AC 71 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801EA634  38 60 00 E8 */	li r3, 0xe8
/* 801EA638  48 0E 46 15 */	bl __nw__FUl
/* 801EA63C  7C 60 1B 79 */	or. r0, r3, r3
/* 801EA640  41 82 00 1C */	beq lbl_801EA65C
/* 801EA644  80 9F 00 04 */	lwz r4, 4(r31)
/* 801EA648  80 BC 5C E8 */	lwz r5, 0x5ce8(r28)
/* 801EA64C  7F 46 D3 78 */	mr r6, r26
/* 801EA650  38 E0 00 01 */	li r7, 1
/* 801EA654  4B FF 01 01 */	bl __ct__19dMenu_ItemExplain_cFP10JKRExpHeapP10JKRArchiveP9STControlb
/* 801EA658  7C 60 1B 78 */	mr r0, r3
lbl_801EA65C:
/* 801EA65C  90 1F 03 70 */	stw r0, 0x370(r31)
/* 801EA660  7F E3 FB 78 */	mr r3, r31
/* 801EA664  48 00 12 FD */	bl setRotate__12dMenu_Ring_cFv
/* 801EA668  C0 3F 03 EC */	lfs f1, 0x3ec(r31)
/* 801EA66C  C0 1F 05 6C */	lfs f0, 0x56c(r31)
/* 801EA670  EC 41 00 2A */	fadds f2, f1, f0
/* 801EA674  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801EA678  C0 3F 03 8C */	lfs f1, 0x38c(r31)
/* 801EA67C  C0 1F 05 68 */	lfs f0, 0x568(r31)
/* 801EA680  EC 01 00 2A */	fadds f0, f1, f0
/* 801EA684  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 801EA688  D0 43 00 5C */	stfs f2, 0x5c(r3)
/* 801EA68C  7F A3 EB 78 */	mr r3, r29
/* 801EA690  88 9F 06 90 */	lbz r4, 0x690(r31)
/* 801EA694  38 A0 00 00 */	li r5, 0
/* 801EA698  4B E4 89 99 */	bl getItem__17dSv_player_item_cCFib
/* 801EA69C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EA6A0  28 00 00 FF */	cmplwi r0, 0xff
/* 801EA6A4  41 82 00 24 */	beq lbl_801EA6C8
/* 801EA6A8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801EA6AC  C0 3F 04 4C */	lfs f1, 0x44c(r31)
/* 801EA6B0  C0 5F 04 AC */	lfs f2, 0x4ac(r31)
/* 801EA6B4  C0 62 A9 A8 */	lfs f3, lit_4308(r2)
/* 801EA6B8  C0 82 A9 AC */	lfs f4, lit_4309(r2)
/* 801EA6BC  C0 A2 A9 B0 */	lfs f5, lit_4310(r2)
/* 801EA6C0  4B FA AA F1 */	bl setParam__16dSelect_cursor_cFfffff
/* 801EA6C4  48 00 00 20 */	b lbl_801EA6E4
lbl_801EA6C8:
/* 801EA6C8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801EA6CC  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EA6D0  FC 40 08 90 */	fmr f2, f1
/* 801EA6D4  C0 62 A9 A8 */	lfs f3, lit_4308(r2)
/* 801EA6D8  C0 82 A9 AC */	lfs f4, lit_4309(r2)
/* 801EA6DC  C0 A2 A9 B0 */	lfs f5, lit_4310(r2)
/* 801EA6E0  4B FA AA D1 */	bl setParam__16dSelect_cursor_cFfffff
lbl_801EA6E4:
/* 801EA6E4  7F E3 FB 78 */	mr r3, r31
/* 801EA6E8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 801EA6EC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 801EA6F0  39 61 00 90 */	addi r11, r1, 0x90
/* 801EA6F4  48 17 7B 09 */	bl _restgpr_18
/* 801EA6F8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801EA6FC  7C 08 03 A6 */	mtlr r0
/* 801EA700  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801EA704  4E 80 00 20 */	blr 
