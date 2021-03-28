lbl_80BF9B1C:
/* 80BF9B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF9B20  7C 08 02 A6 */	mflr r0
/* 80BF9B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF9B28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF9B2C  7C 7F 1B 78 */	mr r31, r3
/* 80BF9B30  88 03 09 50 */	lbz r0, 0x950(r3)
/* 80BF9B34  28 00 00 01 */	cmplwi r0, 1
/* 80BF9B38  40 82 00 10 */	bne lbl_80BF9B48
/* 80BF9B3C  98 1F 09 51 */	stb r0, 0x951(r31)
/* 80BF9B40  38 60 00 01 */	li r3, 1
/* 80BF9B44  48 00 00 68 */	b lbl_80BF9BAC
lbl_80BF9B48:
/* 80BF9B48  38 7F 05 8C */	addi r3, r31, 0x58c
/* 80BF9B4C  4B 41 38 DC */	b play__14mDoExt_baseAnmFv
/* 80BF9B50  38 7F 05 74 */	addi r3, r31, 0x574
/* 80BF9B54  4B 41 38 D4 */	b play__14mDoExt_baseAnmFv
/* 80BF9B58  7F E3 FB 78 */	mr r3, r31
/* 80BF9B5C  48 00 00 65 */	bl actionMain__10daGlwSph_cFv
/* 80BF9B60  38 7F 07 D8 */	addi r3, r31, 0x7d8
/* 80BF9B64  4B 48 9C CC */	b Move__10dCcD_GSttsFv
/* 80BF9B68  38 7F 09 1C */	addi r3, r31, 0x91c
/* 80BF9B6C  3C 80 80 C0 */	lis r4, lit_3665@ha
/* 80BF9B70  C0 24 A9 70 */	lfs f1, lit_3665@l(r4)
/* 80BF9B74  4B 67 5B 94 */	b SetR__8cM3dGSphFf
/* 80BF9B78  38 7F 09 1C */	addi r3, r31, 0x91c
/* 80BF9B7C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BF9B80  4B 67 5A C8 */	b SetC__8cM3dGSphFRC4cXyz
/* 80BF9B84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF9B88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF9B8C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BF9B90  38 9F 07 F8 */	addi r4, r31, 0x7f8
/* 80BF9B94  4B 66 B0 14 */	b Set__4cCcSFP8cCcD_Obj
/* 80BF9B98  7F E3 FB 78 */	mr r3, r31
/* 80BF9B9C  4B FF F8 A1 */	bl setBaseMtx__10daGlwSph_cFv
/* 80BF9BA0  88 1F 09 50 */	lbz r0, 0x950(r31)
/* 80BF9BA4  98 1F 09 51 */	stb r0, 0x951(r31)
/* 80BF9BA8  38 60 00 01 */	li r3, 1
lbl_80BF9BAC:
/* 80BF9BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF9BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF9BB4  7C 08 03 A6 */	mtlr r0
/* 80BF9BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF9BBC  4E 80 00 20 */	blr 
