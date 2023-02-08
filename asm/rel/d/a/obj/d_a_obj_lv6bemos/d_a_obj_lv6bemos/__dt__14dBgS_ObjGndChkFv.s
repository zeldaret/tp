lbl_80C7DC78:
/* 80C7DC78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7DC7C  7C 08 02 A6 */	mflr r0
/* 80C7DC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7DC84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7DC88  93 C1 00 08 */	stw r30, 8(r1)
/* 80C7DC8C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C7DC90  7C 9F 23 78 */	mr r31, r4
/* 80C7DC94  41 82 00 40 */	beq lbl_80C7DCD4
/* 80C7DC98  3C 80 80 C8 */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x80C7E0B0@ha */
/* 80C7DC9C  38 84 E0 B0 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x80C7E0B0@l */
/* 80C7DCA0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C7DCA4  38 04 00 0C */	addi r0, r4, 0xc
/* 80C7DCA8  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80C7DCAC  38 04 00 18 */	addi r0, r4, 0x18
/* 80C7DCB0  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80C7DCB4  38 04 00 24 */	addi r0, r4, 0x24
/* 80C7DCB8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C7DCBC  38 80 00 00 */	li r4, 0
/* 80C7DCC0  4B 3F 99 31 */	bl __dt__11dBgS_GndChkFv
/* 80C7DCC4  7F E0 07 35 */	extsh. r0, r31
/* 80C7DCC8  40 81 00 0C */	ble lbl_80C7DCD4
/* 80C7DCCC  7F C3 F3 78 */	mr r3, r30
/* 80C7DCD0  4B 65 10 6D */	bl __dl__FPv
lbl_80C7DCD4:
/* 80C7DCD4  7F C3 F3 78 */	mr r3, r30
/* 80C7DCD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7DCDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C7DCE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7DCE4  7C 08 03 A6 */	mtlr r0
/* 80C7DCE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7DCEC  4E 80 00 20 */	blr 
