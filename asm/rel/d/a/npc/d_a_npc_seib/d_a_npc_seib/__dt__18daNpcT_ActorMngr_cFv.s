lbl_80AC6BE4:
/* 80AC6BE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6BE8  7C 08 02 A6 */	mflr r0
/* 80AC6BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6BF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC6BF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC6BF8  41 82 00 1C */	beq lbl_80AC6C14
/* 80AC6BFC  3C A0 80 AC */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC734C@ha */
/* 80AC6C00  38 05 73 4C */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC734C@l */
/* 80AC6C04  90 1F 00 04 */	stw r0, 4(r31)
/* 80AC6C08  7C 80 07 35 */	extsh. r0, r4
/* 80AC6C0C  40 81 00 08 */	ble lbl_80AC6C14
/* 80AC6C10  4B 80 81 2D */	bl __dl__FPv
lbl_80AC6C14:
/* 80AC6C14  7F E3 FB 78 */	mr r3, r31
/* 80AC6C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC6C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6C20  7C 08 03 A6 */	mtlr r0
/* 80AC6C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6C28  4E 80 00 20 */	blr 
