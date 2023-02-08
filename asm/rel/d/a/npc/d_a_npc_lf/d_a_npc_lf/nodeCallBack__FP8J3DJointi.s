lbl_80A69BB4:
/* 80A69BB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A69BB8  7C 08 02 A6 */	mflr r0
/* 80A69BBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A69BC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A69BC4  4B 8F 86 15 */	bl _savegpr_28
/* 80A69BC8  2C 04 00 00 */	cmpwi r4, 0
/* 80A69BCC  40 82 00 F0 */	bne lbl_80A69CBC
/* 80A69BD0  A3 83 00 14 */	lhz r28, 0x14(r3)
/* 80A69BD4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80A69BD8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80A69BDC  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80A69BE0  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 80A69BE4  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80A69BE8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A69BEC  1F DC 00 30 */	mulli r30, r28, 0x30
/* 80A69BF0  7C 60 F2 14 */	add r3, r0, r30
/* 80A69BF4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80A69BF8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80A69BFC  80 84 00 00 */	lwz r4, 0(r4)
/* 80A69C00  4B 8D C8 B1 */	bl PSMTXCopy
/* 80A69C04  2C 1C 00 01 */	cmpwi r28, 1
/* 80A69C08  40 82 00 40 */	bne lbl_80A69C48
/* 80A69C0C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A69C10  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A69C14  80 63 00 00 */	lwz r3, 0(r3)
/* 80A69C18  A8 BD 00 52 */	lha r5, 0x52(r29)
/* 80A69C1C  3C 80 80 A7 */	lis r4, lit_3771@ha /* 0x80A6A984@ha */
/* 80A69C20  C0 24 A9 84 */	lfs f1, lit_3771@l(r4)  /* 0x80A6A984@l */
/* 80A69C24  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 80A69C28  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A69C2C  FC 00 00 1E */	fctiwz f0, f0
/* 80A69C30  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A69C34  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A69C38  7C 05 02 14 */	add r0, r5, r0
/* 80A69C3C  7C 04 07 34 */	extsh r4, r0
/* 80A69C40  4B 5A 27 F5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A69C44  48 00 00 44 */	b lbl_80A69C88
lbl_80A69C48:
/* 80A69C48  41 80 00 40 */	blt lbl_80A69C88
/* 80A69C4C  2C 1C 00 03 */	cmpwi r28, 3
/* 80A69C50  41 81 00 38 */	bgt lbl_80A69C88
/* 80A69C54  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A69C58  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A69C5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A69C60  57 80 08 3C */	slwi r0, r28, 1
/* 80A69C64  7C 9D 02 14 */	add r4, r29, r0
/* 80A69C68  A8 84 00 50 */	lha r4, 0x50(r4)
/* 80A69C6C  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 80A69C70  FC 00 00 1E */	fctiwz f0, f0
/* 80A69C74  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A69C78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A69C7C  7C 04 02 14 */	add r0, r4, r0
/* 80A69C80  7C 04 07 34 */	extsh r4, r0
/* 80A69C84  4B 5A 27 B1 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80A69C88:
/* 80A69C88  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A69C8C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A69C90  80 63 00 00 */	lwz r3, 0(r3)
/* 80A69C94  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80A69C98  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A69C9C  7C 80 F2 14 */	add r4, r0, r30
/* 80A69CA0  4B 8D C8 11 */	bl PSMTXCopy
/* 80A69CA4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A69CA8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A69CAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80A69CB0  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80A69CB4  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80A69CB8  4B 8D C7 F9 */	bl PSMTXCopy
lbl_80A69CBC:
/* 80A69CBC  38 60 00 01 */	li r3, 1
/* 80A69CC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A69CC4  4B 8F 85 61 */	bl _restgpr_28
/* 80A69CC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A69CCC  7C 08 03 A6 */	mtlr r0
/* 80A69CD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A69CD4  4E 80 00 20 */	blr 
