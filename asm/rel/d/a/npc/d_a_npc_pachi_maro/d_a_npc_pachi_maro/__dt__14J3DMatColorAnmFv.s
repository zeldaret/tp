lbl_80A98488:
/* 80A98488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9848C  7C 08 02 A6 */	mflr r0
/* 80A98490  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A98494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A98498  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9849C  41 82 00 10 */	beq lbl_80A984AC
/* 80A984A0  7C 80 07 35 */	extsh. r0, r4
/* 80A984A4  40 81 00 08 */	ble lbl_80A984AC
/* 80A984A8  4B 83 68 94 */	b __dl__FPv
lbl_80A984AC:
/* 80A984AC  7F E3 FB 78 */	mr r3, r31
/* 80A984B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A984B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A984B8  7C 08 03 A6 */	mtlr r0
/* 80A984BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A984C0  4E 80 00 20 */	blr 
