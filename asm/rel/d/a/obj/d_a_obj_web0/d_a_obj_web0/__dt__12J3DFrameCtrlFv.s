lbl_80D34D44:
/* 80D34D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D34D48  7C 08 02 A6 */	mflr r0
/* 80D34D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D34D50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D34D54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D34D58  41 82 00 1C */	beq lbl_80D34D74
/* 80D34D5C  3C A0 80 D3 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80D34D60  38 05 52 70 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80D34D64  90 1F 00 00 */	stw r0, 0(r31)
/* 80D34D68  7C 80 07 35 */	extsh. r0, r4
/* 80D34D6C  40 81 00 08 */	ble lbl_80D34D74
/* 80D34D70  4B 59 9F CC */	b __dl__FPv
lbl_80D34D74:
/* 80D34D74  7F E3 FB 78 */	mr r3, r31
/* 80D34D78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D34D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D34D80  7C 08 03 A6 */	mtlr r0
/* 80D34D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80D34D88  4E 80 00 20 */	blr 
