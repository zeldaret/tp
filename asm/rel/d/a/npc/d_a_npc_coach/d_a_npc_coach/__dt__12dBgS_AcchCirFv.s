lbl_809A4BF8:
/* 809A4BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A4BFC  7C 08 02 A6 */	mflr r0
/* 809A4C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A4C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A4C08  93 C1 00 08 */	stw r30, 8(r1)
/* 809A4C0C  7C 7E 1B 79 */	or. r30, r3, r3
/* 809A4C10  7C 9F 23 78 */	mr r31, r4
/* 809A4C14  41 82 00 38 */	beq lbl_809A4C4C
/* 809A4C18  3C 60 80 9A */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809A4C1C  38 03 52 5C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809A4C20  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809A4C24  38 7E 00 14 */	addi r3, r30, 0x14
/* 809A4C28  38 80 FF FF */	li r4, -1
/* 809A4C2C  4B 8C A2 EC */	b __dt__8cM3dGCirFv
/* 809A4C30  7F C3 F3 78 */	mr r3, r30
/* 809A4C34  38 80 00 00 */	li r4, 0
/* 809A4C38  4B 8C 34 78 */	b __dt__13cBgS_PolyInfoFv
/* 809A4C3C  7F E0 07 35 */	extsh. r0, r31
/* 809A4C40  40 81 00 0C */	ble lbl_809A4C4C
/* 809A4C44  7F C3 F3 78 */	mr r3, r30
/* 809A4C48  4B 92 A0 F4 */	b __dl__FPv
lbl_809A4C4C:
/* 809A4C4C  7F C3 F3 78 */	mr r3, r30
/* 809A4C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A4C54  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A4C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A4C5C  7C 08 03 A6 */	mtlr r0
/* 809A4C60  38 21 00 10 */	addi r1, r1, 0x10
/* 809A4C64  4E 80 00 20 */	blr 
