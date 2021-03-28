lbl_80B66C74:
/* 80B66C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B66C78  7C 08 02 A6 */	mflr r0
/* 80B66C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B66C80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B66C84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B66C88  41 82 00 1C */	beq lbl_80B66CA4
/* 80B66C8C  3C A0 80 B7 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80B66C90  38 05 8C 54 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80B66C94  90 1F 00 04 */	stw r0, 4(r31)
/* 80B66C98  7C 80 07 35 */	extsh. r0, r4
/* 80B66C9C  40 81 00 08 */	ble lbl_80B66CA4
/* 80B66CA0  4B 76 80 9C */	b __dl__FPv
lbl_80B66CA4:
/* 80B66CA4  7F E3 FB 78 */	mr r3, r31
/* 80B66CA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B66CAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B66CB0  7C 08 03 A6 */	mtlr r0
/* 80B66CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B66CB8  4E 80 00 20 */	blr 
