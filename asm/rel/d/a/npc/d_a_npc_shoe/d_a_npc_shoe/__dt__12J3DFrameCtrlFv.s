lbl_80AEA224:
/* 80AEA224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEA228  7C 08 02 A6 */	mflr r0
/* 80AEA22C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEA230  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEA234  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEA238  41 82 00 1C */	beq lbl_80AEA254
/* 80AEA23C  3C A0 80 AF */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80AEA240  38 05 A6 A0 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80AEA244  90 1F 00 00 */	stw r0, 0(r31)
/* 80AEA248  7C 80 07 35 */	extsh. r0, r4
/* 80AEA24C  40 81 00 08 */	ble lbl_80AEA254
/* 80AEA250  4B 7E 4A EC */	b __dl__FPv
lbl_80AEA254:
/* 80AEA254  7F E3 FB 78 */	mr r3, r31
/* 80AEA258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEA25C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEA260  7C 08 03 A6 */	mtlr r0
/* 80AEA264  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEA268  4E 80 00 20 */	blr 
