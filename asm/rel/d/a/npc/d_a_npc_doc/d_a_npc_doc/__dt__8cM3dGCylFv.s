lbl_809A9594:
/* 809A9594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A9598  7C 08 02 A6 */	mflr r0
/* 809A959C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A95A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A95A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A95A8  41 82 00 1C */	beq lbl_809A95C4
/* 809A95AC  3C A0 80 9B */	lis r5, __vt__8cM3dGCyl@ha
/* 809A95B0  38 05 A9 DC */	addi r0, r5, __vt__8cM3dGCyl@l
/* 809A95B4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809A95B8  7C 80 07 35 */	extsh. r0, r4
/* 809A95BC  40 81 00 08 */	ble lbl_809A95C4
/* 809A95C0  4B 92 57 7C */	b __dl__FPv
lbl_809A95C4:
/* 809A95C4  7F E3 FB 78 */	mr r3, r31
/* 809A95C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A95CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A95D0  7C 08 03 A6 */	mtlr r0
/* 809A95D4  38 21 00 10 */	addi r1, r1, 0x10
/* 809A95D8  4E 80 00 20 */	blr 
