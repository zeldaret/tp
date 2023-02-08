lbl_80B73A48:
/* 80B73A48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B73A4C  7C 08 02 A6 */	mflr r0
/* 80B73A50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B73A54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B73A58  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B73A5C  41 82 00 1C */	beq lbl_80B73A78
/* 80B73A60  3C A0 80 B7 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80B74EF4@ha */
/* 80B73A64  38 05 4E F4 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80B74EF4@l */
/* 80B73A68  90 1F 00 00 */	stw r0, 0(r31)
/* 80B73A6C  7C 80 07 35 */	extsh. r0, r4
/* 80B73A70  40 81 00 08 */	ble lbl_80B73A78
/* 80B73A74  4B 75 B2 C9 */	bl __dl__FPv
lbl_80B73A78:
/* 80B73A78  7F E3 FB 78 */	mr r3, r31
/* 80B73A7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B73A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B73A84  7C 08 03 A6 */	mtlr r0
/* 80B73A88  38 21 00 10 */	addi r1, r1, 0x10
/* 80B73A8C  4E 80 00 20 */	blr 
