lbl_80A87A28:
/* 80A87A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A87A2C  7C 08 02 A6 */	mflr r0
/* 80A87A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A87A34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A87A38  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A87A3C  41 82 00 1C */	beq lbl_80A87A58
/* 80A87A40  3C A0 80 A9 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A88AB0@ha */
/* 80A87A44  38 05 8A B0 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x80A88AB0@l */
/* 80A87A48  90 1F 00 04 */	stw r0, 4(r31)
/* 80A87A4C  7C 80 07 35 */	extsh. r0, r4
/* 80A87A50  40 81 00 08 */	ble lbl_80A87A58
/* 80A87A54  4B 84 72 E9 */	bl __dl__FPv
lbl_80A87A58:
/* 80A87A58  7F E3 FB 78 */	mr r3, r31
/* 80A87A5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A87A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A87A64  7C 08 03 A6 */	mtlr r0
/* 80A87A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80A87A6C  4E 80 00 20 */	blr 
