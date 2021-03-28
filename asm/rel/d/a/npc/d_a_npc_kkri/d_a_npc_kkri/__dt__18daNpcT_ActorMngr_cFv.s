lbl_805525A0:
/* 805525A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805525A4  7C 08 02 A6 */	mflr r0
/* 805525A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805525AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805525B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 805525B4  41 82 00 1C */	beq lbl_805525D0
/* 805525B8  3C A0 80 55 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 805525BC  38 05 3D CC */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 805525C0  90 1F 00 04 */	stw r0, 4(r31)
/* 805525C4  7C 80 07 35 */	extsh. r0, r4
/* 805525C8  40 81 00 08 */	ble lbl_805525D0
/* 805525CC  4B D7 C7 70 */	b __dl__FPv
lbl_805525D0:
/* 805525D0  7F E3 FB 78 */	mr r3, r31
/* 805525D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805525D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805525DC  7C 08 03 A6 */	mtlr r0
/* 805525E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805525E4  4E 80 00 20 */	blr 
