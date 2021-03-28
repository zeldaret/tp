lbl_80AA315C:
/* 80AA315C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA3160  7C 08 02 A6 */	mflr r0
/* 80AA3164  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA3168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA316C  7C 7F 1B 78 */	mr r31, r3
/* 80AA3170  4B 6B 5F 8C */	b drawNpc__10daNpcCd2_cFv
/* 80AA3174  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 80AA3178  2C 00 00 10 */	cmpwi r0, 0x10
/* 80AA317C  40 80 00 1C */	bge lbl_80AA3198
/* 80AA3180  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 80AA3184  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 80AA3188  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 80AA318C  7C 63 02 14 */	add r3, r3, r0
/* 80AA3190  C0 23 01 E8 */	lfs f1, 0x1e8(r3)
/* 80AA3194  48 00 00 18 */	b lbl_80AA31AC
lbl_80AA3198:
/* 80AA3198  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 80AA319C  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 80AA31A0  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 80AA31A4  7C 63 02 14 */	add r3, r3, r0
/* 80AA31A8  C0 23 FF 18 */	lfs f1, -0xe8(r3)
lbl_80AA31AC:
/* 80AA31AC  7F E3 FB 78 */	mr r3, r31
/* 80AA31B0  80 9F 0B 00 */	lwz r4, 0xb00(r31)
/* 80AA31B4  80 BF 0A C8 */	lwz r5, 0xac8(r31)
/* 80AA31B8  4B 6B 5E 38 */	b drawObj__10daNpcCd2_cFiP8J3DModelf
/* 80AA31BC  7F E3 FB 78 */	mr r3, r31
/* 80AA31C0  3C 80 80 AA */	lis r4, lit_4123@ha
/* 80AA31C4  C0 24 69 94 */	lfs f1, lit_4123@l(r4)
/* 80AA31C8  4B 6B 5D A4 */	b drawShadow__10daNpcCd2_cFf
/* 80AA31CC  38 7F 09 C8 */	addi r3, r31, 0x9c8
/* 80AA31D0  4B 7A E9 90 */	b dbView__16dNpcLib_lookat_cFv
/* 80AA31D4  38 60 00 01 */	li r3, 1
/* 80AA31D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA31DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA31E0  7C 08 03 A6 */	mtlr r0
/* 80AA31E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA31E8  4E 80 00 20 */	blr 
