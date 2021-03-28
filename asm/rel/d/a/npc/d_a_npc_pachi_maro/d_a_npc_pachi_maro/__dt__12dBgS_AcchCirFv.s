lbl_80A9B09C:
/* 80A9B09C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9B0A0  7C 08 02 A6 */	mflr r0
/* 80A9B0A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9B0A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9B0AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9B0B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A9B0B4  7C 9F 23 78 */	mr r31, r4
/* 80A9B0B8  41 82 00 38 */	beq lbl_80A9B0F0
/* 80A9B0BC  3C 60 80 AA */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A9B0C0  38 03 C0 48 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A9B0C4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A9B0C8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A9B0CC  38 80 FF FF */	li r4, -1
/* 80A9B0D0  4B 7D 3E 48 */	b __dt__8cM3dGCirFv
/* 80A9B0D4  7F C3 F3 78 */	mr r3, r30
/* 80A9B0D8  38 80 00 00 */	li r4, 0
/* 80A9B0DC  4B 7C CF D4 */	b __dt__13cBgS_PolyInfoFv
/* 80A9B0E0  7F E0 07 35 */	extsh. r0, r31
/* 80A9B0E4  40 81 00 0C */	ble lbl_80A9B0F0
/* 80A9B0E8  7F C3 F3 78 */	mr r3, r30
/* 80A9B0EC  4B 83 3C 50 */	b __dl__FPv
lbl_80A9B0F0:
/* 80A9B0F0  7F C3 F3 78 */	mr r3, r30
/* 80A9B0F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9B0F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A9B0FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9B100  7C 08 03 A6 */	mtlr r0
/* 80A9B104  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9B108  4E 80 00 20 */	blr 
