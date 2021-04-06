lbl_809FFA40:
/* 809FFA40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FFA44  7C 08 02 A6 */	mflr r0
/* 809FFA48  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FFA4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FFA50  7C 7F 1B 79 */	or. r31, r3, r3
/* 809FFA54  41 82 00 1C */	beq lbl_809FFA70
/* 809FFA58  3C A0 80 A0 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80A01110@ha */
/* 809FFA5C  38 05 11 10 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80A01110@l */
/* 809FFA60  90 1F 00 00 */	stw r0, 0(r31)
/* 809FFA64  7C 80 07 35 */	extsh. r0, r4
/* 809FFA68  40 81 00 08 */	ble lbl_809FFA70
/* 809FFA6C  4B 8C F2 D1 */	bl __dl__FPv
lbl_809FFA70:
/* 809FFA70  7F E3 FB 78 */	mr r3, r31
/* 809FFA74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FFA78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FFA7C  7C 08 03 A6 */	mtlr r0
/* 809FFA80  38 21 00 10 */	addi r1, r1, 0x10
/* 809FFA84  4E 80 00 20 */	blr 
