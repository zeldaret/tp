lbl_80B2C680:
/* 80B2C680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2C684  7C 08 02 A6 */	mflr r0
/* 80B2C688  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2C68C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2C690  93 C1 00 08 */	stw r30, 8(r1)
/* 80B2C694  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B2C698  7C 9F 23 78 */	mr r31, r4
/* 80B2C69C  41 82 00 38 */	beq lbl_80B2C6D4
/* 80B2C6A0  3C 80 80 B3 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80B2DBAC@ha */
/* 80B2C6A4  38 84 DB AC */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80B2DBAC@l */
/* 80B2C6A8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B2C6AC  38 04 00 0C */	addi r0, r4, 0xc
/* 80B2C6B0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B2C6B4  38 04 00 18 */	addi r0, r4, 0x18
/* 80B2C6B8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B2C6BC  38 80 00 00 */	li r4, 0
/* 80B2C6C0  4B 54 98 D5 */	bl __dt__9dBgS_AcchFv
/* 80B2C6C4  7F E0 07 35 */	extsh. r0, r31
/* 80B2C6C8  40 81 00 0C */	ble lbl_80B2C6D4
/* 80B2C6CC  7F C3 F3 78 */	mr r3, r30
/* 80B2C6D0  4B 7A 26 6D */	bl __dl__FPv
lbl_80B2C6D4:
/* 80B2C6D4  7F C3 F3 78 */	mr r3, r30
/* 80B2C6D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2C6DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B2C6E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2C6E4  7C 08 03 A6 */	mtlr r0
/* 80B2C6E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2C6EC  4E 80 00 20 */	blr 
