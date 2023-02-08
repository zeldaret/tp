lbl_80846D48:
/* 80846D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80846D4C  7C 08 02 A6 */	mflr r0
/* 80846D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80846D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80846D58  7C 7F 1B 79 */	or. r31, r3, r3
/* 80846D5C  41 82 00 1C */	beq lbl_80846D78
/* 80846D60  3C A0 80 85 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80848F60@ha */
/* 80846D64  38 05 8F 60 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80848F60@l */
/* 80846D68  90 1F 00 00 */	stw r0, 0(r31)
/* 80846D6C  7C 80 07 35 */	extsh. r0, r4
/* 80846D70  40 81 00 08 */	ble lbl_80846D78
/* 80846D74  4B A8 7F C9 */	bl __dl__FPv
lbl_80846D78:
/* 80846D78  7F E3 FB 78 */	mr r3, r31
/* 80846D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80846D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80846D84  7C 08 03 A6 */	mtlr r0
/* 80846D88  38 21 00 10 */	addi r1, r1, 0x10
/* 80846D8C  4E 80 00 20 */	blr 
