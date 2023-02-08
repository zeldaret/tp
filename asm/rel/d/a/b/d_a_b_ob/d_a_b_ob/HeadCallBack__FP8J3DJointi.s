lbl_8061066C:
/* 8061066C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80610670  7C 08 02 A6 */	mflr r0
/* 80610674  90 01 00 24 */	stw r0, 0x24(r1)
/* 80610678  39 61 00 20 */	addi r11, r1, 0x20
/* 8061067C  4B D5 1B 61 */	bl _savegpr_29
/* 80610680  2C 04 00 00 */	cmpwi r4, 0
/* 80610684  40 82 01 14 */	bne lbl_80610798
/* 80610688  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 8061068C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80610690  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80610694  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80610698  83 DF 00 14 */	lwz r30, 0x14(r31)
/* 8061069C  28 1E 00 00 */	cmplwi r30, 0
/* 806106A0  41 82 00 F8 */	beq lbl_80610798
/* 806106A4  2C 04 00 02 */	cmpwi r4, 2
/* 806106A8  41 80 00 78 */	blt lbl_80610720
/* 806106AC  2C 04 00 04 */	cmpwi r4, 4
/* 806106B0  41 81 00 70 */	bgt lbl_80610720
/* 806106B4  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 806106B8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806106BC  1F A4 00 30 */	mulli r29, r4, 0x30
/* 806106C0  7C 60 EA 14 */	add r3, r0, r29
/* 806106C4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806106C8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806106CC  80 84 00 00 */	lwz r4, 0(r4)
/* 806106D0  4B D3 5D E1 */	bl PSMTXCopy
/* 806106D4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806106D8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806106DC  80 63 00 00 */	lwz r3, 0(r3)
/* 806106E0  A8 9E 47 AE */	lha r4, 0x47ae(r30)
/* 806106E4  4B 9F BD 51 */	bl mDoMtx_YrotM__FPA4_fs
/* 806106E8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806106EC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806106F0  80 63 00 00 */	lwz r3, 0(r3)
/* 806106F4  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 806106F8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806106FC  7C 80 EA 14 */	add r4, r0, r29
/* 80610700  4B D3 5D B1 */	bl PSMTXCopy
/* 80610704  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80610708  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8061070C  80 63 00 00 */	lwz r3, 0(r3)
/* 80610710  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80610714  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80610718  4B D3 5D 99 */	bl PSMTXCopy
/* 8061071C  48 00 00 7C */	b lbl_80610798
lbl_80610720:
/* 80610720  2C 04 00 05 */	cmpwi r4, 5
/* 80610724  41 80 00 74 */	blt lbl_80610798
/* 80610728  2C 04 00 07 */	cmpwi r4, 7
/* 8061072C  41 81 00 6C */	bgt lbl_80610798
/* 80610730  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80610734  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80610738  1F A4 00 30 */	mulli r29, r4, 0x30
/* 8061073C  7C 60 EA 14 */	add r3, r0, r29
/* 80610740  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80610744  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80610748  80 84 00 00 */	lwz r4, 0(r4)
/* 8061074C  4B D3 5D 65 */	bl PSMTXCopy
/* 80610750  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80610754  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80610758  80 63 00 00 */	lwz r3, 0(r3)
/* 8061075C  A8 9E 47 AE */	lha r4, 0x47ae(r30)
/* 80610760  4B 9F BC D5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80610764  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80610768  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8061076C  80 63 00 00 */	lwz r3, 0(r3)
/* 80610770  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80610774  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80610778  7C 80 EA 14 */	add r4, r0, r29
/* 8061077C  4B D3 5D 35 */	bl PSMTXCopy
/* 80610780  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80610784  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80610788  80 63 00 00 */	lwz r3, 0(r3)
/* 8061078C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80610790  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80610794  4B D3 5D 1D */	bl PSMTXCopy
lbl_80610798:
/* 80610798  38 60 00 01 */	li r3, 1
/* 8061079C  39 61 00 20 */	addi r11, r1, 0x20
/* 806107A0  4B D5 1A 89 */	bl _restgpr_29
/* 806107A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806107A8  7C 08 03 A6 */	mtlr r0
/* 806107AC  38 21 00 20 */	addi r1, r1, 0x20
/* 806107B0  4E 80 00 20 */	blr 
