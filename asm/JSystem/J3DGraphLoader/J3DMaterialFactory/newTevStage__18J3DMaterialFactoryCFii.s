lbl_803322A4:
/* 803322A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803322A8  7C 08 02 A6 */	mflr r0
/* 803322AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803322B0  81 04 00 04 */	lwz r8, 4(r4)
/* 803322B4  80 E4 00 08 */	lwz r7, 8(r4)
/* 803322B8  54 A0 08 3C */	slwi r0, r5, 1
/* 803322BC  7C 07 02 2E */	lhzx r0, r7, r0
/* 803322C0  1C 00 01 4C */	mulli r0, r0, 0x14c
/* 803322C4  7C A8 02 14 */	add r5, r8, r0
/* 803322C8  54 C0 08 3C */	slwi r0, r6, 1
/* 803322CC  7C A5 02 14 */	add r5, r5, r0
/* 803322D0  A0 05 00 E4 */	lhz r0, 0xe4(r5)
/* 803322D4  28 00 FF FF */	cmplwi r0, 0xffff
/* 803322D8  41 82 00 18 */	beq lbl_803322F0
/* 803322DC  80 84 00 50 */	lwz r4, 0x50(r4)
/* 803322E0  1C 00 00 14 */	mulli r0, r0, 0x14
/* 803322E4  7C 84 02 14 */	add r4, r4, r0
/* 803322E8  4B D0 87 E5 */	bl __ct__11J3DTevStageFRC15J3DTevStageInfo
/* 803322EC  48 00 00 08 */	b lbl_803322F4
lbl_803322F0:
/* 803322F0  4B CD BF 41 */	bl __ct__11J3DTevStageFv
lbl_803322F4:
/* 803322F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803322F8  7C 08 03 A6 */	mtlr r0
/* 803322FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80332300  4E 80 00 20 */	blr 
