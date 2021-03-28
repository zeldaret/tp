lbl_800C0208:
/* 800C0208  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C020C  7C 08 02 A6 */	mflr r0
/* 800C0210  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C0214  39 61 00 20 */	addi r11, r1, 0x20
/* 800C0218  48 2A 1F C1 */	bl _savegpr_28
/* 800C021C  7C 7C 1B 78 */	mr r28, r3
/* 800C0220  7C 9D 23 78 */	mr r29, r4
/* 800C0224  3B C0 00 00 */	li r30, 0
/* 800C0228  48 00 00 34 */	b lbl_800C025C
lbl_800C022C:
/* 800C022C  57 DF 06 3E */	clrlwi r31, r30, 0x18
/* 800C0230  7F E3 FB 78 */	mr r3, r31
/* 800C0234  4B F6 DC E9 */	bl dComIfGp_getSelectItem__Fi
/* 800C0238  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 800C023C  7F 83 E3 78 */	mr r3, r28
/* 800C0240  7F A4 EB 78 */	mr r4, r29
/* 800C0244  4B FF FE D1 */	bl checkGroupItem__9daAlink_cCFii
/* 800C0248  2C 03 00 00 */	cmpwi r3, 0
/* 800C024C  41 82 00 0C */	beq lbl_800C0258
/* 800C0250  7F E3 FB 78 */	mr r3, r31
/* 800C0254  48 00 00 18 */	b lbl_800C026C
lbl_800C0258:
/* 800C0258  3B DE 00 01 */	addi r30, r30, 1
lbl_800C025C:
/* 800C025C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 800C0260  28 00 00 02 */	cmplwi r0, 2
/* 800C0264  41 80 FF C8 */	blt lbl_800C022C
/* 800C0268  38 60 00 02 */	li r3, 2
lbl_800C026C:
/* 800C026C  39 61 00 20 */	addi r11, r1, 0x20
/* 800C0270  48 2A 1F B5 */	bl _restgpr_28
/* 800C0274  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C0278  7C 08 03 A6 */	mtlr r0
/* 800C027C  38 21 00 20 */	addi r1, r1, 0x20
/* 800C0280  4E 80 00 20 */	blr 
