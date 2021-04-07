lbl_802D3304:
/* 802D3304  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D3308  7C 08 02 A6 */	mflr r0
/* 802D330C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D3310  39 61 00 20 */	addi r11, r1, 0x20
/* 802D3314  48 08 EE BD */	bl _savegpr_26
/* 802D3318  7C 7A 1B 78 */	mr r26, r3
/* 802D331C  7C 9B 23 78 */	mr r27, r4
/* 802D3320  7C BC 2B 78 */	mr r28, r5
/* 802D3324  7C DD 33 78 */	mr r29, r6
/* 802D3328  7C FE 3B 78 */	mr r30, r7
/* 802D332C  7D 1F 43 78 */	mr r31, r8
/* 802D3330  3C 60 80 3D */	lis r3, __vt__12JKRAramBlock@ha /* 0x803CC178@ha */
/* 802D3334  38 03 C1 78 */	addi r0, r3, __vt__12JKRAramBlock@l /* 0x803CC178@l */
/* 802D3338  90 1A 00 00 */	stw r0, 0(r26)
/* 802D333C  38 7A 00 04 */	addi r3, r26, 4
/* 802D3340  7F 44 D3 78 */	mr r4, r26
/* 802D3344  48 00 8A B9 */	bl __ct__10JSUPtrLinkFPv
/* 802D3348  93 7A 00 14 */	stw r27, 0x14(r26)
/* 802D334C  93 9A 00 18 */	stw r28, 0x18(r26)
/* 802D3350  93 BA 00 1C */	stw r29, 0x1c(r26)
/* 802D3354  9B DA 00 20 */	stb r30, 0x20(r26)
/* 802D3358  9B FA 00 21 */	stb r31, 0x21(r26)
/* 802D335C  7F 43 D3 78 */	mr r3, r26
/* 802D3360  39 61 00 20 */	addi r11, r1, 0x20
/* 802D3364  48 08 EE B9 */	bl _restgpr_26
/* 802D3368  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D336C  7C 08 03 A6 */	mtlr r0
/* 802D3370  38 21 00 20 */	addi r1, r1, 0x20
/* 802D3374  4E 80 00 20 */	blr 
