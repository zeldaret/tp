lbl_80B7F664:
/* 80B7F664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7F668  7C 08 02 A6 */	mflr r0
/* 80B7F66C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7F670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7F674  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B7F678  41 82 00 1C */	beq lbl_80B7F694
/* 80B7F67C  3C A0 80 B9 */	lis r5, __vt__10cCcD_GStts@ha
/* 80B7F680  38 05 D9 B0 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80B7F684  90 1F 00 00 */	stw r0, 0(r31)
/* 80B7F688  7C 80 07 35 */	extsh. r0, r4
/* 80B7F68C  40 81 00 08 */	ble lbl_80B7F694
/* 80B7F690  4B 74 F6 AC */	b __dl__FPv
lbl_80B7F694:
/* 80B7F694  7F E3 FB 78 */	mr r3, r31
/* 80B7F698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7F69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7F6A0  7C 08 03 A6 */	mtlr r0
/* 80B7F6A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7F6A8  4E 80 00 20 */	blr 
