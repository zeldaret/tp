lbl_80570E10:
/* 80570E10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570E14  7C 08 02 A6 */	mflr r0
/* 80570E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570E1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570E20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80570E24  41 82 00 1C */	beq lbl_80570E40
/* 80570E28  3C A0 80 57 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x805733F8@ha */
/* 80570E2C  38 05 33 F8 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x805733F8@l */
/* 80570E30  90 1F 00 00 */	stw r0, 0(r31)
/* 80570E34  7C 80 07 35 */	extsh. r0, r4
/* 80570E38  40 81 00 08 */	ble lbl_80570E40
/* 80570E3C  4B D5 DF 01 */	bl __dl__FPv
lbl_80570E40:
/* 80570E40  7F E3 FB 78 */	mr r3, r31
/* 80570E44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570E4C  7C 08 03 A6 */	mtlr r0
/* 80570E50  38 21 00 10 */	addi r1, r1, 0x10
/* 80570E54  4E 80 00 20 */	blr 
