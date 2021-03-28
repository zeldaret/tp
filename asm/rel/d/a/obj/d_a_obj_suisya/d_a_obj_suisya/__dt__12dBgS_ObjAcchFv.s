lbl_80CF0478:
/* 80CF0478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF047C  7C 08 02 A6 */	mflr r0
/* 80CF0480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF0484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF0488  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF048C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CF0490  7C 9F 23 78 */	mr r31, r4
/* 80CF0494  41 82 00 38 */	beq lbl_80CF04CC
/* 80CF0498  3C 80 80 CF */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80CF049C  38 84 05 9C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80CF04A0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CF04A4  38 04 00 0C */	addi r0, r4, 0xc
/* 80CF04A8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CF04AC  38 04 00 18 */	addi r0, r4, 0x18
/* 80CF04B0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CF04B4  38 80 00 00 */	li r4, 0
/* 80CF04B8  4B 38 5A DC */	b __dt__9dBgS_AcchFv
/* 80CF04BC  7F E0 07 35 */	extsh. r0, r31
/* 80CF04C0  40 81 00 0C */	ble lbl_80CF04CC
/* 80CF04C4  7F C3 F3 78 */	mr r3, r30
/* 80CF04C8  4B 5D E8 74 */	b __dl__FPv
lbl_80CF04CC:
/* 80CF04CC  7F C3 F3 78 */	mr r3, r30
/* 80CF04D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF04D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF04D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF04DC  7C 08 03 A6 */	mtlr r0
/* 80CF04E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF04E4  4E 80 00 20 */	blr 
