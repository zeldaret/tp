lbl_802BE7AC:
/* 802BE7AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BE7B0  7C 08 02 A6 */	mflr r0
/* 802BE7B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BE7B8  39 61 00 20 */	addi r11, r1, 0x20
/* 802BE7BC  48 0A 3A 21 */	bl _savegpr_29
/* 802BE7C0  7C 7D 1B 78 */	mr r29, r3
/* 802BE7C4  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 802BE7C8  38 00 00 00 */	li r0, 0
/* 802BE7CC  90 03 00 18 */	stw r0, 0x18(r3)
/* 802BE7D0  80 04 00 00 */	lwz r0, 0(r4)
/* 802BE7D4  90 01 00 08 */	stw r0, 8(r1)
/* 802BE7D8  38 81 00 08 */	addi r4, r1, 8
/* 802BE7DC  4B FF FA F9 */	bl startLevelSound__14Z2SoundObjBaseF10JAISoundIDUlSc
/* 802BE7E0  7C 7E 1B 78 */	mr r30, r3
/* 802BE7E4  28 1F 00 00 */	cmplwi r31, 0
/* 802BE7E8  41 82 00 3C */	beq lbl_802BE824
/* 802BE7EC  28 1E 00 00 */	cmplwi r30, 0
/* 802BE7F0  41 82 00 34 */	beq lbl_802BE824
/* 802BE7F4  80 7E 00 00 */	lwz r3, 0(r30)
/* 802BE7F8  28 03 00 00 */	cmplwi r3, 0
/* 802BE7FC  41 82 00 28 */	beq lbl_802BE824
/* 802BE800  4B FE 3C 4D */	bl acceptsNewAudible__8JAISoundCFv
/* 802BE804  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BE808  41 82 00 1C */	beq lbl_802BE824
/* 802BE80C  80 7E 00 00 */	lwz r3, 0(r30)
/* 802BE810  7F E4 FB 78 */	mr r4, r31
/* 802BE814  38 BD 00 20 */	addi r5, r29, 0x20
/* 802BE818  38 C0 00 00 */	li r6, 0
/* 802BE81C  38 E0 00 00 */	li r7, 0
/* 802BE820  4B FE 3C 55 */	bl func_802A2474
lbl_802BE824:
/* 802BE824  93 FD 00 18 */	stw r31, 0x18(r29)
/* 802BE828  7F C3 F3 78 */	mr r3, r30
/* 802BE82C  39 61 00 20 */	addi r11, r1, 0x20
/* 802BE830  48 0A 39 F9 */	bl _restgpr_29
/* 802BE834  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BE838  7C 08 03 A6 */	mtlr r0
/* 802BE83C  38 21 00 20 */	addi r1, r1, 0x20
/* 802BE840  4E 80 00 20 */	blr 
