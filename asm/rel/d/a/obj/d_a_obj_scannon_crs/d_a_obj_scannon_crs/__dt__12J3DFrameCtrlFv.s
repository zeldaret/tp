lbl_80CC97F4:
/* 80CC97F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC97F8  7C 08 02 A6 */	mflr r0
/* 80CC97FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC9800  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC9804  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC9808  41 82 00 1C */	beq lbl_80CC9824
/* 80CC980C  3C A0 80 CD */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80CCB284@ha */
/* 80CC9810  38 05 B2 84 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80CCB284@l */
/* 80CC9814  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC9818  7C 80 07 35 */	extsh. r0, r4
/* 80CC981C  40 81 00 08 */	ble lbl_80CC9824
/* 80CC9820  4B 60 55 1D */	bl __dl__FPv
lbl_80CC9824:
/* 80CC9824  7F E3 FB 78 */	mr r3, r31
/* 80CC9828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC982C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC9830  7C 08 03 A6 */	mtlr r0
/* 80CC9834  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC9838  4E 80 00 20 */	blr 
