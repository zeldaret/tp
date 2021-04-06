lbl_80AEAE54:
/* 80AEAE54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEAE58  7C 08 02 A6 */	mflr r0
/* 80AEAE5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEAE60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEAE64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEAE68  41 82 00 1C */	beq lbl_80AEAE84
/* 80AEAE6C  3C A0 80 AF */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80AEBD18@ha */
/* 80AEAE70  38 05 BD 18 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80AEBD18@l */
/* 80AEAE74  90 1F 00 00 */	stw r0, 0(r31)
/* 80AEAE78  7C 80 07 35 */	extsh. r0, r4
/* 80AEAE7C  40 81 00 08 */	ble lbl_80AEAE84
/* 80AEAE80  4B 7E 3E BD */	bl __dl__FPv
lbl_80AEAE84:
/* 80AEAE84  7F E3 FB 78 */	mr r3, r31
/* 80AEAE88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEAE8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEAE90  7C 08 03 A6 */	mtlr r0
/* 80AEAE94  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEAE98  4E 80 00 20 */	blr 
