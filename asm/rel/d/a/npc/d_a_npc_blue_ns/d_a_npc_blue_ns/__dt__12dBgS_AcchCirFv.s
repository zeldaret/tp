lbl_8096C5A0:
/* 8096C5A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096C5A4  7C 08 02 A6 */	mflr r0
/* 8096C5A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096C5AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096C5B0  93 C1 00 08 */	stw r30, 8(r1)
/* 8096C5B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8096C5B8  7C 9F 23 78 */	mr r31, r4
/* 8096C5BC  41 82 00 38 */	beq lbl_8096C5F4
/* 8096C5C0  3C 60 80 97 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8096C5C4  38 03 CE 38 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8096C5C8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8096C5CC  38 7E 00 14 */	addi r3, r30, 0x14
/* 8096C5D0  38 80 FF FF */	li r4, -1
/* 8096C5D4  4B 90 29 44 */	b __dt__8cM3dGCirFv
/* 8096C5D8  7F C3 F3 78 */	mr r3, r30
/* 8096C5DC  38 80 00 00 */	li r4, 0
/* 8096C5E0  4B 8F BA D0 */	b __dt__13cBgS_PolyInfoFv
/* 8096C5E4  7F E0 07 35 */	extsh. r0, r31
/* 8096C5E8  40 81 00 0C */	ble lbl_8096C5F4
/* 8096C5EC  7F C3 F3 78 */	mr r3, r30
/* 8096C5F0  4B 96 27 4C */	b __dl__FPv
lbl_8096C5F4:
/* 8096C5F4  7F C3 F3 78 */	mr r3, r30
/* 8096C5F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096C5FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8096C600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096C604  7C 08 03 A6 */	mtlr r0
/* 8096C608  38 21 00 10 */	addi r1, r1, 0x10
/* 8096C60C  4E 80 00 20 */	blr 
