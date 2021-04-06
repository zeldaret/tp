lbl_80BC7234:
/* 80BC7234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC7238  7C 08 02 A6 */	mflr r0
/* 80BC723C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC7244  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC7248  41 82 00 1C */	beq lbl_80BC7264
/* 80BC724C  3C A0 80 BC */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80BC7EAC@ha */
/* 80BC7250  38 05 7E AC */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80BC7EAC@l */
/* 80BC7254  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC7258  7C 80 07 35 */	extsh. r0, r4
/* 80BC725C  40 81 00 08 */	ble lbl_80BC7264
/* 80BC7260  4B 70 7A DD */	bl __dl__FPv
lbl_80BC7264:
/* 80BC7264  7F E3 FB 78 */	mr r3, r31
/* 80BC7268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC726C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC7270  7C 08 03 A6 */	mtlr r0
/* 80BC7274  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7278  4E 80 00 20 */	blr 
