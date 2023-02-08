lbl_80CDD584:
/* 80CDD584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDD588  7C 08 02 A6 */	mflr r0
/* 80CDD58C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDD590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDD594  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CDD598  41 82 00 1C */	beq lbl_80CDD5B4
/* 80CDD59C  3C A0 80 CE */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80CDE448@ha */
/* 80CDD5A0  38 05 E4 48 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80CDE448@l */
/* 80CDD5A4  90 1F 00 00 */	stw r0, 0(r31)
/* 80CDD5A8  7C 80 07 35 */	extsh. r0, r4
/* 80CDD5AC  40 81 00 08 */	ble lbl_80CDD5B4
/* 80CDD5B0  4B 5F 17 8D */	bl __dl__FPv
lbl_80CDD5B4:
/* 80CDD5B4  7F E3 FB 78 */	mr r3, r31
/* 80CDD5B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDD5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDD5C0  7C 08 03 A6 */	mtlr r0
/* 80CDD5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDD5C8  4E 80 00 20 */	blr 
