lbl_80C71EA0:
/* 80C71EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C71EA4  7C 08 02 A6 */	mflr r0
/* 80C71EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C71EAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C71EB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C71EB4  41 82 00 1C */	beq lbl_80C71ED0
/* 80C71EB8  3C A0 80 C7 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80C722C0@ha */
/* 80C71EBC  38 05 22 C0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80C722C0@l */
/* 80C71EC0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C71EC4  7C 80 07 35 */	extsh. r0, r4
/* 80C71EC8  40 81 00 08 */	ble lbl_80C71ED0
/* 80C71ECC  4B 65 CE 71 */	bl __dl__FPv
lbl_80C71ED0:
/* 80C71ED0  7F E3 FB 78 */	mr r3, r31
/* 80C71ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C71ED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C71EDC  7C 08 03 A6 */	mtlr r0
/* 80C71EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C71EE4  4E 80 00 20 */	blr 
