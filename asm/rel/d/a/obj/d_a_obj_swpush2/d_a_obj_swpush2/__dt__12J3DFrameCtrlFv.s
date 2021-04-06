lbl_80CFE690:
/* 80CFE690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFE694  7C 08 02 A6 */	mflr r0
/* 80CFE698  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFE69C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFE6A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CFE6A4  41 82 00 1C */	beq lbl_80CFE6C0
/* 80CFE6A8  3C A0 80 D0 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80CFFEE8@ha */
/* 80CFE6AC  38 05 FE E8 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80CFFEE8@l */
/* 80CFE6B0  90 1F 00 00 */	stw r0, 0(r31)
/* 80CFE6B4  7C 80 07 35 */	extsh. r0, r4
/* 80CFE6B8  40 81 00 08 */	ble lbl_80CFE6C0
/* 80CFE6BC  4B 5D 06 81 */	bl __dl__FPv
lbl_80CFE6C0:
/* 80CFE6C0  7F E3 FB 78 */	mr r3, r31
/* 80CFE6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFE6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFE6CC  7C 08 03 A6 */	mtlr r0
/* 80CFE6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFE6D4  4E 80 00 20 */	blr 
