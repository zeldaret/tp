lbl_80AD3A60:
/* 80AD3A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD3A64  7C 08 02 A6 */	mflr r0
/* 80AD3A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD3A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD3A70  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD3A74  41 82 00 1C */	beq lbl_80AD3A90
/* 80AD3A78  3C A0 80 AD */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AD550C@ha */
/* 80AD3A7C  38 05 55 0C */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80AD550C@l */
/* 80AD3A80  90 1F 00 04 */	stw r0, 4(r31)
/* 80AD3A84  7C 80 07 35 */	extsh. r0, r4
/* 80AD3A88  40 81 00 08 */	ble lbl_80AD3A90
/* 80AD3A8C  4B 7F B2 B1 */	bl __dl__FPv
lbl_80AD3A90:
/* 80AD3A90  7F E3 FB 78 */	mr r3, r31
/* 80AD3A94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD3A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD3A9C  7C 08 03 A6 */	mtlr r0
/* 80AD3AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD3AA4  4E 80 00 20 */	blr 
