lbl_80D29E34:
/* 80D29E34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D29E38  7C 08 02 A6 */	mflr r0
/* 80D29E3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D29E40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D29E44  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D29E48  41 82 00 1C */	beq lbl_80D29E64
/* 80D29E4C  3C A0 80 D3 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80D2BA50@ha */
/* 80D29E50  38 05 BA 50 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80D2BA50@l */
/* 80D29E54  90 1F 00 00 */	stw r0, 0(r31)
/* 80D29E58  7C 80 07 35 */	extsh. r0, r4
/* 80D29E5C  40 81 00 08 */	ble lbl_80D29E64
/* 80D29E60  4B 5A 4E DD */	bl __dl__FPv
lbl_80D29E64:
/* 80D29E64  7F E3 FB 78 */	mr r3, r31
/* 80D29E68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D29E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D29E70  7C 08 03 A6 */	mtlr r0
/* 80D29E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80D29E78  4E 80 00 20 */	blr 
