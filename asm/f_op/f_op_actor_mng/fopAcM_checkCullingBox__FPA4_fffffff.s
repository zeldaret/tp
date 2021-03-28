lbl_8001AC40:
/* 8001AC40  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8001AC44  7C 08 02 A6 */	mflr r0
/* 8001AC48  90 01 00 54 */	stw r0, 0x54(r1)
/* 8001AC4C  7C 64 1B 78 */	mr r4, r3
/* 8001AC50  3C 60 80 38 */	lis r3, lit_4932@ha
/* 8001AC54  38 A3 88 80 */	addi r5, r3, lit_4932@l
/* 8001AC58  80 65 00 00 */	lwz r3, 0(r5)
/* 8001AC5C  80 05 00 04 */	lwz r0, 4(r5)
/* 8001AC60  90 61 00 14 */	stw r3, 0x14(r1)
/* 8001AC64  90 01 00 18 */	stw r0, 0x18(r1)
/* 8001AC68  80 05 00 08 */	lwz r0, 8(r5)
/* 8001AC6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8001AC70  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8001AC74  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8001AC78  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8001AC7C  3C 60 80 38 */	lis r3, lit_4933@ha
/* 8001AC80  38 A3 88 8C */	addi r5, r3, lit_4933@l
/* 8001AC84  80 65 00 00 */	lwz r3, 0(r5)
/* 8001AC88  80 05 00 04 */	lwz r0, 4(r5)
/* 8001AC8C  90 61 00 08 */	stw r3, 8(r1)
/* 8001AC90  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001AC94  80 05 00 08 */	lwz r0, 8(r5)
/* 8001AC98  90 01 00 10 */	stw r0, 0x10(r1)
/* 8001AC9C  D0 81 00 08 */	stfs f4, 8(r1)
/* 8001ACA0  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 8001ACA4  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 8001ACA8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8001ACAC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8001ACB0  38 A1 00 20 */	addi r5, r1, 0x20
/* 8001ACB4  48 32 B8 31 */	bl PSMTXConcat
/* 8001ACB8  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha
/* 8001ACBC  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l
/* 8001ACC0  38 81 00 20 */	addi r4, r1, 0x20
/* 8001ACC4  38 A1 00 08 */	addi r5, r1, 8
/* 8001ACC8  38 C1 00 14 */	addi r6, r1, 0x14
/* 8001ACCC  48 25 8D 79 */	bl clip__11J3DUClipperCFPA4_CfP3VecP3Vec
/* 8001ACD0  30 03 FF FF */	addic r0, r3, -1
/* 8001ACD4  7C 00 19 10 */	subfe r0, r0, r3
/* 8001ACD8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8001ACDC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8001ACE0  7C 08 03 A6 */	mtlr r0
/* 8001ACE4  38 21 00 50 */	addi r1, r1, 0x50
/* 8001ACE8  4E 80 00 20 */	blr 
