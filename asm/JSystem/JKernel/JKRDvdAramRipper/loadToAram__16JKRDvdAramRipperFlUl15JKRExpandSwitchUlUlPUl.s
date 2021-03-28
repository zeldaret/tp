lbl_802DA874:
/* 802DA874  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802DA878  7C 08 02 A6 */	mflr r0
/* 802DA87C  90 01 01 24 */	stw r0, 0x124(r1)
/* 802DA880  39 61 01 20 */	addi r11, r1, 0x120
/* 802DA884  48 08 79 4D */	bl _savegpr_26
/* 802DA888  7C 7A 1B 78 */	mr r26, r3
/* 802DA88C  7C 9B 23 78 */	mr r27, r4
/* 802DA890  7C BC 2B 78 */	mr r28, r5
/* 802DA894  7C DD 33 78 */	mr r29, r6
/* 802DA898  7C FE 3B 78 */	mr r30, r7
/* 802DA89C  7D 1F 43 78 */	mr r31, r8
/* 802DA8A0  38 61 00 08 */	addi r3, r1, 8
/* 802DA8A4  4B FF EC E1 */	bl __ct__10JKRDvdFileFv
/* 802DA8A8  38 61 00 08 */	addi r3, r1, 8
/* 802DA8AC  7F 44 D3 78 */	mr r4, r26
/* 802DA8B0  4B FF F0 15 */	bl open__10JKRDvdFileFl
/* 802DA8B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802DA8B8  40 82 00 18 */	bne lbl_802DA8D0
/* 802DA8BC  38 61 00 08 */	addi r3, r1, 8
/* 802DA8C0  38 80 FF FF */	li r4, -1
/* 802DA8C4  4B FF EE 85 */	bl __dt__10JKRDvdFileFv
/* 802DA8C8  38 60 00 00 */	li r3, 0
/* 802DA8CC  48 00 00 34 */	b lbl_802DA900
lbl_802DA8D0:
/* 802DA8D0  38 61 00 08 */	addi r3, r1, 8
/* 802DA8D4  7F 64 DB 78 */	mr r4, r27
/* 802DA8D8  7F 85 E3 78 */	mr r5, r28
/* 802DA8DC  7F A6 EB 78 */	mr r6, r29
/* 802DA8E0  7F C7 F3 78 */	mr r7, r30
/* 802DA8E4  7F E8 FB 78 */	mr r8, r31
/* 802DA8E8  48 00 00 31 */	bl loadToAram__16JKRDvdAramRipperFP10JKRDvdFileUl15JKRExpandSwitchUlUlPUl
/* 802DA8EC  7C 7F 1B 78 */	mr r31, r3
/* 802DA8F0  38 61 00 08 */	addi r3, r1, 8
/* 802DA8F4  38 80 FF FF */	li r4, -1
/* 802DA8F8  4B FF EE 51 */	bl __dt__10JKRDvdFileFv
/* 802DA8FC  7F E3 FB 78 */	mr r3, r31
lbl_802DA900:
/* 802DA900  39 61 01 20 */	addi r11, r1, 0x120
/* 802DA904  48 08 79 19 */	bl _restgpr_26
/* 802DA908  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802DA90C  7C 08 03 A6 */	mtlr r0
/* 802DA910  38 21 01 20 */	addi r1, r1, 0x120
/* 802DA914  4E 80 00 20 */	blr 
