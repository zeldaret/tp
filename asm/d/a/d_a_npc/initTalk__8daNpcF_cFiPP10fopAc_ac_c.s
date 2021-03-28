lbl_80153D1C:
/* 80153D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80153D20  7C 08 02 A6 */	mflr r0
/* 80153D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80153D28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80153D2C  7C 7F 1B 78 */	mr r31, r3
/* 80153D30  7C 80 23 78 */	mr r0, r4
/* 80153D34  7C A7 2B 78 */	mr r7, r5
/* 80153D38  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80153D3C  7F E4 FB 78 */	mr r4, r31
/* 80153D40  7C 05 03 78 */	mr r5, r0
/* 80153D44  38 C0 00 00 */	li r6, 0
/* 80153D48  48 0F 62 49 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80153D4C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80153D50  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80153D54  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80153D58  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80153D5C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80153D60  38 00 00 00 */	li r0, 0
/* 80153D64  98 1F 09 E9 */	stb r0, 0x9e9(r31)
/* 80153D68  98 1F 09 EC */	stb r0, 0x9ec(r31)
/* 80153D6C  38 60 00 01 */	li r3, 1
/* 80153D70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80153D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80153D78  7C 08 03 A6 */	mtlr r0
/* 80153D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80153D80  4E 80 00 20 */	blr 
