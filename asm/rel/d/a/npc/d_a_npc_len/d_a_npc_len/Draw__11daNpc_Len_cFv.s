lbl_80A64C34:
/* 80A64C34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A64C38  7C 08 02 A6 */	mflr r0
/* 80A64C3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A64C40  39 61 00 20 */	addi r11, r1, 0x20
/* 80A64C44  4B 8F D5 98 */	b _savegpr_29
/* 80A64C48  7C 7D 1B 78 */	mr r29, r3
/* 80A64C4C  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80A64C50  28 1E 00 00 */	cmplwi r30, 0
/* 80A64C54  41 82 00 30 */	beq lbl_80A64C84
/* 80A64C58  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80A64C5C  80 84 00 04 */	lwz r4, 4(r4)
/* 80A64C60  83 E4 00 04 */	lwz r31, 4(r4)
/* 80A64C64  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A64C68  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A64C6C  7D 89 03 A6 */	mtctr r12
/* 80A64C70  4E 80 04 21 */	bctrl 
/* 80A64C74  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80A64C78  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80A64C7C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A64C80  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80A64C84:
/* 80A64C84  7F A3 EB 78 */	mr r3, r29
/* 80A64C88  38 80 00 00 */	li r4, 0
/* 80A64C8C  38 A0 00 00 */	li r5, 0
/* 80A64C90  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80A64C94  38 C0 00 00 */	li r6, 0
/* 80A64C98  3C E0 80 A7 */	lis r7, lit_4437@ha
/* 80A64C9C  C0 47 8F 84 */	lfs f2, lit_4437@l(r7)
/* 80A64CA0  38 E0 00 00 */	li r7, 0
/* 80A64CA4  39 00 00 00 */	li r8, 0
/* 80A64CA8  39 20 00 00 */	li r9, 0
/* 80A64CAC  4B 6E 3B C0 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80A64CB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A64CB4  4B 8F D5 74 */	b _restgpr_29
/* 80A64CB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A64CBC  7C 08 03 A6 */	mtlr r0
/* 80A64CC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A64CC4  4E 80 00 20 */	blr 
