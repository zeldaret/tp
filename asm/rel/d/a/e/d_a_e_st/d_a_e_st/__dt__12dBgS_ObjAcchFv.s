lbl_807A60D0:
/* 807A60D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A60D4  7C 08 02 A6 */	mflr r0
/* 807A60D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A60DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A60E0  93 C1 00 08 */	stw r30, 8(r1)
/* 807A60E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 807A60E8  7C 9F 23 78 */	mr r31, r4
/* 807A60EC  41 82 00 38 */	beq lbl_807A6124
/* 807A60F0  3C 80 80 7A */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x807A6D20@ha */
/* 807A60F4  38 84 6D 20 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x807A6D20@l */
/* 807A60F8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807A60FC  38 04 00 0C */	addi r0, r4, 0xc
/* 807A6100  90 1E 00 14 */	stw r0, 0x14(r30)
/* 807A6104  38 04 00 18 */	addi r0, r4, 0x18
/* 807A6108  90 1E 00 24 */	stw r0, 0x24(r30)
/* 807A610C  38 80 00 00 */	li r4, 0
/* 807A6110  4B 8C FE 85 */	bl __dt__9dBgS_AcchFv
/* 807A6114  7F E0 07 35 */	extsh. r0, r31
/* 807A6118  40 81 00 0C */	ble lbl_807A6124
/* 807A611C  7F C3 F3 78 */	mr r3, r30
/* 807A6120  4B B2 8C 1D */	bl __dl__FPv
lbl_807A6124:
/* 807A6124  7F C3 F3 78 */	mr r3, r30
/* 807A6128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A612C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807A6130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A6134  7C 08 03 A6 */	mtlr r0
/* 807A6138  38 21 00 10 */	addi r1, r1, 0x10
/* 807A613C  4E 80 00 20 */	blr 
