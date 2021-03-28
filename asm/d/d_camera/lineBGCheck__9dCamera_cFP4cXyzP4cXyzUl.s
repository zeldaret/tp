lbl_80165AF0:
/* 80165AF0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80165AF4  7C 08 02 A6 */	mflr r0
/* 80165AF8  90 01 00 94 */	stw r0, 0x94(r1)
/* 80165AFC  39 61 00 90 */	addi r11, r1, 0x90
/* 80165B00  48 1F C6 D9 */	bl _savegpr_28
/* 80165B04  7C 7C 1B 78 */	mr r28, r3
/* 80165B08  7C 9D 23 78 */	mr r29, r4
/* 80165B0C  7C BE 2B 78 */	mr r30, r5
/* 80165B10  7C DF 33 78 */	mr r31, r6
/* 80165B14  38 61 00 08 */	addi r3, r1, 8
/* 80165B18  4B F1 22 8D */	bl __ct__14dBgS_CamLinChkFv
/* 80165B1C  7F 83 E3 78 */	mr r3, r28
/* 80165B20  7F A4 EB 78 */	mr r4, r29
/* 80165B24  7F C5 F3 78 */	mr r5, r30
/* 80165B28  38 C1 00 08 */	addi r6, r1, 8
/* 80165B2C  7F E7 FB 78 */	mr r7, r31
/* 80165B30  4B FF FD 91 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 80165B34  7C 7F 1B 78 */	mr r31, r3
/* 80165B38  38 61 00 08 */	addi r3, r1, 8
/* 80165B3C  38 80 FF FF */	li r4, -1
/* 80165B40  4B F1 22 C1 */	bl __dt__14dBgS_CamLinChkFv
/* 80165B44  7F E3 FB 78 */	mr r3, r31
/* 80165B48  39 61 00 90 */	addi r11, r1, 0x90
/* 80165B4C  48 1F C6 D9 */	bl _restgpr_28
/* 80165B50  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80165B54  7C 08 03 A6 */	mtlr r0
/* 80165B58  38 21 00 90 */	addi r1, r1, 0x90
/* 80165B5C  4E 80 00 20 */	blr 
