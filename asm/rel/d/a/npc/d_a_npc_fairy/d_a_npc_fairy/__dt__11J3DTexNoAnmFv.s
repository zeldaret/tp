lbl_809B2A30:
/* 809B2A30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B2A34  7C 08 02 A6 */	mflr r0
/* 809B2A38  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B2A3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B2A40  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B2A44  41 82 00 1C */	beq lbl_809B2A60
/* 809B2A48  3C A0 80 9C */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x809BA2A4@ha */
/* 809B2A4C  38 05 A2 A4 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x809BA2A4@l */
/* 809B2A50  90 1F 00 00 */	stw r0, 0(r31)
/* 809B2A54  7C 80 07 35 */	extsh. r0, r4
/* 809B2A58  40 81 00 08 */	ble lbl_809B2A60
/* 809B2A5C  4B 91 C2 E1 */	bl __dl__FPv
lbl_809B2A60:
/* 809B2A60  7F E3 FB 78 */	mr r3, r31
/* 809B2A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B2A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B2A6C  7C 08 03 A6 */	mtlr r0
/* 809B2A70  38 21 00 10 */	addi r1, r1, 0x10
/* 809B2A74  4E 80 00 20 */	blr 
