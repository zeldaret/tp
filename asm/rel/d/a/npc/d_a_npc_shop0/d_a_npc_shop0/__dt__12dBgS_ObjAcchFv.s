lbl_80AEACFC:
/* 80AEACFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEAD00  7C 08 02 A6 */	mflr r0
/* 80AEAD04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEAD08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEAD0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEAD10  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AEAD14  7C 9F 23 78 */	mr r31, r4
/* 80AEAD18  41 82 00 38 */	beq lbl_80AEAD50
/* 80AEAD1C  3C 80 80 AF */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80AEAD20  38 84 BD 60 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80AEAD24  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AEAD28  38 04 00 0C */	addi r0, r4, 0xc
/* 80AEAD2C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AEAD30  38 04 00 18 */	addi r0, r4, 0x18
/* 80AEAD34  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AEAD38  38 80 00 00 */	li r4, 0
/* 80AEAD3C  4B 58 B2 58 */	b __dt__9dBgS_AcchFv
/* 80AEAD40  7F E0 07 35 */	extsh. r0, r31
/* 80AEAD44  40 81 00 0C */	ble lbl_80AEAD50
/* 80AEAD48  7F C3 F3 78 */	mr r3, r30
/* 80AEAD4C  4B 7E 3F F0 */	b __dl__FPv
lbl_80AEAD50:
/* 80AEAD50  7F C3 F3 78 */	mr r3, r30
/* 80AEAD54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEAD58  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEAD5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEAD60  7C 08 03 A6 */	mtlr r0
/* 80AEAD64  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEAD68  4E 80 00 20 */	blr 
