lbl_8045D378:
/* 8045D378  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045D37C  7C 08 02 A6 */	mflr r0
/* 8045D380  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045D384  39 61 00 20 */	addi r11, r1, 0x20
/* 8045D388  4B F0 4E 51 */	bl _savegpr_28
/* 8045D38C  2C 04 00 00 */	cmpwi r4, 0
/* 8045D390  40 82 00 C4 */	bne lbl_8045D454
/* 8045D394  A3 83 00 14 */	lhz r28, 0x14(r3)
/* 8045D398  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8045D39C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8045D3A0  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8045D3A4  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 8045D3A8  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8045D3AC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8045D3B0  1F DC 00 30 */	mulli r30, r28, 0x30
/* 8045D3B4  7C 60 F2 14 */	add r3, r0, r30
/* 8045D3B8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D3BC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D3C0  4B EE 90 F1 */	bl PSMTXCopy
/* 8045D3C4  88 1D 05 C0 */	lbz r0, 0x5c0(r29)
/* 8045D3C8  7C 00 07 74 */	extsb r0, r0
/* 8045D3CC  7C 1C 00 00 */	cmpw r28, r0
/* 8045D3D0  40 82 00 2C */	bne lbl_8045D3FC
/* 8045D3D4  88 1D 05 85 */	lbz r0, 0x585(r29)
/* 8045D3D8  28 00 00 01 */	cmplwi r0, 1
/* 8045D3DC  40 82 00 20 */	bne lbl_8045D3FC
/* 8045D3E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D3E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D3E8  A8 1D 05 8A */	lha r0, 0x58a(r29)
/* 8045D3EC  7C 00 00 D0 */	neg r0, r0
/* 8045D3F0  7C 04 07 34 */	extsh r4, r0
/* 8045D3F4  4B BA F0 41 */	bl mDoMtx_YrotM__FPA4_fs
/* 8045D3F8  48 00 00 30 */	b lbl_8045D428
lbl_8045D3FC:
/* 8045D3FC  88 1D 05 C1 */	lbz r0, 0x5c1(r29)
/* 8045D400  7C 00 07 74 */	extsb r0, r0
/* 8045D404  7C 1C 00 00 */	cmpw r28, r0
/* 8045D408  40 82 00 20 */	bne lbl_8045D428
/* 8045D40C  88 1D 05 85 */	lbz r0, 0x585(r29)
/* 8045D410  28 00 00 00 */	cmplwi r0, 0
/* 8045D414  40 82 00 14 */	bne lbl_8045D428
/* 8045D418  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D41C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D420  A8 9D 05 8A */	lha r4, 0x58a(r29)
/* 8045D424  4B BA F0 11 */	bl mDoMtx_YrotM__FPA4_fs
lbl_8045D428:
/* 8045D428  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D42C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D430  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8045D434  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8045D438  7C 80 F2 14 */	add r4, r0, r30
/* 8045D43C  4B EE 90 75 */	bl PSMTXCopy
/* 8045D440  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D444  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D448  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8045D44C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8045D450  4B EE 90 61 */	bl PSMTXCopy
lbl_8045D454:
/* 8045D454  38 60 00 01 */	li r3, 1
/* 8045D458  39 61 00 20 */	addi r11, r1, 0x20
/* 8045D45C  4B F0 4D C9 */	bl _restgpr_28
/* 8045D460  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045D464  7C 08 03 A6 */	mtlr r0
/* 8045D468  38 21 00 20 */	addi r1, r1, 0x20
/* 8045D46C  4E 80 00 20 */	blr 
