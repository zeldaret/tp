lbl_8015BA3C:
/* 8015BA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015BA40  7C 08 02 A6 */	mflr r0
/* 8015BA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015BA48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015BA4C  93 C1 00 08 */	stw r30, 8(r1)
/* 8015BA50  7C 7E 1B 79 */	or. r30, r3, r3
/* 8015BA54  7C 9F 23 78 */	mr r31, r4
/* 8015BA58  41 82 00 28 */	beq lbl_8015BA80
/* 8015BA5C  3C 80 80 3D */	lis r4, __vt__16Z2SoundObjSimple@ha
/* 8015BA60  38 04 AD 10 */	addi r0, r4, __vt__16Z2SoundObjSimple@l
/* 8015BA64  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8015BA68  38 80 00 00 */	li r4, 0
/* 8015BA6C  48 16 24 DD */	bl __dt__14Z2SoundObjBaseFv
/* 8015BA70  7F E0 07 35 */	extsh. r0, r31
/* 8015BA74  40 81 00 0C */	ble lbl_8015BA80
/* 8015BA78  7F C3 F3 78 */	mr r3, r30
/* 8015BA7C  48 17 32 C1 */	bl __dl__FPv
lbl_8015BA80:
/* 8015BA80  7F C3 F3 78 */	mr r3, r30
/* 8015BA84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015BA88  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015BA8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015BA90  7C 08 03 A6 */	mtlr r0
/* 8015BA94  38 21 00 10 */	addi r1, r1, 0x10
/* 8015BA98  4E 80 00 20 */	blr 
