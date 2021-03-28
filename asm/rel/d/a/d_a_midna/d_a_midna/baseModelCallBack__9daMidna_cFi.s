lbl_804BC670:
/* 804BC670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BC674  7C 08 02 A6 */	mflr r0
/* 804BC678  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BC67C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BC680  93 C1 00 08 */	stw r30, 8(r1)
/* 804BC684  7C 7E 1B 78 */	mr r30, r3
/* 804BC688  7C 9F 23 78 */	mr r31, r4
/* 804BC68C  A8 03 08 7E */	lha r0, 0x87e(r3)
/* 804BC690  7C 1F 00 00 */	cmpw r31, r0
/* 804BC694  40 82 00 08 */	bne lbl_804BC69C
/* 804BC698  4B FF FF 7D */	bl changeFaceBck__9daMidna_cFv
lbl_804BC69C:
/* 804BC69C  2C 1F 00 00 */	cmpwi r31, 0
/* 804BC6A0  41 82 00 0C */	beq lbl_804BC6AC
/* 804BC6A4  2C 1F 00 13 */	cmpwi r31, 0x13
/* 804BC6A8  40 82 00 10 */	bne lbl_804BC6B8
lbl_804BC6AC:
/* 804BC6AC  7F C3 F3 78 */	mr r3, r30
/* 804BC6B0  4B FF FF 15 */	bl changeUpperBck__9daMidna_cFv
/* 804BC6B4  48 00 00 2C */	b lbl_804BC6E0
lbl_804BC6B8:
/* 804BC6B8  2C 1F 00 0B */	cmpwi r31, 0xb
/* 804BC6BC  40 82 00 10 */	bne lbl_804BC6CC
/* 804BC6C0  7F C3 F3 78 */	mr r3, r30
/* 804BC6C4  4B FF FF 51 */	bl changeFaceBck__9daMidna_cFv
/* 804BC6C8  48 00 00 18 */	b lbl_804BC6E0
lbl_804BC6CC:
/* 804BC6CC  2C 1F 00 05 */	cmpwi r31, 5
/* 804BC6D0  41 82 00 10 */	beq lbl_804BC6E0
/* 804BC6D4  7F C3 F3 78 */	mr r3, r30
/* 804BC6D8  7F E4 FB 78 */	mr r4, r31
/* 804BC6DC  4B FF FD 05 */	bl modelCallBack__9daMidna_cFi
lbl_804BC6E0:
/* 804BC6E0  38 60 00 01 */	li r3, 1
/* 804BC6E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BC6E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804BC6EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BC6F0  7C 08 03 A6 */	mtlr r0
/* 804BC6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804BC6F8  4E 80 00 20 */	blr 
