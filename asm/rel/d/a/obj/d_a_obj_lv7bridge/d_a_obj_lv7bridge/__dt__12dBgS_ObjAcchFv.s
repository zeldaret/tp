lbl_80C87864:
/* 80C87864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C87868  7C 08 02 A6 */	mflr r0
/* 80C8786C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C87870  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C87874  93 C1 00 08 */	stw r30, 8(r1)
/* 80C87878  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C8787C  7C 9F 23 78 */	mr r31, r4
/* 80C87880  41 82 00 38 */	beq lbl_80C878B8
/* 80C87884  3C 80 80 C8 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80C87888  38 84 7B 5C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80C8788C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C87890  38 04 00 0C */	addi r0, r4, 0xc
/* 80C87894  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C87898  38 04 00 18 */	addi r0, r4, 0x18
/* 80C8789C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C878A0  38 80 00 00 */	li r4, 0
/* 80C878A4  4B 3E E6 F0 */	b __dt__9dBgS_AcchFv
/* 80C878A8  7F E0 07 35 */	extsh. r0, r31
/* 80C878AC  40 81 00 0C */	ble lbl_80C878B8
/* 80C878B0  7F C3 F3 78 */	mr r3, r30
/* 80C878B4  4B 64 74 88 */	b __dl__FPv
lbl_80C878B8:
/* 80C878B8  7F C3 F3 78 */	mr r3, r30
/* 80C878BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C878C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C878C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C878C8  7C 08 03 A6 */	mtlr r0
/* 80C878CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C878D0  4E 80 00 20 */	blr 
