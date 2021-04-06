lbl_802F4420:
/* 802F4420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F4424  7C 08 02 A6 */	mflr r0
/* 802F4428  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F442C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F4430  7C 7F 1B 79 */	or. r31, r3, r3
/* 802F4434  41 82 00 1C */	beq lbl_802F4450
/* 802F4438  3C A0 80 3D */	lis r5, __vt__8J2DPrint@ha /* 0x803CCFA0@ha */
/* 802F443C  38 05 CF A0 */	addi r0, r5, __vt__8J2DPrint@l /* 0x803CCFA0@l */
/* 802F4440  90 1F 00 00 */	stw r0, 0(r31)
/* 802F4444  7C 80 07 35 */	extsh. r0, r4
/* 802F4448  40 81 00 08 */	ble lbl_802F4450
/* 802F444C  4B FD A8 F1 */	bl __dl__FPv
lbl_802F4450:
/* 802F4450  7F E3 FB 78 */	mr r3, r31
/* 802F4454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F4458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F445C  7C 08 03 A6 */	mtlr r0
/* 802F4460  38 21 00 10 */	addi r1, r1, 0x10
/* 802F4464  4E 80 00 20 */	blr 
