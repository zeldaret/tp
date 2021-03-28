lbl_80D08B84:
/* 80D08B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D08B88  7C 08 02 A6 */	mflr r0
/* 80D08B8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D08B90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D08B94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D08B98  41 82 00 1C */	beq lbl_80D08BB4
/* 80D08B9C  3C A0 80 D1 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80D08BA0  38 05 BA 98 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80D08BA4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D08BA8  7C 80 07 35 */	extsh. r0, r4
/* 80D08BAC  40 81 00 08 */	ble lbl_80D08BB4
/* 80D08BB0  4B 5C 61 8C */	b __dl__FPv
lbl_80D08BB4:
/* 80D08BB4  7F E3 FB 78 */	mr r3, r31
/* 80D08BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D08BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D08BC0  7C 08 03 A6 */	mtlr r0
/* 80D08BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D08BC8  4E 80 00 20 */	blr 
