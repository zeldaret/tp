lbl_80C869FC:
/* 80C869FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C86A00  7C 08 02 A6 */	mflr r0
/* 80C86A04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C86A08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C86A0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C86A10  41 82 00 1C */	beq lbl_80C86A2C
/* 80C86A14  3C A0 80 C8 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80C86A18  38 05 7B 80 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80C86A1C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C86A20  7C 80 07 35 */	extsh. r0, r4
/* 80C86A24  40 81 00 08 */	ble lbl_80C86A2C
/* 80C86A28  4B 64 83 14 */	b __dl__FPv
lbl_80C86A2C:
/* 80C86A2C  7F E3 FB 78 */	mr r3, r31
/* 80C86A30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C86A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C86A38  7C 08 03 A6 */	mtlr r0
/* 80C86A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C86A40  4E 80 00 20 */	blr 
