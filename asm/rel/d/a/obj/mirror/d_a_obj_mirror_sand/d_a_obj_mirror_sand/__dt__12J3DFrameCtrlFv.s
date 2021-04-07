lbl_80C984C0:
/* 80C984C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C984C4  7C 08 02 A6 */	mflr r0
/* 80C984C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C984CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C984D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C984D4  41 82 00 1C */	beq lbl_80C984F0
/* 80C984D8  3C A0 80 CA */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C98A44@ha */
/* 80C984DC  38 05 8A 44 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C98A44@l */
/* 80C984E0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C984E4  7C 80 07 35 */	extsh. r0, r4
/* 80C984E8  40 81 00 08 */	ble lbl_80C984F0
/* 80C984EC  4B 63 68 51 */	bl __dl__FPv
lbl_80C984F0:
/* 80C984F0  7F E3 FB 78 */	mr r3, r31
/* 80C984F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C984F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C984FC  7C 08 03 A6 */	mtlr r0
/* 80C98500  38 21 00 10 */	addi r1, r1, 0x10
/* 80C98504  4E 80 00 20 */	blr 
