lbl_809BE3C4:
/* 809BE3C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BE3C8  7C 08 02 A6 */	mflr r0
/* 809BE3CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BE3D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BE3D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BE3D8  41 82 00 1C */	beq lbl_809BE3F4
/* 809BE3DC  3C A0 80 9C */	lis r5, __vt__8cM3dGAab@ha
/* 809BE3E0  38 05 E7 58 */	addi r0, r5, __vt__8cM3dGAab@l
/* 809BE3E4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809BE3E8  7C 80 07 35 */	extsh. r0, r4
/* 809BE3EC  40 81 00 08 */	ble lbl_809BE3F4
/* 809BE3F0  4B 91 09 4C */	b __dl__FPv
lbl_809BE3F4:
/* 809BE3F4  7F E3 FB 78 */	mr r3, r31
/* 809BE3F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BE3FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BE400  7C 08 03 A6 */	mtlr r0
/* 809BE404  38 21 00 10 */	addi r1, r1, 0x10
/* 809BE408  4E 80 00 20 */	blr 
