lbl_805595B4:
/* 805595B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805595B8  7C 08 02 A6 */	mflr r0
/* 805595BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805595C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805595C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 805595C8  41 82 00 1C */	beq lbl_805595E4
/* 805595CC  3C A0 80 56 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 805595D0  38 05 B2 B8 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 805595D4  90 1F 00 04 */	stw r0, 4(r31)
/* 805595D8  7C 80 07 35 */	extsh. r0, r4
/* 805595DC  40 81 00 08 */	ble lbl_805595E4
/* 805595E0  4B D7 57 5C */	b __dl__FPv
lbl_805595E4:
/* 805595E4  7F E3 FB 78 */	mr r3, r31
/* 805595E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805595EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805595F0  7C 08 03 A6 */	mtlr r0
/* 805595F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805595F8  4E 80 00 20 */	blr 
