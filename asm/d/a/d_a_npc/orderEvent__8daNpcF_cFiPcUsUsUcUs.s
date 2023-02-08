lbl_8015387C:
/* 8015387C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80153880  7C 08 02 A6 */	mflr r0
/* 80153884  90 01 00 24 */	stw r0, 0x24(r1)
/* 80153888  39 61 00 20 */	addi r11, r1, 0x20
/* 8015388C  48 20 E9 45 */	bl _savegpr_26
/* 80153890  7C 7A 1B 78 */	mr r26, r3
/* 80153894  7C 9B 23 78 */	mr r27, r4
/* 80153898  7C DC 33 78 */	mr r28, r6
/* 8015389C  7C FD 3B 78 */	mr r29, r7
/* 801538A0  7D 1E 43 78 */	mr r30, r8
/* 801538A4  7D 3F 4B 78 */	mr r31, r9
/* 801538A8  28 05 00 00 */	cmplwi r5, 0
/* 801538AC  41 82 00 40 */	beq lbl_801538EC
/* 801538B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801538B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801538B8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 801538BC  7F 44 D3 78 */	mr r4, r26
/* 801538C0  38 C0 00 FF */	li r6, 0xff
/* 801538C4  4B EF 3E 95 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 801538C8  B0 7A 09 D4 */	sth r3, 0x9d4(r26)
/* 801538CC  7F 43 D3 78 */	mr r3, r26
/* 801538D0  A8 9A 09 D4 */	lha r4, 0x9d4(r26)
/* 801538D4  7F C5 F3 78 */	mr r5, r30
/* 801538D8  7F 86 E3 78 */	mr r6, r28
/* 801538DC  7F A7 EB 78 */	mr r7, r29
/* 801538E0  7F E8 FB 78 */	mr r8, r31
/* 801538E4  4B EC 7D 99 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 801538E8  48 00 00 54 */	b lbl_8015393C
lbl_801538EC:
/* 801538EC  88 1A 09 F4 */	lbz r0, 0x9f4(r26)
/* 801538F0  28 00 00 00 */	cmplwi r0, 0
/* 801538F4  41 82 00 10 */	beq lbl_80153904
/* 801538F8  48 00 BB 2D */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801538FC  2C 03 00 00 */	cmpwi r3, 0
/* 80153900  41 82 00 3C */	beq lbl_8015393C
lbl_80153904:
/* 80153904  80 7A 05 5C */	lwz r3, 0x55c(r26)
/* 80153908  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8015390C  40 82 00 0C */	bne lbl_80153918
/* 80153910  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80153914  41 82 00 28 */	beq lbl_8015393C
lbl_80153918:
/* 80153918  A0 1A 00 FA */	lhz r0, 0xfa(r26)
/* 8015391C  60 00 00 01 */	ori r0, r0, 1
/* 80153920  B0 1A 00 FA */	sth r0, 0xfa(r26)
/* 80153924  2C 1B 00 00 */	cmpwi r27, 0
/* 80153928  41 82 00 14 */	beq lbl_8015393C
/* 8015392C  7F 43 D3 78 */	mr r3, r26
/* 80153930  38 80 00 00 */	li r4, 0
/* 80153934  38 A0 00 00 */	li r5, 0
/* 80153938  4B EC 78 65 */	bl fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
lbl_8015393C:
/* 8015393C  39 61 00 20 */	addi r11, r1, 0x20
/* 80153940  48 20 E8 DD */	bl _restgpr_26
/* 80153944  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80153948  7C 08 03 A6 */	mtlr r0
/* 8015394C  38 21 00 20 */	addi r1, r1, 0x20
/* 80153950  4E 80 00 20 */	blr 
