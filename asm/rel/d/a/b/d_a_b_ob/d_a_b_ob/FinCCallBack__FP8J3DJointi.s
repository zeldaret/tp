lbl_80610C24:
/* 80610C24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80610C28  7C 08 02 A6 */	mflr r0
/* 80610C2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80610C30  39 61 00 20 */	addi r11, r1, 0x20
/* 80610C34  4B D5 15 A8 */	b _savegpr_29
/* 80610C38  2C 04 00 00 */	cmpwi r4, 0
/* 80610C3C  40 82 00 CC */	bne lbl_80610D08
/* 80610C40  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 80610C44  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80610C48  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80610C4C  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80610C50  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 80610C54  28 1D 00 00 */	cmplwi r29, 0
/* 80610C58  41 82 00 B0 */	beq lbl_80610D08
/* 80610C5C  2C 04 00 01 */	cmpwi r4, 1
/* 80610C60  40 82 00 A8 */	bne lbl_80610D08
/* 80610C64  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80610C68  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80610C6C  1F C4 00 30 */	mulli r30, r4, 0x30
/* 80610C70  7C 60 F2 14 */	add r3, r0, r30
/* 80610C74  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80610C78  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80610C7C  80 84 00 00 */	lwz r4, 0(r4)
/* 80610C80  4B D3 58 30 */	b PSMTXCopy
/* 80610C84  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610C88  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610C8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80610C90  3C 80 80 62 */	lis r4, pno@ha
/* 80610C94  80 04 B5 34 */	lwz r0, pno@l(r4)
/* 80610C98  1C 00 01 78 */	mulli r0, r0, 0x178
/* 80610C9C  7C 9D 02 14 */	add r4, r29, r0
/* 80610CA0  A8 84 05 FA */	lha r4, 0x5fa(r4)
/* 80610CA4  4B 9F B7 90 */	b mDoMtx_YrotM__FPA4_fs
/* 80610CA8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610CAC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610CB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80610CB4  3C 80 80 62 */	lis r4, pno@ha
/* 80610CB8  80 04 B5 34 */	lwz r0, pno@l(r4)
/* 80610CBC  1C 00 01 78 */	mulli r0, r0, 0x178
/* 80610CC0  7C 9D 02 14 */	add r4, r29, r0
/* 80610CC4  A8 04 05 FA */	lha r0, 0x5fa(r4)
/* 80610CC8  7C 00 00 D0 */	neg r0, r0
/* 80610CCC  7C 04 07 34 */	extsh r4, r0
/* 80610CD0  4B 9F B6 CC */	b mDoMtx_XrotM__FPA4_fs
/* 80610CD4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610CD8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610CDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80610CE0  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80610CE4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80610CE8  7C 80 F2 14 */	add r4, r0, r30
/* 80610CEC  4B D3 57 C4 */	b PSMTXCopy
/* 80610CF0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610CF4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610CF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80610CFC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80610D00  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80610D04  4B D3 57 AC */	b PSMTXCopy
lbl_80610D08:
/* 80610D08  38 60 00 01 */	li r3, 1
/* 80610D0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80610D10  4B D5 15 18 */	b _restgpr_29
/* 80610D14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80610D18  7C 08 03 A6 */	mtlr r0
/* 80610D1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80610D20  4E 80 00 20 */	blr 
