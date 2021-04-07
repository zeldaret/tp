lbl_801A8650:
/* 801A8650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A8654  7C 08 02 A6 */	mflr r0
/* 801A8658  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A865C  7C 64 1B 78 */	mr r4, r3
/* 801A8660  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A8664  C0 82 A3 A8 */	lfs f4, lit_8647(r2)
/* 801A8668  A8 03 03 50 */	lha r0, 0x350(r3)
/* 801A866C  98 01 00 0C */	stb r0, 0xc(r1)
/* 801A8670  A8 03 03 52 */	lha r0, 0x352(r3)
/* 801A8674  98 01 00 0D */	stb r0, 0xd(r1)
/* 801A8678  A8 03 03 54 */	lha r0, 0x354(r3)
/* 801A867C  98 01 00 0E */	stb r0, 0xe(r1)
/* 801A8680  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A8684  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A8688  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 801A868C  28 03 00 00 */	cmplwi r3, 0
/* 801A8690  41 82 00 38 */	beq lbl_801A86C8
/* 801A8694  C0 43 00 C8 */	lfs f2, 0xc8(r3)
/* 801A8698  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A869C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A86A0  4C 41 13 82 */	cror 2, 1, 2
/* 801A86A4  40 82 00 24 */	bne lbl_801A86C8
/* 801A86A8  C0 23 00 CC */	lfs f1, 0xcc(r3)
/* 801A86AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A86B0  4C 41 13 82 */	cror 2, 1, 2
/* 801A86B4  40 82 00 14 */	bne lbl_801A86C8
/* 801A86B8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801A86BC  40 80 00 0C */	bge lbl_801A86C8
/* 801A86C0  FC 60 10 90 */	fmr f3, f2
/* 801A86C4  FC 80 08 90 */	fmr f4, f1
lbl_801A86C8:
/* 801A86C8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801A86CC  90 01 00 08 */	stw r0, 8(r1)
/* 801A86D0  38 60 00 02 */	li r3, 2
/* 801A86D4  C0 24 03 68 */	lfs f1, 0x368(r4)
/* 801A86D8  C0 44 03 6C */	lfs f2, 0x36c(r4)
/* 801A86DC  38 81 00 08 */	addi r4, r1, 8
/* 801A86E0  48 1B 71 D9 */	bl GXSetFog
/* 801A86E4  48 00 00 BD */	bl GxXFog_set__Fv
/* 801A86E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A86EC  7C 08 03 A6 */	mtlr r0
/* 801A86F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801A86F4  4E 80 00 20 */	blr 
