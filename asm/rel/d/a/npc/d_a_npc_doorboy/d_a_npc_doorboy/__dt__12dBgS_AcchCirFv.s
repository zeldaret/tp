lbl_809AD6E0:
/* 809AD6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AD6E4  7C 08 02 A6 */	mflr r0
/* 809AD6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AD6EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AD6F0  93 C1 00 08 */	stw r30, 8(r1)
/* 809AD6F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809AD6F8  7C 9F 23 78 */	mr r31, r4
/* 809AD6FC  41 82 00 38 */	beq lbl_809AD734
/* 809AD700  3C 60 80 9B */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809ADD04@ha */
/* 809AD704  38 03 DD 04 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809ADD04@l */
/* 809AD708  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809AD70C  38 7E 00 14 */	addi r3, r30, 0x14
/* 809AD710  38 80 FF FF */	li r4, -1
/* 809AD714  4B 8C 18 05 */	bl __dt__8cM3dGCirFv
/* 809AD718  7F C3 F3 78 */	mr r3, r30
/* 809AD71C  38 80 00 00 */	li r4, 0
/* 809AD720  4B 8B A9 91 */	bl __dt__13cBgS_PolyInfoFv
/* 809AD724  7F E0 07 35 */	extsh. r0, r31
/* 809AD728  40 81 00 0C */	ble lbl_809AD734
/* 809AD72C  7F C3 F3 78 */	mr r3, r30
/* 809AD730  4B 92 16 0D */	bl __dl__FPv
lbl_809AD734:
/* 809AD734  7F C3 F3 78 */	mr r3, r30
/* 809AD738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AD73C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809AD740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AD744  7C 08 03 A6 */	mtlr r0
/* 809AD748  38 21 00 10 */	addi r1, r1, 0x10
/* 809AD74C  4E 80 00 20 */	blr 
