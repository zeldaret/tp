lbl_80D40C68:
/* 80D40C68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D40C6C  7C 08 02 A6 */	mflr r0
/* 80D40C70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D40C74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D40C78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D40C7C  7C 7E 1B 78 */	mr r30, r3
/* 80D40C80  3C 60 80 D4 */	lis r3, lit_3657@ha
/* 80D40C84  3B E3 15 9C */	addi r31, r3, lit_3657@l
/* 80D40C88  3C 60 80 D4 */	lis r3, cNullVec__6Z2Calc@ha
/* 80D40C8C  38 C3 16 08 */	addi r6, r3, cNullVec__6Z2Calc@l
/* 80D40C90  3C 60 80 D4 */	lis r3, data_80D41798@ha
/* 80D40C94  38 A3 17 98 */	addi r5, r3, data_80D41798@l
/* 80D40C98  88 05 00 00 */	lbz r0, 0(r5)
/* 80D40C9C  7C 00 07 75 */	extsb. r0, r0
/* 80D40CA0  40 82 00 58 */	bne lbl_80D40CF8
/* 80D40CA4  80 66 00 64 */	lwz r3, 0x64(r6)
/* 80D40CA8  80 06 00 68 */	lwz r0, 0x68(r6)
/* 80D40CAC  90 66 00 88 */	stw r3, 0x88(r6)
/* 80D40CB0  90 06 00 8C */	stw r0, 0x8c(r6)
/* 80D40CB4  80 06 00 6C */	lwz r0, 0x6c(r6)
/* 80D40CB8  90 06 00 90 */	stw r0, 0x90(r6)
/* 80D40CBC  38 86 00 88 */	addi r4, r6, 0x88
/* 80D40CC0  80 66 00 70 */	lwz r3, 0x70(r6)
/* 80D40CC4  80 06 00 74 */	lwz r0, 0x74(r6)
/* 80D40CC8  90 64 00 0C */	stw r3, 0xc(r4)
/* 80D40CCC  90 04 00 10 */	stw r0, 0x10(r4)
/* 80D40CD0  80 06 00 78 */	lwz r0, 0x78(r6)
/* 80D40CD4  90 04 00 14 */	stw r0, 0x14(r4)
/* 80D40CD8  80 66 00 7C */	lwz r3, 0x7c(r6)
/* 80D40CDC  80 06 00 80 */	lwz r0, 0x80(r6)
/* 80D40CE0  90 64 00 18 */	stw r3, 0x18(r4)
/* 80D40CE4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80D40CE8  80 06 00 84 */	lwz r0, 0x84(r6)
/* 80D40CEC  90 04 00 20 */	stw r0, 0x20(r4)
/* 80D40CF0  38 00 00 01 */	li r0, 1
/* 80D40CF4  98 05 00 00 */	stb r0, 0(r5)
lbl_80D40CF8:
/* 80D40CF8  7F C3 F3 78 */	mr r3, r30
/* 80D40CFC  88 1E 07 28 */	lbz r0, 0x728(r30)
/* 80D40D00  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80D40D04  39 86 00 88 */	addi r12, r6, 0x88
/* 80D40D08  7D 8C 02 14 */	add r12, r12, r0
/* 80D40D0C  4B 62 13 78 */	b __ptmf_scall
/* 80D40D10  60 00 00 00 */	nop 
/* 80D40D14  38 7E 07 00 */	addi r3, r30, 0x700
/* 80D40D18  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80D40D1C  4B 52 E4 E4 */	b SetR__8cM3dGCylFf
/* 80D40D20  38 7E 07 00 */	addi r3, r30, 0x700
/* 80D40D24  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80D40D28  4B 52 E4 D0 */	b SetH__8cM3dGCylFf
/* 80D40D2C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D40D30  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D40D34  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D40D38  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D40D3C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D40D40  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D40D44  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80D40D48  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D40D4C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D40D50  38 7E 07 00 */	addi r3, r30, 0x700
/* 80D40D54  38 81 00 08 */	addi r4, r1, 8
/* 80D40D58  4B 52 E4 84 */	b SetC__8cM3dGCylFRC4cXyz
/* 80D40D5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D40D60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D40D64  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D40D68  38 9E 05 DC */	addi r4, r30, 0x5dc
/* 80D40D6C  4B 52 3E 3C */	b Set__4cCcSFP8cCcD_Obj
/* 80D40D70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D40D74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D40D78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D40D7C  7C 08 03 A6 */	mtlr r0
/* 80D40D80  38 21 00 20 */	addi r1, r1, 0x20
/* 80D40D84  4E 80 00 20 */	blr 
