lbl_80B93070:
/* 80B93070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B93074  7C 08 02 A6 */	mflr r0
/* 80B93078  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9307C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B93080  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B93084  41 82 00 1C */	beq lbl_80B930A0
/* 80B93088  3C A0 80 B9 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80B93B78@ha */
/* 80B9308C  38 05 3B 78 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80B93B78@l */
/* 80B93090  90 1F 00 00 */	stw r0, 0(r31)
/* 80B93094  7C 80 07 35 */	extsh. r0, r4
/* 80B93098  40 81 00 08 */	ble lbl_80B930A0
/* 80B9309C  4B 73 BC A1 */	bl __dl__FPv
lbl_80B930A0:
/* 80B930A0  7F E3 FB 78 */	mr r3, r31
/* 80B930A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B930A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B930AC  7C 08 03 A6 */	mtlr r0
/* 80B930B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B930B4  4E 80 00 20 */	blr 
