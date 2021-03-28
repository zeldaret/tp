lbl_80480DD8:
/* 80480DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80480DDC  7C 08 02 A6 */	mflr r0
/* 80480DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80480DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80480DE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80480DEC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80480DF0  7C 9F 23 78 */	mr r31, r4
/* 80480DF4  41 82 00 40 */	beq lbl_80480E34
/* 80480DF8  3C 80 80 48 */	lis r4, __vt__11dBgS_WtrChk@ha
/* 80480DFC  38 84 18 50 */	addi r4, r4, __vt__11dBgS_WtrChk@l
/* 80480E00  90 9E 00 0C */	stw r4, 0xc(r30)
/* 80480E04  38 04 00 0C */	addi r0, r4, 0xc
/* 80480E08  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80480E0C  38 04 00 18 */	addi r0, r4, 0x18
/* 80480E10  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80480E14  38 04 00 24 */	addi r0, r4, 0x24
/* 80480E18  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80480E1C  38 80 00 00 */	li r4, 0
/* 80480E20  4B BF 7E 58 */	b __dt__14dBgS_SplGrpChkFv
/* 80480E24  7F E0 07 35 */	extsh. r0, r31
/* 80480E28  40 81 00 0C */	ble lbl_80480E34
/* 80480E2C  7F C3 F3 78 */	mr r3, r30
/* 80480E30  4B E4 DF 0C */	b __dl__FPv
lbl_80480E34:
/* 80480E34  7F C3 F3 78 */	mr r3, r30
/* 80480E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80480E3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80480E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80480E44  7C 08 03 A6 */	mtlr r0
/* 80480E48  38 21 00 10 */	addi r1, r1, 0x10
/* 80480E4C  4E 80 00 20 */	blr 
