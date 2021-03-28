lbl_802D96A0:
/* 802D96A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D96A4  7C 08 02 A6 */	mflr r0
/* 802D96A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D96AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D96B0  48 08 8B 2D */	bl _savegpr_29
/* 802D96B4  7C 7D 1B 78 */	mr r29, r3
/* 802D96B8  7C 9F 23 78 */	mr r31, r4
/* 802D96BC  7F A0 EB 78 */	mr r0, r29
/* 802D96C0  7C 1E 03 78 */	mr r30, r0
/* 802D96C4  4B FF 7D B9 */	bl __ct__11JKRDisposerFv
/* 802D96C8  3C 60 80 3D */	lis r3, __vt__7JKRFile@ha
/* 802D96CC  38 03 C3 28 */	addi r0, r3, __vt__7JKRFile@l
/* 802D96D0  90 1E 00 00 */	stw r0, 0(r30)
/* 802D96D4  38 00 00 00 */	li r0, 0
/* 802D96D8  98 1E 00 18 */	stb r0, 0x18(r30)
/* 802D96DC  3C 60 80 3D */	lis r3, __vt__10JKRDvdFile@ha
/* 802D96E0  38 03 C4 38 */	addi r0, r3, __vt__10JKRDvdFile@l
/* 802D96E4  90 1D 00 00 */	stw r0, 0(r29)
/* 802D96E8  38 7D 00 E4 */	addi r3, r29, 0xe4
/* 802D96EC  7F A4 EB 78 */	mr r4, r29
/* 802D96F0  48 00 27 0D */	bl __ct__10JSUPtrLinkFPv
/* 802D96F4  7F A3 EB 78 */	mr r3, r29
/* 802D96F8  48 00 00 ED */	bl initiate__10JKRDvdFileFv
/* 802D96FC  7F A3 EB 78 */	mr r3, r29
/* 802D9700  7F E4 FB 78 */	mr r4, r31
/* 802D9704  81 9D 00 00 */	lwz r12, 0(r29)
/* 802D9708  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802D970C  7D 89 03 A6 */	mtctr r12
/* 802D9710  4E 80 04 21 */	bctrl 
/* 802D9714  98 7D 00 18 */	stb r3, 0x18(r29)
/* 802D9718  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 802D971C  28 00 00 00 */	cmplwi r0, 0
/* 802D9720  41 82 00 0C */	beq lbl_802D972C
/* 802D9724  7F A3 EB 78 */	mr r3, r29
/* 802D9728  48 00 00 08 */	b lbl_802D9730
lbl_802D972C:
/* 802D972C  7F A3 EB 78 */	mr r3, r29
lbl_802D9730:
/* 802D9730  39 61 00 20 */	addi r11, r1, 0x20
/* 802D9734  48 08 8A F5 */	bl _restgpr_29
/* 802D9738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D973C  7C 08 03 A6 */	mtlr r0
/* 802D9740  38 21 00 20 */	addi r1, r1, 0x20
/* 802D9744  4E 80 00 20 */	blr 
