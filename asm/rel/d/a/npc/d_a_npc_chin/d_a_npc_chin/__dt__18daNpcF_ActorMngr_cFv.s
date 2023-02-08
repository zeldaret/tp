lbl_80990ECC:
/* 80990ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80990ED0  7C 08 02 A6 */	mflr r0
/* 80990ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80990ED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80990EDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80990EE0  41 82 00 1C */	beq lbl_80990EFC
/* 80990EE4  3C A0 80 99 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x809923C8@ha */
/* 80990EE8  38 05 23 C8 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x809923C8@l */
/* 80990EEC  90 1F 00 04 */	stw r0, 4(r31)
/* 80990EF0  7C 80 07 35 */	extsh. r0, r4
/* 80990EF4  40 81 00 08 */	ble lbl_80990EFC
/* 80990EF8  4B 93 DE 45 */	bl __dl__FPv
lbl_80990EFC:
/* 80990EFC  7F E3 FB 78 */	mr r3, r31
/* 80990F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80990F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80990F08  7C 08 03 A6 */	mtlr r0
/* 80990F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80990F10  4E 80 00 20 */	blr 
