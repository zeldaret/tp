lbl_80CA8BB0:
/* 80CA8BB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA8BB4  7C 08 02 A6 */	mflr r0
/* 80CA8BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8BBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA8BC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA8BC4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CA8BC8  7C 9F 23 78 */	mr r31, r4
/* 80CA8BCC  41 82 00 38 */	beq lbl_80CA8C04
/* 80CA8BD0  3C 80 80 CB */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80CA9D80@ha */
/* 80CA8BD4  38 84 9D 80 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80CA9D80@l */
/* 80CA8BD8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CA8BDC  38 04 00 0C */	addi r0, r4, 0xc
/* 80CA8BE0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CA8BE4  38 04 00 18 */	addi r0, r4, 0x18
/* 80CA8BE8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CA8BEC  38 80 00 00 */	li r4, 0
/* 80CA8BF0  4B 3C D3 A5 */	bl __dt__9dBgS_AcchFv
/* 80CA8BF4  7F E0 07 35 */	extsh. r0, r31
/* 80CA8BF8  40 81 00 0C */	ble lbl_80CA8C04
/* 80CA8BFC  7F C3 F3 78 */	mr r3, r30
/* 80CA8C00  4B 62 61 3D */	bl __dl__FPv
lbl_80CA8C04:
/* 80CA8C04  7F C3 F3 78 */	mr r3, r30
/* 80CA8C08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA8C0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA8C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA8C14  7C 08 03 A6 */	mtlr r0
/* 80CA8C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8C1C  4E 80 00 20 */	blr 
