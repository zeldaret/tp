lbl_809BE37C:
/* 809BE37C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BE380  7C 08 02 A6 */	mflr r0
/* 809BE384  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BE388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BE38C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BE390  41 82 00 1C */	beq lbl_809BE3AC
/* 809BE394  3C A0 80 9C */	lis r5, __vt__8cM3dGCyl@ha
/* 809BE398  38 05 E7 64 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 809BE39C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809BE3A0  7C 80 07 35 */	extsh. r0, r4
/* 809BE3A4  40 81 00 08 */	ble lbl_809BE3AC
/* 809BE3A8  4B 91 09 94 */	b __dl__FPv
lbl_809BE3AC:
/* 809BE3AC  7F E3 FB 78 */	mr r3, r31
/* 809BE3B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BE3B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BE3B8  7C 08 03 A6 */	mtlr r0
/* 809BE3BC  38 21 00 10 */	addi r1, r1, 0x10
/* 809BE3C0  4E 80 00 20 */	blr 
