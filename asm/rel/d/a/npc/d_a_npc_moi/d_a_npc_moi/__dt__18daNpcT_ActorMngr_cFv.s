lbl_80A79E60:
/* 80A79E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A79E64  7C 08 02 A6 */	mflr r0
/* 80A79E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A79E6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A79E70  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A79E74  41 82 00 1C */	beq lbl_80A79E90
/* 80A79E78  3C A0 80 A8 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A7BE88@ha */
/* 80A79E7C  38 05 BE 88 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80A7BE88@l */
/* 80A79E80  90 1F 00 04 */	stw r0, 4(r31)
/* 80A79E84  7C 80 07 35 */	extsh. r0, r4
/* 80A79E88  40 81 00 08 */	ble lbl_80A79E90
/* 80A79E8C  4B 85 4E B1 */	bl __dl__FPv
lbl_80A79E90:
/* 80A79E90  7F E3 FB 78 */	mr r3, r31
/* 80A79E94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A79E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A79E9C  7C 08 03 A6 */	mtlr r0
/* 80A79EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A79EA4  4E 80 00 20 */	blr 
