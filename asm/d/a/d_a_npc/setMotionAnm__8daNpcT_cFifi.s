lbl_8014A628:
/* 8014A628  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8014A62C  7C 08 02 A6 */	mflr r0
/* 8014A630  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8014A634  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8014A638  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8014A63C  39 61 00 90 */	addi r11, r1, 0x90
/* 8014A640  48 21 7B 91 */	bl _savegpr_26
/* 8014A644  7C 7A 1B 78 */	mr r26, r3
/* 8014A648  7C 9B 23 78 */	mr r27, r4
/* 8014A64C  FF E0 08 90 */	fmr f31, f1
/* 8014A650  7C BC 2B 78 */	mr r28, r5
/* 8014A654  3B E0 00 00 */	li r31, 0
/* 8014A658  3B C0 00 00 */	li r30, 0
/* 8014A65C  3B A0 00 00 */	li r29, 0
/* 8014A660  80 63 0D 98 */	lwz r3, 0xd98(r3)
/* 8014A664  38 00 FC 30 */	li r0, -976
/* 8014A668  7C 60 00 38 */	and r0, r3, r0
/* 8014A66C  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 8014A670  80 7A 05 6C */	lwz r3, 0x56c(r26)
/* 8014A674  1C 1B 00 1C */	mulli r0, r27, 0x1c
/* 8014A678  38 A1 00 14 */	addi r5, r1, 0x14
/* 8014A67C  7C 83 02 14 */	add r4, r3, r0
/* 8014A680  38 00 00 03 */	li r0, 3
/* 8014A684  7C 09 03 A6 */	mtctr r0
/* 8014A688  38 84 FF FC */	addi r4, r4, -4
lbl_8014A68C:
/* 8014A68C  80 64 00 04 */	lwz r3, 4(r4)
/* 8014A690  84 04 00 08 */	lwzu r0, 8(r4)
/* 8014A694  90 65 00 04 */	stw r3, 4(r5)
/* 8014A698  94 05 00 08 */	stwu r0, 8(r5)
/* 8014A69C  42 00 FF F0 */	bdnz lbl_8014A68C
/* 8014A6A0  80 04 00 04 */	lwz r0, 4(r4)
/* 8014A6A4  90 05 00 04 */	stw r0, 4(r5)
/* 8014A6A8  38 61 00 34 */	addi r3, r1, 0x34
/* 8014A6AC  7F 44 D3 78 */	mr r4, r26
/* 8014A6B0  38 A1 00 18 */	addi r5, r1, 0x18
/* 8014A6B4  81 9A 0E 3C */	lwz r12, 0xe3c(r26)
/* 8014A6B8  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 8014A6BC  7D 89 03 A6 */	mtctr r12
/* 8014A6C0  4E 80 04 21 */	bctrl 
/* 8014A6C4  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8014A6C8  38 81 00 30 */	addi r4, r1, 0x30
/* 8014A6CC  38 00 00 03 */	li r0, 3
/* 8014A6D0  7C 09 03 A6 */	mtctr r0
lbl_8014A6D4:
/* 8014A6D4  80 64 00 04 */	lwz r3, 4(r4)
/* 8014A6D8  84 04 00 08 */	lwzu r0, 8(r4)
/* 8014A6DC  90 65 00 04 */	stw r3, 4(r5)
/* 8014A6E0  94 05 00 08 */	stwu r0, 8(r5)
/* 8014A6E4  42 00 FF F0 */	bdnz lbl_8014A6D4
/* 8014A6E8  80 04 00 04 */	lwz r0, 4(r4)
/* 8014A6EC  90 05 00 04 */	stw r0, 4(r5)
/* 8014A6F0  80 61 00 50 */	lwz r3, 0x50(r1)
/* 8014A6F4  2C 03 FF FF */	cmpwi r3, -1
/* 8014A6F8  41 82 00 4C */	beq lbl_8014A744
/* 8014A6FC  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8014A700  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014A704  90 61 00 10 */	stw r3, 0x10(r1)
/* 8014A708  7F 43 D3 78 */	mr r3, r26
/* 8014A70C  38 81 00 10 */	addi r4, r1, 0x10
/* 8014A710  38 A1 00 14 */	addi r5, r1, 0x14
/* 8014A714  81 9A 0E 3C */	lwz r12, 0xe3c(r26)
/* 8014A718  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8014A71C  7D 89 03 A6 */	mtctr r12
/* 8014A720  4E 80 04 21 */	bctrl 
/* 8014A724  7F 43 D3 78 */	mr r3, r26
/* 8014A728  80 9A 05 74 */	lwz r4, 0x574(r26)
/* 8014A72C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014A730  54 00 10 3A */	slwi r0, r0, 2
/* 8014A734  7C 84 00 2E */	lwzx r4, r4, r0
/* 8014A738  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8014A73C  4B FF D9 59 */	bl getTrnsfrmKeyAnmP__8daNpcT_cFPCci
/* 8014A740  7C 7F 1B 78 */	mr r31, r3
lbl_8014A744:
/* 8014A744  28 1F 00 00 */	cmplwi r31, 0
/* 8014A748  41 82 00 7C */	beq lbl_8014A7C4
/* 8014A74C  2C 1C 00 00 */	cmpwi r28, 0
/* 8014A750  41 82 00 30 */	beq lbl_8014A780
/* 8014A754  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 8014A758  80 03 00 08 */	lwz r0, 8(r3)
/* 8014A75C  7C 1F 00 40 */	cmplw r31, r0
/* 8014A760  40 82 00 20 */	bne lbl_8014A780
/* 8014A764  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 8014A768  60 00 00 40 */	ori r0, r0, 0x40
/* 8014A76C  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 8014A770  38 00 00 00 */	li r0, 0
/* 8014A774  B0 1A 0E 1E */	sth r0, 0xe1e(r26)
/* 8014A778  3B A0 00 01 */	li r29, 1
/* 8014A77C  48 00 00 48 */	b lbl_8014A7C4
lbl_8014A780:
/* 8014A780  7F 43 D3 78 */	mr r3, r26
/* 8014A784  7F E4 FB 78 */	mr r4, r31
/* 8014A788  C0 22 99 DC */	lfs f1, lit_4140(r2)
/* 8014A78C  FC 40 F8 90 */	fmr f2, f31
/* 8014A790  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 8014A794  38 C0 00 00 */	li r6, 0
/* 8014A798  38 E0 FF FF */	li r7, -1
/* 8014A79C  4B FF DA 69 */	bl setMcaMorfAnm__8daNpcT_cFP18J3DAnmTransformKeyffiii
/* 8014A7A0  2C 03 00 00 */	cmpwi r3, 0
/* 8014A7A4  41 82 00 1C */	beq lbl_8014A7C0
/* 8014A7A8  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 8014A7AC  60 00 00 41 */	ori r0, r0, 0x41
/* 8014A7B0  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 8014A7B4  38 00 00 00 */	li r0, 0
/* 8014A7B8  B0 1A 0E 1E */	sth r0, 0xe1e(r26)
/* 8014A7BC  48 00 00 08 */	b lbl_8014A7C4
lbl_8014A7C0:
/* 8014A7C0  3B E0 00 00 */	li r31, 0
lbl_8014A7C4:
/* 8014A7C4  28 1F 00 00 */	cmplwi r31, 0
/* 8014A7C8  40 82 00 18 */	bne lbl_8014A7E0
/* 8014A7CC  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8014A7D0  2C 00 FF FF */	cmpwi r0, -1
/* 8014A7D4  41 82 00 0C */	beq lbl_8014A7E0
/* 8014A7D8  38 60 00 00 */	li r3, 0
/* 8014A7DC  48 00 01 0C */	b lbl_8014A8E8
lbl_8014A7E0:
/* 8014A7E0  38 00 00 00 */	li r0, 0
/* 8014A7E4  98 1A 0E 29 */	stb r0, 0xe29(r26)
/* 8014A7E8  98 1A 0E 2A */	stb r0, 0xe2a(r26)
/* 8014A7EC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8014A7F0  2C 1F FF FF */	cmpwi r31, -1
/* 8014A7F4  41 82 00 5C */	beq lbl_8014A850
/* 8014A7F8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8014A7FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8014A800  93 E1 00 08 */	stw r31, 8(r1)
/* 8014A804  7F 43 D3 78 */	mr r3, r26
/* 8014A808  38 81 00 08 */	addi r4, r1, 8
/* 8014A80C  38 A1 00 0C */	addi r5, r1, 0xc
/* 8014A810  81 9A 0E 3C */	lwz r12, 0xe3c(r26)
/* 8014A814  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8014A818  7D 89 03 A6 */	mtctr r12
/* 8014A81C  4E 80 04 21 */	bctrl 
/* 8014A820  A8 01 00 68 */	lha r0, 0x68(r1)
/* 8014A824  98 1A 0E 29 */	stb r0, 0xe29(r26)
/* 8014A828  A8 01 00 6A */	lha r0, 0x6a(r1)
/* 8014A82C  98 1A 0E 2A */	stb r0, 0xe2a(r26)
/* 8014A830  7F 43 D3 78 */	mr r3, r26
/* 8014A834  80 9A 05 74 */	lwz r4, 0x574(r26)
/* 8014A838  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8014A83C  54 00 10 3A */	slwi r0, r0, 2
/* 8014A840  7C 84 00 2E */	lwzx r4, r4, r0
/* 8014A844  80 A1 00 08 */	lwz r5, 8(r1)
/* 8014A848  4B FF D8 C5 */	bl getTexSRTKeyAnmP__8daNpcT_cFPCci
/* 8014A84C  7C 7E 1B 78 */	mr r30, r3
lbl_8014A850:
/* 8014A850  28 1E 00 00 */	cmplwi r30, 0
/* 8014A854  41 82 00 58 */	beq lbl_8014A8AC
/* 8014A858  2C 1D 00 00 */	cmpwi r29, 0
/* 8014A85C  41 82 00 14 */	beq lbl_8014A870
/* 8014A860  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 8014A864  60 00 00 80 */	ori r0, r0, 0x80
/* 8014A868  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 8014A86C  48 00 00 40 */	b lbl_8014A8AC
lbl_8014A870:
/* 8014A870  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 8014A874  80 63 00 04 */	lwz r3, 4(r3)
/* 8014A878  80 A3 00 04 */	lwz r5, 4(r3)
/* 8014A87C  7F 43 D3 78 */	mr r3, r26
/* 8014A880  7F C4 F3 78 */	mr r4, r30
/* 8014A884  C0 22 99 DC */	lfs f1, lit_4140(r2)
/* 8014A888  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 8014A88C  4B FF DA AD */	bl setBtkAnm__8daNpcT_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 8014A890  2C 03 00 00 */	cmpwi r3, 0
/* 8014A894  41 82 00 14 */	beq lbl_8014A8A8
/* 8014A898  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 8014A89C  60 00 00 82 */	ori r0, r0, 0x82
/* 8014A8A0  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 8014A8A4  48 00 00 08 */	b lbl_8014A8AC
lbl_8014A8A8:
/* 8014A8A8  3B C0 00 00 */	li r30, 0
lbl_8014A8AC:
/* 8014A8AC  28 1E 00 00 */	cmplwi r30, 0
/* 8014A8B0  40 82 00 14 */	bne lbl_8014A8C4
/* 8014A8B4  2C 1F FF FF */	cmpwi r31, -1
/* 8014A8B8  41 82 00 0C */	beq lbl_8014A8C4
/* 8014A8BC  38 60 00 00 */	li r3, 0
/* 8014A8C0  48 00 00 28 */	b lbl_8014A8E8
lbl_8014A8C4:
/* 8014A8C4  7F 43 D3 78 */	mr r3, r26
/* 8014A8C8  7F 64 DB 78 */	mr r4, r27
/* 8014A8CC  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 8014A8D0  FC 20 F8 90 */	fmr f1, f31
/* 8014A8D4  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 8014A8D8  81 9A 0E 3C */	lwz r12, 0xe3c(r26)
/* 8014A8DC  81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 8014A8E0  7D 89 03 A6 */	mtctr r12
/* 8014A8E4  4E 80 04 21 */	bctrl 
lbl_8014A8E8:
/* 8014A8E8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8014A8EC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8014A8F0  39 61 00 90 */	addi r11, r1, 0x90
/* 8014A8F4  48 21 79 29 */	bl _restgpr_26
/* 8014A8F8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8014A8FC  7C 08 03 A6 */	mtlr r0
/* 8014A900  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8014A904  4E 80 00 20 */	blr 
