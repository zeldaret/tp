lbl_80C7EB34:
/* 80C7EB34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7EB38  7C 08 02 A6 */	mflr r0
/* 80C7EB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7EB40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7EB44  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7EB48  41 82 00 1C */	beq lbl_80C7EB64
/* 80C7EB4C  3C A0 80 C8 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C81FB0@ha */
/* 80C7EB50  38 05 1F B0 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C81FB0@l */
/* 80C7EB54  90 1F 00 00 */	stw r0, 0(r31)
/* 80C7EB58  7C 80 07 35 */	extsh. r0, r4
/* 80C7EB5C  40 81 00 08 */	ble lbl_80C7EB64
/* 80C7EB60  4B 65 01 DD */	bl __dl__FPv
lbl_80C7EB64:
/* 80C7EB64  7F E3 FB 78 */	mr r3, r31
/* 80C7EB68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7EB6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7EB70  7C 08 03 A6 */	mtlr r0
/* 80C7EB74  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7EB78  4E 80 00 20 */	blr 
