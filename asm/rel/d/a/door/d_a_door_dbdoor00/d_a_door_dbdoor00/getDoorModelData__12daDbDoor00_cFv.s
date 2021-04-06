lbl_8045D504:
/* 8045D504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D508  7C 08 02 A6 */	mflr r0
/* 8045D50C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045D514  93 C1 00 08 */	stw r30, 8(r1)
/* 8045D518  7C 7E 1B 78 */	mr r30, r3
/* 8045D51C  4B FF FF 95 */	bl getBmdName__12daDbDoor00_cFv
/* 8045D520  4B BD 1F 15 */	bl dComIfG_getStageRes__FPCc
/* 8045D524  28 03 00 00 */	cmplwi r3, 0
/* 8045D528  40 82 00 34 */	bne lbl_8045D55C
/* 8045D52C  7F C3 F3 78 */	mr r3, r30
/* 8045D530  4B FF FF 81 */	bl getBmdName__12daDbDoor00_cFv
/* 8045D534  7C 7F 1B 78 */	mr r31, r3
/* 8045D538  7F C3 F3 78 */	mr r3, r30
/* 8045D53C  4B FF FF 65 */	bl getBmdArcName__12daDbDoor00_cFv
/* 8045D540  7F E4 FB 78 */	mr r4, r31
/* 8045D544  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045D548  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045D54C  3C A5 00 02 */	addis r5, r5, 2
/* 8045D550  38 C0 00 80 */	li r6, 0x80
/* 8045D554  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8045D558  4B BD EE 25 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
lbl_8045D55C:
/* 8045D55C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045D560  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045D564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D568  7C 08 03 A6 */	mtlr r0
/* 8045D56C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D570  4E 80 00 20 */	blr 
