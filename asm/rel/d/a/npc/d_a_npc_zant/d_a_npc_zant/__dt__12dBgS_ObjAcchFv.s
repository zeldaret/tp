lbl_80B6E2B0:
/* 80B6E2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6E2B4  7C 08 02 A6 */	mflr r0
/* 80B6E2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6E2BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6E2C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6E2C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B6E2C8  7C 9F 23 78 */	mr r31, r4
/* 80B6E2CC  41 82 00 38 */	beq lbl_80B6E304
/* 80B6E2D0  3C 80 80 B7 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80B6E2D4  38 84 EB C8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80B6E2D8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B6E2DC  38 04 00 0C */	addi r0, r4, 0xc
/* 80B6E2E0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B6E2E4  38 04 00 18 */	addi r0, r4, 0x18
/* 80B6E2E8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B6E2EC  38 80 00 00 */	li r4, 0
/* 80B6E2F0  4B 50 7C A4 */	b __dt__9dBgS_AcchFv
/* 80B6E2F4  7F E0 07 35 */	extsh. r0, r31
/* 80B6E2F8  40 81 00 0C */	ble lbl_80B6E304
/* 80B6E2FC  7F C3 F3 78 */	mr r3, r30
/* 80B6E300  4B 76 0A 3C */	b __dl__FPv
lbl_80B6E304:
/* 80B6E304  7F C3 F3 78 */	mr r3, r30
/* 80B6E308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6E30C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6E310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6E314  7C 08 03 A6 */	mtlr r0
/* 80B6E318  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6E31C  4E 80 00 20 */	blr 
