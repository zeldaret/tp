lbl_80CC3A5C:
/* 80CC3A5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC3A60  7C 08 02 A6 */	mflr r0
/* 80CC3A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC3A68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC3A6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC3A70  41 82 00 1C */	beq lbl_80CC3A8C
/* 80CC3A74  3C A0 80 CC */	lis r5, __vt__14daOBJ_RW_HIO_c@ha /* 0x80CC3C6C@ha */
/* 80CC3A78  38 05 3C 6C */	addi r0, r5, __vt__14daOBJ_RW_HIO_c@l /* 0x80CC3C6C@l */
/* 80CC3A7C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC3A80  7C 80 07 35 */	extsh. r0, r4
/* 80CC3A84  40 81 00 08 */	ble lbl_80CC3A8C
/* 80CC3A88  4B 60 B2 B5 */	bl __dl__FPv
lbl_80CC3A8C:
/* 80CC3A8C  7F E3 FB 78 */	mr r3, r31
/* 80CC3A90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC3A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC3A98  7C 08 03 A6 */	mtlr r0
/* 80CC3A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC3AA0  4E 80 00 20 */	blr 
