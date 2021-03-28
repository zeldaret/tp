lbl_80A0BA1C:
/* 80A0BA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0BA20  7C 08 02 A6 */	mflr r0
/* 80A0BA24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0BA28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0BA2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A0BA30  41 82 00 1C */	beq lbl_80A0BA4C
/* 80A0BA34  3C A0 80 A1 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 80A0BA38  38 05 C8 B0 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 80A0BA3C  90 1F 00 04 */	stw r0, 4(r31)
/* 80A0BA40  7C 80 07 35 */	extsh. r0, r4
/* 80A0BA44  40 81 00 08 */	ble lbl_80A0BA4C
/* 80A0BA48  4B 8C 32 F4 */	b __dl__FPv
lbl_80A0BA4C:
/* 80A0BA4C  7F E3 FB 78 */	mr r3, r31
/* 80A0BA50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0BA54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0BA58  7C 08 03 A6 */	mtlr r0
/* 80A0BA5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0BA60  4E 80 00 20 */	blr 
