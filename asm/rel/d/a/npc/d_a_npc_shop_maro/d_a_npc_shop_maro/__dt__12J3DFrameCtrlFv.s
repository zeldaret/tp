lbl_80AEC774:
/* 80AEC774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEC778  7C 08 02 A6 */	mflr r0
/* 80AEC77C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEC780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEC784  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEC788  41 82 00 1C */	beq lbl_80AEC7A4
/* 80AEC78C  3C A0 80 AF */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80AEC988@ha */
/* 80AEC790  38 05 C9 88 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80AEC988@l */
/* 80AEC794  90 1F 00 00 */	stw r0, 0(r31)
/* 80AEC798  7C 80 07 35 */	extsh. r0, r4
/* 80AEC79C  40 81 00 08 */	ble lbl_80AEC7A4
/* 80AEC7A0  4B 7E 25 9D */	bl __dl__FPv
lbl_80AEC7A4:
/* 80AEC7A4  7F E3 FB 78 */	mr r3, r31
/* 80AEC7A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEC7AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEC7B0  7C 08 03 A6 */	mtlr r0
/* 80AEC7B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEC7B8  4E 80 00 20 */	blr 
