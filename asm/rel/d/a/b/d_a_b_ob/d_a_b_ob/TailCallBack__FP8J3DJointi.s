lbl_806107B4:
/* 806107B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806107B8  7C 08 02 A6 */	mflr r0
/* 806107BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806107C0  39 61 00 20 */	addi r11, r1, 0x20
/* 806107C4  4B D5 1A 14 */	b _savegpr_28
/* 806107C8  2C 04 00 00 */	cmpwi r4, 0
/* 806107CC  40 82 01 C4 */	bne lbl_80610990
/* 806107D0  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 806107D4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 806107D8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 806107DC  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 806107E0  83 DF 00 14 */	lwz r30, 0x14(r31)
/* 806107E4  28 1E 00 00 */	cmplwi r30, 0
/* 806107E8  41 82 01 A8 */	beq lbl_80610990
/* 806107EC  2C 04 00 03 */	cmpwi r4, 3
/* 806107F0  40 82 00 70 */	bne lbl_80610860
/* 806107F4  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 806107F8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806107FC  1F A4 00 30 */	mulli r29, r4, 0x30
/* 80610800  7C 60 EA 14 */	add r3, r0, r29
/* 80610804  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80610808  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8061080C  80 84 00 00 */	lwz r4, 0(r4)
/* 80610810  4B D3 5C A0 */	b PSMTXCopy
/* 80610814  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610818  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8061081C  80 63 00 00 */	lwz r3, 0(r3)
/* 80610820  A8 9E 47 AA */	lha r4, 0x47aa(r30)
/* 80610824  4B 9F BC 10 */	b mDoMtx_YrotM__FPA4_fs
/* 80610828  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8061082C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610830  80 63 00 00 */	lwz r3, 0(r3)
/* 80610834  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80610838  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8061083C  7C 80 EA 14 */	add r4, r0, r29
/* 80610840  4B D3 5C 70 */	b PSMTXCopy
/* 80610844  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610848  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8061084C  80 63 00 00 */	lwz r3, 0(r3)
/* 80610850  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80610854  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80610858  4B D3 5C 58 */	b PSMTXCopy
/* 8061085C  48 00 01 34 */	b lbl_80610990
lbl_80610860:
/* 80610860  2C 04 00 06 */	cmpwi r4, 6
/* 80610864  40 82 00 78 */	bne lbl_806108DC
/* 80610868  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8061086C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80610870  1F A4 00 30 */	mulli r29, r4, 0x30
/* 80610874  7C 60 EA 14 */	add r3, r0, r29
/* 80610878  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8061087C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80610880  80 84 00 00 */	lwz r4, 0(r4)
/* 80610884  4B D3 5C 2C */	b PSMTXCopy
/* 80610888  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8061088C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610890  80 63 00 00 */	lwz r3, 0(r3)
/* 80610894  A8 1E 47 AA */	lha r0, 0x47aa(r30)
/* 80610898  7C 00 00 D0 */	neg r0, r0
/* 8061089C  7C 04 07 34 */	extsh r4, r0
/* 806108A0  4B 9F BB 94 */	b mDoMtx_YrotM__FPA4_fs
/* 806108A4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806108A8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806108AC  80 63 00 00 */	lwz r3, 0(r3)
/* 806108B0  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 806108B4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806108B8  7C 80 EA 14 */	add r4, r0, r29
/* 806108BC  4B D3 5B F4 */	b PSMTXCopy
/* 806108C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806108C4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806108C8  80 63 00 00 */	lwz r3, 0(r3)
/* 806108CC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 806108D0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 806108D4  4B D3 5B DC */	b PSMTXCopy
/* 806108D8  48 00 00 B8 */	b lbl_80610990
lbl_806108DC:
/* 806108DC  2C 04 00 02 */	cmpwi r4, 2
/* 806108E0  41 82 00 14 */	beq lbl_806108F4
/* 806108E4  2C 04 00 04 */	cmpwi r4, 4
/* 806108E8  41 82 00 0C */	beq lbl_806108F4
/* 806108EC  2C 04 00 05 */	cmpwi r4, 5
/* 806108F0  40 82 00 A0 */	bne lbl_80610990
lbl_806108F4:
/* 806108F4  7C 9C 23 78 */	mr r28, r4
/* 806108F8  2C 04 00 02 */	cmpwi r4, 2
/* 806108FC  40 82 00 0C */	bne lbl_80610908
/* 80610900  3B 80 00 00 */	li r28, 0
/* 80610904  48 00 00 10 */	b lbl_80610914
lbl_80610908:
/* 80610908  2C 04 00 04 */	cmpwi r4, 4
/* 8061090C  41 80 00 08 */	blt lbl_80610914
/* 80610910  3B 84 FF FD */	addi r28, r4, -3
lbl_80610914:
/* 80610914  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80610918  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8061091C  1F A4 00 30 */	mulli r29, r4, 0x30
/* 80610920  7C 60 EA 14 */	add r3, r0, r29
/* 80610924  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80610928  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8061092C  80 84 00 00 */	lwz r4, 0(r4)
/* 80610930  4B D3 5B 80 */	b PSMTXCopy
/* 80610934  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610938  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8061093C  80 63 00 00 */	lwz r3, 0(r3)
/* 80610940  57 80 08 3C */	slwi r0, r28, 1
/* 80610944  7C 9E 02 14 */	add r4, r30, r0
/* 80610948  A8 84 47 A4 */	lha r4, 0x47a4(r4)
/* 8061094C  A8 1E 47 AC */	lha r0, 0x47ac(r30)
/* 80610950  7C 04 02 14 */	add r0, r4, r0
/* 80610954  7C 04 07 34 */	extsh r4, r0
/* 80610958  4B 9F BA DC */	b mDoMtx_YrotM__FPA4_fs
/* 8061095C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610960  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610964  80 63 00 00 */	lwz r3, 0(r3)
/* 80610968  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8061096C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80610970  7C 80 EA 14 */	add r4, r0, r29
/* 80610974  4B D3 5B 3C */	b PSMTXCopy
/* 80610978  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8061097C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610980  80 63 00 00 */	lwz r3, 0(r3)
/* 80610984  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80610988  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8061098C  4B D3 5B 24 */	b PSMTXCopy
lbl_80610990:
/* 80610990  38 60 00 01 */	li r3, 1
/* 80610994  39 61 00 20 */	addi r11, r1, 0x20
/* 80610998  4B D5 18 8C */	b _restgpr_28
/* 8061099C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806109A0  7C 08 03 A6 */	mtlr r0
/* 806109A4  38 21 00 20 */	addi r1, r1, 0x20
/* 806109A8  4E 80 00 20 */	blr 
