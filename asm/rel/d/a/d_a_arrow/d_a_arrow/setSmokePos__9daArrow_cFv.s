lbl_8049AF18:
/* 8049AF18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049AF1C  7C 08 02 A6 */	mflr r0
/* 8049AF20  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049AF24  39 61 00 30 */	addi r11, r1, 0x30
/* 8049AF28  4B EC 72 B4 */	b _savegpr_29
/* 8049AF2C  7C 7D 1B 78 */	mr r29, r3
/* 8049AF30  3C 60 80 4A */	lis r3, lit_1109@ha
/* 8049AF34  3B C3 DF 60 */	addi r30, r3, lit_1109@l
/* 8049AF38  3C 60 80 4A */	lis r3, lit_3768@ha
/* 8049AF3C  3B E3 DC 84 */	addi r31, r3, lit_3768@l
/* 8049AF40  88 1E 00 4C */	lbz r0, 0x4c(r30)
/* 8049AF44  7C 00 07 75 */	extsb. r0, r0
/* 8049AF48  40 82 00 38 */	bne lbl_8049AF80
/* 8049AF4C  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8049AF50  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 8049AF54  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 8049AF58  38 7E 00 50 */	addi r3, r30, 0x50
/* 8049AF5C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8049AF60  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8049AF64  D0 03 00 08 */	stfs f0, 8(r3)
/* 8049AF68  3C 80 80 4A */	lis r4, __dt__4cXyzFv@ha
/* 8049AF6C  38 84 A3 34 */	addi r4, r4, __dt__4cXyzFv@l
/* 8049AF70  38 BE 00 40 */	addi r5, r30, 0x40
/* 8049AF74  4B FF EC 85 */	bl __register_global_object
/* 8049AF78  38 00 00 01 */	li r0, 1
/* 8049AF7C  98 1E 00 4C */	stb r0, 0x4c(r30)
lbl_8049AF80:
/* 8049AF80  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8049AF84  38 63 00 24 */	addi r3, r3, 0x24
/* 8049AF88  38 9E 00 50 */	addi r4, r30, 0x50
/* 8049AF8C  38 BD 09 CC */	addi r5, r29, 0x9cc
/* 8049AF90  4B EA BD DC */	b PSMTXMultVec
/* 8049AF94  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8049AF98  B0 1D 09 5A */	sth r0, 0x95a(r29)
/* 8049AF9C  38 61 00 14 */	addi r3, r1, 0x14
/* 8049AFA0  38 9D 09 CC */	addi r4, r29, 0x9cc
/* 8049AFA4  38 BD 09 D8 */	addi r5, r29, 0x9d8
/* 8049AFA8  4B DC BB 8C */	b __mi__4cXyzCFRC3Vec
/* 8049AFAC  38 61 00 08 */	addi r3, r1, 8
/* 8049AFB0  38 81 00 14 */	addi r4, r1, 0x14
/* 8049AFB4  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 8049AFB8  4B DC BB CC */	b __ml__4cXyzCFf
/* 8049AFBC  C0 01 00 08 */	lfs f0, 8(r1)
/* 8049AFC0  D0 1D 09 F0 */	stfs f0, 0x9f0(r29)
/* 8049AFC4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8049AFC8  D0 1D 09 F4 */	stfs f0, 0x9f4(r29)
/* 8049AFCC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8049AFD0  D0 1D 09 F8 */	stfs f0, 0x9f8(r29)
/* 8049AFD4  39 61 00 30 */	addi r11, r1, 0x30
/* 8049AFD8  4B EC 72 50 */	b _restgpr_29
/* 8049AFDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049AFE0  7C 08 03 A6 */	mtlr r0
/* 8049AFE4  38 21 00 30 */	addi r1, r1, 0x30
/* 8049AFE8  4E 80 00 20 */	blr 
