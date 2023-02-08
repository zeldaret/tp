lbl_80A3C460:
/* 80A3C460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3C464  7C 08 02 A6 */	mflr r0
/* 80A3C468  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3C46C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3C470  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A3C474  41 82 00 1C */	beq lbl_80A3C490
/* 80A3C478  3C A0 80 A4 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A431F8@ha */
/* 80A3C47C  38 05 31 F8 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80A431F8@l */
/* 80A3C480  90 1F 00 04 */	stw r0, 4(r31)
/* 80A3C484  7C 80 07 35 */	extsh. r0, r4
/* 80A3C488  40 81 00 08 */	ble lbl_80A3C490
/* 80A3C48C  4B 89 28 B1 */	bl __dl__FPv
lbl_80A3C490:
/* 80A3C490  7F E3 FB 78 */	mr r3, r31
/* 80A3C494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3C498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3C49C  7C 08 03 A6 */	mtlr r0
/* 80A3C4A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3C4A4  4E 80 00 20 */	blr 
