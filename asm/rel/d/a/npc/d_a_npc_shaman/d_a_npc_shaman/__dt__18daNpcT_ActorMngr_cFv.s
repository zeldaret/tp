lbl_80AE5E28:
/* 80AE5E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE5E2C  7C 08 02 A6 */	mflr r0
/* 80AE5E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE5E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE5E38  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE5E3C  41 82 00 1C */	beq lbl_80AE5E58
/* 80AE5E40  3C A0 80 AE */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AE7730@ha */
/* 80AE5E44  38 05 77 30 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80AE7730@l */
/* 80AE5E48  90 1F 00 04 */	stw r0, 4(r31)
/* 80AE5E4C  7C 80 07 35 */	extsh. r0, r4
/* 80AE5E50  40 81 00 08 */	ble lbl_80AE5E58
/* 80AE5E54  4B 7E 8E E9 */	bl __dl__FPv
lbl_80AE5E58:
/* 80AE5E58  7F E3 FB 78 */	mr r3, r31
/* 80AE5E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE5E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5E64  7C 08 03 A6 */	mtlr r0
/* 80AE5E68  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE5E6C  4E 80 00 20 */	blr 
