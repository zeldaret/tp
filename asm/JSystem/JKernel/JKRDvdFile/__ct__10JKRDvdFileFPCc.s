lbl_802D95F8:
/* 802D95F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D95FC  7C 08 02 A6 */	mflr r0
/* 802D9600  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D9604  39 61 00 20 */	addi r11, r1, 0x20
/* 802D9608  48 08 8B D5 */	bl _savegpr_29
/* 802D960C  7C 7D 1B 78 */	mr r29, r3
/* 802D9610  7C 9F 23 78 */	mr r31, r4
/* 802D9614  7F A0 EB 78 */	mr r0, r29
/* 802D9618  7C 1E 03 78 */	mr r30, r0
/* 802D961C  4B FF 7E 61 */	bl __ct__11JKRDisposerFv
/* 802D9620  3C 60 80 3D */	lis r3, __vt__7JKRFile@ha
/* 802D9624  38 03 C3 28 */	addi r0, r3, __vt__7JKRFile@l
/* 802D9628  90 1E 00 00 */	stw r0, 0(r30)
/* 802D962C  38 00 00 00 */	li r0, 0
/* 802D9630  98 1E 00 18 */	stb r0, 0x18(r30)
/* 802D9634  3C 60 80 3D */	lis r3, __vt__10JKRDvdFile@ha
/* 802D9638  38 03 C4 38 */	addi r0, r3, __vt__10JKRDvdFile@l
/* 802D963C  90 1D 00 00 */	stw r0, 0(r29)
/* 802D9640  38 7D 00 E4 */	addi r3, r29, 0xe4
/* 802D9644  7F A4 EB 78 */	mr r4, r29
/* 802D9648  48 00 27 B5 */	bl __ct__10JSUPtrLinkFPv
/* 802D964C  7F A3 EB 78 */	mr r3, r29
/* 802D9650  48 00 01 95 */	bl initiate__10JKRDvdFileFv
/* 802D9654  7F A3 EB 78 */	mr r3, r29
/* 802D9658  7F E4 FB 78 */	mr r4, r31
/* 802D965C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802D9660  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D9664  7D 89 03 A6 */	mtctr r12
/* 802D9668  4E 80 04 21 */	bctrl 
/* 802D966C  98 7D 00 18 */	stb r3, 0x18(r29)
/* 802D9670  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 802D9674  28 00 00 00 */	cmplwi r0, 0
/* 802D9678  41 82 00 0C */	beq lbl_802D9684
/* 802D967C  7F A3 EB 78 */	mr r3, r29
/* 802D9680  48 00 00 08 */	b lbl_802D9688
lbl_802D9684:
/* 802D9684  7F A3 EB 78 */	mr r3, r29
lbl_802D9688:
/* 802D9688  39 61 00 20 */	addi r11, r1, 0x20
/* 802D968C  48 08 8B 9D */	bl _restgpr_29
/* 802D9690  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D9694  7C 08 03 A6 */	mtlr r0
/* 802D9698  38 21 00 20 */	addi r1, r1, 0x20
/* 802D969C  4E 80 00 20 */	blr 
