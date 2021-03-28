lbl_802D9C54:
/* 802D9C54  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 802D9C58  7C 08 02 A6 */	mflr r0
/* 802D9C5C  90 01 01 34 */	stw r0, 0x134(r1)
/* 802D9C60  39 61 01 30 */	addi r11, r1, 0x130
/* 802D9C64  48 08 85 61 */	bl _savegpr_23
/* 802D9C68  7C 77 1B 78 */	mr r23, r3
/* 802D9C6C  7C 98 23 78 */	mr r24, r4
/* 802D9C70  7C B9 2B 78 */	mr r25, r5
/* 802D9C74  7C DA 33 78 */	mr r26, r6
/* 802D9C78  7C FB 3B 78 */	mr r27, r7
/* 802D9C7C  7D 1C 43 78 */	mr r28, r8
/* 802D9C80  7D 3D 4B 78 */	mr r29, r9
/* 802D9C84  7D 5E 53 78 */	mr r30, r10
/* 802D9C88  83 E1 01 38 */	lwz r31, 0x138(r1)
/* 802D9C8C  38 61 00 10 */	addi r3, r1, 0x10
/* 802D9C90  4B FF F8 F5 */	bl __ct__10JKRDvdFileFv
/* 802D9C94  38 61 00 10 */	addi r3, r1, 0x10
/* 802D9C98  7E E4 BB 78 */	mr r4, r23
/* 802D9C9C  4B FF FC 29 */	bl open__10JKRDvdFileFl
/* 802D9CA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D9CA4  40 82 00 18 */	bne lbl_802D9CBC
/* 802D9CA8  38 61 00 10 */	addi r3, r1, 0x10
/* 802D9CAC  38 80 FF FF */	li r4, -1
/* 802D9CB0  4B FF FA 99 */	bl __dt__10JKRDvdFileFv
/* 802D9CB4  38 60 00 00 */	li r3, 0
/* 802D9CB8  48 00 00 40 */	b lbl_802D9CF8
lbl_802D9CBC:
/* 802D9CBC  93 E1 00 08 */	stw r31, 8(r1)
/* 802D9CC0  38 61 00 10 */	addi r3, r1, 0x10
/* 802D9CC4  7F 04 C3 78 */	mr r4, r24
/* 802D9CC8  7F 25 CB 78 */	mr r5, r25
/* 802D9CCC  7F 46 D3 78 */	mr r6, r26
/* 802D9CD0  7F 67 DB 78 */	mr r7, r27
/* 802D9CD4  7F 88 E3 78 */	mr r8, r28
/* 802D9CD8  7F A9 EB 78 */	mr r9, r29
/* 802D9CDC  7F CA F3 78 */	mr r10, r30
/* 802D9CE0  48 00 00 31 */	bl loadToMainRAM__12JKRDvdRipperFP10JKRDvdFilePUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D9CE4  7C 7F 1B 78 */	mr r31, r3
/* 802D9CE8  38 61 00 10 */	addi r3, r1, 0x10
/* 802D9CEC  38 80 FF FF */	li r4, -1
/* 802D9CF0  4B FF FA 59 */	bl __dt__10JKRDvdFileFv
/* 802D9CF4  7F E3 FB 78 */	mr r3, r31
lbl_802D9CF8:
/* 802D9CF8  39 61 01 30 */	addi r11, r1, 0x130
/* 802D9CFC  48 08 85 15 */	bl _restgpr_23
/* 802D9D00  80 01 01 34 */	lwz r0, 0x134(r1)
/* 802D9D04  7C 08 03 A6 */	mtlr r0
/* 802D9D08  38 21 01 30 */	addi r1, r1, 0x130
/* 802D9D0C  4E 80 00 20 */	blr 
