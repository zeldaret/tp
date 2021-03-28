lbl_804BAE98:
/* 804BAE98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BAE9C  7C 08 02 A6 */	mflr r0
/* 804BAEA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BAEA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BAEA8  93 C1 00 08 */	stw r30, 8(r1)
/* 804BAEAC  7C 7E 1B 79 */	or. r30, r3, r3
/* 804BAEB0  7C 9F 23 78 */	mr r31, r4
/* 804BAEB4  41 82 00 38 */	beq lbl_804BAEEC
/* 804BAEB8  3C 80 80 4C */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 804BAEBC  38 84 BB 38 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 804BAEC0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 804BAEC4  38 04 00 0C */	addi r0, r4, 0xc
/* 804BAEC8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 804BAECC  38 04 00 18 */	addi r0, r4, 0x18
/* 804BAED0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 804BAED4  38 80 00 00 */	li r4, 0
/* 804BAED8  4B BB B0 BC */	b __dt__9dBgS_AcchFv
/* 804BAEDC  7F E0 07 35 */	extsh. r0, r31
/* 804BAEE0  40 81 00 0C */	ble lbl_804BAEEC
/* 804BAEE4  7F C3 F3 78 */	mr r3, r30
/* 804BAEE8  4B E1 3E 54 */	b __dl__FPv
lbl_804BAEEC:
/* 804BAEEC  7F C3 F3 78 */	mr r3, r30
/* 804BAEF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BAEF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804BAEF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BAEFC  7C 08 03 A6 */	mtlr r0
/* 804BAF00  38 21 00 10 */	addi r1, r1, 0x10
/* 804BAF04  4E 80 00 20 */	blr 
