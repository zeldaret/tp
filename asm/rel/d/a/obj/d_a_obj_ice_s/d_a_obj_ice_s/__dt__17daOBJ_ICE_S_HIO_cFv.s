lbl_80C21A60:
/* 80C21A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C21A64  7C 08 02 A6 */	mflr r0
/* 80C21A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C21A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C21A70  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C21A74  41 82 00 1C */	beq lbl_80C21A90
/* 80C21A78  3C A0 80 C2 */	lis r5, __vt__17daOBJ_ICE_S_HIO_c@ha /* 0x80C21C24@ha */
/* 80C21A7C  38 05 1C 24 */	addi r0, r5, __vt__17daOBJ_ICE_S_HIO_c@l /* 0x80C21C24@l */
/* 80C21A80  90 1F 00 00 */	stw r0, 0(r31)
/* 80C21A84  7C 80 07 35 */	extsh. r0, r4
/* 80C21A88  40 81 00 08 */	ble lbl_80C21A90
/* 80C21A8C  4B 6A D2 B1 */	bl __dl__FPv
lbl_80C21A90:
/* 80C21A90  7F E3 FB 78 */	mr r3, r31
/* 80C21A94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C21A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C21A9C  7C 08 03 A6 */	mtlr r0
/* 80C21AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C21AA4  4E 80 00 20 */	blr 
