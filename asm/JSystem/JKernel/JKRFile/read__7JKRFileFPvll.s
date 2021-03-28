lbl_802D9518:
/* 802D9518  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D951C  7C 08 02 A6 */	mflr r0
/* 802D9520  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D9524  39 61 00 20 */	addi r11, r1, 0x20
/* 802D9528  48 08 8C B1 */	bl _savegpr_28
/* 802D952C  7C 7C 1B 78 */	mr r28, r3
/* 802D9530  7C 9D 23 78 */	mr r29, r4
/* 802D9534  7C BE 2B 78 */	mr r30, r5
/* 802D9538  7C DF 33 78 */	mr r31, r6
lbl_802D953C:
/* 802D953C  7F 83 E3 78 */	mr r3, r28
/* 802D9540  7F A4 EB 78 */	mr r4, r29
/* 802D9544  7F C5 F3 78 */	mr r5, r30
/* 802D9548  7F E6 FB 78 */	mr r6, r31
/* 802D954C  81 9C 00 00 */	lwz r12, 0(r28)
/* 802D9550  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D9554  7D 89 03 A6 */	mtctr r12
/* 802D9558  4E 80 04 21 */	bctrl 
/* 802D955C  7C 1E 18 00 */	cmpw r30, r3
/* 802D9560  41 82 00 0C */	beq lbl_802D956C
/* 802D9564  48 07 34 61 */	bl VIWaitForRetrace
/* 802D9568  4B FF FF D4 */	b lbl_802D953C
lbl_802D956C:
/* 802D956C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D9570  48 08 8C B5 */	bl _restgpr_28
/* 802D9574  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D9578  7C 08 03 A6 */	mtlr r0
/* 802D957C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D9580  4E 80 00 20 */	blr 
