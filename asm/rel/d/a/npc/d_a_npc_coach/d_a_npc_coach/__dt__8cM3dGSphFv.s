lbl_809A4C68:
/* 809A4C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A4C6C  7C 08 02 A6 */	mflr r0
/* 809A4C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A4C74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A4C78  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A4C7C  41 82 00 1C */	beq lbl_809A4C98
/* 809A4C80  3C A0 80 9A */	lis r5, __vt__8cM3dGSph@ha /* 0x809A5214@ha */
/* 809A4C84  38 05 52 14 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x809A5214@l */
/* 809A4C88  90 1F 00 10 */	stw r0, 0x10(r31)
/* 809A4C8C  7C 80 07 35 */	extsh. r0, r4
/* 809A4C90  40 81 00 08 */	ble lbl_809A4C98
/* 809A4C94  4B 92 A0 A9 */	bl __dl__FPv
lbl_809A4C98:
/* 809A4C98  7F E3 FB 78 */	mr r3, r31
/* 809A4C9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A4CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A4CA4  7C 08 03 A6 */	mtlr r0
/* 809A4CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 809A4CAC  4E 80 00 20 */	blr 
