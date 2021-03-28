lbl_80D50BFC:
/* 80D50BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D50C00  7C 08 02 A6 */	mflr r0
/* 80D50C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D50C08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D50C0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D50C10  41 82 00 1C */	beq lbl_80D50C2C
/* 80D50C14  3C A0 80 D5 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80D50C18  38 05 1B A4 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80D50C1C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D50C20  7C 80 07 35 */	extsh. r0, r4
/* 80D50C24  40 81 00 08 */	ble lbl_80D50C2C
/* 80D50C28  4B 57 E1 14 */	b __dl__FPv
lbl_80D50C2C:
/* 80D50C2C  7F E3 FB 78 */	mr r3, r31
/* 80D50C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D50C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D50C38  7C 08 03 A6 */	mtlr r0
/* 80D50C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D50C40  4E 80 00 20 */	blr 
