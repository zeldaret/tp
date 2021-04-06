lbl_80AEDF58:
/* 80AEDF58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEDF5C  7C 08 02 A6 */	mflr r0
/* 80AEDF60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEDF64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEDF68  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEDF6C  41 82 00 1C */	beq lbl_80AEDF88
/* 80AEDF70  3C A0 80 AF */	lis r5, __vt__10cCcD_GStts@ha /* 0x80AEF354@ha */
/* 80AEDF74  38 05 F3 54 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80AEF354@l */
/* 80AEDF78  90 1F 00 00 */	stw r0, 0(r31)
/* 80AEDF7C  7C 80 07 35 */	extsh. r0, r4
/* 80AEDF80  40 81 00 08 */	ble lbl_80AEDF88
/* 80AEDF84  4B 7E 0D B9 */	bl __dl__FPv
lbl_80AEDF88:
/* 80AEDF88  7F E3 FB 78 */	mr r3, r31
/* 80AEDF8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEDF90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEDF94  7C 08 03 A6 */	mtlr r0
/* 80AEDF98  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEDF9C  4E 80 00 20 */	blr 
