lbl_803143E4:
/* 803143E4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803143E8  7C 08 02 A6 */	mflr r0
/* 803143EC  90 01 00 74 */	stw r0, 0x74(r1)
/* 803143F0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 803143F4  7C 7F 1B 78 */	mr r31, r3
/* 803143F8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 803143FC  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80314400  80 E3 00 38 */	lwz r7, 0x38(r3)
/* 80314404  80 C7 00 04 */	lwz r6, 4(r7)
/* 80314408  80 86 00 4C */	lwz r4, 0x4c(r6)
/* 8031440C  A0 BF 00 04 */	lhz r5, 4(r31)
/* 80314410  54 A0 08 3C */	slwi r0, r5, 1
/* 80314414  7C 04 02 2E */	lhzx r0, r4, r0
/* 80314418  80 86 00 48 */	lwz r4, 0x48(r6)
/* 8031441C  7C 84 28 AE */	lbzx r4, r4, r5
/* 80314420  28 04 00 00 */	cmplwi r4, 0
/* 80314424  40 82 00 20 */	bne lbl_80314444
/* 80314428  80 87 00 84 */	lwz r4, 0x84(r7)
/* 8031442C  80 84 00 34 */	lwz r4, 0x34(r4)
/* 80314430  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80314434  7C 84 02 14 */	add r4, r4, r0
/* 80314438  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8031443C  48 03 20 A9 */	bl PSMTXConcat
/* 80314440  48 00 00 1C */	b lbl_8031445C
lbl_80314444:
/* 80314444  80 87 00 84 */	lwz r4, 0x84(r7)
/* 80314448  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8031444C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80314450  7C 84 02 14 */	add r4, r4, r0
/* 80314454  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80314458  48 03 20 8D */	bl PSMTXConcat
lbl_8031445C:
/* 8031445C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80314460  4B FF D3 01 */	bl J3DCalcYBBoardMtx__FPA4_f
/* 80314464  38 61 00 2C */	addi r3, r1, 0x2c
/* 80314468  38 80 00 00 */	li r4, 0
/* 8031446C  4B FF B6 75 */	bl J3DFifoLoadPosMtxImm__FPA4_fUl
/* 80314470  80 6D 90 2C */	lwz r3, sCurrentScaleFlag__11J3DShapeMtx(r13)
/* 80314474  A0 1F 00 04 */	lhz r0, 4(r31)
/* 80314478  7C 03 00 AE */	lbzx r0, r3, r0
/* 8031447C  28 00 00 01 */	cmplwi r0, 1
/* 80314480  40 82 00 44 */	bne lbl_803144C4
/* 80314484  88 0D 90 30 */	lbz r0, struct_804515B0+0x0(r13)
/* 80314488  28 00 00 00 */	cmplwi r0, 0
/* 8031448C  40 82 00 14 */	bne lbl_803144A0
/* 80314490  38 61 00 2C */	addi r3, r1, 0x2c
/* 80314494  38 80 00 00 */	li r4, 0
/* 80314498  4B FF B6 C9 */	bl J3DFifoLoadNrmMtxImm__FPA4_fUl
/* 8031449C  48 00 00 70 */	b lbl_8031450C
lbl_803144A0:
/* 803144A0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 803144A4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 803144A8  80 83 01 18 */	lwz r4, 0x118(r3)
/* 803144AC  38 61 00 2C */	addi r3, r1, 0x2c
/* 803144B0  4B FF D8 E5 */	bl J3DScaleNrmMtx__FPA4_fRC3Vec
/* 803144B4  38 61 00 2C */	addi r3, r1, 0x2c
/* 803144B8  38 80 00 00 */	li r4, 0
/* 803144BC  4B FF B6 A5 */	bl J3DFifoLoadNrmMtxImm__FPA4_fUl
/* 803144C0  48 00 00 4C */	b lbl_8031450C
lbl_803144C4:
/* 803144C4  38 61 00 2C */	addi r3, r1, 0x2c
/* 803144C8  38 81 00 08 */	addi r4, r1, 8
/* 803144CC  4B FF D3 D1 */	bl J3DPSCalcInverseTranspose__FPA4_fPA3_f
/* 803144D0  88 0D 90 30 */	lbz r0, struct_804515B0+0x0(r13)
/* 803144D4  28 00 00 00 */	cmplwi r0, 0
/* 803144D8  40 82 00 14 */	bne lbl_803144EC
/* 803144DC  38 61 00 08 */	addi r3, r1, 8
/* 803144E0  38 80 00 00 */	li r4, 0
/* 803144E4  4B FF B6 E9 */	bl J3DFifoLoadNrmMtxImm3x3__FPA3_fUl
/* 803144E8  48 00 00 24 */	b lbl_8031450C
lbl_803144EC:
/* 803144EC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 803144F0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 803144F4  80 83 01 18 */	lwz r4, 0x118(r3)
/* 803144F8  38 61 00 08 */	addi r3, r1, 8
/* 803144FC  4B FF D8 FD */	bl J3DScaleNrmMtx33__FPA3_fRC3Vec
/* 80314500  38 61 00 08 */	addi r3, r1, 8
/* 80314504  38 80 00 00 */	li r4, 0
/* 80314508  4B FF B6 C5 */	bl J3DFifoLoadNrmMtxImm3x3__FPA3_fUl
lbl_8031450C:
/* 8031450C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80314510  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80314514  7C 08 03 A6 */	mtlr r0
/* 80314518  38 21 00 70 */	addi r1, r1, 0x70
/* 8031451C  4E 80 00 20 */	blr 
