lbl_80AF5998:
/* 80AF5998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF599C  7C 08 02 A6 */	mflr r0
/* 80AF59A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF59A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF59A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF59AC  41 82 00 1C */	beq lbl_80AF59C8
/* 80AF59B0  3C A0 80 AF */	lis r5, __vt__10cCcD_GStts@ha
/* 80AF59B4  38 05 5D C4 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80AF59B8  90 1F 00 00 */	stw r0, 0(r31)
/* 80AF59BC  7C 80 07 35 */	extsh. r0, r4
/* 80AF59C0  40 81 00 08 */	ble lbl_80AF59C8
/* 80AF59C4  4B 7D 93 78 */	b __dl__FPv
lbl_80AF59C8:
/* 80AF59C8  7F E3 FB 78 */	mr r3, r31
/* 80AF59CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF59D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF59D4  7C 08 03 A6 */	mtlr r0
/* 80AF59D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF59DC  4E 80 00 20 */	blr 
