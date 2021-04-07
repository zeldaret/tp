lbl_80C241A0:
/* 80C241A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C241A4  7C 08 02 A6 */	mflr r0
/* 80C241A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C241AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C241B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C241B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C241B8  7C 9F 23 78 */	mr r31, r4
/* 80C241BC  41 82 00 38 */	beq lbl_80C241F4
/* 80C241C0  3C 80 80 C2 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80C24640@ha */
/* 80C241C4  38 84 46 40 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80C24640@l */
/* 80C241C8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C241CC  38 04 00 0C */	addi r0, r4, 0xc
/* 80C241D0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C241D4  38 04 00 18 */	addi r0, r4, 0x18
/* 80C241D8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C241DC  38 80 00 00 */	li r4, 0
/* 80C241E0  4B 45 1D B5 */	bl __dt__9dBgS_AcchFv
/* 80C241E4  7F E0 07 35 */	extsh. r0, r31
/* 80C241E8  40 81 00 0C */	ble lbl_80C241F4
/* 80C241EC  7F C3 F3 78 */	mr r3, r30
/* 80C241F0  4B 6A AB 4D */	bl __dl__FPv
lbl_80C241F4:
/* 80C241F4  7F C3 F3 78 */	mr r3, r30
/* 80C241F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C241FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C24200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C24204  7C 08 03 A6 */	mtlr r0
/* 80C24208  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2420C  4E 80 00 20 */	blr 
