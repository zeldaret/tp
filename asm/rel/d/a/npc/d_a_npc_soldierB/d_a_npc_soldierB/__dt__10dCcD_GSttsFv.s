lbl_80AF5868:
/* 80AF5868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF586C  7C 08 02 A6 */	mflr r0
/* 80AF5870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF5874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF5878  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF587C  41 82 00 30 */	beq lbl_80AF58AC
/* 80AF5880  3C 60 80 AF */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AF5DD0@ha */
/* 80AF5884  38 03 5D D0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AF5DD0@l */
/* 80AF5888  90 1F 00 00 */	stw r0, 0(r31)
/* 80AF588C  41 82 00 10 */	beq lbl_80AF589C
/* 80AF5890  3C 60 80 AF */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AF5DC4@ha */
/* 80AF5894  38 03 5D C4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AF5DC4@l */
/* 80AF5898  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AF589C:
/* 80AF589C  7C 80 07 35 */	extsh. r0, r4
/* 80AF58A0  40 81 00 0C */	ble lbl_80AF58AC
/* 80AF58A4  7F E3 FB 78 */	mr r3, r31
/* 80AF58A8  4B 7D 94 95 */	bl __dl__FPv
lbl_80AF58AC:
/* 80AF58AC  7F E3 FB 78 */	mr r3, r31
/* 80AF58B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF58B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF58B8  7C 08 03 A6 */	mtlr r0
/* 80AF58BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF58C0  4E 80 00 20 */	blr 
