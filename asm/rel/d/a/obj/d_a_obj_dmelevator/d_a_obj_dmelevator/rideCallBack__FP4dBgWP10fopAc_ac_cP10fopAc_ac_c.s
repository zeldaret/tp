lbl_80BDD96C:
/* 80BDD96C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80BDD970  7C 08 02 A6 */	mflr r0
/* 80BDD974  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BDD978  39 61 00 70 */	addi r11, r1, 0x70
/* 80BDD97C  4B 78 48 59 */	bl _savegpr_27
/* 80BDD980  7C 9B 23 78 */	mr r27, r4
/* 80BDD984  7C BC 2B 78 */	mr r28, r5
/* 80BDD988  3C 60 80 BE */	lis r3, l_swOffset@ha /* 0x80BDF870@ha */
/* 80BDD98C  3B C3 F8 70 */	addi r30, r3, l_swOffset@l /* 0x80BDF870@l */
/* 80BDD990  3C 60 80 BE */	lis r3, lit_1109@ha /* 0x80BDFB38@ha */
/* 80BDD994  3B E3 FB 38 */	addi r31, r3, lit_1109@l /* 0x80BDFB38@l */
/* 80BDD998  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDD99C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDD9A0  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80BDD9A4  80 05 04 9C */	lwz r0, 0x49c(r5)
/* 80BDD9A8  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80BDD9AC  41 82 01 F0 */	beq lbl_80BDDB9C
/* 80BDD9B0  A8 1C 00 08 */	lha r0, 8(r28)
/* 80BDD9B4  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80BDD9B8  40 82 01 E4 */	bne lbl_80BDDB9C
/* 80BDD9BC  88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 80BDD9C0  7C 00 07 75 */	extsb. r0, r0
/* 80BDD9C4  40 82 00 F0 */	bne lbl_80BDDAB4
/* 80BDD9C8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80BDD9CC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80BDD9D0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80BDD9D4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BDD9D8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80BDD9DC  D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 80BDD9E0  38 7F 00 74 */	addi r3, r31, 0x74
/* 80BDD9E4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BDD9E8  D0 23 00 08 */	stfs f1, 8(r3)
/* 80BDD9EC  3C 80 80 BE */	lis r4, __dt__4cXyzFv@ha /* 0x80BDDBB4@ha */
/* 80BDD9F0  38 84 DB B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BDDBB4@l */
/* 80BDD9F4  38 BF 00 40 */	addi r5, r31, 0x40
/* 80BDD9F8  4B FF FF 01 */	bl __register_global_object
/* 80BDD9FC  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80BDDA00  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80BDDA04  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80BDDA08  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80BDDA0C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80BDDA10  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BDDA14  38 7F 00 74 */	addi r3, r31, 0x74
/* 80BDDA18  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80BDDA1C  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80BDDA20  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80BDDA24  38 63 00 0C */	addi r3, r3, 0xc
/* 80BDDA28  3C 80 80 BE */	lis r4, __dt__4cXyzFv@ha /* 0x80BDDBB4@ha */
/* 80BDDA2C  38 84 DB B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BDDBB4@l */
/* 80BDDA30  38 BF 00 50 */	addi r5, r31, 0x50
/* 80BDDA34  4B FF FE C5 */	bl __register_global_object
/* 80BDDA38  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80BDDA3C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BDDA40  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80BDDA44  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BDDA48  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80BDDA4C  38 7F 00 74 */	addi r3, r31, 0x74
/* 80BDDA50  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80BDDA54  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BDDA58  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80BDDA5C  38 63 00 18 */	addi r3, r3, 0x18
/* 80BDDA60  3C 80 80 BE */	lis r4, __dt__4cXyzFv@ha /* 0x80BDDBB4@ha */
/* 80BDDA64  38 84 DB B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BDDBB4@l */
/* 80BDDA68  38 BF 00 5C */	addi r5, r31, 0x5c
/* 80BDDA6C  4B FF FE 8D */	bl __register_global_object
/* 80BDDA70  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80BDDA74  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80BDDA78  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80BDDA7C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BDDA80  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80BDDA84  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BDDA88  38 7F 00 74 */	addi r3, r31, 0x74
/* 80BDDA8C  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80BDDA90  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80BDDA94  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80BDDA98  38 63 00 24 */	addi r3, r3, 0x24
/* 80BDDA9C  3C 80 80 BE */	lis r4, __dt__4cXyzFv@ha /* 0x80BDDBB4@ha */
/* 80BDDAA0  38 84 DB B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BDDBB4@l */
/* 80BDDAA4  38 BF 00 68 */	addi r5, r31, 0x68
/* 80BDDAA8  4B FF FE 51 */	bl __register_global_object
/* 80BDDAAC  38 00 00 01 */	li r0, 1
/* 80BDDAB0  98 1F 00 4C */	stb r0, 0x4c(r31)
lbl_80BDDAB4:
/* 80BDDAB4  38 61 00 08 */	addi r3, r1, 8
/* 80BDDAB8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80BDDABC  38 BB 06 1C */	addi r5, r27, 0x61c
/* 80BDDAC0  4B 68 90 75 */	bl __mi__4cXyzCFRC3Vec
/* 80BDDAC4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BDDAC8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BDDACC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BDDAD0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BDDAD4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BDDAD8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BDDADC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDAE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDAE4  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80BDDAE8  7C 00 00 D0 */	neg r0, r0
/* 80BDDAEC  7C 04 07 34 */	extsh r4, r0
/* 80BDDAF0  4B 42 E8 ED */	bl mDoMtx_YrotS__FPA4_fs
/* 80BDDAF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDAF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDAFC  38 81 00 44 */	addi r4, r1, 0x44
/* 80BDDB00  7C 85 23 78 */	mr r5, r4
/* 80BDDB04  4B 76 92 69 */	bl PSMTXMultVec
/* 80BDDB08  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80BDDB0C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80BDDB10  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BDDB14  4C 40 13 82 */	cror 2, 0, 2
/* 80BDDB18  40 82 00 84 */	bne lbl_80BDDB9C
/* 80BDDB1C  38 7F 00 74 */	addi r3, r31, 0x74
/* 80BDDB20  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80BDDB24  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BDDB28  4C 41 13 82 */	cror 2, 1, 2
/* 80BDDB2C  40 82 00 70 */	bne lbl_80BDDB9C
/* 80BDDB30  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BDDB34  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80BDDB38  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BDDB3C  4C 40 13 82 */	cror 2, 0, 2
/* 80BDDB40  40 82 00 5C */	bne lbl_80BDDB9C
/* 80BDDB44  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80BDDB48  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BDDB4C  4C 41 13 82 */	cror 2, 1, 2
/* 80BDDB50  40 82 00 4C */	bne lbl_80BDDB9C
/* 80BDDB54  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80BDDB58  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80BDDB5C  41 82 00 14 */	beq lbl_80BDDB70
/* 80BDDB60  38 00 00 01 */	li r0, 1
/* 80BDDB64  98 1B 06 32 */	stb r0, 0x632(r27)
/* 80BDDB68  98 1B 06 34 */	stb r0, 0x634(r27)
/* 80BDDB6C  48 00 00 10 */	b lbl_80BDDB7C
lbl_80BDDB70:
/* 80BDDB70  38 00 00 00 */	li r0, 0
/* 80BDDB74  98 1B 06 32 */	stb r0, 0x632(r27)
/* 80BDDB78  98 1B 06 34 */	stb r0, 0x634(r27)
lbl_80BDDB7C:
/* 80BDDB7C  88 1C 04 9A */	lbz r0, 0x49a(r28)
/* 80BDDB80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BDDB84  41 82 00 10 */	beq lbl_80BDDB94
/* 80BDDB88  38 00 00 02 */	li r0, 2
/* 80BDDB8C  98 1B 06 2F */	stb r0, 0x62f(r27)
/* 80BDDB90  48 00 00 0C */	b lbl_80BDDB9C
lbl_80BDDB94:
/* 80BDDB94  38 00 00 01 */	li r0, 1
/* 80BDDB98  98 1B 06 2F */	stb r0, 0x62f(r27)
lbl_80BDDB9C:
/* 80BDDB9C  39 61 00 70 */	addi r11, r1, 0x70
/* 80BDDBA0  4B 78 46 81 */	bl _restgpr_27
/* 80BDDBA4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BDDBA8  7C 08 03 A6 */	mtlr r0
/* 80BDDBAC  38 21 00 70 */	addi r1, r1, 0x70
/* 80BDDBB0  4E 80 00 20 */	blr 
