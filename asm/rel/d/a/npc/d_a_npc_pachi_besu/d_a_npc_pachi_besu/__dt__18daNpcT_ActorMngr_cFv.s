lbl_80A95BB8:
/* 80A95BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A95BBC  7C 08 02 A6 */	mflr r0
/* 80A95BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A95BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A95BC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A95BCC  41 82 00 1C */	beq lbl_80A95BE8
/* 80A95BD0  3C A0 80 A9 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A979BC@ha */
/* 80A95BD4  38 05 79 BC */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80A979BC@l */
/* 80A95BD8  90 1F 00 04 */	stw r0, 4(r31)
/* 80A95BDC  7C 80 07 35 */	extsh. r0, r4
/* 80A95BE0  40 81 00 08 */	ble lbl_80A95BE8
/* 80A95BE4  4B 83 91 59 */	bl __dl__FPv
lbl_80A95BE8:
/* 80A95BE8  7F E3 FB 78 */	mr r3, r31
/* 80A95BEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A95BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A95BF4  7C 08 03 A6 */	mtlr r0
/* 80A95BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A95BFC  4E 80 00 20 */	blr 
