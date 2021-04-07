lbl_80A983C8:
/* 80A983C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A983CC  7C 08 02 A6 */	mflr r0
/* 80A983D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A983D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A983D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A983DC  41 82 00 1C */	beq lbl_80A983F8
/* 80A983E0  3C A0 80 AA */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80A9C00C@ha */
/* 80A983E4  38 05 C0 0C */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80A9C00C@l */
/* 80A983E8  90 1F 00 00 */	stw r0, 0(r31)
/* 80A983EC  7C 80 07 35 */	extsh. r0, r4
/* 80A983F0  40 81 00 08 */	ble lbl_80A983F8
/* 80A983F4  4B 83 69 49 */	bl __dl__FPv
lbl_80A983F8:
/* 80A983F8  7F E3 FB 78 */	mr r3, r31
/* 80A983FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A98400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A98404  7C 08 03 A6 */	mtlr r0
/* 80A98408  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9840C  4E 80 00 20 */	blr 
