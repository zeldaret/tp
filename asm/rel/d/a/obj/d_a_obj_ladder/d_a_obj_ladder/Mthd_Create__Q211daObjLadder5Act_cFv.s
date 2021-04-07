lbl_8058D378:
/* 8058D378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D37C  7C 08 02 A6 */	mflr r0
/* 8058D380  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058D388  93 C1 00 08 */	stw r30, 8(r1)
/* 8058D38C  7C 7F 1B 78 */	mr r31, r3
/* 8058D390  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8058D394  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8058D398  40 82 00 64 */	bne lbl_8058D3FC
/* 8058D39C  7F E0 FB 79 */	or. r0, r31, r31
/* 8058D3A0  41 82 00 50 */	beq lbl_8058D3F0
/* 8058D3A4  7C 1E 03 78 */	mr r30, r0
/* 8058D3A8  4B AE B2 7D */	bl __ct__16dBgS_MoveBgActorFv
/* 8058D3AC  3C 60 80 59 */	lis r3, __vt__Q211daObjLadder5Act_c@ha /* 0x8058DEF4@ha */
/* 8058D3B0  38 03 DE F4 */	addi r0, r3, __vt__Q211daObjLadder5Act_c@l /* 0x8058DEF4@l */
/* 8058D3B4  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 8058D3B8  3B DE 05 BC */	addi r30, r30, 0x5bc
/* 8058D3BC  7F C3 F3 78 */	mr r3, r30
/* 8058D3C0  4B AE A1 BD */	bl __ct__11dBgS_GndChkFv
/* 8058D3C4  3C 60 80 59 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x8058DEC4@ha */
/* 8058D3C8  38 63 DE C4 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x8058DEC4@l */
/* 8058D3CC  90 7E 00 10 */	stw r3, 0x10(r30)
/* 8058D3D0  38 03 00 0C */	addi r0, r3, 0xc
/* 8058D3D4  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8058D3D8  38 03 00 18 */	addi r0, r3, 0x18
/* 8058D3DC  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8058D3E0  38 03 00 24 */	addi r0, r3, 0x24
/* 8058D3E4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8058D3E8  38 7E 00 3C */	addi r3, r30, 0x3c
/* 8058D3EC  4B AE BA 7D */	bl SetObj__16dBgS_PolyPassChkFv
lbl_8058D3F0:
/* 8058D3F0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8058D3F4  60 00 00 08 */	ori r0, r0, 8
/* 8058D3F8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8058D3FC:
/* 8058D3FC  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 8058D400  3C 80 80 59 */	lis r4, M_arcname__Q211daObjLadder5Act_c@ha /* 0x8058DD74@ha */
/* 8058D404  38 84 DD 74 */	addi r4, r4, M_arcname__Q211daObjLadder5Act_c@l /* 0x8058DD74@l */
/* 8058D408  4B A9 FA B5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8058D40C  2C 03 00 04 */	cmpwi r3, 4
/* 8058D410  40 82 00 50 */	bne lbl_8058D460
/* 8058D414  7F E3 FB 78 */	mr r3, r31
/* 8058D418  38 80 00 03 */	li r4, 3
/* 8058D41C  38 A0 00 00 */	li r5, 0
/* 8058D420  48 00 08 F5 */	bl func_8058DD14
/* 8058D424  90 7F 05 AC */	stw r3, 0x5ac(r31)
/* 8058D428  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 8058D42C  54 04 18 38 */	slwi r4, r0, 3
/* 8058D430  3C 60 80 59 */	lis r3, data_8058DDCC@ha /* 0x8058DDCC@ha */
/* 8058D434  38 03 DD CC */	addi r0, r3, data_8058DDCC@l /* 0x8058DDCC@l */
/* 8058D438  7C A0 22 14 */	add r5, r0, r4
/* 8058D43C  7F E3 FB 78 */	mr r3, r31
/* 8058D440  3C 80 80 59 */	lis r4, M_arcname__Q211daObjLadder5Act_c@ha /* 0x8058DD74@ha */
/* 8058D444  38 84 DD 74 */	addi r4, r4, M_arcname__Q211daObjLadder5Act_c@l /* 0x8058DD74@l */
/* 8058D448  A8 A5 00 02 */	lha r5, 2(r5)
/* 8058D44C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075B44@ha */
/* 8058D450  38 C6 5B 44 */	addi r6, r6, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075B44@l */
/* 8058D454  38 E0 0C B0 */	li r7, 0xcb0
/* 8058D458  39 00 00 00 */	li r8, 0
/* 8058D45C  4B AE B3 61 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
lbl_8058D460:
/* 8058D460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058D464  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058D468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D46C  7C 08 03 A6 */	mtlr r0
/* 8058D470  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D474  4E 80 00 20 */	blr 
