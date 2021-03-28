lbl_80D3B2A0:
/* 80D3B2A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3B2A4  7C 08 02 A6 */	mflr r0
/* 80D3B2A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3B2AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3B2B0  7C 7F 1B 78 */	mr r31, r3
/* 80D3B2B4  3C 60 80 D4 */	lis r3, cNullVec__6Z2Calc@ha
/* 80D3B2B8  38 C3 B7 1C */	addi r6, r3, cNullVec__6Z2Calc@l
/* 80D3B2BC  3C 60 80 D4 */	lis r3, data_80D3B8F0@ha
/* 80D3B2C0  38 A3 B8 F0 */	addi r5, r3, data_80D3B8F0@l
/* 80D3B2C4  88 05 00 00 */	lbz r0, 0(r5)
/* 80D3B2C8  7C 00 07 75 */	extsb. r0, r0
/* 80D3B2CC  40 82 00 88 */	bne lbl_80D3B354
/* 80D3B2D0  80 66 00 38 */	lwz r3, 0x38(r6)
/* 80D3B2D4  80 06 00 3C */	lwz r0, 0x3c(r6)
/* 80D3B2D8  90 66 00 74 */	stw r3, 0x74(r6)
/* 80D3B2DC  90 06 00 78 */	stw r0, 0x78(r6)
/* 80D3B2E0  80 06 00 40 */	lwz r0, 0x40(r6)
/* 80D3B2E4  90 06 00 7C */	stw r0, 0x7c(r6)
/* 80D3B2E8  38 86 00 74 */	addi r4, r6, 0x74
/* 80D3B2EC  80 66 00 44 */	lwz r3, 0x44(r6)
/* 80D3B2F0  80 06 00 48 */	lwz r0, 0x48(r6)
/* 80D3B2F4  90 64 00 0C */	stw r3, 0xc(r4)
/* 80D3B2F8  90 04 00 10 */	stw r0, 0x10(r4)
/* 80D3B2FC  80 06 00 4C */	lwz r0, 0x4c(r6)
/* 80D3B300  90 04 00 14 */	stw r0, 0x14(r4)
/* 80D3B304  80 66 00 50 */	lwz r3, 0x50(r6)
/* 80D3B308  80 06 00 54 */	lwz r0, 0x54(r6)
/* 80D3B30C  90 64 00 18 */	stw r3, 0x18(r4)
/* 80D3B310  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80D3B314  80 06 00 58 */	lwz r0, 0x58(r6)
/* 80D3B318  90 04 00 20 */	stw r0, 0x20(r4)
/* 80D3B31C  80 66 00 5C */	lwz r3, 0x5c(r6)
/* 80D3B320  80 06 00 60 */	lwz r0, 0x60(r6)
/* 80D3B324  90 64 00 24 */	stw r3, 0x24(r4)
/* 80D3B328  90 04 00 28 */	stw r0, 0x28(r4)
/* 80D3B32C  80 06 00 64 */	lwz r0, 0x64(r6)
/* 80D3B330  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80D3B334  80 66 00 68 */	lwz r3, 0x68(r6)
/* 80D3B338  80 06 00 6C */	lwz r0, 0x6c(r6)
/* 80D3B33C  90 64 00 30 */	stw r3, 0x30(r4)
/* 80D3B340  90 04 00 34 */	stw r0, 0x34(r4)
/* 80D3B344  80 06 00 70 */	lwz r0, 0x70(r6)
/* 80D3B348  90 04 00 38 */	stw r0, 0x38(r4)
/* 80D3B34C  38 00 00 01 */	li r0, 1
/* 80D3B350  98 05 00 00 */	stb r0, 0(r5)
lbl_80D3B354:
/* 80D3B354  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80D3B358  D0 1F 09 3C */	stfs f0, 0x93c(r31)
/* 80D3B35C  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 80D3B360  D0 1F 09 40 */	stfs f0, 0x940(r31)
/* 80D3B364  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 80D3B368  D0 1F 09 44 */	stfs f0, 0x944(r31)
/* 80D3B36C  80 7F 09 30 */	lwz r3, 0x930(r31)
/* 80D3B370  38 03 00 01 */	addi r0, r3, 1
/* 80D3B374  90 1F 09 30 */	stw r0, 0x930(r31)
/* 80D3B378  7F E3 FB 78 */	mr r3, r31
/* 80D3B37C  88 1F 09 38 */	lbz r0, 0x938(r31)
/* 80D3B380  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80D3B384  39 86 00 74 */	addi r12, r6, 0x74
/* 80D3B388  7D 8C 02 14 */	add r12, r12, r0
/* 80D3B38C  4B 62 6C F8 */	b __ptmf_scall
/* 80D3B390  60 00 00 00 */	nop 
/* 80D3B394  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D3B398  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80D3B39C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D3B3A0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80D3B3A4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D3B3A8  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80D3B3AC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D3B3B0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80D3B3B4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D3B3B8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D3B3BC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D3B3C0  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80D3B3C4  7F E3 FB 78 */	mr r3, r31
/* 80D3B3C8  4B FF EE DD */	bl setBaseMtx__14daObjWStatue_cFv
/* 80D3B3CC  7F E3 FB 78 */	mr r3, r31
/* 80D3B3D0  3C 80 80 D4 */	lis r4, lit_4129@ha
/* 80D3B3D4  C0 24 B6 AC */	lfs f1, lit_4129@l(r4)
/* 80D3B3D8  FC 40 08 90 */	fmr f2, f1
/* 80D3B3DC  FC 60 08 90 */	fmr f3, f1
/* 80D3B3E0  FC 80 08 90 */	fmr f4, f1
/* 80D3B3E4  FC A0 08 90 */	fmr f5, f1
/* 80D3B3E8  FC C0 08 90 */	fmr f6, f1
/* 80D3B3EC  4B 40 9C 50 */	b animPlay__12daItemBase_cFffffff
/* 80D3B3F0  38 7F 09 04 */	addi r3, r31, 0x904
/* 80D3B3F4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D3B3F8  4B 53 3D E4 */	b SetC__8cM3dGCylFRC4cXyz
/* 80D3B3FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3B400  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D3B404  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D3B408  38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 80D3B40C  4B 52 97 9C */	b Set__4cCcSFP8cCcD_Obj
/* 80D3B410  38 60 00 01 */	li r3, 1
/* 80D3B414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3B418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3B41C  7C 08 03 A6 */	mtlr r0
/* 80D3B420  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3B424  4E 80 00 20 */	blr 
