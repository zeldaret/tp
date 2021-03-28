lbl_80C464CC:
/* 80C464CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C464D0  7C 08 02 A6 */	mflr r0
/* 80C464D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C464D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C464DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C464E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C464E4  7C 9F 23 78 */	mr r31, r4
/* 80C464E8  41 82 00 38 */	beq lbl_80C46520
/* 80C464EC  3C 80 80 C4 */	lis r4, __vt__12daObjKJgjs_c@ha
/* 80C464F0  38 04 65 E0 */	addi r0, r4, __vt__12daObjKJgjs_c@l
/* 80C464F4  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C464F8  41 82 00 18 */	beq lbl_80C46510
/* 80C464FC  3C 80 80 3B */	lis r4, __vt__16dBgS_MoveBgActor@ha
/* 80C46500  38 04 B9 A0 */	addi r0, r4, __vt__16dBgS_MoveBgActor@l
/* 80C46504  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C46508  38 80 00 00 */	li r4, 0
/* 80C4650C  4B 3D 27 80 */	b __dt__10fopAc_ac_cFv
lbl_80C46510:
/* 80C46510  7F E0 07 35 */	extsh. r0, r31
/* 80C46514  40 81 00 0C */	ble lbl_80C46520
/* 80C46518  7F C3 F3 78 */	mr r3, r30
/* 80C4651C  4B 68 88 20 */	b __dl__FPv
lbl_80C46520:
/* 80C46520  7F C3 F3 78 */	mr r3, r30
/* 80C46524  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C46528  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C4652C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46530  7C 08 03 A6 */	mtlr r0
/* 80C46534  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46538  4E 80 00 20 */	blr 
