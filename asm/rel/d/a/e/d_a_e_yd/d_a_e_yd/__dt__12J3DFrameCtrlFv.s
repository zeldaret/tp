lbl_807F6C48:
/* 807F6C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F6C4C  7C 08 02 A6 */	mflr r0
/* 807F6C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F6C54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F6C58  7C 7F 1B 79 */	or. r31, r3, r3
/* 807F6C5C  41 82 00 1C */	beq lbl_807F6C78
/* 807F6C60  3C A0 80 7F */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x807F7D48@ha */
/* 807F6C64  38 05 7D 48 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x807F7D48@l */
/* 807F6C68  90 1F 00 00 */	stw r0, 0(r31)
/* 807F6C6C  7C 80 07 35 */	extsh. r0, r4
/* 807F6C70  40 81 00 08 */	ble lbl_807F6C78
/* 807F6C74  4B AD 80 C9 */	bl __dl__FPv
lbl_807F6C78:
/* 807F6C78  7F E3 FB 78 */	mr r3, r31
/* 807F6C7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F6C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F6C84  7C 08 03 A6 */	mtlr r0
/* 807F6C88  38 21 00 10 */	addi r1, r1, 0x10
/* 807F6C8C  4E 80 00 20 */	blr 
