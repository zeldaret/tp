lbl_80697B4C:
/* 80697B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80697B50  7C 08 02 A6 */	mflr r0
/* 80697B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80697B58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80697B5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80697B60  7C 7E 1B 79 */	or. r30, r3, r3
/* 80697B64  7C 9F 23 78 */	mr r31, r4
/* 80697B68  41 82 00 34 */	beq lbl_80697B9C
/* 80697B6C  34 1E 00 58 */	addic. r0, r30, 0x58
/* 80697B70  41 82 00 1C */	beq lbl_80697B8C
/* 80697B74  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha
/* 80697B78  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l
/* 80697B7C  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80697B80  38 7E 00 58 */	addi r3, r30, 0x58
/* 80697B84  38 80 00 00 */	li r4, 0
/* 80697B88  4B C2 63 C0 */	b __dt__14Z2SoundObjBaseFv
lbl_80697B8C:
/* 80697B8C  7F E0 07 35 */	extsh. r0, r31
/* 80697B90  40 81 00 0C */	ble lbl_80697B9C
/* 80697B94  7F C3 F3 78 */	mr r3, r30
/* 80697B98  4B C3 71 A4 */	b __dl__FPv
lbl_80697B9C:
/* 80697B9C  7F C3 F3 78 */	mr r3, r30
/* 80697BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80697BA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80697BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80697BAC  7C 08 03 A6 */	mtlr r0
/* 80697BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80697BB4  4E 80 00 20 */	blr 
