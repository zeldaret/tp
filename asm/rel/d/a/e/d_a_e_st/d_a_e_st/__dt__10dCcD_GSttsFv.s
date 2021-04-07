lbl_807A6074:
/* 807A6074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A6078  7C 08 02 A6 */	mflr r0
/* 807A607C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A6080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A6084  7C 7F 1B 79 */	or. r31, r3, r3
/* 807A6088  41 82 00 30 */	beq lbl_807A60B8
/* 807A608C  3C 60 80 7A */	lis r3, __vt__10dCcD_GStts@ha /* 0x807A6CF0@ha */
/* 807A6090  38 03 6C F0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x807A6CF0@l */
/* 807A6094  90 1F 00 00 */	stw r0, 0(r31)
/* 807A6098  41 82 00 10 */	beq lbl_807A60A8
/* 807A609C  3C 60 80 7A */	lis r3, __vt__10cCcD_GStts@ha /* 0x807A6CE4@ha */
/* 807A60A0  38 03 6C E4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x807A6CE4@l */
/* 807A60A4  90 1F 00 00 */	stw r0, 0(r31)
lbl_807A60A8:
/* 807A60A8  7C 80 07 35 */	extsh. r0, r4
/* 807A60AC  40 81 00 0C */	ble lbl_807A60B8
/* 807A60B0  7F E3 FB 78 */	mr r3, r31
/* 807A60B4  4B B2 8C 89 */	bl __dl__FPv
lbl_807A60B8:
/* 807A60B8  7F E3 FB 78 */	mr r3, r31
/* 807A60BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A60C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A60C4  7C 08 03 A6 */	mtlr r0
/* 807A60C8  38 21 00 10 */	addi r1, r1, 0x10
/* 807A60CC  4E 80 00 20 */	blr 
