lbl_804E2A98:
/* 804E2A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2A9C  7C 08 02 A6 */	mflr r0
/* 804E2AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2AA8  93 C1 00 08 */	stw r30, 8(r1)
/* 804E2AAC  7C 7E 1B 79 */	or. r30, r3, r3
/* 804E2AB0  7C 9F 23 78 */	mr r31, r4
/* 804E2AB4  41 82 00 38 */	beq lbl_804E2AEC
/* 804E2AB8  3C 60 80 4E */	lis r3, __vt__12dBgS_AcchCir@ha
/* 804E2ABC  38 03 50 68 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 804E2AC0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 804E2AC4  38 7E 00 14 */	addi r3, r30, 0x14
/* 804E2AC8  38 80 FF FF */	li r4, -1
/* 804E2ACC  4B D8 C4 4C */	b __dt__8cM3dGCirFv
/* 804E2AD0  7F C3 F3 78 */	mr r3, r30
/* 804E2AD4  38 80 00 00 */	li r4, 0
/* 804E2AD8  4B D8 55 D8 */	b __dt__13cBgS_PolyInfoFv
/* 804E2ADC  7F E0 07 35 */	extsh. r0, r31
/* 804E2AE0  40 81 00 0C */	ble lbl_804E2AEC
/* 804E2AE4  7F C3 F3 78 */	mr r3, r30
/* 804E2AE8  4B DE C2 54 */	b __dl__FPv
lbl_804E2AEC:
/* 804E2AEC  7F C3 F3 78 */	mr r3, r30
/* 804E2AF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E2AF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E2AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E2AFC  7C 08 03 A6 */	mtlr r0
/* 804E2B00  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2B04  4E 80 00 20 */	blr 
