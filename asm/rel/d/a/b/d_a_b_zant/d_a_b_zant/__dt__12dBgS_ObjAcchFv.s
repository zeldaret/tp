lbl_8064E84C:
/* 8064E84C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064E850  7C 08 02 A6 */	mflr r0
/* 8064E854  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064E858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8064E85C  93 C1 00 08 */	stw r30, 8(r1)
/* 8064E860  7C 7E 1B 79 */	or. r30, r3, r3
/* 8064E864  7C 9F 23 78 */	mr r31, r4
/* 8064E868  41 82 00 38 */	beq lbl_8064E8A0
/* 8064E86C  3C 80 80 65 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8064F52C@ha */
/* 8064E870  38 84 F5 2C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8064F52C@l */
/* 8064E874  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8064E878  38 04 00 0C */	addi r0, r4, 0xc
/* 8064E87C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8064E880  38 04 00 18 */	addi r0, r4, 0x18
/* 8064E884  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8064E888  38 80 00 00 */	li r4, 0
/* 8064E88C  4B A2 77 09 */	bl __dt__9dBgS_AcchFv
/* 8064E890  7F E0 07 35 */	extsh. r0, r31
/* 8064E894  40 81 00 0C */	ble lbl_8064E8A0
/* 8064E898  7F C3 F3 78 */	mr r3, r30
/* 8064E89C  4B C8 04 A1 */	bl __dl__FPv
lbl_8064E8A0:
/* 8064E8A0  7F C3 F3 78 */	mr r3, r30
/* 8064E8A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8064E8A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8064E8AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064E8B0  7C 08 03 A6 */	mtlr r0
/* 8064E8B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8064E8B8  4E 80 00 20 */	blr 
