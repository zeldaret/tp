lbl_80B0C7CC:
/* 80B0C7CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0C7D0  7C 08 02 A6 */	mflr r0
/* 80B0C7D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0C7D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0C7DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B0C7E0  7C 7F 1B 78 */	mr r31, r3
/* 80B0C7E4  48 00 3B 05 */	bl __ct__8daNpcF_cFv
/* 80B0C7E8  3C 60 80 B1 */	lis r3, __vt__10daNpcTkc_c@ha /* 0x80B10C18@ha */
/* 80B0C7EC  38 03 0C 18 */	addi r0, r3, __vt__10daNpcTkc_c@l /* 0x80B10C18@l */
/* 80B0C7F0  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80B0C7F4  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80B0C7F8  4B 7B 3B D1 */	bl __ct__10Z2CreatureFv
/* 80B0C7FC  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80B0C800  3C 80 80 B1 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80B10024@ha */
/* 80B0C804  38 84 00 24 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80B10024@l */
/* 80B0C808  3C A0 80 B1 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80B0FFDC@ha */
/* 80B0C80C  38 A5 FF DC */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80B0FFDC@l */
/* 80B0C810  38 C0 00 08 */	li r6, 8
/* 80B0C814  38 E0 00 01 */	li r7, 1
/* 80B0C818  4B 85 55 49 */	bl __construct_array
/* 80B0C81C  3B DF 0B E8 */	addi r30, r31, 0xbe8
/* 80B0C820  7F C3 F3 78 */	mr r3, r30
/* 80B0C824  4B 57 72 05 */	bl __ct__12dCcD_GObjInfFv
/* 80B0C828  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B0C82C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B0C830  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B0C834  3C 60 80 B1 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B10CCC@ha */
/* 80B0C838  38 03 0C CC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B10CCC@l */
/* 80B0C83C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B0C840  3C 60 80 B1 */	lis r3, __vt__8cM3dGSph@ha /* 0x80B10CC0@ha */
/* 80B0C844  38 03 0C C0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80B10CC0@l */
/* 80B0C848  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80B0C84C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80B0C850  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80B0C854  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B0C858  38 03 00 58 */	addi r0, r3, 0x58
/* 80B0C85C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80B0C860  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80B0C864  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80B0C868  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B0C86C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B0C870  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B0C874  38 03 00 84 */	addi r0, r3, 0x84
/* 80B0C878  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80B0C87C  7F E3 FB 78 */	mr r3, r31
/* 80B0C880  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0C884  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B0C888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0C88C  7C 08 03 A6 */	mtlr r0
/* 80B0C890  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0C894  4E 80 00 20 */	blr 
