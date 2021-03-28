lbl_80AE5FF4:
/* 80AE5FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE5FF8  7C 08 02 A6 */	mflr r0
/* 80AE5FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE6000  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE6004  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE6008  41 82 00 1C */	beq lbl_80AE6024
/* 80AE600C  3C A0 80 AE */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80AE6010  38 05 76 D0 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80AE6014  90 1F 00 00 */	stw r0, 0(r31)
/* 80AE6018  7C 80 07 35 */	extsh. r0, r4
/* 80AE601C  40 81 00 08 */	ble lbl_80AE6024
/* 80AE6020  4B 7E 8D 1C */	b __dl__FPv
lbl_80AE6024:
/* 80AE6024  7F E3 FB 78 */	mr r3, r31
/* 80AE6028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE602C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE6030  7C 08 03 A6 */	mtlr r0
/* 80AE6034  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE6038  4E 80 00 20 */	blr 
