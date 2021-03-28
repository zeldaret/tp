lbl_80838A68:
/* 80838A68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80838A6C  7C 08 02 A6 */	mflr r0
/* 80838A70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80838A74  39 61 00 20 */	addi r11, r1, 0x20
/* 80838A78  4B B2 97 64 */	b _savegpr_29
/* 80838A7C  7C BD 2B 78 */	mr r29, r5
/* 80838A80  7C DE 33 78 */	mr r30, r6
/* 80838A84  7C 7F 1B 78 */	mr r31, r3
/* 80838A88  7F A4 EB 78 */	mr r4, r29
/* 80838A8C  4B FF FA 0D */	bl coHitCallbackBoarJump__9daHorse_cFP10fopAc_ac_c
/* 80838A90  7F E3 FB 78 */	mr r3, r31
/* 80838A94  7F A4 EB 78 */	mr r4, r29
/* 80838A98  7F C5 F3 78 */	mr r5, r30
/* 80838A9C  4B FF FC FD */	bl coHitCallbackBoarHit__9daHorse_cFP10fopAc_ac_cP12dCcD_GObjInf
/* 80838AA0  7F E3 FB 78 */	mr r3, r31
/* 80838AA4  7F A4 EB 78 */	mr r4, r29
/* 80838AA8  4B FF FE 5D */	bl coHitCallbackCowHit__9daHorse_cFP10fopAc_ac_c
/* 80838AAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80838AB0  4B B2 97 78 */	b _restgpr_29
/* 80838AB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80838AB8  7C 08 03 A6 */	mtlr r0
/* 80838ABC  38 21 00 20 */	addi r1, r1, 0x20
/* 80838AC0  4E 80 00 20 */	blr 
