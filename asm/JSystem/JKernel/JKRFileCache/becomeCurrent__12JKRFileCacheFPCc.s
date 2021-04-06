lbl_802D4D44:
/* 802D4D44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D4D48  7C 08 02 A6 */	mflr r0
/* 802D4D4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D4D50  39 61 00 20 */	addi r11, r1, 0x20
/* 802D4D54  48 08 D4 89 */	bl _savegpr_29
/* 802D4D58  7C 7D 1B 78 */	mr r29, r3
/* 802D4D5C  48 00 07 C1 */	bl getDvdPathName__12JKRFileCacheCFPCc
/* 802D4D60  7C 7F 1B 78 */	mr r31, r3
/* 802D4D64  48 07 3F 91 */	bl DVDChangeDir
/* 802D4D68  30 03 FF FF */	addic r0, r3, -1
/* 802D4D6C  7C 00 19 10 */	subfe r0, r0, r3
/* 802D4D70  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802D4D74  7C 1E 03 78 */	mr r30, r0
/* 802D4D78  41 82 00 38 */	beq lbl_802D4DB0
/* 802D4D7C  93 AD 8E 98 */	stw r29, sCurrentVolume__13JKRFileLoader(r13)
/* 802D4D80  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D4D84  80 9D 00 4C */	lwz r4, 0x4c(r29)
/* 802D4D88  4B FF 97 C1 */	bl free__7JKRHeapFPv
/* 802D4D8C  93 FD 00 4C */	stw r31, 0x4c(r29)
/* 802D4D90  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 802D4D94  88 03 00 01 */	lbz r0, 1(r3)
/* 802D4D98  7C 00 07 75 */	extsb. r0, r0
/* 802D4D9C  41 82 00 20 */	beq lbl_802D4DBC
/* 802D4DA0  3C 80 80 3A */	lis r4, JKRFileCache__stringBase0@ha /* 0x8039D158@ha */
/* 802D4DA4  38 84 D1 58 */	addi r4, r4, JKRFileCache__stringBase0@l /* 0x8039D158@l */
/* 802D4DA8  48 09 3D 15 */	bl strcat
/* 802D4DAC  48 00 00 10 */	b lbl_802D4DBC
lbl_802D4DB0:
/* 802D4DB0  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D4DB4  7F E4 FB 78 */	mr r4, r31
/* 802D4DB8  4B FF 97 91 */	bl free__7JKRHeapFPv
lbl_802D4DBC:
/* 802D4DBC  7F C3 F3 78 */	mr r3, r30
/* 802D4DC0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D4DC4  48 08 D4 65 */	bl _restgpr_29
/* 802D4DC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D4DCC  7C 08 03 A6 */	mtlr r0
/* 802D4DD0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D4DD4  4E 80 00 20 */	blr 
