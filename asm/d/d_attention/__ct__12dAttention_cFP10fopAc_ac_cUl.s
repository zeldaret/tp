lbl_80070198:
/* 80070198  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007019C  7C 08 02 A6 */	mflr r0
/* 800701A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 800701A4  39 61 00 30 */	addi r11, r1, 0x30
/* 800701A8  48 2F 20 21 */	bl _savegpr_24
/* 800701AC  7C 7F 1B 78 */	mr r31, r3
/* 800701B0  7C 99 23 78 */	mr r25, r4
/* 800701B4  7C B8 2B 78 */	mr r24, r5
/* 800701B8  3C 60 80 3A */	lis r3, __vt__25mDoExt_McaMorfCallBack1_c@ha
/* 800701BC  38 03 71 E8 */	addi r0, r3, __vt__25mDoExt_McaMorfCallBack1_c@l
/* 800701C0  90 1F 00 08 */	stw r0, 8(r31)
/* 800701C4  3C 60 80 3B */	lis r3, __vt__19dAttDraw_CallBack_c@ha
/* 800701C8  38 03 9C 48 */	addi r0, r3, __vt__19dAttDraw_CallBack_c@l
/* 800701CC  90 1F 00 08 */	stw r0, 8(r31)
/* 800701D0  38 7F 00 28 */	addi r3, r31, 0x28
/* 800701D4  3C 80 80 03 */	lis r4, __ct__10dAttDraw_cFv@ha
/* 800701D8  38 84 07 F0 */	addi r4, r4, __ct__10dAttDraw_cFv@l
/* 800701DC  3C A0 80 03 */	lis r5, __dt__10dAttDraw_cFv@ha
/* 800701E0  38 A5 05 4C */	addi r5, r5, __dt__10dAttDraw_cFv@l
/* 800701E4  38 C0 01 78 */	li r6, 0x178
/* 800701E8  38 E0 00 02 */	li r7, 2
/* 800701EC  48 2F 1B 75 */	bl __construct_array
/* 800701F0  38 7F 03 38 */	addi r3, r31, 0x338
/* 800701F4  3C 80 80 03 */	lis r4, __ct__10dAttList_cFv@ha
/* 800701F8  38 84 05 0C */	addi r4, r4, __ct__10dAttList_cFv@l
/* 800701FC  3C A0 80 03 */	lis r5, __dt__10dAttList_cFv@ha
/* 80070200  38 A5 04 D0 */	addi r5, r5, __dt__10dAttList_cFv@l
/* 80070204  38 C0 00 14 */	li r6, 0x14
/* 80070208  38 E0 00 08 */	li r7, 8
/* 8007020C  48 2F 1B 55 */	bl __construct_array
/* 80070210  38 7F 03 E0 */	addi r3, r31, 0x3e0
/* 80070214  3C 80 80 03 */	lis r4, __ct__10dAttList_cFv@ha
/* 80070218  38 84 05 0C */	addi r4, r4, __ct__10dAttList_cFv@l
/* 8007021C  3C A0 80 03 */	lis r5, __dt__10dAttList_cFv@ha
/* 80070220  38 A5 04 D0 */	addi r5, r5, __dt__10dAttList_cFv@l
/* 80070224  38 C0 00 14 */	li r6, 0x14
/* 80070228  38 E0 00 04 */	li r7, 4
/* 8007022C  48 2F 1B 35 */	bl __construct_array
/* 80070230  38 7F 04 38 */	addi r3, r31, 0x438
/* 80070234  3C 80 80 03 */	lis r4, __ct__10dAttList_cFv@ha
/* 80070238  38 84 05 0C */	addi r4, r4, __ct__10dAttList_cFv@l
/* 8007023C  3C A0 80 03 */	lis r5, __dt__10dAttList_cFv@ha
/* 80070240  38 A5 04 D0 */	addi r5, r5, __dt__10dAttList_cFv@l
/* 80070244  38 C0 00 14 */	li r6, 0x14
/* 80070248  38 E0 00 04 */	li r7, 4
/* 8007024C  48 2F 1B 15 */	bl __construct_array
/* 80070250  3C 60 80 3B */	lis r3, __vt__11dAttParam_c@ha
/* 80070254  38 03 9C 60 */	addi r0, r3, __vt__11dAttParam_c@l
/* 80070258  90 1F 05 08 */	stw r0, 0x508(r31)
/* 8007025C  93 3F 00 00 */	stw r25, 0(r31)
/* 80070260  93 1F 00 0C */	stw r24, 0xc(r31)
/* 80070264  38 00 FF FF */	li r0, -1
/* 80070268  90 1F 00 04 */	stw r0, 4(r31)
/* 8007026C  38 00 00 00 */	li r0, 0
/* 80070270  98 1F 03 2E */	stb r0, 0x32e(r31)
/* 80070274  98 1F 03 2F */	stb r0, 0x32f(r31)
/* 80070278  90 1F 04 8C */	stw r0, 0x48c(r31)
/* 8007027C  90 1F 04 34 */	stw r0, 0x434(r31)
/* 80070280  90 1F 03 DC */	stw r0, 0x3dc(r31)
/* 80070284  7F E3 FB 78 */	mr r3, r31
/* 80070288  38 80 FF FF */	li r4, -1
/* 8007028C  48 00 0F B5 */	bl initList__12dAttention_cFUl
/* 80070290  38 60 00 00 */	li r3, 0
/* 80070294  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80070298  98 7F 03 2A */	stb r3, 0x32a(r31)
/* 8007029C  98 7F 03 29 */	stb r3, 0x329(r31)
/* 800702A0  38 00 00 04 */	li r0, 4
/* 800702A4  98 1F 03 2B */	stb r0, 0x32b(r31)
/* 800702A8  98 7F 03 2C */	stb r3, 0x32c(r31)
/* 800702AC  90 7F 04 C4 */	stw r3, 0x4c4(r31)
/* 800702B0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00009000@ha */
/* 800702B4  38 63 90 00 */	addi r3, r3, 0x9000 /* 0x00009000@l */
/* 800702B8  38 80 00 00 */	li r4, 0
/* 800702BC  4B F9 ED 89 */	bl mDoExt_createSolidHeapFromGameToCurrent__FUlUl
/* 800702C0  90 7F 00 18 */	stw r3, 0x18(r31)
/* 800702C4  3C 60 80 38 */	lis r3, d_d_attention__stringBase0@ha
/* 800702C8  38 63 A7 70 */	addi r3, r3, d_d_attention__stringBase0@l
/* 800702CC  38 63 00 08 */	addi r3, r3, 8
/* 800702D0  38 80 00 25 */	li r4, 0x25
/* 800702D4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 800702D8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 800702DC  3F A5 00 02 */	addis r29, r5, 2
/* 800702E0  3B BD C2 F8 */	addi r29, r29, -15624
/* 800702E4  7F A5 EB 78 */	mr r5, r29
/* 800702E8  38 C0 00 80 */	li r6, 0x80
/* 800702EC  4B FC C0 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800702F0  7C 7B 1B 78 */	mr r27, r3
/* 800702F4  3C 60 80 38 */	lis r3, d_d_attention__stringBase0@ha
/* 800702F8  38 63 A7 70 */	addi r3, r3, d_d_attention__stringBase0@l
/* 800702FC  38 63 00 08 */	addi r3, r3, 8
/* 80070300  38 80 00 26 */	li r4, 0x26
/* 80070304  7F A5 EB 78 */	mr r5, r29
/* 80070308  38 C0 00 80 */	li r6, 0x80
/* 8007030C  4B FC BF E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80070310  7C 7A 1B 78 */	mr r26, r3
/* 80070314  3B 20 00 00 */	li r25, 0
/* 80070318  3B C0 00 00 */	li r30, 0
/* 8007031C  3F 00 11 00 */	lis r24, 0x1100 /* 0x11000285@ha */
/* 80070320  3C 60 80 38 */	lis r3, d_d_attention__stringBase0@ha
/* 80070324  3B 83 A7 70 */	addi r28, r3, d_d_attention__stringBase0@l
lbl_80070328:
/* 80070328  7F 43 D3 78 */	mr r3, r26
/* 8007032C  3C 80 00 08 */	lis r4, 8
/* 80070330  38 B8 02 85 */	addi r5, r24, 0x0285 /* 0x11000285@l */
/* 80070334  4B FA 49 21 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80070338  38 1E 00 28 */	addi r0, r30, 0x28
/* 8007033C  7C 7F 01 2E */	stwx r3, r31, r0
/* 80070340  7F 63 DB 78 */	mr r3, r27
/* 80070344  3C 80 00 08 */	lis r4, 8
/* 80070348  38 B8 02 85 */	addi r5, r24, 0x285
/* 8007034C  4B FA 49 09 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80070350  38 1E 00 2C */	addi r0, r30, 0x2c
/* 80070354  7C 7F 01 2E */	stwx r3, r31, r0
/* 80070358  38 7C 00 08 */	addi r3, r28, 8
/* 8007035C  38 80 00 11 */	li r4, 0x11
/* 80070360  7F A5 EB 78 */	mr r5, r29
/* 80070364  38 C0 00 80 */	li r6, 0x80
/* 80070368  4B FC BF 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8007036C  7C 64 1B 78 */	mr r4, r3
/* 80070370  38 7E 00 30 */	addi r3, r30, 0x30
/* 80070374  7C 7F 1A 14 */	add r3, r31, r3
/* 80070378  38 A0 00 01 */	li r5, 1
/* 8007037C  38 C0 00 02 */	li r6, 2
/* 80070380  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 80070384  38 E0 00 00 */	li r7, 0
/* 80070388  39 00 FF FF */	li r8, -1
/* 8007038C  39 20 00 00 */	li r9, 0
/* 80070390  4B F9 D4 4D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80070394  38 7C 00 08 */	addi r3, r28, 8
/* 80070398  38 80 00 2B */	li r4, 0x2b
/* 8007039C  7F A5 EB 78 */	mr r5, r29
/* 800703A0  38 C0 00 80 */	li r6, 0x80
/* 800703A4  4B FC BF 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800703A8  7C 65 1B 78 */	mr r5, r3
/* 800703AC  38 7E 00 68 */	addi r3, r30, 0x68
/* 800703B0  7C 7F 1A 14 */	add r3, r31, r3
/* 800703B4  38 9A 00 58 */	addi r4, r26, 0x58
/* 800703B8  38 C0 00 01 */	li r6, 1
/* 800703BC  38 E0 00 02 */	li r7, 2
/* 800703C0  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 800703C4  39 00 00 00 */	li r8, 0
/* 800703C8  39 20 FF FF */	li r9, -1
/* 800703CC  4B F9 D0 B1 */	bl init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss
/* 800703D0  38 7C 00 08 */	addi r3, r28, 8
/* 800703D4  38 80 00 37 */	li r4, 0x37
/* 800703D8  7F A5 EB 78 */	mr r5, r29
/* 800703DC  38 C0 00 80 */	li r6, 0x80
/* 800703E0  4B FC BF 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800703E4  7C 65 1B 78 */	mr r5, r3
/* 800703E8  38 7E 00 98 */	addi r3, r30, 0x98
/* 800703EC  7C 7F 1A 14 */	add r3, r31, r3
/* 800703F0  38 9A 00 58 */	addi r4, r26, 0x58
/* 800703F4  38 C0 00 01 */	li r6, 1
/* 800703F8  38 E0 00 02 */	li r7, 2
/* 800703FC  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 80070400  39 00 00 00 */	li r8, 0
/* 80070404  39 20 FF FF */	li r9, -1
/* 80070408  4B F9 D3 05 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8007040C  38 7C 00 08 */	addi r3, r28, 8
/* 80070410  38 80 00 3F */	li r4, 0x3f
/* 80070414  7F A5 EB 78 */	mr r5, r29
/* 80070418  38 C0 00 80 */	li r6, 0x80
/* 8007041C  4B FC BE D1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80070420  7C 65 1B 78 */	mr r5, r3
/* 80070424  38 7E 00 F8 */	addi r3, r30, 0xf8
/* 80070428  7C 7F 1A 14 */	add r3, r31, r3
/* 8007042C  38 9A 00 58 */	addi r4, r26, 0x58
/* 80070430  38 C0 00 01 */	li r6, 1
/* 80070434  38 E0 00 02 */	li r7, 2
/* 80070438  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 8007043C  39 00 00 00 */	li r8, 0
/* 80070440  39 20 FF FF */	li r9, -1
/* 80070444  4B F9 D1 F9 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80070448  38 7C 00 08 */	addi r3, r28, 8
/* 8007044C  38 80 00 38 */	li r4, 0x38
/* 80070450  7F A5 EB 78 */	mr r5, r29
/* 80070454  38 C0 00 80 */	li r6, 0x80
/* 80070458  4B FC BE 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8007045C  7C 65 1B 78 */	mr r5, r3
/* 80070460  38 7E 00 C8 */	addi r3, r30, 0xc8
/* 80070464  7C 7F 1A 14 */	add r3, r31, r3
/* 80070468  38 9A 00 58 */	addi r4, r26, 0x58
/* 8007046C  38 C0 00 01 */	li r6, 1
/* 80070470  38 E0 00 02 */	li r7, 2
/* 80070474  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 80070478  39 00 00 00 */	li r8, 0
/* 8007047C  39 20 FF FF */	li r9, -1
/* 80070480  4B F9 D2 8D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80070484  38 7C 00 08 */	addi r3, r28, 8
/* 80070488  38 80 00 10 */	li r4, 0x10
/* 8007048C  7F A5 EB 78 */	mr r5, r29
/* 80070490  38 C0 00 80 */	li r6, 0x80
/* 80070494  4B FC BE 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80070498  7C 64 1B 78 */	mr r4, r3
/* 8007049C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 800704A0  7C 7F 1A 14 */	add r3, r31, r3
/* 800704A4  38 A0 00 01 */	li r5, 1
/* 800704A8  38 C0 00 02 */	li r6, 2
/* 800704AC  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 800704B0  38 E0 00 00 */	li r7, 0
/* 800704B4  39 00 FF FF */	li r8, -1
/* 800704B8  39 20 00 00 */	li r9, 0
/* 800704BC  4B F9 D3 21 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 800704C0  38 7C 00 08 */	addi r3, r28, 8
/* 800704C4  38 80 00 2A */	li r4, 0x2a
/* 800704C8  7F A5 EB 78 */	mr r5, r29
/* 800704CC  38 C0 00 80 */	li r6, 0x80
/* 800704D0  4B FC BE 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800704D4  7C 65 1B 78 */	mr r5, r3
/* 800704D8  38 7E 00 80 */	addi r3, r30, 0x80
/* 800704DC  7C 7F 1A 14 */	add r3, r31, r3
/* 800704E0  38 9B 00 58 */	addi r4, r27, 0x58
/* 800704E4  38 C0 00 01 */	li r6, 1
/* 800704E8  38 E0 00 02 */	li r7, 2
/* 800704EC  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 800704F0  39 00 00 00 */	li r8, 0
/* 800704F4  39 20 FF FF */	li r9, -1
/* 800704F8  4B F9 CF 85 */	bl init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss
/* 800704FC  38 7C 00 08 */	addi r3, r28, 8
/* 80070500  38 80 00 35 */	li r4, 0x35
/* 80070504  7F A5 EB 78 */	mr r5, r29
/* 80070508  38 C0 00 80 */	li r6, 0x80
/* 8007050C  4B FC BD E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80070510  7C 65 1B 78 */	mr r5, r3
/* 80070514  38 7E 00 B0 */	addi r3, r30, 0xb0
/* 80070518  7C 7F 1A 14 */	add r3, r31, r3
/* 8007051C  38 9B 00 58 */	addi r4, r27, 0x58
/* 80070520  38 C0 00 01 */	li r6, 1
/* 80070524  38 E0 00 02 */	li r7, 2
/* 80070528  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 8007052C  39 00 00 00 */	li r8, 0
/* 80070530  39 20 FF FF */	li r9, -1
/* 80070534  4B F9 D1 D9 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80070538  38 7C 00 08 */	addi r3, r28, 8
/* 8007053C  38 80 00 3E */	li r4, 0x3e
/* 80070540  7F A5 EB 78 */	mr r5, r29
/* 80070544  38 C0 00 80 */	li r6, 0x80
/* 80070548  4B FC BD A5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8007054C  7C 65 1B 78 */	mr r5, r3
/* 80070550  38 7E 01 10 */	addi r3, r30, 0x110
/* 80070554  7C 7F 1A 14 */	add r3, r31, r3
/* 80070558  38 9B 00 58 */	addi r4, r27, 0x58
/* 8007055C  38 C0 00 01 */	li r6, 1
/* 80070560  38 E0 00 02 */	li r7, 2
/* 80070564  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 80070568  39 00 00 00 */	li r8, 0
/* 8007056C  39 20 FF FF */	li r9, -1
/* 80070570  4B F9 D0 CD */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80070574  38 7C 00 08 */	addi r3, r28, 8
/* 80070578  38 80 00 36 */	li r4, 0x36
/* 8007057C  7F A5 EB 78 */	mr r5, r29
/* 80070580  38 C0 00 80 */	li r6, 0x80
/* 80070584  4B FC BD 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80070588  7C 65 1B 78 */	mr r5, r3
/* 8007058C  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 80070590  7C 7F 1A 14 */	add r3, r31, r3
/* 80070594  38 9B 00 58 */	addi r4, r27, 0x58
/* 80070598  38 C0 00 01 */	li r6, 1
/* 8007059C  38 E0 00 02 */	li r7, 2
/* 800705A0  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 800705A4  39 00 00 00 */	li r8, 0
/* 800705A8  39 20 FF FF */	li r9, -1
/* 800705AC  4B F9 D1 61 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 800705B0  38 7C 00 08 */	addi r3, r28, 8
/* 800705B4  38 80 00 0C */	li r4, 0xc
/* 800705B8  7F A5 EB 78 */	mr r5, r29
/* 800705BC  38 C0 00 80 */	li r6, 0x80
/* 800705C0  4B FC BD 2D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800705C4  7C 64 1B 78 */	mr r4, r3
/* 800705C8  38 7E 01 28 */	addi r3, r30, 0x128
/* 800705CC  7C 7F 1A 14 */	add r3, r31, r3
/* 800705D0  38 A0 00 01 */	li r5, 1
/* 800705D4  38 C0 00 00 */	li r6, 0
/* 800705D8  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 800705DC  38 E0 00 00 */	li r7, 0
/* 800705E0  39 00 FF FF */	li r8, -1
/* 800705E4  39 20 00 00 */	li r9, 0
/* 800705E8  4B F9 D1 F5 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 800705EC  38 7C 00 08 */	addi r3, r28, 8
/* 800705F0  38 80 00 29 */	li r4, 0x29
/* 800705F4  7F A5 EB 78 */	mr r5, r29
/* 800705F8  38 C0 00 80 */	li r6, 0x80
/* 800705FC  4B FC BC F1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80070600  7C 65 1B 78 */	mr r5, r3
/* 80070604  38 7E 01 44 */	addi r3, r30, 0x144
/* 80070608  7C 7F 1A 14 */	add r3, r31, r3
/* 8007060C  38 9B 00 58 */	addi r4, r27, 0x58
/* 80070610  38 C0 00 01 */	li r6, 1
/* 80070614  38 E0 00 00 */	li r7, 0
/* 80070618  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 8007061C  39 00 00 00 */	li r8, 0
/* 80070620  39 20 FF FF */	li r9, -1
/* 80070624  4B F9 CE 59 */	bl init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss
/* 80070628  38 7C 00 08 */	addi r3, r28, 8
/* 8007062C  38 80 00 32 */	li r4, 0x32
/* 80070630  7F A5 EB 78 */	mr r5, r29
/* 80070634  38 C0 00 80 */	li r6, 0x80
/* 80070638  4B FC BC B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8007063C  7C 65 1B 78 */	mr r5, r3
/* 80070640  38 7E 01 5C */	addi r3, r30, 0x15c
/* 80070644  7C 7F 1A 14 */	add r3, r31, r3
/* 80070648  38 9B 00 58 */	addi r4, r27, 0x58
/* 8007064C  38 C0 00 01 */	li r6, 1
/* 80070650  38 E0 00 00 */	li r7, 0
/* 80070654  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 80070658  39 00 00 00 */	li r8, 0
/* 8007065C  39 20 FF FF */	li r9, -1
/* 80070660  4B F9 D0 AD */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80070664  38 7C 00 08 */	addi r3, r28, 8
/* 80070668  38 80 00 3D */	li r4, 0x3d
/* 8007066C  7F A5 EB 78 */	mr r5, r29
/* 80070670  38 C0 00 80 */	li r6, 0x80
/* 80070674  4B FC BC 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80070678  7C 65 1B 78 */	mr r5, r3
/* 8007067C  38 7E 01 74 */	addi r3, r30, 0x174
/* 80070680  7C 7F 1A 14 */	add r3, r31, r3
/* 80070684  38 9B 00 58 */	addi r4, r27, 0x58
/* 80070688  38 C0 00 01 */	li r6, 1
/* 8007068C  38 E0 00 00 */	li r7, 0
/* 80070690  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 80070694  39 00 00 00 */	li r8, 0
/* 80070698  39 20 FF FF */	li r9, -1
/* 8007069C  4B F9 CF A1 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 800706A0  38 80 00 00 */	li r4, 0
/* 800706A4  38 1E 01 98 */	addi r0, r30, 0x198
/* 800706A8  7C 9F 01 AE */	stbx r4, r31, r0
/* 800706AC  38 60 00 01 */	li r3, 1
/* 800706B0  38 1E 01 99 */	addi r0, r30, 0x199
/* 800706B4  7C 7F 01 AE */	stbx r3, r31, r0
/* 800706B8  38 1E 01 9A */	addi r0, r30, 0x19a
/* 800706BC  7C 9F 01 AE */	stbx r4, r31, r0
/* 800706C0  38 1E 01 9C */	addi r0, r30, 0x19c
/* 800706C4  7C 7F 01 AE */	stbx r3, r31, r0
/* 800706C8  38 60 00 02 */	li r3, 2
/* 800706CC  38 1E 01 9B */	addi r0, r30, 0x19b
/* 800706D0  7C 7F 01 AE */	stbx r3, r31, r0
/* 800706D4  38 1E 01 9D */	addi r0, r30, 0x19d
/* 800706D8  7C 9F 01 AE */	stbx r4, r31, r0
/* 800706DC  3B 39 00 01 */	addi r25, r25, 1
/* 800706E0  2C 19 00 02 */	cmpwi r25, 2
/* 800706E4  3B DE 01 78 */	addi r30, r30, 0x178
/* 800706E8  41 80 FC 40 */	blt lbl_80070328
/* 800706EC  4B F9 EB 09 */	bl mDoExt_restoreCurrentHeap__Fv
/* 800706F0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800706F4  4B F9 E9 99 */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
/* 800706F8  2C 03 00 00 */	cmpwi r3, 0
/* 800706FC  41 80 00 14 */	blt lbl_80070710
/* 80070700  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80070704  80 83 00 38 */	lwz r4, 0x38(r3)
/* 80070708  80 63 00 30 */	lwz r3, 0x30(r3)
/* 8007070C  48 2C AF 2D */	bl DCStoreRangeNoSync
lbl_80070710:
/* 80070710  38 00 FF FF */	li r0, -1
/* 80070714  98 1F 03 28 */	stb r0, 0x328(r31)
/* 80070718  38 00 00 00 */	li r0, 0
/* 8007071C  90 1F 03 34 */	stw r0, 0x334(r31)
/* 80070720  38 7F 04 90 */	addi r3, r31, 0x490
/* 80070724  48 00 32 35 */	bl init__10dAttHint_cFv
/* 80070728  38 7F 04 9C */	addi r3, r31, 0x49c
/* 8007072C  48 00 32 91 */	bl init__11dAttCatch_cFv
/* 80070730  38 7F 04 B4 */	addi r3, r31, 0x4b4
/* 80070734  48 00 35 A1 */	bl init__10dAttLook_cFv
/* 80070738  34 7F 04 C8 */	addic. r3, r31, 0x4c8
/* 8007073C  41 82 00 0C */	beq lbl_80070748
/* 80070740  38 80 00 00 */	li r4, 0
/* 80070744  4B FF F8 F5 */	bl __ct__11dAttParam_cFl
lbl_80070748:
/* 80070748  38 00 FF FF */	li r0, -1
/* 8007074C  3C 60 80 42 */	lis r3, g_AttDwHIO@ha
/* 80070750  38 63 4B 0C */	addi r3, r3, g_AttDwHIO@l
/* 80070754  98 03 00 04 */	stb r0, 4(r3)
/* 80070758  7F E3 FB 78 */	mr r3, r31
/* 8007075C  39 61 00 30 */	addi r11, r1, 0x30
/* 80070760  48 2F 1A B5 */	bl _restgpr_24
/* 80070764  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80070768  7C 08 03 A6 */	mtlr r0
/* 8007076C  38 21 00 30 */	addi r1, r1, 0x30
/* 80070770  4E 80 00 20 */	blr 
