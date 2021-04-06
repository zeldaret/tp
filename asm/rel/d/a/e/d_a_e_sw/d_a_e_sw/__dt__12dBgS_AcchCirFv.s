lbl_807AC9B0:
/* 807AC9B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AC9B4  7C 08 02 A6 */	mflr r0
/* 807AC9B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AC9BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AC9C0  93 C1 00 08 */	stw r30, 8(r1)
/* 807AC9C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 807AC9C8  7C 9F 23 78 */	mr r31, r4
/* 807AC9CC  41 82 00 38 */	beq lbl_807ACA04
/* 807AC9D0  3C 60 80 7B */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x807B0144@ha */
/* 807AC9D4  38 03 01 44 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x807B0144@l */
/* 807AC9D8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 807AC9DC  38 7E 00 14 */	addi r3, r30, 0x14
/* 807AC9E0  38 80 FF FF */	li r4, -1
/* 807AC9E4  4B AC 25 35 */	bl __dt__8cM3dGCirFv
/* 807AC9E8  7F C3 F3 78 */	mr r3, r30
/* 807AC9EC  38 80 00 00 */	li r4, 0
/* 807AC9F0  4B AB B6 C1 */	bl __dt__13cBgS_PolyInfoFv
/* 807AC9F4  7F E0 07 35 */	extsh. r0, r31
/* 807AC9F8  40 81 00 0C */	ble lbl_807ACA04
/* 807AC9FC  7F C3 F3 78 */	mr r3, r30
/* 807ACA00  4B B2 23 3D */	bl __dl__FPv
lbl_807ACA04:
/* 807ACA04  7F C3 F3 78 */	mr r3, r30
/* 807ACA08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807ACA0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807ACA10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807ACA14  7C 08 03 A6 */	mtlr r0
/* 807ACA18  38 21 00 10 */	addi r1, r1, 0x10
/* 807ACA1C  4E 80 00 20 */	blr 
