lbl_80CECF34:
/* 80CECF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CECF38  7C 08 02 A6 */	mflr r0
/* 80CECF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CECF40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CECF44  93 C1 00 08 */	stw r30, 8(r1)
/* 80CECF48  7C 7E 1B 78 */	mr r30, r3
/* 80CECF4C  3C 60 80 CF */	lis r3, lit_1109@ha /* 0x80CEF1E8@ha */
/* 80CECF50  3B E3 F1 E8 */	addi r31, r3, lit_1109@l /* 0x80CEF1E8@l */
/* 80CECF54  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CECF58  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80CECF5C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CECF60  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80CECF64  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CECF68  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80CECF6C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CECF70  88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 80CECF74  7C 00 07 75 */	extsb. r0, r0
/* 80CECF78  40 82 00 3C */	bne lbl_80CECFB4
/* 80CECF7C  3C 60 80 CF */	lis r3, lit_3635@ha /* 0x80CEEFA0@ha */
/* 80CECF80  C0 03 EF A0 */	lfs f0, lit_3635@l(r3)  /* 0x80CEEFA0@l */
/* 80CECF84  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 80CECF88  38 7F 00 50 */	addi r3, r31, 0x50
/* 80CECF8C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80CECF90  3C 80 80 CF */	lis r4, lit_3636@ha /* 0x80CEEFA4@ha */
/* 80CECF94  C0 04 EF A4 */	lfs f0, lit_3636@l(r4)  /* 0x80CEEFA4@l */
/* 80CECF98  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CECF9C  3C 80 80 CF */	lis r4, __dt__4cXyzFv@ha /* 0x80CECFE8@ha */
/* 80CECFA0  38 84 CF E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CECFE8@l */
/* 80CECFA4  38 BF 00 40 */	addi r5, r31, 0x40
/* 80CECFA8  4B FF FE F1 */	bl __register_global_object
/* 80CECFAC  38 00 00 01 */	li r0, 1
/* 80CECFB0  98 1F 00 4C */	stb r0, 0x4c(r31)
lbl_80CECFB4:
/* 80CECFB4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CECFB8  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80CECFBC  A8 BE 04 B6 */	lha r5, 0x4b6(r30)
/* 80CECFC0  38 DF 00 50 */	addi r6, r31, 0x50
/* 80CECFC4  4B 58 3D FD */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80CECFC8  7F C3 F3 78 */	mr r3, r30
/* 80CECFCC  48 00 00 59 */	bl setBaseMtx__14daObjStopper_cFv
/* 80CECFD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CECFD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CECFD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CECFDC  7C 08 03 A6 */	mtlr r0
/* 80CECFE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CECFE4  4E 80 00 20 */	blr 
