lbl_8045D594:
/* 8045D594  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045D598  7C 08 02 A6 */	mflr r0
/* 8045D59C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045D5A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8045D5A4  4B F0 4C 38 */	b _savegpr_29
/* 8045D5A8  7C 7E 1B 78 */	mr r30, r3
/* 8045D5AC  4B FF FE E5 */	bl getDummyBmdName__12daDbDoor00_cFv
/* 8045D5B0  7C 7D 1B 78 */	mr r29, r3
/* 8045D5B4  7F C3 F3 78 */	mr r3, r30
/* 8045D5B8  4B FF FE B9 */	bl getAlwaysArcName__12daDbDoor00_cFv
/* 8045D5BC  7F A4 EB 78 */	mr r4, r29
/* 8045D5C0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8045D5C4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8045D5C8  3F E5 00 02 */	addis r31, r5, 2
/* 8045D5CC  3B FF C2 F8 */	addi r31, r31, -15624
/* 8045D5D0  7F E5 FB 78 */	mr r5, r31
/* 8045D5D4  38 C0 00 80 */	li r6, 0x80
/* 8045D5D8  4B BD ED A4 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045D5DC  3C 80 00 08 */	lis r4, 8
/* 8045D5E0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8045D5E4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8045D5E8  4B BB 76 6C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8045D5EC  90 7E 05 78 */	stw r3, 0x578(r30)
/* 8045D5F0  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 8045D5F4  28 00 00 00 */	cmplwi r0, 0
/* 8045D5F8  40 82 00 0C */	bne lbl_8045D604
/* 8045D5FC  38 60 00 00 */	li r3, 0
/* 8045D600  48 00 01 2C */	b lbl_8045D72C
lbl_8045D604:
/* 8045D604  7F C3 F3 78 */	mr r3, r30
/* 8045D608  4B FF FE FD */	bl getDoorModelData__12daDbDoor00_cFv
/* 8045D60C  7C 7D 1B 78 */	mr r29, r3
/* 8045D610  3C 80 00 08 */	lis r4, 8
/* 8045D614  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8045D618  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8045D61C  4B BB 76 38 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8045D620  90 7E 05 7C */	stw r3, 0x57c(r30)
/* 8045D624  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 8045D628  28 00 00 00 */	cmplwi r0, 0
/* 8045D62C  40 82 00 0C */	bne lbl_8045D638
/* 8045D630  38 60 00 00 */	li r3, 0
/* 8045D634  48 00 00 F8 */	b lbl_8045D72C
lbl_8045D638:
/* 8045D638  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 8045D63C  3C 80 80 46 */	lis r4, struct_8045E56C+0x0@ha
/* 8045D640  38 84 E5 6C */	addi r4, r4, struct_8045E56C+0x0@l
/* 8045D644  38 84 00 58 */	addi r4, r4, 0x58
/* 8045D648  4B E8 14 10 */	b getIndex__10JUTNameTabCFPCc
/* 8045D64C  98 7E 05 C0 */	stb r3, 0x5c0(r30)
/* 8045D650  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 8045D654  3C 80 80 46 */	lis r4, struct_8045E56C+0x0@ha
/* 8045D658  38 84 E5 6C */	addi r4, r4, struct_8045E56C+0x0@l
/* 8045D65C  38 84 00 63 */	addi r4, r4, 0x63
/* 8045D660  4B E8 13 F8 */	b getIndex__10JUTNameTabCFPCc
/* 8045D664  98 7E 05 C1 */	stb r3, 0x5c1(r30)
/* 8045D668  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 8045D66C  80 63 00 04 */	lwz r3, 4(r3)
/* 8045D670  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8045D674  88 1E 05 C0 */	lbz r0, 0x5c0(r30)
/* 8045D678  7C 00 07 74 */	extsb r0, r0
/* 8045D67C  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8045D680  7C 83 00 2E */	lwzx r4, r3, r0
/* 8045D684  88 1E 05 C1 */	lbz r0, 0x5c1(r30)
/* 8045D688  7C 00 07 74 */	extsb r0, r0
/* 8045D68C  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8045D690  7C A3 00 2E */	lwzx r5, r3, r0
/* 8045D694  3C 60 80 46 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 8045D698  38 03 D3 78 */	addi r0, r3, nodeCallBack__FP8J3DJointi@l
/* 8045D69C  90 04 00 04 */	stw r0, 4(r4)
/* 8045D6A0  90 05 00 04 */	stw r0, 4(r5)
/* 8045D6A4  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 8045D6A8  93 C3 00 14 */	stw r30, 0x14(r3)
/* 8045D6AC  38 60 00 C0 */	li r3, 0xc0
/* 8045D6B0  4B E7 15 9C */	b __nw__FUl
/* 8045D6B4  7C 60 1B 79 */	or. r0, r3, r3
/* 8045D6B8  41 82 00 0C */	beq lbl_8045D6C4
/* 8045D6BC  4B C1 E2 B4 */	b __ct__4dBgWFv
/* 8045D6C0  7C 60 1B 78 */	mr r0, r3
lbl_8045D6C4:
/* 8045D6C4  90 1E 05 80 */	stw r0, 0x580(r30)
/* 8045D6C8  7F C3 F3 78 */	mr r3, r30
/* 8045D6CC  4B FF FD B5 */	bl getDzb__12daDbDoor00_cFv
/* 8045D6D0  7C 7D 1B 78 */	mr r29, r3
/* 8045D6D4  7F C3 F3 78 */	mr r3, r30
/* 8045D6D8  4B FF FD 99 */	bl getAlwaysArcName__12daDbDoor00_cFv
/* 8045D6DC  7F A4 EB 78 */	mr r4, r29
/* 8045D6E0  7F E5 FB 78 */	mr r5, r31
/* 8045D6E4  38 C0 00 80 */	li r6, 0x80
/* 8045D6E8  4B BD EC 94 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045D6EC  7C 7D 1B 79 */	or. r29, r3, r3
/* 8045D6F0  40 82 00 0C */	bne lbl_8045D6FC
/* 8045D6F4  38 60 00 00 */	li r3, 0
/* 8045D6F8  48 00 00 34 */	b lbl_8045D72C
lbl_8045D6FC:
/* 8045D6FC  7F C3 F3 78 */	mr r3, r30
/* 8045D700  48 00 00 45 */	bl calcMtx__12daDbDoor00_cFv
/* 8045D704  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8045D708  38 C3 00 24 */	addi r6, r3, 0x24
/* 8045D70C  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 8045D710  7F A4 EB 78 */	mr r4, r29
/* 8045D714  38 A0 00 01 */	li r5, 1
/* 8045D718  4B C1 C8 20 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8045D71C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8045D720  20 60 00 01 */	subfic r3, r0, 1
/* 8045D724  30 03 FF FF */	addic r0, r3, -1
/* 8045D728  7C 60 19 10 */	subfe r3, r0, r3
lbl_8045D72C:
/* 8045D72C  39 61 00 20 */	addi r11, r1, 0x20
/* 8045D730  4B F0 4A F8 */	b _restgpr_29
/* 8045D734  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045D738  7C 08 03 A6 */	mtlr r0
/* 8045D73C  38 21 00 20 */	addi r1, r1, 0x20
/* 8045D740  4E 80 00 20 */	blr 
