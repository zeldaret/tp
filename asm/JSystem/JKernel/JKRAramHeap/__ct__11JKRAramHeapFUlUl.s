lbl_802D2E44:
/* 802D2E44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D2E48  7C 08 02 A6 */	mflr r0
/* 802D2E4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D2E50  39 61 00 20 */	addi r11, r1, 0x20
/* 802D2E54  48 08 F3 89 */	bl _savegpr_29
/* 802D2E58  7C 7D 1B 78 */	mr r29, r3
/* 802D2E5C  7C 9E 23 78 */	mr r30, r4
/* 802D2E60  7C BF 2B 78 */	mr r31, r5
/* 802D2E64  4B FF E6 19 */	bl __ct__11JKRDisposerFv
/* 802D2E68  3C 60 80 3D */	lis r3, __vt__11JKRAramHeap@ha /* 0x803CC168@ha */
/* 802D2E6C  38 03 C1 68 */	addi r0, r3, __vt__11JKRAramHeap@l /* 0x803CC168@l */
/* 802D2E70  90 1D 00 00 */	stw r0, 0(r29)
/* 802D2E74  38 7D 00 18 */	addi r3, r29, 0x18
/* 802D2E78  48 06 C1 91 */	bl OSInitMutex
/* 802D2E7C  7F A3 EB 78 */	mr r3, r29
/* 802D2E80  4B FF B9 BD */	bl findFromRoot__7JKRHeapFPv
/* 802D2E84  90 7D 00 30 */	stw r3, 0x30(r29)
/* 802D2E88  57 E0 00 34 */	rlwinm r0, r31, 0, 0, 0x1a
/* 802D2E8C  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 802D2E90  38 1E 00 1F */	addi r0, r30, 0x1f
/* 802D2E94  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 802D2E98  90 1D 00 34 */	stw r0, 0x34(r29)
/* 802D2E9C  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 802D2EA0  80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 802D2EA4  7C 03 02 14 */	add r0, r3, r0
/* 802D2EA8  90 1D 00 38 */	stw r0, 0x38(r29)
/* 802D2EAC  38 00 00 FF */	li r0, 0xff
/* 802D2EB0  98 1D 00 40 */	stb r0, 0x40(r29)
/* 802D2EB4  38 60 00 24 */	li r3, 0x24
/* 802D2EB8  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 802D2EBC  38 A0 00 00 */	li r5, 0
/* 802D2EC0  4B FF BD D9 */	bl __nw__FUlP7JKRHeapi
/* 802D2EC4  7C 64 1B 79 */	or. r4, r3, r3
/* 802D2EC8  41 82 00 20 */	beq lbl_802D2EE8
/* 802D2ECC  80 9D 00 34 */	lwz r4, 0x34(r29)
/* 802D2ED0  38 A0 00 00 */	li r5, 0
/* 802D2ED4  80 DD 00 3C */	lwz r6, 0x3c(r29)
/* 802D2ED8  38 E0 00 FF */	li r7, 0xff
/* 802D2EDC  39 00 00 00 */	li r8, 0
/* 802D2EE0  48 00 04 25 */	bl __ct__12JKRAramBlockFUlUlUlUcb
/* 802D2EE4  7C 64 1B 78 */	mr r4, r3
lbl_802D2EE8:
/* 802D2EE8  3C 60 80 43 */	lis r3, sAramList__11JKRAramHeap@ha /* 0x8043430C@ha */
/* 802D2EEC  38 63 43 0C */	addi r3, r3, sAramList__11JKRAramHeap@l /* 0x8043430C@l */
/* 802D2EF0  38 84 00 04 */	addi r4, r4, 4
/* 802D2EF4  48 00 90 59 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802D2EF8  7F A3 EB 78 */	mr r3, r29
/* 802D2EFC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D2F00  48 08 F3 29 */	bl _restgpr_29
/* 802D2F04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D2F08  7C 08 03 A6 */	mtlr r0
/* 802D2F0C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D2F10  4E 80 00 20 */	blr 
