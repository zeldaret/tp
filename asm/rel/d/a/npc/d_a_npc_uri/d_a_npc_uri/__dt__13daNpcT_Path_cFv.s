lbl_80B2BF50:
/* 80B2BF50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2BF54  7C 08 02 A6 */	mflr r0
/* 80B2BF58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2BF5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2BF60  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2BF64  41 82 00 1C */	beq lbl_80B2BF80
/* 80B2BF68  3C A0 80 B3 */	lis r5, __vt__13daNpcT_Path_c@ha /* 0x80B2DC30@ha */
/* 80B2BF6C  38 05 DC 30 */	addi r0, r5, __vt__13daNpcT_Path_c@l /* 0x80B2DC30@l */
/* 80B2BF70  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80B2BF74  7C 80 07 35 */	extsh. r0, r4
/* 80B2BF78  40 81 00 08 */	ble lbl_80B2BF80
/* 80B2BF7C  4B 7A 2D C1 */	bl __dl__FPv
lbl_80B2BF80:
/* 80B2BF80  7F E3 FB 78 */	mr r3, r31
/* 80B2BF84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2BF88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2BF8C  7C 08 03 A6 */	mtlr r0
/* 80B2BF90  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2BF94  4E 80 00 20 */	blr 
