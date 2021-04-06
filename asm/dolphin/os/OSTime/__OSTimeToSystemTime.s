lbl_80342780:
/* 80342780  7C 08 02 A6 */	mflr r0
/* 80342784  90 01 00 04 */	stw r0, 4(r1)
/* 80342788  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034278C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80342790  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80342794  7C 7F 1B 78 */	mr r31, r3
/* 80342798  7C 9E 23 78 */	mr r30, r4
/* 8034279C  4B FF AF 59 */	bl OSDisableInterrupts
/* 803427A0  3C A0 80 00 */	lis r5, 0x8000 /* 0x800030DC@ha */
/* 803427A4  80 85 30 DC */	lwz r4, 0x30DC(r5)  /* 0x800030DC@l */
/* 803427A8  80 05 30 D8 */	lwz r0, 0x30d8(r5)
/* 803427AC  7F C4 F0 14 */	addc r30, r4, r30
/* 803427B0  7F E0 F9 14 */	adde r31, r0, r31
/* 803427B4  4B FF AF 69 */	bl OSRestoreInterrupts
/* 803427B8  7F C4 F3 78 */	mr r4, r30
/* 803427BC  7F E3 FB 78 */	mr r3, r31
/* 803427C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803427C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803427C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803427CC  38 21 00 20 */	addi r1, r1, 0x20
/* 803427D0  7C 08 03 A6 */	mtlr r0
/* 803427D4  4E 80 00 20 */	blr 
