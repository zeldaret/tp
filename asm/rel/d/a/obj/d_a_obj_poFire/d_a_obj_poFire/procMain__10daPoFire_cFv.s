lbl_80CB2BFC:
/* 80CB2BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB2C00  7C 08 02 A6 */	mflr r0
/* 80CB2C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB2C08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB2C0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB2C10  7C 7E 1B 78 */	mr r30, r3
/* 80CB2C14  3C 60 80 CB */	lis r3, cNullVec__6Z2Calc@ha /* 0x80CB3F54@ha */
/* 80CB2C18  3B E3 3F 54 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80CB3F54@l */
/* 80CB2C1C  3C 60 80 CB */	lis r3, data_80CB4148@ha /* 0x80CB4148@ha */
/* 80CB2C20  8C 03 41 48 */	lbzu r0, data_80CB4148@l(r3)  /* 0x80CB4148@l */
/* 80CB2C24  7C 00 07 75 */	extsb. r0, r0
/* 80CB2C28  40 82 00 E8 */	bne lbl_80CB2D10
/* 80CB2C2C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80CB2C30  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80CB2C34  90 9F 00 8C */	stw r4, 0x8c(r31)
/* 80CB2C38  90 1F 00 90 */	stw r0, 0x90(r31)
/* 80CB2C3C  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80CB2C40  90 1F 00 94 */	stw r0, 0x94(r31)
/* 80CB2C44  38 BF 00 8C */	addi r5, r31, 0x8c
/* 80CB2C48  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80CB2C4C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80CB2C50  90 85 00 0C */	stw r4, 0xc(r5)
/* 80CB2C54  90 05 00 10 */	stw r0, 0x10(r5)
/* 80CB2C58  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80CB2C5C  90 05 00 14 */	stw r0, 0x14(r5)
/* 80CB2C60  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 80CB2C64  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80CB2C68  90 85 00 18 */	stw r4, 0x18(r5)
/* 80CB2C6C  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80CB2C70  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80CB2C74  90 05 00 20 */	stw r0, 0x20(r5)
/* 80CB2C78  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 80CB2C7C  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80CB2C80  90 85 00 24 */	stw r4, 0x24(r5)
/* 80CB2C84  90 05 00 28 */	stw r0, 0x28(r5)
/* 80CB2C88  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80CB2C8C  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80CB2C90  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 80CB2C94  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 80CB2C98  90 85 00 30 */	stw r4, 0x30(r5)
/* 80CB2C9C  90 05 00 34 */	stw r0, 0x34(r5)
/* 80CB2CA0  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 80CB2CA4  90 05 00 38 */	stw r0, 0x38(r5)
/* 80CB2CA8  80 9F 00 5C */	lwz r4, 0x5c(r31)
/* 80CB2CAC  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 80CB2CB0  90 85 00 3C */	stw r4, 0x3c(r5)
/* 80CB2CB4  90 05 00 40 */	stw r0, 0x40(r5)
/* 80CB2CB8  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 80CB2CBC  90 05 00 44 */	stw r0, 0x44(r5)
/* 80CB2CC0  80 9F 00 68 */	lwz r4, 0x68(r31)
/* 80CB2CC4  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80CB2CC8  90 85 00 48 */	stw r4, 0x48(r5)
/* 80CB2CCC  90 05 00 4C */	stw r0, 0x4c(r5)
/* 80CB2CD0  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 80CB2CD4  90 05 00 50 */	stw r0, 0x50(r5)
/* 80CB2CD8  80 9F 00 74 */	lwz r4, 0x74(r31)
/* 80CB2CDC  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 80CB2CE0  90 85 00 54 */	stw r4, 0x54(r5)
/* 80CB2CE4  90 05 00 58 */	stw r0, 0x58(r5)
/* 80CB2CE8  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 80CB2CEC  90 05 00 5C */	stw r0, 0x5c(r5)
/* 80CB2CF0  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 80CB2CF4  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 80CB2CF8  90 85 00 60 */	stw r4, 0x60(r5)
/* 80CB2CFC  90 05 00 64 */	stw r0, 0x64(r5)
/* 80CB2D00  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 80CB2D04  90 05 00 68 */	stw r0, 0x68(r5)
/* 80CB2D08  38 00 00 01 */	li r0, 1
/* 80CB2D0C  98 03 00 00 */	stb r0, 0(r3)
lbl_80CB2D10:
/* 80CB2D10  88 1E 05 C4 */	lbz r0, 0x5c4(r30)
/* 80CB2D14  28 00 00 00 */	cmplwi r0, 0
/* 80CB2D18  41 82 00 0C */	beq lbl_80CB2D24
/* 80CB2D1C  7F C3 F3 78 */	mr r3, r30
/* 80CB2D20  48 00 00 65 */	bl setFire__10daPoFire_cFv
lbl_80CB2D24:
/* 80CB2D24  7F C3 F3 78 */	mr r3, r30
/* 80CB2D28  88 1E 05 92 */	lbz r0, 0x592(r30)
/* 80CB2D2C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CB2D30  39 9F 00 8C */	addi r12, r31, 0x8c
/* 80CB2D34  7D 8C 02 14 */	add r12, r12, r0
/* 80CB2D38  4B 6A F3 4D */	bl __ptmf_scall
/* 80CB2D3C  60 00 00 00 */	nop 
/* 80CB2D40  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CB2D44  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80CB2D48  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CB2D4C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80CB2D50  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CB2D54  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80CB2D58  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80CB2D5C  3C 60 80 CB */	lis r3, lit_3756@ha /* 0x80CB3F10@ha */
/* 80CB2D60  C0 03 3F 10 */	lfs f0, lit_3756@l(r3)  /* 0x80CB3F10@l */
/* 80CB2D64  EC 01 00 2A */	fadds f0, f1, f0
/* 80CB2D68  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80CB2D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB2D70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB2D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB2D78  7C 08 03 A6 */	mtlr r0
/* 80CB2D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB2D80  4E 80 00 20 */	blr 
