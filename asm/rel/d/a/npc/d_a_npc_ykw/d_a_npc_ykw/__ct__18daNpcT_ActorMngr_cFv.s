lbl_80B66D04:
/* 80B66D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B66D08  7C 08 02 A6 */	mflr r0
/* 80B66D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B66D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B66D14  7C 7F 1B 78 */	mr r31, r3
/* 80B66D18  3C 80 80 B7 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B68C54@ha */
/* 80B66D1C  38 04 8C 54 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l /* 0x80B68C54@l */
/* 80B66D20  90 03 00 04 */	stw r0, 4(r3)
/* 80B66D24  4B 5D E9 B1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B66D28  7F E3 FB 78 */	mr r3, r31
/* 80B66D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B66D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B66D34  7C 08 03 A6 */	mtlr r0
/* 80B66D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80B66D3C  4E 80 00 20 */	blr 
