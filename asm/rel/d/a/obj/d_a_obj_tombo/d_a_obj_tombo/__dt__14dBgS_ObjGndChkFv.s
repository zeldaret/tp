lbl_80D1997C:
/* 80D1997C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D19980  7C 08 02 A6 */	mflr r0
/* 80D19984  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D19988  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1998C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D19990  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D19994  7C 9F 23 78 */	mr r31, r4
/* 80D19998  41 82 00 40 */	beq lbl_80D199D8
/* 80D1999C  3C 80 80 D2 */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x80D1B89C@ha */
/* 80D199A0  38 84 B8 9C */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x80D1B89C@l */
/* 80D199A4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D199A8  38 04 00 0C */	addi r0, r4, 0xc
/* 80D199AC  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80D199B0  38 04 00 18 */	addi r0, r4, 0x18
/* 80D199B4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80D199B8  38 04 00 24 */	addi r0, r4, 0x24
/* 80D199BC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D199C0  38 80 00 00 */	li r4, 0
/* 80D199C4  4B 35 DC 2D */	bl __dt__11dBgS_GndChkFv
/* 80D199C8  7F E0 07 35 */	extsh. r0, r31
/* 80D199CC  40 81 00 0C */	ble lbl_80D199D8
/* 80D199D0  7F C3 F3 78 */	mr r3, r30
/* 80D199D4  4B 5B 53 69 */	bl __dl__FPv
lbl_80D199D8:
/* 80D199D8  7F C3 F3 78 */	mr r3, r30
/* 80D199DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D199E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D199E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D199E8  7C 08 03 A6 */	mtlr r0
/* 80D199EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D199F0  4E 80 00 20 */	blr 
