lbl_802D503C:
/* 802D503C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802D5040  7C 08 02 A6 */	mflr r0
/* 802D5044  90 01 01 24 */	stw r0, 0x124(r1)
/* 802D5048  39 61 01 20 */	addi r11, r1, 0x120
/* 802D504C  48 08 D1 89 */	bl _savegpr_27
/* 802D5050  7C 7B 1B 78 */	mr r27, r3
/* 802D5054  7C 9C 23 78 */	mr r28, r4
/* 802D5058  7C BD 2B 78 */	mr r29, r5
/* 802D505C  7C FE 3B 78 */	mr r30, r7
/* 802D5060  80 63 00 48 */	lwz r3, 0x48(r3)
/* 802D5064  48 09 3B 81 */	bl strlen
/* 802D5068  3B E1 00 08 */	addi r31, r1, 8
/* 802D506C  7F FF 1A 14 */	add r31, r31, r3
/* 802D5070  38 61 00 08 */	addi r3, r1, 8
/* 802D5074  80 9B 00 48 */	lwz r4, 0x48(r27)
/* 802D5078  48 09 3A B5 */	bl strcpy
/* 802D507C  7F 63 DB 78 */	mr r3, r27
/* 802D5080  38 81 00 08 */	addi r4, r1, 8
/* 802D5084  7F C5 F3 78 */	mr r5, r30
/* 802D5088  48 00 03 89 */	bl findFile__12JKRFileCacheCFPcPCc
/* 802D508C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D5090  41 82 00 28 */	beq lbl_802D50B8
/* 802D5094  7F 63 DB 78 */	mr r3, r27
/* 802D5098  7F 84 E3 78 */	mr r4, r28
/* 802D509C  7F A5 EB 78 */	mr r5, r29
/* 802D50A0  7F E6 FB 78 */	mr r6, r31
/* 802D50A4  81 9B 00 00 */	lwz r12, 0(r27)
/* 802D50A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D50AC  7D 89 03 A6 */	mtctr r12
/* 802D50B0  4E 80 04 21 */	bctrl 
/* 802D50B4  48 00 00 08 */	b lbl_802D50BC
lbl_802D50B8:
/* 802D50B8  38 60 00 00 */	li r3, 0
lbl_802D50BC:
/* 802D50BC  39 61 01 20 */	addi r11, r1, 0x120
/* 802D50C0  48 08 D1 61 */	bl _restgpr_27
/* 802D50C4  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802D50C8  7C 08 03 A6 */	mtlr r0
/* 802D50CC  38 21 01 20 */	addi r1, r1, 0x120
/* 802D50D0  4E 80 00 20 */	blr 
