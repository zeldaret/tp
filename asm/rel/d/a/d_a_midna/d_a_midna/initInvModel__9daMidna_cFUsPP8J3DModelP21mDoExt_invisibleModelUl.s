lbl_804BC740:
/* 804BC740  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BC744  7C 08 02 A6 */	mflr r0
/* 804BC748  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BC74C  39 61 00 20 */	addi r11, r1, 0x20
/* 804BC750  4B EA 5A 8D */	bl _savegpr_29
/* 804BC754  7C BD 2B 78 */	mr r29, r5
/* 804BC758  7C DE 33 78 */	mr r30, r6
/* 804BC75C  7C FF 3B 78 */	mr r31, r7
/* 804BC760  3C 60 80 4C */	lis r3, l_arcName@ha /* 0x804C64D4@ha */
/* 804BC764  38 63 64 D4 */	addi r3, r3, l_arcName@l /* 0x804C64D4@l */
/* 804BC768  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 804BC76C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BC770  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BC774  3C A5 00 02 */	addis r5, r5, 2
/* 804BC778  38 C0 00 80 */	li r6, 0x80
/* 804BC77C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804BC780  4B B7 FB 6D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804BC784  38 80 00 00 */	li r4, 0
/* 804BC788  7F E5 FB 78 */	mr r5, r31
/* 804BC78C  4B B5 84 C9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BC790  90 7D 00 00 */	stw r3, 0(r29)
/* 804BC794  80 9D 00 00 */	lwz r4, 0(r29)
/* 804BC798  28 04 00 00 */	cmplwi r4, 0
/* 804BC79C  40 82 00 0C */	bne lbl_804BC7A8
/* 804BC7A0  38 60 00 00 */	li r3, 0
/* 804BC7A4  48 00 00 18 */	b lbl_804BC7BC
lbl_804BC7A8:
/* 804BC7A8  7F C3 F3 78 */	mr r3, r30
/* 804BC7AC  38 A0 00 01 */	li r5, 1
/* 804BC7B0  4B B5 1D 8D */	bl create__21mDoExt_invisibleModelFP8J3DModelUc
/* 804BC7B4  30 03 FF FF */	addic r0, r3, -1
/* 804BC7B8  7C 60 19 10 */	subfe r3, r0, r3
lbl_804BC7BC:
/* 804BC7BC  39 61 00 20 */	addi r11, r1, 0x20
/* 804BC7C0  4B EA 5A 69 */	bl _restgpr_29
/* 804BC7C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BC7C8  7C 08 03 A6 */	mtlr r0
/* 804BC7CC  38 21 00 20 */	addi r1, r1, 0x20
/* 804BC7D0  4E 80 00 20 */	blr 
