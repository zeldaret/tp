lbl_80D43C6C:
/* 80D43C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D43C70  7C 08 02 A6 */	mflr r0
/* 80D43C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D43C78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D43C7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D43C80  41 82 00 1C */	beq lbl_80D43C9C
/* 80D43C84  3C A0 80 D4 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 80D43C88  38 05 3F F8 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 80D43C8C  90 1F 00 04 */	stw r0, 4(r31)
/* 80D43C90  7C 80 07 35 */	extsh. r0, r4
/* 80D43C94  40 81 00 08 */	ble lbl_80D43C9C
/* 80D43C98  4B 58 B0 A4 */	b __dl__FPv
lbl_80D43C9C:
/* 80D43C9C  7F E3 FB 78 */	mr r3, r31
/* 80D43CA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D43CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D43CA8  7C 08 03 A6 */	mtlr r0
/* 80D43CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D43CB0  4E 80 00 20 */	blr 
