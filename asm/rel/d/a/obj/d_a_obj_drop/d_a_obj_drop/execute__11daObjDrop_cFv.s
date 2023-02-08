lbl_80BE1BC4:
/* 80BE1BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE1BC8  7C 08 02 A6 */	mflr r0
/* 80BE1BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE1BD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE1BD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE1BD8  7C 7E 1B 78 */	mr r30, r3
/* 80BE1BDC  3C 60 80 BE */	lis r3, cNullVec__6Z2Calc@ha /* 0x80BE2060@ha */
/* 80BE1BE0  3B E3 20 60 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80BE2060@l */
/* 80BE1BE4  3C 60 80 BE */	lis r3, struct_80BE2238+0x0@ha /* 0x80BE2238@ha */
/* 80BE1BE8  38 A3 22 38 */	addi r5, r3, struct_80BE2238+0x0@l /* 0x80BE2238@l */
/* 80BE1BEC  88 05 00 00 */	lbz r0, 0(r5)
/* 80BE1BF0  7C 00 07 75 */	extsb. r0, r0
/* 80BE1BF4  40 82 00 70 */	bne lbl_80BE1C64
/* 80BE1BF8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80BE1BFC  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80BE1C00  90 7F 00 50 */	stw r3, 0x50(r31)
/* 80BE1C04  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80BE1C08  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80BE1C0C  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80BE1C10  38 9F 00 50 */	addi r4, r31, 0x50
/* 80BE1C14  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80BE1C18  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80BE1C1C  90 64 00 0C */	stw r3, 0xc(r4)
/* 80BE1C20  90 04 00 10 */	stw r0, 0x10(r4)
/* 80BE1C24  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80BE1C28  90 04 00 14 */	stw r0, 0x14(r4)
/* 80BE1C2C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80BE1C30  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80BE1C34  90 64 00 18 */	stw r3, 0x18(r4)
/* 80BE1C38  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80BE1C3C  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80BE1C40  90 04 00 20 */	stw r0, 0x20(r4)
/* 80BE1C44  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80BE1C48  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80BE1C4C  90 64 00 24 */	stw r3, 0x24(r4)
/* 80BE1C50  90 04 00 28 */	stw r0, 0x28(r4)
/* 80BE1C54  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80BE1C58  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80BE1C5C  38 00 00 01 */	li r0, 1
/* 80BE1C60  98 05 00 00 */	stb r0, 0(r5)
lbl_80BE1C64:
/* 80BE1C64  3C 60 80 BE */	lis r3, struct_80BE2238+0x1@ha /* 0x80BE2239@ha */
/* 80BE1C68  38 A3 22 39 */	addi r5, r3, struct_80BE2238+0x1@l /* 0x80BE2239@l */
/* 80BE1C6C  88 05 00 00 */	lbz r0, 0(r5)
/* 80BE1C70  7C 00 07 75 */	extsb. r0, r0
/* 80BE1C74  40 82 00 88 */	bne lbl_80BE1CFC
/* 80BE1C78  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 80BE1C7C  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 80BE1C80  90 7F 00 BC */	stw r3, 0xbc(r31)
/* 80BE1C84  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 80BE1C88  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 80BE1C8C  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 80BE1C90  38 9F 00 BC */	addi r4, r31, 0xbc
/* 80BE1C94  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 80BE1C98  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 80BE1C9C  90 64 00 0C */	stw r3, 0xc(r4)
/* 80BE1CA0  90 04 00 10 */	stw r0, 0x10(r4)
/* 80BE1CA4  80 1F 00 94 */	lwz r0, 0x94(r31)
/* 80BE1CA8  90 04 00 14 */	stw r0, 0x14(r4)
/* 80BE1CAC  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 80BE1CB0  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 80BE1CB4  90 64 00 18 */	stw r3, 0x18(r4)
/* 80BE1CB8  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80BE1CBC  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80BE1CC0  90 04 00 20 */	stw r0, 0x20(r4)
/* 80BE1CC4  80 7F 00 A4 */	lwz r3, 0xa4(r31)
/* 80BE1CC8  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 80BE1CCC  90 64 00 24 */	stw r3, 0x24(r4)
/* 80BE1CD0  90 04 00 28 */	stw r0, 0x28(r4)
/* 80BE1CD4  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 80BE1CD8  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80BE1CDC  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 80BE1CE0  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 80BE1CE4  90 64 00 30 */	stw r3, 0x30(r4)
/* 80BE1CE8  90 04 00 34 */	stw r0, 0x34(r4)
/* 80BE1CEC  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 80BE1CF0  90 04 00 38 */	stw r0, 0x38(r4)
/* 80BE1CF4  38 00 00 01 */	li r0, 1
/* 80BE1CF8  98 05 00 00 */	stb r0, 0(r5)
lbl_80BE1CFC:
/* 80BE1CFC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BE1D00  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80BE1D04  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BE1D08  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80BE1D0C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BE1D10  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80BE1D14  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BE1D18  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80BE1D1C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BE1D20  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80BE1D24  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BE1D28  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80BE1D2C  80 7E 06 A4 */	lwz r3, 0x6a4(r30)
/* 80BE1D30  38 03 00 01 */	addi r0, r3, 1
/* 80BE1D34  90 1E 06 A4 */	stw r0, 0x6a4(r30)
/* 80BE1D38  7F C3 F3 78 */	mr r3, r30
/* 80BE1D3C  88 1E 06 B0 */	lbz r0, 0x6b0(r30)
/* 80BE1D40  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BE1D44  39 9F 00 50 */	addi r12, r31, 0x50
/* 80BE1D48  7D 8C 02 14 */	add r12, r12, r0
/* 80BE1D4C  4B 78 03 39 */	bl __ptmf_scall
/* 80BE1D50  60 00 00 00 */	nop 
/* 80BE1D54  7F C3 F3 78 */	mr r3, r30
/* 80BE1D58  88 1E 06 BA */	lbz r0, 0x6ba(r30)
/* 80BE1D5C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BE1D60  39 9F 00 BC */	addi r12, r31, 0xbc
/* 80BE1D64  7D 8C 02 14 */	add r12, r12, r0
/* 80BE1D68  4B 78 03 1D */	bl __ptmf_scall
/* 80BE1D6C  60 00 00 00 */	nop 
/* 80BE1D70  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BE1D74  7C 03 07 74 */	extsb r3, r0
/* 80BE1D78  4B 44 B2 F5 */	bl dComIfGp_getReverb__Fi
/* 80BE1D7C  7C 65 1B 78 */	mr r5, r3
/* 80BE1D80  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 80BE1D84  38 80 00 00 */	li r4, 0
/* 80BE1D88  81 9E 06 D0 */	lwz r12, 0x6d0(r30)
/* 80BE1D8C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BE1D90  7D 89 03 A6 */	mtctr r12
/* 80BE1D94  4E 80 04 21 */	bctrl 
/* 80BE1D98  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BE1D9C  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 80BE1DA0  38 80 00 04 */	li r4, 4
/* 80BE1DA4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BE1DA8  38 C0 FF FF */	li r6, -1
/* 80BE1DAC  4B 4B A6 21 */	bl setPosition__7dTres_cFiUcPC3Veci
/* 80BE1DB0  38 60 00 01 */	li r3, 1
/* 80BE1DB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE1DB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE1DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE1DC0  7C 08 03 A6 */	mtlr r0
/* 80BE1DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE1DC8  4E 80 00 20 */	blr 
