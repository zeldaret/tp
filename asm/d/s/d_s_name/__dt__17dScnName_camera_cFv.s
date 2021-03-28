lbl_80259294:
/* 80259294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80259298  7C 08 02 A6 */	mflr r0
/* 8025929C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802592A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802592A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 802592A8  41 82 00 1C */	beq lbl_802592C4
/* 802592AC  3C A0 80 3C */	lis r5, __vt__17dScnName_camera_c@ha
/* 802592B0  38 05 31 40 */	addi r0, r5, __vt__17dScnName_camera_c@l
/* 802592B4  90 1F 02 3C */	stw r0, 0x23c(r31)
/* 802592B8  7C 80 07 35 */	extsh. r0, r4
/* 802592BC  40 81 00 08 */	ble lbl_802592C4
/* 802592C0  48 07 5A 7D */	bl __dl__FPv
lbl_802592C4:
/* 802592C4  7F E3 FB 78 */	mr r3, r31
/* 802592C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802592CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802592D0  7C 08 03 A6 */	mtlr r0
/* 802592D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802592D8  4E 80 00 20 */	blr 
