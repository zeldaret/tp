lbl_800BFF04:
/* 800BFF04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BFF08  7C 08 02 A6 */	mflr r0
/* 800BFF0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BFF10  39 61 00 20 */	addi r11, r1, 0x20
/* 800BFF14  48 2A 22 C9 */	bl _savegpr_29
/* 800BFF18  7C 9D 23 78 */	mr r29, r4
/* 800BFF1C  7C BE 2B 78 */	mr r30, r5
/* 800BFF20  7F C3 F3 78 */	mr r3, r30
/* 800BFF24  38 80 00 20 */	li r4, 0x20
/* 800BFF28  48 20 ED C5 */	bl __nwa__FUli
/* 800BFF2C  7C 7F 1B 78 */	mr r31, r3
/* 800BFF30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800BFF34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800BFF38  80 63 5C AC */	lwz r3, 0x5cac(r3)
/* 800BFF3C  7F E4 FB 78 */	mr r4, r31
/* 800BFF40  7F C5 F3 78 */	mr r5, r30
/* 800BFF44  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 800BFF48  48 21 5F 85 */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 800BFF4C  7F E3 FB 78 */	mr r3, r31
/* 800BFF50  38 80 00 00 */	li r4, 0
/* 800BFF54  48 27 7B ED */	bl load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag
/* 800BFF58  39 61 00 20 */	addi r11, r1, 0x20
/* 800BFF5C  48 2A 22 CD */	bl _restgpr_29
/* 800BFF60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BFF64  7C 08 03 A6 */	mtlr r0
/* 800BFF68  38 21 00 20 */	addi r1, r1, 0x20
/* 800BFF6C  4E 80 00 20 */	blr 
