lbl_8059A25C:
/* 8059A25C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A260  7C 08 02 A6 */	mflr r0
/* 8059A264  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A268  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059A26C  93 C1 00 08 */	stw r30, 8(r1)
/* 8059A270  7C 7E 1B 79 */	or. r30, r3, r3
/* 8059A274  7C 9F 23 78 */	mr r31, r4
/* 8059A278  41 82 00 38 */	beq lbl_8059A2B0
/* 8059A27C  3C 80 80 5A */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8059A464@ha */
/* 8059A280  38 84 A4 64 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8059A464@l */
/* 8059A284  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8059A288  38 04 00 0C */	addi r0, r4, 0xc
/* 8059A28C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8059A290  38 04 00 18 */	addi r0, r4, 0x18
/* 8059A294  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8059A298  38 80 00 00 */	li r4, 0
/* 8059A29C  4B AD BC F9 */	bl __dt__9dBgS_AcchFv
/* 8059A2A0  7F E0 07 35 */	extsh. r0, r31
/* 8059A2A4  40 81 00 0C */	ble lbl_8059A2B0
/* 8059A2A8  7F C3 F3 78 */	mr r3, r30
/* 8059A2AC  4B D3 4A 91 */	bl __dl__FPv
lbl_8059A2B0:
/* 8059A2B0  7F C3 F3 78 */	mr r3, r30
/* 8059A2B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059A2B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059A2BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A2C0  7C 08 03 A6 */	mtlr r0
/* 8059A2C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A2C8  4E 80 00 20 */	blr 
