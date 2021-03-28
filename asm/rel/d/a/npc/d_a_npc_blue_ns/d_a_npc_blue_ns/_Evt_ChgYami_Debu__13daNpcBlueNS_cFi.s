lbl_8096B7B8:
/* 8096B7B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096B7BC  7C 08 02 A6 */	mflr r0
/* 8096B7C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096B7C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8096B7C8  4B 9F 6A 14 */	b _savegpr_29
/* 8096B7CC  7C 7D 1B 78 */	mr r29, r3
/* 8096B7D0  7C 9E 23 78 */	mr r30, r4
/* 8096B7D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8096B7D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8096B7DC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8096B7E0  38 00 FF FF */	li r0, -1
/* 8096B7E4  90 01 00 08 */	stw r0, 8(r1)
/* 8096B7E8  7F E3 FB 78 */	mr r3, r31
/* 8096B7EC  3C A0 80 97 */	lis r5, stringBase0@ha
/* 8096B7F0  38 A5 CB 4C */	addi r5, r5, stringBase0@l
/* 8096B7F4  38 A5 00 4B */	addi r5, r5, 0x4b
/* 8096B7F8  38 C0 00 03 */	li r6, 3
/* 8096B7FC  4B 6D C8 F0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8096B800  28 03 00 00 */	cmplwi r3, 0
/* 8096B804  41 82 00 10 */	beq lbl_8096B814
/* 8096B808  80 03 00 00 */	lwz r0, 0(r3)
/* 8096B80C  90 01 00 08 */	stw r0, 8(r1)
/* 8096B810  48 00 00 0C */	b lbl_8096B81C
lbl_8096B814:
/* 8096B814  38 60 00 01 */	li r3, 1
/* 8096B818  48 00 00 30 */	b lbl_8096B848
lbl_8096B81C:
/* 8096B81C  7F E3 FB 78 */	mr r3, r31
/* 8096B820  7F C4 F3 78 */	mr r4, r30
/* 8096B824  4B 6D C5 28 */	b getIsAddvance__16dEvent_manager_cFi
/* 8096B828  2C 03 00 00 */	cmpwi r3, 0
/* 8096B82C  41 82 00 10 */	beq lbl_8096B83C
/* 8096B830  7F A3 EB 78 */	mr r3, r29
/* 8096B834  38 81 00 08 */	addi r4, r1, 8
/* 8096B838  48 00 00 29 */	bl _Evt_ChgYami_Debu_CutInit__13daNpcBlueNS_cFRCi
lbl_8096B83C:
/* 8096B83C  7F A3 EB 78 */	mr r3, r29
/* 8096B840  38 81 00 08 */	addi r4, r1, 8
/* 8096B844  48 00 00 B5 */	bl _Evt_ChgYami_Debu_CutMain__13daNpcBlueNS_cFRCi
lbl_8096B848:
/* 8096B848  39 61 00 20 */	addi r11, r1, 0x20
/* 8096B84C  4B 9F 69 DC */	b _restgpr_29
/* 8096B850  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096B854  7C 08 03 A6 */	mtlr r0
/* 8096B858  38 21 00 20 */	addi r1, r1, 0x20
/* 8096B85C  4E 80 00 20 */	blr 
