lbl_80D67B30:
/* 80D67B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D67B34  7C 08 02 A6 */	mflr r0
/* 80D67B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D67B3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D67B40  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D67B44  41 82 00 1C */	beq lbl_80D67B60
/* 80D67B48  3C A0 80 D6 */	lis r5, __vt__15dDlst_daTitle_c@ha
/* 80D67B4C  38 05 7D 40 */	addi r0, r5, __vt__15dDlst_daTitle_c@l
/* 80D67B50  90 1F 00 00 */	stw r0, 0(r31)
/* 80D67B54  7C 80 07 35 */	extsh. r0, r4
/* 80D67B58  40 81 00 08 */	ble lbl_80D67B60
/* 80D67B5C  4B 56 71 E0 */	b __dl__FPv
lbl_80D67B60:
/* 80D67B60  7F E3 FB 78 */	mr r3, r31
/* 80D67B64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D67B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D67B6C  7C 08 03 A6 */	mtlr r0
/* 80D67B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D67B74  4E 80 00 20 */	blr 
