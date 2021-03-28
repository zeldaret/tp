lbl_805CAC3C:
/* 805CAC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CAC40  7C 08 02 A6 */	mflr r0
/* 805CAC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CAC48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CAC4C  93 C1 00 08 */	stw r30, 8(r1)
/* 805CAC50  7C 7E 1B 79 */	or. r30, r3, r3
/* 805CAC54  7C 9F 23 78 */	mr r31, r4
/* 805CAC58  41 82 00 38 */	beq lbl_805CAC90
/* 805CAC5C  3C 80 80 5D */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 805CAC60  38 84 B0 04 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 805CAC64  90 9E 00 10 */	stw r4, 0x10(r30)
/* 805CAC68  38 04 00 0C */	addi r0, r4, 0xc
/* 805CAC6C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 805CAC70  38 04 00 18 */	addi r0, r4, 0x18
/* 805CAC74  90 1E 00 24 */	stw r0, 0x24(r30)
/* 805CAC78  38 80 00 00 */	li r4, 0
/* 805CAC7C  4B AA B3 18 */	b __dt__9dBgS_AcchFv
/* 805CAC80  7F E0 07 35 */	extsh. r0, r31
/* 805CAC84  40 81 00 0C */	ble lbl_805CAC90
/* 805CAC88  7F C3 F3 78 */	mr r3, r30
/* 805CAC8C  4B D0 40 B0 */	b __dl__FPv
lbl_805CAC90:
/* 805CAC90  7F C3 F3 78 */	mr r3, r30
/* 805CAC94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CAC98  83 C1 00 08 */	lwz r30, 8(r1)
/* 805CAC9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CACA0  7C 08 03 A6 */	mtlr r0
/* 805CACA4  38 21 00 10 */	addi r1, r1, 0x10
/* 805CACA8  4E 80 00 20 */	blr 
