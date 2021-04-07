lbl_8015EF84:
/* 8015EF84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015EF88  7C 08 02 A6 */	mflr r0
/* 8015EF8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015EF90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015EF94  93 C1 00 08 */	stw r30, 8(r1)
/* 8015EF98  7C 7E 1B 78 */	mr r30, r3
/* 8015EF9C  7C 86 23 78 */	mr r6, r4
/* 8015EFA0  A0 03 00 04 */	lhz r0, 4(r3)
/* 8015EFA4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8015EFA8  40 82 00 4C */	bne lbl_8015EFF4
/* 8015EFAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015EFB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015EFB4  80 63 5C AC */	lwz r3, 0x5cac(r3)
/* 8015EFB8  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8015EFBC  80 BE 00 08 */	lwz r5, 8(r30)
/* 8015EFC0  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 8015EFC4  48 17 6F 09 */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 8015EFC8  7F C3 F3 78 */	mr r3, r30
/* 8015EFCC  48 00 01 9D */	bl setAnimeHeap__14daPy_anmHeap_cFv
/* 8015EFD0  7C 7F 1B 78 */	mr r31, r3
/* 8015EFD4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8015EFD8  38 80 00 00 */	li r4, 0
/* 8015EFDC  48 1D 8B 65 */	bl load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag
/* 8015EFE0  7C 7E 1B 78 */	mr r30, r3
/* 8015EFE4  7F E3 FB 78 */	mr r3, r31
/* 8015EFE8  4B EB 01 E5 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8015EFEC  7F C3 F3 78 */	mr r3, r30
/* 8015EFF0  48 00 00 60 */	b lbl_8015F050
lbl_8015EFF4:
/* 8015EFF4  28 00 00 00 */	cmplwi r0, 0
/* 8015EFF8  40 82 00 28 */	bne lbl_8015F020
/* 8015EFFC  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 8015F000  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l /* 0x80406194@l */
/* 8015F004  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015F008  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015F00C  3C A5 00 02 */	addis r5, r5, 2
/* 8015F010  38 C0 00 80 */	li r6, 0x80
/* 8015F014  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8015F018  4B ED D3 E9 */	bl getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 8015F01C  48 00 00 34 */	b lbl_8015F050
lbl_8015F020:
/* 8015F020  3C 60 80 3C */	lis r3, arcName@ha /* 0x803BA0A0@ha */
/* 8015F024  38 63 A0 A0 */	addi r3, r3, arcName@l /* 0x803BA0A0@l */
/* 8015F028  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8015F02C  7C 63 02 14 */	add r3, r3, r0
/* 8015F030  80 63 FF FC */	lwz r3, -4(r3)
/* 8015F034  54 C4 04 3E */	clrlwi r4, r6, 0x10
/* 8015F038  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015F03C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015F040  3C A5 00 02 */	addis r5, r5, 2
/* 8015F044  38 C0 00 80 */	li r6, 0x80
/* 8015F048  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8015F04C  4B ED D2 A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_8015F050:
/* 8015F050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015F054  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015F058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015F05C  7C 08 03 A6 */	mtlr r0
/* 8015F060  38 21 00 10 */	addi r1, r1, 0x10
/* 8015F064  4E 80 00 20 */	blr 
