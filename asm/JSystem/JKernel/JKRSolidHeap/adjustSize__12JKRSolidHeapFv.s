lbl_802D0BF4:
/* 802D0BF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0BF8  7C 08 02 A6 */	mflr r0
/* 802D0BFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D0C00  39 61 00 20 */	addi r11, r1, 0x20
/* 802D0C04  48 09 15 D9 */	bl _savegpr_29
/* 802D0C08  7C 7D 1B 78 */	mr r29, r3
/* 802D0C0C  80 63 00 50 */	lwz r3, 0x50(r3)
/* 802D0C10  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 802D0C14  28 1F 00 00 */	cmplwi r31, 0
/* 802D0C18  41 82 00 7C */	beq lbl_802D0C94
/* 802D0C1C  38 7D 00 18 */	addi r3, r29, 0x18
/* 802D0C20  48 06 E4 21 */	bl OSLockMutex
/* 802D0C24  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 802D0C28  7C BD 18 50 */	subf r5, r29, r3
/* 802D0C2C  80 1D 00 70 */	lwz r0, 0x70(r29)
/* 802D0C30  7C 63 00 50 */	subf r3, r3, r0
/* 802D0C34  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D0C38  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 802D0C3C  7F E3 FB 78 */	mr r3, r31
/* 802D0C40  7F A4 EB 78 */	mr r4, r29
/* 802D0C44  7F E5 F2 14 */	add r31, r5, r30
/* 802D0C48  7F E5 FB 78 */	mr r5, r31
/* 802D0C4C  4B FF DA 39 */	bl resize__7JKRHeapFPvUl
/* 802D0C50  2C 03 FF FF */	cmpwi r3, -1
/* 802D0C54  41 82 00 30 */	beq lbl_802D0C84
/* 802D0C58  38 00 00 00 */	li r0, 0
/* 802D0C5C  90 1D 00 6C */	stw r0, 0x6c(r29)
/* 802D0C60  93 DD 00 38 */	stw r30, 0x38(r29)
/* 802D0C64  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 802D0C68  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 802D0C6C  7C 03 02 14 */	add r0, r3, r0
/* 802D0C70  90 1D 00 34 */	stw r0, 0x34(r29)
/* 802D0C74  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802D0C78  90 1D 00 70 */	stw r0, 0x70(r29)
/* 802D0C7C  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802D0C80  90 1D 00 74 */	stw r0, 0x74(r29)
lbl_802D0C84:
/* 802D0C84  38 7D 00 18 */	addi r3, r29, 0x18
/* 802D0C88  48 06 E4 95 */	bl OSUnlockMutex
/* 802D0C8C  7F E3 FB 78 */	mr r3, r31
/* 802D0C90  48 00 00 08 */	b lbl_802D0C98
lbl_802D0C94:
/* 802D0C94  38 60 FF FF */	li r3, -1
lbl_802D0C98:
/* 802D0C98  39 61 00 20 */	addi r11, r1, 0x20
/* 802D0C9C  48 09 15 8D */	bl _restgpr_29
/* 802D0CA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0CA4  7C 08 03 A6 */	mtlr r0
/* 802D0CA8  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0CAC  4E 80 00 20 */	blr 
