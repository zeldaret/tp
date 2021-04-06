lbl_809F82FC:
/* 809F82FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F8300  7C 08 02 A6 */	mflr r0
/* 809F8304  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F8308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F830C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F8310  41 82 00 1C */	beq lbl_809F832C
/* 809F8314  3C A0 80 A0 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x809F8E2C@ha */
/* 809F8318  38 05 8E 2C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x809F8E2C@l */
/* 809F831C  90 1F 00 00 */	stw r0, 0(r31)
/* 809F8320  7C 80 07 35 */	extsh. r0, r4
/* 809F8324  40 81 00 08 */	ble lbl_809F832C
/* 809F8328  4B 8D 6A 15 */	bl __dl__FPv
lbl_809F832C:
/* 809F832C  7F E3 FB 78 */	mr r3, r31
/* 809F8330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F8334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F8338  7C 08 03 A6 */	mtlr r0
/* 809F833C  38 21 00 10 */	addi r1, r1, 0x10
/* 809F8340  4E 80 00 20 */	blr 
