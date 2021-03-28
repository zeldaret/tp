lbl_80B777F8:
/* 80B777F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B777FC  7C 08 02 A6 */	mflr r0
/* 80B77800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B77804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B77808  93 C1 00 08 */	stw r30, 8(r1)
/* 80B7780C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B77810  7C 9F 23 78 */	mr r31, r4
/* 80B77814  41 82 00 38 */	beq lbl_80B7784C
/* 80B77818  3C 60 80 B8 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80B7781C  38 03 82 CC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80B77820  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B77824  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B77828  38 80 FF FF */	li r4, -1
/* 80B7782C  4B 6F 76 EC */	b __dt__8cM3dGCirFv
/* 80B77830  7F C3 F3 78 */	mr r3, r30
/* 80B77834  38 80 00 00 */	li r4, 0
/* 80B77838  4B 6F 08 78 */	b __dt__13cBgS_PolyInfoFv
/* 80B7783C  7F E0 07 35 */	extsh. r0, r31
/* 80B77840  40 81 00 0C */	ble lbl_80B7784C
/* 80B77844  7F C3 F3 78 */	mr r3, r30
/* 80B77848  4B 75 74 F4 */	b __dl__FPv
lbl_80B7784C:
/* 80B7784C  7F C3 F3 78 */	mr r3, r30
/* 80B77850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B77854  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B77858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7785C  7C 08 03 A6 */	mtlr r0
/* 80B77860  38 21 00 10 */	addi r1, r1, 0x10
/* 80B77864  4E 80 00 20 */	blr 
