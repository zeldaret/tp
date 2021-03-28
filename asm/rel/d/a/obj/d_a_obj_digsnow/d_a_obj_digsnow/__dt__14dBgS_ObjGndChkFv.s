lbl_80BDD0AC:
/* 80BDD0AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD0B0  7C 08 02 A6 */	mflr r0
/* 80BDD0B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD0B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDD0BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDD0C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BDD0C4  7C 9F 23 78 */	mr r31, r4
/* 80BDD0C8  41 82 00 40 */	beq lbl_80BDD108
/* 80BDD0CC  3C 80 80 BE */	lis r4, __vt__14dBgS_ObjGndChk@ha
/* 80BDD0D0  38 84 D8 04 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l
/* 80BDD0D4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BDD0D8  38 04 00 0C */	addi r0, r4, 0xc
/* 80BDD0DC  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80BDD0E0  38 04 00 18 */	addi r0, r4, 0x18
/* 80BDD0E4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80BDD0E8  38 04 00 24 */	addi r0, r4, 0x24
/* 80BDD0EC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80BDD0F0  38 80 00 00 */	li r4, 0
/* 80BDD0F4  4B 49 A4 FC */	b __dt__11dBgS_GndChkFv
/* 80BDD0F8  7F E0 07 35 */	extsh. r0, r31
/* 80BDD0FC  40 81 00 0C */	ble lbl_80BDD108
/* 80BDD100  7F C3 F3 78 */	mr r3, r30
/* 80BDD104  4B 6F 1C 38 */	b __dl__FPv
lbl_80BDD108:
/* 80BDD108  7F C3 F3 78 */	mr r3, r30
/* 80BDD10C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDD110  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDD114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD118  7C 08 03 A6 */	mtlr r0
/* 80BDD11C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD120  4E 80 00 20 */	blr 
