lbl_80D0E58C:
/* 80D0E58C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E590  7C 08 02 A6 */	mflr r0
/* 80D0E594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0E59C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0E5A0  41 82 00 1C */	beq lbl_80D0E5BC
/* 80D0E5A4  3C A0 80 D1 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80D0E784@ha */
/* 80D0E5A8  38 05 E7 84 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80D0E784@l */
/* 80D0E5AC  90 1F 00 00 */	stw r0, 0(r31)
/* 80D0E5B0  7C 80 07 35 */	extsh. r0, r4
/* 80D0E5B4  40 81 00 08 */	ble lbl_80D0E5BC
/* 80D0E5B8  4B 5C 07 85 */	bl __dl__FPv
lbl_80D0E5BC:
/* 80D0E5BC  7F E3 FB 78 */	mr r3, r31
/* 80D0E5C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0E5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E5C8  7C 08 03 A6 */	mtlr r0
/* 80D0E5CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E5D0  4E 80 00 20 */	blr 
