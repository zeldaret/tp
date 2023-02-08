lbl_80B4C5A4:
/* 80B4C5A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4C5A8  7C 08 02 A6 */	mflr r0
/* 80B4C5AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4C5B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4C5B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4C5B8  41 82 00 1C */	beq lbl_80B4C5D4
/* 80B4C5BC  3C A0 80 B5 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B4D0E0@ha */
/* 80B4C5C0  38 05 D0 E0 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80B4D0E0@l */
/* 80B4C5C4  90 1F 00 04 */	stw r0, 4(r31)
/* 80B4C5C8  7C 80 07 35 */	extsh. r0, r4
/* 80B4C5CC  40 81 00 08 */	ble lbl_80B4C5D4
/* 80B4C5D0  4B 78 27 6D */	bl __dl__FPv
lbl_80B4C5D4:
/* 80B4C5D4  7F E3 FB 78 */	mr r3, r31
/* 80B4C5D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4C5DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4C5E0  7C 08 03 A6 */	mtlr r0
/* 80B4C5E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4C5E8  4E 80 00 20 */	blr 
