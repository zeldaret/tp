lbl_8047E2D4:
/* 8047E2D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047E2D8  7C 08 02 A6 */	mflr r0
/* 8047E2DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047E2E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8047E2E4  4B EE 3E F1 */	bl _savegpr_27
/* 8047E2E8  7C 7B 1B 78 */	mr r27, r3
/* 8047E2EC  7C 9C 23 78 */	mr r28, r4
/* 8047E2F0  7C BD 2B 78 */	mr r29, r5
/* 8047E2F4  7C DE 33 78 */	mr r30, r6
/* 8047E2F8  7C FF 3B 78 */	mr r31, r7
/* 8047E2FC  7F 83 E3 78 */	mr r3, r28
/* 8047E300  48 00 03 B1 */	bl attr__Q212daObjMovebox5Act_cCFv
/* 8047E304  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8047E308  3C 60 80 48 */	lis r3, lit_3902@ha /* 0x804810FC@ha */
/* 8047E30C  C0 03 10 FC */	lfs f0, lit_3902@l(r3)  /* 0x804810FC@l */
/* 8047E310  EC 21 00 28 */	fsubs f1, f1, f0
/* 8047E314  7F 63 DB 78 */	mr r3, r27
/* 8047E318  7F 84 E3 78 */	mr r4, r28
/* 8047E31C  7F A5 EB 78 */	mr r5, r29
/* 8047E320  7F C6 F3 78 */	mr r6, r30
/* 8047E324  7F E7 FB 78 */	mr r7, r31
/* 8047E328  4B FF FB 31 */	bl wall_pos__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cisf
/* 8047E32C  80 1B 01 78 */	lwz r0, 0x178(r27)
/* 8047E330  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8047E334  68 03 00 01 */	xori r3, r0, 1
/* 8047E338  39 61 00 20 */	addi r11, r1, 0x20
/* 8047E33C  4B EE 3E E5 */	bl _restgpr_27
/* 8047E340  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047E344  7C 08 03 A6 */	mtlr r0
/* 8047E348  38 21 00 20 */	addi r1, r1, 0x20
/* 8047E34C  4E 80 00 20 */	blr 
