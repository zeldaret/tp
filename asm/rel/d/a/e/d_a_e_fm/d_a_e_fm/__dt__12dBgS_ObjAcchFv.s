lbl_804FA2AC:
/* 804FA2AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA2B0  7C 08 02 A6 */	mflr r0
/* 804FA2B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA2B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FA2BC  93 C1 00 08 */	stw r30, 8(r1)
/* 804FA2C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 804FA2C4  7C 9F 23 78 */	mr r31, r4
/* 804FA2C8  41 82 00 38 */	beq lbl_804FA300
/* 804FA2CC  3C 80 80 50 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 804FA2D0  38 84 AE 14 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 804FA2D4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 804FA2D8  38 04 00 0C */	addi r0, r4, 0xc
/* 804FA2DC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 804FA2E0  38 04 00 18 */	addi r0, r4, 0x18
/* 804FA2E4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 804FA2E8  38 80 00 00 */	li r4, 0
/* 804FA2EC  4B B7 BC A8 */	b __dt__9dBgS_AcchFv
/* 804FA2F0  7F E0 07 35 */	extsh. r0, r31
/* 804FA2F4  40 81 00 0C */	ble lbl_804FA300
/* 804FA2F8  7F C3 F3 78 */	mr r3, r30
/* 804FA2FC  4B DD 4A 40 */	b __dl__FPv
lbl_804FA300:
/* 804FA300  7F C3 F3 78 */	mr r3, r30
/* 804FA304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FA308  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FA30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA310  7C 08 03 A6 */	mtlr r0
/* 804FA314  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA318  4E 80 00 20 */	blr 
