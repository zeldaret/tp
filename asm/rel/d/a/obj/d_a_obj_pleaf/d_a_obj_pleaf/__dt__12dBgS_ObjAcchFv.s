lbl_80CB12DC:
/* 80CB12DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB12E0  7C 08 02 A6 */	mflr r0
/* 80CB12E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB12E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB12EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB12F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CB12F4  7C 9F 23 78 */	mr r31, r4
/* 80CB12F8  41 82 00 38 */	beq lbl_80CB1330
/* 80CB12FC  3C 80 80 CB */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80CB1300  38 84 18 F0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80CB1304  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CB1308  38 04 00 0C */	addi r0, r4, 0xc
/* 80CB130C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CB1310  38 04 00 18 */	addi r0, r4, 0x18
/* 80CB1314  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CB1318  38 80 00 00 */	li r4, 0
/* 80CB131C  4B 3C 4C 78 */	b __dt__9dBgS_AcchFv
/* 80CB1320  7F E0 07 35 */	extsh. r0, r31
/* 80CB1324  40 81 00 0C */	ble lbl_80CB1330
/* 80CB1328  7F C3 F3 78 */	mr r3, r30
/* 80CB132C  4B 61 DA 10 */	b __dl__FPv
lbl_80CB1330:
/* 80CB1330  7F C3 F3 78 */	mr r3, r30
/* 80CB1334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB1338  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB133C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB1340  7C 08 03 A6 */	mtlr r0
/* 80CB1344  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB1348  4E 80 00 20 */	blr 
