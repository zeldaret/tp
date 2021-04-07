lbl_802F9B74:
/* 802F9B74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F9B78  7C 08 02 A6 */	mflr r0
/* 802F9B7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F9B80  39 61 00 20 */	addi r11, r1, 0x20
/* 802F9B84  48 06 86 55 */	bl _savegpr_28
/* 802F9B88  7C 7C 1B 78 */	mr r28, r3
/* 802F9B8C  7C 9D 23 78 */	mr r29, r4
/* 802F9B90  7C BE 2B 78 */	mr r30, r5
/* 802F9B94  7C DF 33 78 */	mr r31, r6
/* 802F9B98  4B FF C0 61 */	bl __ct__7J2DPaneFv
/* 802F9B9C  3C 60 80 3D */	lis r3, __vt__9J2DWindow@ha /* 0x803CD108@ha */
/* 802F9BA0  38 03 D1 08 */	addi r0, r3, __vt__9J2DWindow@l /* 0x803CD108@l */
/* 802F9BA4  90 1C 00 00 */	stw r0, 0(r28)
/* 802F9BA8  38 00 00 00 */	li r0, 0
/* 802F9BAC  90 1C 01 00 */	stw r0, 0x100(r28)
/* 802F9BB0  90 1C 01 04 */	stw r0, 0x104(r28)
/* 802F9BB4  90 1C 01 08 */	stw r0, 0x108(r28)
/* 802F9BB8  90 1C 01 0C */	stw r0, 0x10c(r28)
/* 802F9BBC  90 1C 01 10 */	stw r0, 0x110(r28)
/* 802F9BC0  90 1C 01 24 */	stw r0, 0x124(r28)
/* 802F9BC4  38 00 FF FF */	li r0, -1
/* 802F9BC8  90 1C 01 28 */	stw r0, 0x128(r28)
/* 802F9BCC  90 1C 01 2C */	stw r0, 0x12c(r28)
/* 802F9BD0  90 1C 01 30 */	stw r0, 0x130(r28)
/* 802F9BD4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 802F9BD8  90 1C 01 38 */	stw r0, 0x138(r28)
/* 802F9BDC  90 1C 01 3C */	stw r0, 0x13c(r28)
/* 802F9BE0  7F 83 E3 78 */	mr r3, r28
/* 802F9BE4  7F A4 EB 78 */	mr r4, r29
/* 802F9BE8  7F C5 F3 78 */	mr r5, r30
/* 802F9BEC  7F E6 FB 78 */	mr r6, r31
/* 802F9BF0  48 00 05 29 */	bl private_readStream__9J2DWindowFP7J2DPaneP20JSURandomInputStreamP10JKRArchive
/* 802F9BF4  7F 83 E3 78 */	mr r3, r28
/* 802F9BF8  39 61 00 20 */	addi r11, r1, 0x20
/* 802F9BFC  48 06 86 29 */	bl _restgpr_28
/* 802F9C00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F9C04  7C 08 03 A6 */	mtlr r0
/* 802F9C08  38 21 00 20 */	addi r1, r1, 0x20
/* 802F9C0C  4E 80 00 20 */	blr 
