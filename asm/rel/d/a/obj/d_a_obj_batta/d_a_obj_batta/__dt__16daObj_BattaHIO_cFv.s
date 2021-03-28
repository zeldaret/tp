lbl_80BAC874:
/* 80BAC874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAC878  7C 08 02 A6 */	mflr r0
/* 80BAC87C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAC880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAC884  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BAC888  41 82 00 1C */	beq lbl_80BAC8A4
/* 80BAC88C  3C A0 80 BB */	lis r5, __vt__16daObj_BattaHIO_c@ha
/* 80BAC890  38 05 CC 70 */	addi r0, r5, __vt__16daObj_BattaHIO_c@l
/* 80BAC894  90 1F 00 00 */	stw r0, 0(r31)
/* 80BAC898  7C 80 07 35 */	extsh. r0, r4
/* 80BAC89C  40 81 00 08 */	ble lbl_80BAC8A4
/* 80BAC8A0  4B 72 24 9C */	b __dl__FPv
lbl_80BAC8A4:
/* 80BAC8A4  7F E3 FB 78 */	mr r3, r31
/* 80BAC8A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAC8AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAC8B0  7C 08 03 A6 */	mtlr r0
/* 80BAC8B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAC8B8  4E 80 00 20 */	blr 
