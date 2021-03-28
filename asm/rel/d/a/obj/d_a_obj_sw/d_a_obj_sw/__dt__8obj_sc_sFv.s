lbl_80CF2F3C:
/* 80CF2F3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF2F40  7C 08 02 A6 */	mflr r0
/* 80CF2F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF2F48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF2F4C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF2F50  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CF2F54  7C 9F 23 78 */	mr r31, r4
/* 80CF2F58  41 82 00 34 */	beq lbl_80CF2F8C
/* 80CF2F5C  34 1E 00 44 */	addic. r0, r30, 0x44
/* 80CF2F60  41 82 00 1C */	beq lbl_80CF2F7C
/* 80CF2F64  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha
/* 80CF2F68  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l
/* 80CF2F6C  90 1E 00 54 */	stw r0, 0x54(r30)
/* 80CF2F70  38 7E 00 44 */	addi r3, r30, 0x44
/* 80CF2F74  38 80 00 00 */	li r4, 0
/* 80CF2F78  4B 5C AF D0 */	b __dt__14Z2SoundObjBaseFv
lbl_80CF2F7C:
/* 80CF2F7C  7F E0 07 35 */	extsh. r0, r31
/* 80CF2F80  40 81 00 0C */	ble lbl_80CF2F8C
/* 80CF2F84  7F C3 F3 78 */	mr r3, r30
/* 80CF2F88  4B 5D BD B4 */	b __dl__FPv
lbl_80CF2F8C:
/* 80CF2F8C  7F C3 F3 78 */	mr r3, r30
/* 80CF2F90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF2F94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF2F98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF2F9C  7C 08 03 A6 */	mtlr r0
/* 80CF2FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF2FA4  4E 80 00 20 */	blr 
