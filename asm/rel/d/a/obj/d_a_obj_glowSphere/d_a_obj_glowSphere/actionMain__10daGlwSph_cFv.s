lbl_80BF9BC0:
/* 80BF9BC0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BF9BC4  7C 08 02 A6 */	mflr r0
/* 80BF9BC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BF9BCC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BF9BD0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BF9BD4  7C 7E 1B 78 */	mr r30, r3
/* 80BF9BD8  3C 60 80 C0 */	lis r3, cNullVec__6Z2Calc@ha
/* 80BF9BDC  3B E3 A9 D0 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80BF9BE0  3C 60 80 C0 */	lis r3, struct_80BFAFD0+0x0@ha
/* 80BF9BE4  38 A3 AF D0 */	addi r5, r3, struct_80BFAFD0+0x0@l
/* 80BF9BE8  88 05 00 00 */	lbz r0, 0(r5)
/* 80BF9BEC  7C 00 07 75 */	extsb. r0, r0
/* 80BF9BF0  40 82 00 58 */	bne lbl_80BF9C48
/* 80BF9BF4  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 80BF9BF8  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 80BF9BFC  90 7F 00 B0 */	stw r3, 0xb0(r31)
/* 80BF9C00  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 80BF9C04  80 1F 00 94 */	lwz r0, 0x94(r31)
/* 80BF9C08  90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 80BF9C0C  38 9F 00 B0 */	addi r4, r31, 0xb0
/* 80BF9C10  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80BF9C14  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 80BF9C18  90 64 00 0C */	stw r3, 0xc(r4)
/* 80BF9C1C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80BF9C20  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80BF9C24  90 04 00 14 */	stw r0, 0x14(r4)
/* 80BF9C28  80 7F 00 A4 */	lwz r3, 0xa4(r31)
/* 80BF9C2C  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 80BF9C30  90 64 00 18 */	stw r3, 0x18(r4)
/* 80BF9C34  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80BF9C38  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 80BF9C3C  90 04 00 20 */	stw r0, 0x20(r4)
/* 80BF9C40  38 00 00 01 */	li r0, 1
/* 80BF9C44  98 05 00 00 */	stb r0, 0(r5)
lbl_80BF9C48:
/* 80BF9C48  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80BF9C4C  4B 48 A8 14 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80BF9C50  28 03 00 00 */	cmplwi r3, 0
/* 80BF9C54  41 82 00 64 */	beq lbl_80BF9CB8
/* 80BF9C58  38 7E 08 94 */	addi r3, r30, 0x894
/* 80BF9C5C  4B 48 9A 2C */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80BF9C60  7C 65 1B 78 */	mr r5, r3
/* 80BF9C64  38 61 00 14 */	addi r3, r1, 0x14
/* 80BF9C68  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BF9C6C  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80BF9C70  4B 66 CE C4 */	b __mi__4cXyzCFRC3Vec
/* 80BF9C74  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BF9C78  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BF9C7C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BF9C80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BF9C84  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BF9C88  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BF9C8C  38 61 00 08 */	addi r3, r1, 8
/* 80BF9C90  38 81 00 20 */	addi r4, r1, 0x20
/* 80BF9C94  4B 66 D2 B4 */	b normalizeZP__4cXyzFv
/* 80BF9C98  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BF9C9C  D0 1E 09 5C */	stfs f0, 0x95c(r30)
/* 80BF9CA0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BF9CA4  D0 1E 09 60 */	stfs f0, 0x960(r30)
/* 80BF9CA8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BF9CAC  D0 1E 09 64 */	stfs f0, 0x964(r30)
/* 80BF9CB0  7F C3 F3 78 */	mr r3, r30
/* 80BF9CB4  48 00 05 2D */	bl actionMoveInit__10daGlwSph_cFv
lbl_80BF9CB8:
/* 80BF9CB8  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80BF9CBC  4B 48 A9 9C */	b ChkCoHit__12dCcD_GObjInfFv
/* 80BF9CC0  28 03 00 00 */	cmplwi r3, 0
/* 80BF9CC4  41 82 00 30 */	beq lbl_80BF9CF4
/* 80BF9CC8  80 1E 08 24 */	lwz r0, 0x824(r30)
/* 80BF9CCC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80BF9CD0  90 1E 08 24 */	stw r0, 0x824(r30)
/* 80BF9CD4  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80BF9CD8  81 9E 08 34 */	lwz r12, 0x834(r30)
/* 80BF9CDC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80BF9CE0  7D 89 03 A6 */	mtctr r12
/* 80BF9CE4  4E 80 04 21 */	bctrl 
/* 80BF9CE8  7F C3 F3 78 */	mr r3, r30
/* 80BF9CEC  48 00 03 89 */	bl actionGetInit__10daGlwSph_cFv
/* 80BF9CF0  48 00 00 74 */	b lbl_80BF9D64
lbl_80BF9CF4:
/* 80BF9CF4  7F C3 F3 78 */	mr r3, r30
/* 80BF9CF8  48 00 00 F9 */	bl effectSet__10daGlwSph_cFv
/* 80BF9CFC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BF9D00  D0 1E 09 30 */	stfs f0, 0x930(r30)
/* 80BF9D04  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BF9D08  D0 1E 09 34 */	stfs f0, 0x934(r30)
/* 80BF9D0C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BF9D10  D0 1E 09 38 */	stfs f0, 0x938(r30)
/* 80BF9D14  88 1E 09 54 */	lbz r0, 0x954(r30)
/* 80BF9D18  54 00 10 3A */	slwi r0, r0, 2
/* 80BF9D1C  38 9F 00 7C */	addi r4, r31, 0x7c
/* 80BF9D20  7C 04 00 AE */	lbzx r0, r4, r0
/* 80BF9D24  B0 1E 09 3C */	sth r0, 0x93c(r30)
/* 80BF9D28  88 1E 09 54 */	lbz r0, 0x954(r30)
/* 80BF9D2C  54 00 10 3A */	slwi r0, r0, 2
/* 80BF9D30  7C 64 02 14 */	add r3, r4, r0
/* 80BF9D34  88 03 00 01 */	lbz r0, 1(r3)
/* 80BF9D38  B0 1E 09 3E */	sth r0, 0x93e(r30)
/* 80BF9D3C  88 1E 09 54 */	lbz r0, 0x954(r30)
/* 80BF9D40  54 00 10 3A */	slwi r0, r0, 2
/* 80BF9D44  7C 64 02 14 */	add r3, r4, r0
/* 80BF9D48  88 03 00 02 */	lbz r0, 2(r3)
/* 80BF9D4C  B0 1E 09 40 */	sth r0, 0x940(r30)
/* 80BF9D50  3C 60 80 C0 */	lis r3, lit_3968@ha
/* 80BF9D54  C0 03 A9 B0 */	lfs f0, lit_3968@l(r3)
/* 80BF9D58  D0 1E 09 44 */	stfs f0, 0x944(r30)
/* 80BF9D5C  38 7E 09 30 */	addi r3, r30, 0x930
/* 80BF9D60  4B 5A D9 D8 */	b dKy_mock_light_every_set__FP15LIGHT_INFLUENCE
lbl_80BF9D64:
/* 80BF9D64  88 7E 09 55 */	lbz r3, 0x955(r30)
/* 80BF9D68  28 03 00 00 */	cmplwi r3, 0
/* 80BF9D6C  41 82 00 20 */	beq lbl_80BF9D8C
/* 80BF9D70  38 03 FF FF */	addi r0, r3, -1
/* 80BF9D74  98 1E 09 55 */	stb r0, 0x955(r30)
/* 80BF9D78  88 1E 09 55 */	lbz r0, 0x955(r30)
/* 80BF9D7C  28 00 00 00 */	cmplwi r0, 0
/* 80BF9D80  40 82 00 0C */	bne lbl_80BF9D8C
/* 80BF9D84  38 00 00 00 */	li r0, 0
/* 80BF9D88  98 1E 09 53 */	stb r0, 0x953(r30)
lbl_80BF9D8C:
/* 80BF9D8C  88 1E 09 53 */	lbz r0, 0x953(r30)
/* 80BF9D90  28 00 00 00 */	cmplwi r0, 0
/* 80BF9D94  40 82 00 28 */	bne lbl_80BF9DBC
/* 80BF9D98  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BF9D9C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80BF9DA0  3C A0 80 C0 */	lis r5, lit_3969@ha
/* 80BF9DA4  C0 25 A9 B4 */	lfs f1, lit_3969@l(r5)
/* 80BF9DA8  3C A0 80 C0 */	lis r5, l_HIO@ha
/* 80BF9DAC  38 A5 AB F4 */	addi r5, r5, l_HIO@l
/* 80BF9DB0  C0 45 00 08 */	lfs f2, 8(r5)
/* 80BF9DB4  FC 60 08 90 */	fmr f3, f1
/* 80BF9DB8  4B 67 5D 00 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_80BF9DBC:
/* 80BF9DBC  7F C3 F3 78 */	mr r3, r30
/* 80BF9DC0  88 1E 09 52 */	lbz r0, 0x952(r30)
/* 80BF9DC4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BF9DC8  39 9F 00 B0 */	addi r12, r31, 0xb0
/* 80BF9DCC  7D 8C 02 14 */	add r12, r12, r0
/* 80BF9DD0  4B 76 82 B4 */	b __ptmf_scall
/* 80BF9DD4  60 00 00 00 */	nop 
/* 80BF9DD8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BF9DDC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BF9DE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BF9DE4  7C 08 03 A6 */	mtlr r0
/* 80BF9DE8  38 21 00 40 */	addi r1, r1, 0x40
/* 80BF9DEC  4E 80 00 20 */	blr 
