lbl_80C69D44:
/* 80C69D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C69D48  7C 08 02 A6 */	mflr r0
/* 80C69D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C69D50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C69D54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C69D58  41 82 00 1C */	beq lbl_80C69D74
/* 80C69D5C  3C A0 80 C7 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C6A4B4@ha */
/* 80C69D60  38 05 A4 B4 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C6A4B4@l */
/* 80C69D64  90 1F 00 00 */	stw r0, 0(r31)
/* 80C69D68  7C 80 07 35 */	extsh. r0, r4
/* 80C69D6C  40 81 00 08 */	ble lbl_80C69D74
/* 80C69D70  4B 66 4F CD */	bl __dl__FPv
lbl_80C69D74:
/* 80C69D74  7F E3 FB 78 */	mr r3, r31
/* 80C69D78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C69D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C69D80  7C 08 03 A6 */	mtlr r0
/* 80C69D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80C69D88  4E 80 00 20 */	blr 
