lbl_80313828:
/* 80313828  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8031382C  7C 08 02 A6 */	mflr r0
/* 80313830  90 01 00 54 */	stw r0, 0x54(r1)
/* 80313834  39 61 00 50 */	addi r11, r1, 0x50
/* 80313838  48 04 E9 A5 */	bl _savegpr_29
/* 8031383C  7C 7D 1B 78 */	mr r29, r3
/* 80313840  7C 9E 23 78 */	mr r30, r4
/* 80313844  7C BF 2B 78 */	mr r31, r5
/* 80313848  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8031384C  38 83 4A C8 */	addi r4, r3, j3dSys@l /* 0x80434AC8@l */
/* 80313850  80 64 00 40 */	lwz r3, 0x40(r4)
/* 80313854  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80313858  80 84 01 04 */	lwz r4, 0x104(r4)
/* 8031385C  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80313860  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80313864  7C 84 02 14 */	add r4, r4, r0
/* 80313868  38 A1 00 08 */	addi r5, r1, 8
/* 8031386C  48 03 2C 79 */	bl PSMTXConcat
/* 80313870  80 0D 90 40 */	lwz r0, sTexGenBlock__17J3DDifferedTexMtx(r13)
/* 80313874  28 00 00 00 */	cmplwi r0, 0
/* 80313878  41 82 00 0C */	beq lbl_80313884
/* 8031387C  38 61 00 08 */	addi r3, r1, 8
/* 80313880  4B FF F9 AD */	bl loadExecute__17J3DDifferedTexMtxFPA4_Cf
lbl_80313884:
/* 80313884  38 61 00 08 */	addi r3, r1, 8
/* 80313888  1C 9E 00 03 */	mulli r4, r30, 3
/* 8031388C  4B FF C2 55 */	bl J3DFifoLoadPosMtxImm__FPA4_fUl
/* 80313890  7F A3 EB 78 */	mr r3, r29
/* 80313894  7F C4 F3 78 */	mr r4, r30
/* 80313898  7F E5 FB 78 */	mr r5, r31
/* 8031389C  38 C1 00 08 */	addi r6, r1, 8
/* 803138A0  81 9D 00 00 */	lwz r12, 0(r29)
/* 803138A4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 803138A8  7D 89 03 A6 */	mtctr r12
/* 803138AC  4E 80 04 21 */	bctrl 
/* 803138B0  39 61 00 50 */	addi r11, r1, 0x50
/* 803138B4  48 04 E9 75 */	bl _restgpr_29
/* 803138B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803138BC  7C 08 03 A6 */	mtlr r0
/* 803138C0  38 21 00 50 */	addi r1, r1, 0x50
/* 803138C4  4E 80 00 20 */	blr 
