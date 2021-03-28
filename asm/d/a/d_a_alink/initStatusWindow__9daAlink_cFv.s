lbl_801406A8:
/* 801406A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801406AC  7C 08 02 A6 */	mflr r0
/* 801406B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801406B4  39 61 00 20 */	addi r11, r1, 0x20
/* 801406B8  48 22 1B 19 */	bl _savegpr_26
/* 801406BC  7C 7D 1B 78 */	mr r29, r3
/* 801406C0  80 03 05 78 */	lwz r0, 0x578(r3)
/* 801406C4  64 00 00 40 */	oris r0, r0, 0x40
/* 801406C8  90 03 05 78 */	stw r0, 0x578(r3)
/* 801406CC  38 60 14 00 */	li r3, 0x1400
/* 801406D0  38 80 00 20 */	li r4, 0x20
/* 801406D4  48 18 E6 19 */	bl __nwa__FUli
/* 801406D8  7C 7A 1B 78 */	mr r26, r3
/* 801406DC  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 801406E0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 801406E4  41 82 00 20 */	beq lbl_80140704
/* 801406E8  3B 80 02 FF */	li r28, 0x2ff
/* 801406EC  3B E0 04 08 */	li r31, 0x408
/* 801406F0  3B C0 03 A7 */	li r30, 0x3a7
/* 801406F4  7F A3 EB 78 */	mr r3, r29
/* 801406F8  38 80 00 00 */	li r4, 0
/* 801406FC  4B FF FE 55 */	bl changeModelDataDirectWolf__9daAlink_cFi
/* 80140700  48 00 00 4C */	b lbl_8014074C
lbl_80140704:
/* 80140704  3B 80 02 6A */	li r28, 0x26a
/* 80140708  3B E0 03 AF */	li r31, 0x3af
/* 8014070C  3B C0 03 2C */	li r30, 0x32c
/* 80140710  7F A3 EB 78 */	mr r3, r29
/* 80140714  4B F7 F6 9D */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80140718  2C 03 00 00 */	cmpwi r3, 0
/* 8014071C  41 82 00 24 */	beq lbl_80140740
/* 80140720  7F A3 EB 78 */	mr r3, r29
/* 80140724  4B FC 11 6D */	bl checkZoraWearMaskDraw__9daAlink_cFv
/* 80140728  2C 03 00 00 */	cmpwi r3, 0
/* 8014072C  40 82 00 14 */	bne lbl_80140740
/* 80140730  80 7D 06 F0 */	lwz r3, 0x6f0(r29)
/* 80140734  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80140738  60 00 00 01 */	ori r0, r0, 1
/* 8014073C  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80140740:
/* 80140740  7F A3 EB 78 */	mr r3, r29
/* 80140744  38 80 00 00 */	li r4, 0
/* 80140748  4B FF FB F1 */	bl changeModelDataDirect__9daAlink_cFi
lbl_8014074C:
/* 8014074C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80140750  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80140754  80 7B 5C AC */	lwz r3, 0x5cac(r27)
/* 80140758  7F 44 D3 78 */	mr r4, r26
/* 8014075C  38 A0 14 00 */	li r5, 0x1400
/* 80140760  57 86 04 3E */	clrlwi r6, r28, 0x10
/* 80140764  48 19 57 69 */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 80140768  38 60 00 1C */	li r3, 0x1c
/* 8014076C  48 18 E4 E1 */	bl __nw__FUl
/* 80140770  7C 7C 1B 79 */	or. r28, r3, r3
/* 80140774  41 82 00 20 */	beq lbl_80140794
/* 80140778  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8014077C  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80140780  90 1C 00 00 */	stw r0, 0(r28)
/* 80140784  38 80 00 00 */	li r4, 0
/* 80140788  48 1E 7C 75 */	bl init__12J3DFrameCtrlFs
/* 8014078C  38 00 00 00 */	li r0, 0
/* 80140790  90 1C 00 18 */	stw r0, 0x18(r28)
lbl_80140794:
/* 80140794  93 9D 07 BC */	stw r28, 0x7bc(r29)
/* 80140798  7F 43 D3 78 */	mr r3, r26
/* 8014079C  38 80 00 00 */	li r4, 0
/* 801407A0  48 1F 73 A1 */	bl load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag
/* 801407A4  7C 64 1B 78 */	mr r4, r3
/* 801407A8  80 7D 07 BC */	lwz r3, 0x7bc(r29)
/* 801407AC  38 A0 00 01 */	li r5, 1
/* 801407B0  38 C0 00 02 */	li r6, 2
/* 801407B4  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 801407B8  38 E0 00 00 */	li r7, 0
/* 801407BC  39 00 FF FF */	li r8, -1
/* 801407C0  39 20 00 00 */	li r9, 0
/* 801407C4  4B EC D0 19 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 801407C8  38 60 04 00 */	li r3, 0x400
/* 801407CC  38 80 00 20 */	li r4, 0x20
/* 801407D0  48 18 E5 1D */	bl __nwa__FUli
/* 801407D4  7C 7C 1B 78 */	mr r28, r3
/* 801407D8  80 7B 5C AC */	lwz r3, 0x5cac(r27)
/* 801407DC  7F 84 E3 78 */	mr r4, r28
/* 801407E0  38 A0 04 00 */	li r5, 0x400
/* 801407E4  57 E6 04 3E */	clrlwi r6, r31, 0x10
/* 801407E8  48 19 56 E5 */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 801407EC  7F 83 E3 78 */	mr r3, r28
/* 801407F0  38 80 00 00 */	li r4, 0
/* 801407F4  48 1F 73 4D */	bl load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag
/* 801407F8  7C 7A 1B 78 */	mr r26, r3
/* 801407FC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80140800  D0 03 00 08 */	stfs f0, 8(r3)
/* 80140804  80 9D 06 C0 */	lwz r4, 0x6c0(r29)
/* 80140808  48 1E A8 95 */	bl searchUpdateMaterialID__16J3DAnmTexPatternFP12J3DModelData
/* 8014080C  80 7D 06 C0 */	lwz r3, 0x6c0(r29)
/* 80140810  38 63 00 58 */	addi r3, r3, 0x58
/* 80140814  7F 44 D3 78 */	mr r4, r26
/* 80140818  48 1E F3 B1 */	bl entryTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
/* 8014081C  38 60 04 00 */	li r3, 0x400
/* 80140820  38 80 00 20 */	li r4, 0x20
/* 80140824  48 18 E4 C9 */	bl __nwa__FUli
/* 80140828  7C 7C 1B 78 */	mr r28, r3
/* 8014082C  80 7B 5C AC */	lwz r3, 0x5cac(r27)
/* 80140830  7F 84 E3 78 */	mr r4, r28
/* 80140834  38 A0 04 00 */	li r5, 0x400
/* 80140838  57 C6 04 3E */	clrlwi r6, r30, 0x10
/* 8014083C  48 19 56 91 */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 80140840  7F 83 E3 78 */	mr r3, r28
/* 80140844  38 80 00 00 */	li r4, 0
/* 80140848  48 1F 72 F9 */	bl load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag
/* 8014084C  7C 7A 1B 78 */	mr r26, r3
/* 80140850  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80140854  D0 03 00 08 */	stfs f0, 8(r3)
/* 80140858  80 9D 06 C0 */	lwz r4, 0x6c0(r29)
/* 8014085C  48 1E A9 79 */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 80140860  80 7D 06 C0 */	lwz r3, 0x6c0(r29)
/* 80140864  38 63 00 58 */	addi r3, r3, 0x58
/* 80140868  7F 44 D3 78 */	mr r4, r26
/* 8014086C  48 1E F4 59 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80140870  39 61 00 20 */	addi r11, r1, 0x20
/* 80140874  48 22 19 A9 */	bl _restgpr_26
/* 80140878  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014087C  7C 08 03 A6 */	mtlr r0
/* 80140880  38 21 00 20 */	addi r1, r1, 0x20
/* 80140884  4E 80 00 20 */	blr 
