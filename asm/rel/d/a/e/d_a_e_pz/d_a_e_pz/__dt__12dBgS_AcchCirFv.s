lbl_80760B84:
/* 80760B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80760B88  7C 08 02 A6 */	mflr r0
/* 80760B8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80760B90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80760B94  93 C1 00 08 */	stw r30, 8(r1)
/* 80760B98  7C 7E 1B 79 */	or. r30, r3, r3
/* 80760B9C  7C 9F 23 78 */	mr r31, r4
/* 80760BA0  41 82 00 38 */	beq lbl_80760BD8
/* 80760BA4  3C 60 80 76 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80760BA8  38 03 1D 30 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80760BAC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80760BB0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80760BB4  38 80 FF FF */	li r4, -1
/* 80760BB8  4B B0 E3 60 */	b __dt__8cM3dGCirFv
/* 80760BBC  7F C3 F3 78 */	mr r3, r30
/* 80760BC0  38 80 00 00 */	li r4, 0
/* 80760BC4  4B B0 74 EC */	b __dt__13cBgS_PolyInfoFv
/* 80760BC8  7F E0 07 35 */	extsh. r0, r31
/* 80760BCC  40 81 00 0C */	ble lbl_80760BD8
/* 80760BD0  7F C3 F3 78 */	mr r3, r30
/* 80760BD4  4B B6 E1 68 */	b __dl__FPv
lbl_80760BD8:
/* 80760BD8  7F C3 F3 78 */	mr r3, r30
/* 80760BDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80760BE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80760BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80760BE8  7C 08 03 A6 */	mtlr r0
/* 80760BEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80760BF0  4E 80 00 20 */	blr 
