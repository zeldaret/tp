lbl_80A62A70:
/* 80A62A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A62A74  7C 08 02 A6 */	mflr r0
/* 80A62A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A62A7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A62A80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A62A84  41 82 00 1C */	beq lbl_80A62AA0
/* 80A62A88  3C A0 80 A6 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A6410C@ha */
/* 80A62A8C  38 05 41 0C */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80A6410C@l */
/* 80A62A90  90 1F 00 04 */	stw r0, 4(r31)
/* 80A62A94  7C 80 07 35 */	extsh. r0, r4
/* 80A62A98  40 81 00 08 */	ble lbl_80A62AA0
/* 80A62A9C  4B 86 C2 A1 */	bl __dl__FPv
lbl_80A62AA0:
/* 80A62AA0  7F E3 FB 78 */	mr r3, r31
/* 80A62AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A62AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A62AAC  7C 08 03 A6 */	mtlr r0
/* 80A62AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A62AB4  4E 80 00 20 */	blr 
