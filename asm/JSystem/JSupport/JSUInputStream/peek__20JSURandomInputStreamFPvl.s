lbl_802DC458:
/* 802DC458  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DC45C  7C 08 02 A6 */	mflr r0
/* 802DC460  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DC464  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC468  48 08 5D 71 */	bl _savegpr_28
/* 802DC46C  7C 7C 1B 78 */	mr r28, r3
/* 802DC470  7C 9D 23 78 */	mr r29, r4
/* 802DC474  7C BE 2B 78 */	mr r30, r5
/* 802DC478  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC47C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC480  7D 89 03 A6 */	mtctr r12
/* 802DC484  4E 80 04 21 */	bctrl 
/* 802DC488  7C 7F 1B 78 */	mr r31, r3
/* 802DC48C  7F 83 E3 78 */	mr r3, r28
/* 802DC490  7F A4 EB 78 */	mr r4, r29
/* 802DC494  7F C5 F3 78 */	mr r5, r30
/* 802DC498  4B FF FE 01 */	bl read__14JSUInputStreamFPvl
/* 802DC49C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DC4A0  41 82 00 20 */	beq lbl_802DC4C0
/* 802DC4A4  7F 83 E3 78 */	mr r3, r28
/* 802DC4A8  7F E4 FB 78 */	mr r4, r31
/* 802DC4AC  38 A0 00 00 */	li r5, 0
/* 802DC4B0  81 9C 00 00 */	lwz r12, 0(r28)
/* 802DC4B4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802DC4B8  7D 89 03 A6 */	mtctr r12
/* 802DC4BC  4E 80 04 21 */	bctrl 
lbl_802DC4C0:
/* 802DC4C0  7F C3 F3 78 */	mr r3, r30
/* 802DC4C4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC4C8  48 08 5D 5D */	bl _restgpr_28
/* 802DC4CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DC4D0  7C 08 03 A6 */	mtlr r0
/* 802DC4D4  38 21 00 20 */	addi r1, r1, 0x20
/* 802DC4D8  4E 80 00 20 */	blr 
