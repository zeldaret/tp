lbl_804D97D4:
/* 804D97D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D97D8  7C 08 02 A6 */	mflr r0
/* 804D97DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D97E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D97E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D97E8  41 82 00 1C */	beq lbl_804D9804
/* 804D97EC  3C A0 80 4E */	lis r5, __vt__12J3DFrameCtrl@ha
/* 804D97F0  38 05 A3 00 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 804D97F4  90 1F 00 00 */	stw r0, 0(r31)
/* 804D97F8  7C 80 07 35 */	extsh. r0, r4
/* 804D97FC  40 81 00 08 */	ble lbl_804D9804
/* 804D9800  4B DF 55 3C */	b __dl__FPv
lbl_804D9804:
/* 804D9804  7F E3 FB 78 */	mr r3, r31
/* 804D9808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D980C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D9810  7C 08 03 A6 */	mtlr r0
/* 804D9814  38 21 00 10 */	addi r1, r1, 0x10
/* 804D9818  4E 80 00 20 */	blr 
