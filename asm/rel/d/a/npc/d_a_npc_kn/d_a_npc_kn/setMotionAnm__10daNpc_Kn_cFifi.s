lbl_80A3A7C0:
/* 80A3A7C0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80A3A7C4  7C 08 02 A6 */	mflr r0
/* 80A3A7C8  90 01 00 94 */	stw r0, 0x94(r1)
/* 80A3A7CC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80A3A7D0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80A3A7D4  39 61 00 80 */	addi r11, r1, 0x80
/* 80A3A7D8  4B 92 79 F9 */	bl _savegpr_26
/* 80A3A7DC  7C 7A 1B 78 */	mr r26, r3
/* 80A3A7E0  7C 9B 23 78 */	mr r27, r4
/* 80A3A7E4  FF E0 08 90 */	fmr f31, f1
/* 80A3A7E8  7C BC 2B 78 */	mr r28, r5
/* 80A3A7EC  3B E0 00 00 */	li r31, 0
/* 80A3A7F0  3B C0 00 00 */	li r30, 0
/* 80A3A7F4  3B A0 00 00 */	li r29, 0
/* 80A3A7F8  80 63 0D CC */	lwz r3, 0xdcc(r3)
/* 80A3A7FC  38 00 FC 30 */	li r0, -976
/* 80A3A800  7C 60 00 38 */	and r0, r3, r0
/* 80A3A804  90 1A 0D CC */	stw r0, 0xdcc(r26)
/* 80A3A808  80 7A 05 B0 */	lwz r3, 0x5b0(r26)
/* 80A3A80C  1C 1B 00 1C */	mulli r0, r27, 0x1c
/* 80A3A810  38 A1 00 04 */	addi r5, r1, 4
/* 80A3A814  7C 83 02 14 */	add r4, r3, r0
/* 80A3A818  38 00 00 03 */	li r0, 3
/* 80A3A81C  7C 09 03 A6 */	mtctr r0
/* 80A3A820  38 84 FF FC */	addi r4, r4, -4
lbl_80A3A824:
/* 80A3A824  80 64 00 04 */	lwz r3, 4(r4)
/* 80A3A828  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A3A82C  90 65 00 04 */	stw r3, 4(r5)
/* 80A3A830  94 05 00 08 */	stwu r0, 8(r5)
/* 80A3A834  42 00 FF F0 */	bdnz lbl_80A3A824
/* 80A3A838  80 04 00 04 */	lwz r0, 4(r4)
/* 80A3A83C  90 05 00 04 */	stw r0, 4(r5)
/* 80A3A840  38 61 00 24 */	addi r3, r1, 0x24
/* 80A3A844  7F 44 D3 78 */	mr r4, r26
/* 80A3A848  38 A1 00 08 */	addi r5, r1, 8
/* 80A3A84C  81 9A 0E 40 */	lwz r12, 0xe40(r26)
/* 80A3A850  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 80A3A854  7D 89 03 A6 */	mtctr r12
/* 80A3A858  4E 80 04 21 */	bctrl 
/* 80A3A85C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80A3A860  38 81 00 20 */	addi r4, r1, 0x20
/* 80A3A864  38 00 00 03 */	li r0, 3
/* 80A3A868  7C 09 03 A6 */	mtctr r0
lbl_80A3A86C:
/* 80A3A86C  80 64 00 04 */	lwz r3, 4(r4)
/* 80A3A870  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A3A874  90 65 00 04 */	stw r3, 4(r5)
/* 80A3A878  94 05 00 08 */	stwu r0, 8(r5)
/* 80A3A87C  42 00 FF F0 */	bdnz lbl_80A3A86C
/* 80A3A880  80 04 00 04 */	lwz r0, 4(r4)
/* 80A3A884  90 05 00 04 */	stw r0, 4(r5)
/* 80A3A888  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 80A3A88C  2C 05 FF FF */	cmpwi r5, -1
/* 80A3A890  41 82 00 20 */	beq lbl_80A3A8B0
/* 80A3A894  7F 43 D3 78 */	mr r3, r26
/* 80A3A898  80 9A 05 B8 */	lwz r4, 0x5b8(r26)
/* 80A3A89C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80A3A8A0  54 00 10 3A */	slwi r0, r0, 2
/* 80A3A8A4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A3A8A8  4B FF DC E5 */	bl getTrnsfrmKeyAnmP__10daNpc_Kn_cFPCci
/* 80A3A8AC  7C 7F 1B 78 */	mr r31, r3
lbl_80A3A8B0:
/* 80A3A8B0  28 1F 00 00 */	cmplwi r31, 0
/* 80A3A8B4  41 82 00 84 */	beq lbl_80A3A938
/* 80A3A8B8  2C 1C 00 00 */	cmpwi r28, 0
/* 80A3A8BC  41 82 00 30 */	beq lbl_80A3A8EC
/* 80A3A8C0  80 7A 05 BC */	lwz r3, 0x5bc(r26)
/* 80A3A8C4  80 03 00 08 */	lwz r0, 8(r3)
/* 80A3A8C8  7C 1F 00 40 */	cmplw r31, r0
/* 80A3A8CC  40 82 00 20 */	bne lbl_80A3A8EC
/* 80A3A8D0  80 1A 0D CC */	lwz r0, 0xdcc(r26)
/* 80A3A8D4  60 00 00 40 */	ori r0, r0, 0x40
/* 80A3A8D8  90 1A 0D CC */	stw r0, 0xdcc(r26)
/* 80A3A8DC  38 00 00 00 */	li r0, 0
/* 80A3A8E0  B0 1A 0E 26 */	sth r0, 0xe26(r26)
/* 80A3A8E4  3B A0 00 01 */	li r29, 1
/* 80A3A8E8  48 00 00 50 */	b lbl_80A3A938
lbl_80A3A8EC:
/* 80A3A8EC  7F 43 D3 78 */	mr r3, r26
/* 80A3A8F0  7F E4 FB 78 */	mr r4, r31
/* 80A3A8F4  3C A0 80 A4 */	lis r5, lit_4327@ha /* 0x80A4090C@ha */
/* 80A3A8F8  C0 25 09 0C */	lfs f1, lit_4327@l(r5)  /* 0x80A4090C@l */
/* 80A3A8FC  FC 40 F8 90 */	fmr f2, f31
/* 80A3A900  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 80A3A904  38 C0 00 00 */	li r6, 0
/* 80A3A908  38 E0 FF FF */	li r7, -1
/* 80A3A90C  4B FF DD 79 */	bl setMcaMorfAnm__10daNpc_Kn_cFP18J3DAnmTransformKeyffiii
/* 80A3A910  2C 03 00 00 */	cmpwi r3, 0
/* 80A3A914  41 82 00 20 */	beq lbl_80A3A934
/* 80A3A918  93 7A 15 A8 */	stw r27, 0x15a8(r26)
/* 80A3A91C  80 1A 0D CC */	lwz r0, 0xdcc(r26)
/* 80A3A920  60 00 00 41 */	ori r0, r0, 0x41
/* 80A3A924  90 1A 0D CC */	stw r0, 0xdcc(r26)
/* 80A3A928  38 00 00 00 */	li r0, 0
/* 80A3A92C  B0 1A 0E 26 */	sth r0, 0xe26(r26)
/* 80A3A930  48 00 00 08 */	b lbl_80A3A938
lbl_80A3A934:
/* 80A3A934  3B E0 00 00 */	li r31, 0
lbl_80A3A938:
/* 80A3A938  28 1F 00 00 */	cmplwi r31, 0
/* 80A3A93C  40 82 00 18 */	bne lbl_80A3A954
/* 80A3A940  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80A3A944  2C 00 FF FF */	cmpwi r0, -1
/* 80A3A948  41 82 00 0C */	beq lbl_80A3A954
/* 80A3A94C  38 60 00 00 */	li r3, 0
/* 80A3A950  48 00 00 E8 */	b lbl_80A3AA38
lbl_80A3A954:
/* 80A3A954  38 00 00 00 */	li r0, 0
/* 80A3A958  98 1A 0E 30 */	stb r0, 0xe30(r26)
/* 80A3A95C  98 1A 0E 31 */	stb r0, 0xe31(r26)
/* 80A3A960  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80A3A964  2C 1F FF FF */	cmpwi r31, -1
/* 80A3A968  41 82 00 34 */	beq lbl_80A3A99C
/* 80A3A96C  A8 01 00 58 */	lha r0, 0x58(r1)
/* 80A3A970  98 1A 0E 30 */	stb r0, 0xe30(r26)
/* 80A3A974  A8 01 00 5A */	lha r0, 0x5a(r1)
/* 80A3A978  98 1A 0E 31 */	stb r0, 0xe31(r26)
/* 80A3A97C  7F 43 D3 78 */	mr r3, r26
/* 80A3A980  80 9A 05 B8 */	lwz r4, 0x5b8(r26)
/* 80A3A984  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A3A988  54 00 10 3A */	slwi r0, r0, 2
/* 80A3A98C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A3A990  7F E5 FB 78 */	mr r5, r31
/* 80A3A994  4B FF DC 71 */	bl getTexSRTKeyAnmP__10daNpc_Kn_cFPCci
/* 80A3A998  7C 7E 1B 78 */	mr r30, r3
lbl_80A3A99C:
/* 80A3A99C  28 1E 00 00 */	cmplwi r30, 0
/* 80A3A9A0  41 82 00 5C */	beq lbl_80A3A9FC
/* 80A3A9A4  2C 1D 00 00 */	cmpwi r29, 0
/* 80A3A9A8  41 82 00 14 */	beq lbl_80A3A9BC
/* 80A3A9AC  80 1A 0D CC */	lwz r0, 0xdcc(r26)
/* 80A3A9B0  60 00 00 80 */	ori r0, r0, 0x80
/* 80A3A9B4  90 1A 0D CC */	stw r0, 0xdcc(r26)
/* 80A3A9B8  48 00 00 44 */	b lbl_80A3A9FC
lbl_80A3A9BC:
/* 80A3A9BC  80 7A 05 BC */	lwz r3, 0x5bc(r26)
/* 80A3A9C0  80 63 00 04 */	lwz r3, 4(r3)
/* 80A3A9C4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A3A9C8  7F 43 D3 78 */	mr r3, r26
/* 80A3A9CC  7F C4 F3 78 */	mr r4, r30
/* 80A3A9D0  3C C0 80 A4 */	lis r6, lit_4327@ha /* 0x80A4090C@ha */
/* 80A3A9D4  C0 26 09 0C */	lfs f1, lit_4327@l(r6)  /* 0x80A4090C@l */
/* 80A3A9D8  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 80A3A9DC  4B FF DD E1 */	bl setBtkAnm__10daNpc_Kn_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80A3A9E0  2C 03 00 00 */	cmpwi r3, 0
/* 80A3A9E4  41 82 00 14 */	beq lbl_80A3A9F8
/* 80A3A9E8  80 1A 0D CC */	lwz r0, 0xdcc(r26)
/* 80A3A9EC  60 00 00 82 */	ori r0, r0, 0x82
/* 80A3A9F0  90 1A 0D CC */	stw r0, 0xdcc(r26)
/* 80A3A9F4  48 00 00 08 */	b lbl_80A3A9FC
lbl_80A3A9F8:
/* 80A3A9F8  3B C0 00 00 */	li r30, 0
lbl_80A3A9FC:
/* 80A3A9FC  28 1E 00 00 */	cmplwi r30, 0
/* 80A3AA00  40 82 00 14 */	bne lbl_80A3AA14
/* 80A3AA04  2C 1F FF FF */	cmpwi r31, -1
/* 80A3AA08  41 82 00 0C */	beq lbl_80A3AA14
/* 80A3AA0C  38 60 00 00 */	li r3, 0
/* 80A3AA10  48 00 00 28 */	b lbl_80A3AA38
lbl_80A3AA14:
/* 80A3AA14  7F 43 D3 78 */	mr r3, r26
/* 80A3AA18  7F 64 DB 78 */	mr r4, r27
/* 80A3AA1C  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 80A3AA20  FC 20 F8 90 */	fmr f1, f31
/* 80A3AA24  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 80A3AA28  81 9A 0E 40 */	lwz r12, 0xe40(r26)
/* 80A3AA2C  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 80A3AA30  7D 89 03 A6 */	mtctr r12
/* 80A3AA34  4E 80 04 21 */	bctrl 
lbl_80A3AA38:
/* 80A3AA38  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80A3AA3C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80A3AA40  39 61 00 80 */	addi r11, r1, 0x80
/* 80A3AA44  4B 92 77 D9 */	bl _restgpr_26
/* 80A3AA48  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80A3AA4C  7C 08 03 A6 */	mtlr r0
/* 80A3AA50  38 21 00 90 */	addi r1, r1, 0x90
/* 80A3AA54  4E 80 00 20 */	blr 
