lbl_80A48298:
/* 80A48298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A4829C  7C 08 02 A6 */	mflr r0
/* 80A482A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A482A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A482A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A482AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A482B0  7C 9F 23 78 */	mr r31, r4
/* 80A482B4  41 82 00 38 */	beq lbl_80A482EC
/* 80A482B8  3C 80 80 A5 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80A48D20@ha */
/* 80A482BC  38 84 8D 20 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80A48D20@l */
/* 80A482C0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A482C4  38 04 00 0C */	addi r0, r4, 0xc
/* 80A482C8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A482CC  38 04 00 18 */	addi r0, r4, 0x18
/* 80A482D0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A482D4  38 80 00 00 */	li r4, 0
/* 80A482D8  4B 62 DC BD */	bl __dt__9dBgS_AcchFv
/* 80A482DC  7F E0 07 35 */	extsh. r0, r31
/* 80A482E0  40 81 00 0C */	ble lbl_80A482EC
/* 80A482E4  7F C3 F3 78 */	mr r3, r30
/* 80A482E8  4B 88 6A 55 */	bl __dl__FPv
lbl_80A482EC:
/* 80A482EC  7F C3 F3 78 */	mr r3, r30
/* 80A482F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A482F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A482F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A482FC  7C 08 03 A6 */	mtlr r0
/* 80A48300  38 21 00 10 */	addi r1, r1, 0x10
/* 80A48304  4E 80 00 20 */	blr 
