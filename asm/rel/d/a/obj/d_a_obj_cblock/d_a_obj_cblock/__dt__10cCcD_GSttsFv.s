lbl_80BC6930:
/* 80BC6930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC6934  7C 08 02 A6 */	mflr r0
/* 80BC6938  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC693C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC6940  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC6944  41 82 00 1C */	beq lbl_80BC6960
/* 80BC6948  3C A0 80 BC */	lis r5, __vt__10cCcD_GStts@ha
/* 80BC694C  38 05 6B EC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80BC6950  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC6954  7C 80 07 35 */	extsh. r0, r4
/* 80BC6958  40 81 00 08 */	ble lbl_80BC6960
/* 80BC695C  4B 70 83 E0 */	b __dl__FPv
lbl_80BC6960:
/* 80BC6960  7F E3 FB 78 */	mr r3, r31
/* 80BC6964  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC6968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC696C  7C 08 03 A6 */	mtlr r0
/* 80BC6970  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC6974  4E 80 00 20 */	blr 
