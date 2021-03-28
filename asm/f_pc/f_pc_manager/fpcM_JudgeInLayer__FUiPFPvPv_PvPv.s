lbl_800223B4:
/* 800223B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800223B8  7C 08 02 A6 */	mflr r0
/* 800223BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800223C0  39 61 00 20 */	addi r11, r1, 0x20
/* 800223C4  48 33 FE 15 */	bl _savegpr_28
/* 800223C8  7C 7C 1B 78 */	mr r28, r3
/* 800223CC  7C 9D 23 78 */	mr r29, r4
/* 800223D0  7C BE 2B 78 */	mr r30, r5
/* 800223D4  4B FF F3 79 */	bl fpcLy_Layer__FUi
/* 800223D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 800223DC  41 82 00 30 */	beq lbl_8002240C
/* 800223E0  7F 83 E3 78 */	mr r3, r28
/* 800223E4  7F A4 EB 78 */	mr r4, r29
/* 800223E8  7F C5 F3 78 */	mr r5, r30
/* 800223EC  4B FF E6 A9 */	bl fpcCtIt_JudgeInLayer__FUiPFPvPv_PvPv
/* 800223F0  28 03 00 00 */	cmplwi r3, 0
/* 800223F4  40 82 00 1C */	bne lbl_80022410
/* 800223F8  7F E3 FB 78 */	mr r3, r31
/* 800223FC  7F A4 EB 78 */	mr r4, r29
/* 80022400  7F C5 F3 78 */	mr r5, r30
/* 80022404  4B FF F8 25 */	bl fpcLyIt_Judge__FP11layer_classPFPvPv_PvPv
/* 80022408  48 00 00 08 */	b lbl_80022410
lbl_8002240C:
/* 8002240C  38 60 00 00 */	li r3, 0
lbl_80022410:
/* 80022410  39 61 00 20 */	addi r11, r1, 0x20
/* 80022414  48 33 FE 11 */	bl _restgpr_28
/* 80022418  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002241C  7C 08 03 A6 */	mtlr r0
/* 80022420  38 21 00 20 */	addi r1, r1, 0x20
/* 80022424  4E 80 00 20 */	blr 
