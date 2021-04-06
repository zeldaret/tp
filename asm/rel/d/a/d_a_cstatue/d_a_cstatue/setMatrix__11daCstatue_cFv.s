lbl_80664B38:
/* 80664B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80664B3C  7C 08 02 A6 */	mflr r0
/* 80664B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80664B44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80664B48  93 C1 00 08 */	stw r30, 8(r1)
/* 80664B4C  7C 7E 1B 78 */	mr r30, r3
/* 80664B50  3C 60 80 66 */	lis r3, lit_3768@ha /* 0x80667698@ha */
/* 80664B54  3B E3 76 98 */	addi r31, r3, lit_3768@l /* 0x80667698@l */
/* 80664B58  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80664B5C  4B 9A 82 09 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80664B60  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80664B64  4B 9A 83 E1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80664B68  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80664B6C  C0 5E 0A FC */	lfs f2, 0xafc(r30)
/* 80664B70  FC 60 08 90 */	fmr f3, f1
/* 80664B74  4B 9A 82 29 */	bl transM__14mDoMtx_stack_cFfff
/* 80664B78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80664B7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80664B80  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80664B84  38 84 00 24 */	addi r4, r4, 0x24
/* 80664B88  4B CE 19 29 */	bl PSMTXCopy
/* 80664B8C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80664B90  4B 9A C6 5D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80664B94  88 1E 0A DD */	lbz r0, 0xadd(r30)
/* 80664B98  28 00 00 00 */	cmplwi r0, 0
/* 80664B9C  41 82 00 0C */	beq lbl_80664BA8
/* 80664BA0  28 00 00 02 */	cmplwi r0, 2
/* 80664BA4  40 82 00 4C */	bne lbl_80664BF0
lbl_80664BA8:
/* 80664BA8  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80664BAC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80664BB0  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 80664BB4  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80664BB8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80664BBC  EC 22 00 2A */	fadds f1, f2, f0
/* 80664BC0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80664BC4  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80664BC8  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80664BCC  D0 7E 05 58 */	stfs f3, 0x558(r30)
/* 80664BD0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80664BD4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80664BD8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80664BDC  38 63 00 30 */	addi r3, r3, 0x30
/* 80664BE0  38 9F 01 5C */	addi r4, r31, 0x15c
/* 80664BE4  38 BE 0B 20 */	addi r5, r30, 0xb20
/* 80664BE8  4B CE 21 85 */	bl PSMTXMultVec
/* 80664BEC  48 00 00 80 */	b lbl_80664C6C
lbl_80664BF0:
/* 80664BF0  28 00 00 01 */	cmplwi r0, 1
/* 80664BF4  40 82 00 40 */	bne lbl_80664C34
/* 80664BF8  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80664BFC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80664C00  C0 1E 09 F4 */	lfs f0, 0x9f4(r30)
/* 80664C04  EC 21 00 2A */	fadds f1, f1, f0
/* 80664C08  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80664C0C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80664C10  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80664C14  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 80664C18  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80664C1C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80664C20  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80664C24  38 9F 01 68 */	addi r4, r31, 0x168
/* 80664C28  38 BE 0B 20 */	addi r5, r30, 0xb20
/* 80664C2C  4B CE 21 41 */	bl PSMTXMultVec
/* 80664C30  48 00 00 3C */	b lbl_80664C6C
lbl_80664C34:
/* 80664C34  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80664C38  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80664C3C  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 80664C40  EC 21 00 2A */	fadds f1, f1, f0
/* 80664C44  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80664C48  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80664C4C  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80664C50  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 80664C54  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80664C58  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80664C5C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80664C60  38 9F 01 74 */	addi r4, r31, 0x174
/* 80664C64  38 BE 0B 20 */	addi r5, r30, 0xb20
/* 80664C68  4B CE 21 05 */	bl PSMTXMultVec
lbl_80664C6C:
/* 80664C6C  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80664C70  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80664C74  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80664C78  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80664C7C  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80664C80  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80664C84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80664C88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80664C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80664C90  7C 08 03 A6 */	mtlr r0
/* 80664C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80664C98  4E 80 00 20 */	blr 
