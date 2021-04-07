lbl_808771B0:
/* 808771B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808771B4  7C 08 02 A6 */	mflr r0
/* 808771B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808771BC  3C 60 80 94 */	lis r3, daMP_UsedTextureSetQueue@ha /* 0x80944900@ha */
/* 808771C0  38 63 49 00 */	addi r3, r3, daMP_UsedTextureSetQueue@l /* 0x80944900@l */
/* 808771C4  38 81 00 08 */	addi r4, r1, 8
/* 808771C8  38 A0 00 00 */	li r5, 0
/* 808771CC  4B AC 78 F1 */	bl OSReceiveMessage
/* 808771D0  2C 03 00 01 */	cmpwi r3, 1
/* 808771D4  40 82 00 0C */	bne lbl_808771E0
/* 808771D8  80 61 00 08 */	lwz r3, 8(r1)
/* 808771DC  48 00 00 08 */	b lbl_808771E4
lbl_808771E0:
/* 808771E0  38 60 00 00 */	li r3, 0
lbl_808771E4:
/* 808771E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808771E8  7C 08 03 A6 */	mtlr r0
/* 808771EC  38 21 00 10 */	addi r1, r1, 0x10
/* 808771F0  4E 80 00 20 */	blr 
