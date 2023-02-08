lbl_80B242A0:
/* 80B242A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B242A4  7C 08 02 A6 */	mflr r0
/* 80B242A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B242AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B242B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B242B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B242B8  7C 9F 23 78 */	mr r31, r4
/* 80B242BC  41 82 00 38 */	beq lbl_80B242F4
/* 80B242C0  3C 80 80 B2 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80B256D8@ha */
/* 80B242C4  38 84 56 D8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80B256D8@l */
/* 80B242C8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B242CC  38 04 00 0C */	addi r0, r4, 0xc
/* 80B242D0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B242D4  38 04 00 18 */	addi r0, r4, 0x18
/* 80B242D8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B242DC  38 80 00 00 */	li r4, 0
/* 80B242E0  4B 55 1C B5 */	bl __dt__9dBgS_AcchFv
/* 80B242E4  7F E0 07 35 */	extsh. r0, r31
/* 80B242E8  40 81 00 0C */	ble lbl_80B242F4
/* 80B242EC  7F C3 F3 78 */	mr r3, r30
/* 80B242F0  4B 7A AA 4D */	bl __dl__FPv
lbl_80B242F4:
/* 80B242F4  7F C3 F3 78 */	mr r3, r30
/* 80B242F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B242FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B24300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B24304  7C 08 03 A6 */	mtlr r0
/* 80B24308  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2430C  4E 80 00 20 */	blr 
