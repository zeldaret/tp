lbl_80AEEFEC:
/* 80AEEFEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEEFF0  7C 08 02 A6 */	mflr r0
/* 80AEEFF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEEFF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEEFFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEF000  41 82 00 1C */	beq lbl_80AEF01C
/* 80AEF004  3C A0 80 AF */	lis r5, __vt__8cM3dGCyl@ha /* 0x80AEF39C@ha */
/* 80AEF008  38 05 F3 9C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80AEF39C@l */
/* 80AEF00C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AEF010  7C 80 07 35 */	extsh. r0, r4
/* 80AEF014  40 81 00 08 */	ble lbl_80AEF01C
/* 80AEF018  4B 7D FD 25 */	bl __dl__FPv
lbl_80AEF01C:
/* 80AEF01C  7F E3 FB 78 */	mr r3, r31
/* 80AEF020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEF024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEF028  7C 08 03 A6 */	mtlr r0
/* 80AEF02C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEF030  4E 80 00 20 */	blr 
