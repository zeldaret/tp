lbl_80AEF034:
/* 80AEF034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEF038  7C 08 02 A6 */	mflr r0
/* 80AEF03C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEF040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEF044  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEF048  41 82 00 1C */	beq lbl_80AEF064
/* 80AEF04C  3C A0 80 AF */	lis r5, __vt__8cM3dGAab@ha
/* 80AEF050  38 05 F3 90 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80AEF054  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AEF058  7C 80 07 35 */	extsh. r0, r4
/* 80AEF05C  40 81 00 08 */	ble lbl_80AEF064
/* 80AEF060  4B 7D FC DC */	b __dl__FPv
lbl_80AEF064:
/* 80AEF064  7F E3 FB 78 */	mr r3, r31
/* 80AEF068  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEF06C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEF070  7C 08 03 A6 */	mtlr r0
/* 80AEF074  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEF078  4E 80 00 20 */	blr 
