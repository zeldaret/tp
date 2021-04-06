lbl_80A2AFD4:
/* 80A2AFD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A2AFD8  7C 08 02 A6 */	mflr r0
/* 80A2AFDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A2AFE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2AFE4  4B 93 71 F9 */	bl _savegpr_29
/* 80A2AFE8  7C 7D 1B 78 */	mr r29, r3
/* 80A2AFEC  3C 80 80 A4 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A40D34@ha */
/* 80A2AFF0  3B C4 0D 34 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80A40D34@l */
/* 80A2AFF4  3C 80 80 A4 */	lis r4, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A2AFF8  3B E4 08 C8 */	addi r31, r4, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A2AFFC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A2B000  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A2B004  40 82 00 40 */	bne lbl_80A2B044
/* 80A2B008  28 1D 00 00 */	cmplwi r29, 0
/* 80A2B00C  41 82 00 2C */	beq lbl_80A2B038
/* 80A2B010  38 1E 01 8C */	addi r0, r30, 0x18c
/* 80A2B014  90 01 00 08 */	stw r0, 8(r1)
/* 80A2B018  38 9E 01 F0 */	addi r4, r30, 0x1f0
/* 80A2B01C  38 BE 02 28 */	addi r5, r30, 0x228
/* 80A2B020  38 DE 06 24 */	addi r6, r30, 0x624
/* 80A2B024  38 E0 00 04 */	li r7, 4
/* 80A2B028  39 1E 06 44 */	addi r8, r30, 0x644
/* 80A2B02C  39 20 00 04 */	li r9, 4
/* 80A2B030  39 5E 00 BC */	addi r10, r30, 0xbc
/* 80A2B034  48 01 07 F9 */	bl __ct__10daNpc_Kn_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80A2B038:
/* 80A2B038  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A2B03C  60 00 00 08 */	ori r0, r0, 8
/* 80A2B040  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A2B044:
/* 80A2B044  7F A3 EB 78 */	mr r3, r29
/* 80A2B048  48 00 07 95 */	bl getType__10daNpc_Kn_cFv
/* 80A2B04C  98 7D 15 AC */	stb r3, 0x15ac(r29)
/* 80A2B050  7F A3 EB 78 */	mr r3, r29
/* 80A2B054  48 00 07 F1 */	bl getDivideNo__10daNpc_Kn_cFv
/* 80A2B058  98 7D 15 AD */	stb r3, 0x15ad(r29)
/* 80A2B05C  7F A3 EB 78 */	mr r3, r29
/* 80A2B060  48 00 07 F1 */	bl getFlowNodeNo__10daNpc_Kn_cFv
/* 80A2B064  90 7D 0A B0 */	stw r3, 0xab0(r29)
/* 80A2B068  38 00 00 00 */	li r0, 0
/* 80A2B06C  98 1D 0A BD */	stb r0, 0xabd(r29)
/* 80A2B070  7F A3 EB 78 */	mr r3, r29
/* 80A2B074  48 00 08 05 */	bl isDelete__10daNpc_Kn_cFv
/* 80A2B078  2C 03 00 00 */	cmpwi r3, 0
/* 80A2B07C  41 82 00 0C */	beq lbl_80A2B088
/* 80A2B080  38 60 00 05 */	li r3, 5
/* 80A2B084  48 00 01 DC */	b lbl_80A2B260
lbl_80A2B088:
/* 80A2B088  7F A3 EB 78 */	mr r3, r29
/* 80A2B08C  88 1D 15 AC */	lbz r0, 0x15ac(r29)
/* 80A2B090  54 00 10 3A */	slwi r0, r0, 2
/* 80A2B094  38 9E 01 D0 */	addi r4, r30, 0x1d0
/* 80A2B098  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A2B09C  38 BE 01 8C */	addi r5, r30, 0x18c
/* 80A2B0A0  48 00 D7 5D */	bl loadRes__10daNpc_Kn_cFPCScPPCc
/* 80A2B0A4  7C 7E 1B 78 */	mr r30, r3
/* 80A2B0A8  2C 1E 00 04 */	cmpwi r30, 4
/* 80A2B0AC  40 82 01 B0 */	bne lbl_80A2B25C
/* 80A2B0B0  7F A3 EB 78 */	mr r3, r29
/* 80A2B0B4  3C 80 80 A3 */	lis r4, createHeapCallBack__10daNpc_Kn_cFP10fopAc_ac_c@ha /* 0x80A2B764@ha */
/* 80A2B0B8  38 84 B7 64 */	addi r4, r4, createHeapCallBack__10daNpc_Kn_cFP10fopAc_ac_c@l /* 0x80A2B764@l */
/* 80A2B0BC  88 1D 15 AC */	lbz r0, 0x15ac(r29)
/* 80A2B0C0  54 00 10 3A */	slwi r0, r0, 2
/* 80A2B0C4  38 BF 01 5C */	addi r5, r31, 0x15c
/* 80A2B0C8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A2B0CC  4B 5E F3 E5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A2B0D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A2B0D4  40 82 00 0C */	bne lbl_80A2B0E0
/* 80A2B0D8  38 60 00 05 */	li r3, 5
/* 80A2B0DC  48 00 01 84 */	b lbl_80A2B260
lbl_80A2B0E0:
/* 80A2B0E0  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 80A2B0E4  80 63 00 04 */	lwz r3, 4(r3)
/* 80A2B0E8  38 03 00 24 */	addi r0, r3, 0x24
/* 80A2B0EC  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A2B0F0  7F A3 EB 78 */	mr r3, r29
/* 80A2B0F4  C0 3F 01 7C */	lfs f1, 0x17c(r31)
/* 80A2B0F8  C0 5F 01 80 */	lfs f2, 0x180(r31)
/* 80A2B0FC  FC 60 08 90 */	fmr f3, f1
/* 80A2B100  C0 9F 01 84 */	lfs f4, 0x184(r31)
/* 80A2B104  C0 BF 01 88 */	lfs f5, 0x188(r31)
/* 80A2B108  FC C0 20 90 */	fmr f6, f4
/* 80A2B10C  4B 5E F4 3D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A2B110  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80A2B114  64 00 08 00 */	oris r0, r0, 0x800
/* 80A2B118  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80A2B11C  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2B120  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A2B124  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A2B128  38 C0 00 03 */	li r6, 3
/* 80A2B12C  38 E0 00 01 */	li r7, 1
/* 80A2B130  4B 89 54 01 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80A2B134  38 7D 0E 50 */	addi r3, r29, 0xe50
/* 80A2B138  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80A2B13C  7C 04 07 74 */	extsb r4, r0
/* 80A2B140  38 A0 00 FF */	li r5, 0xff
/* 80A2B144  4B 77 D7 A9 */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
/* 80A2B148  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A2B14C  90 01 00 08 */	stw r0, 8(r1)
/* 80A2B150  38 7D 06 D0 */	addi r3, r29, 0x6d0
/* 80A2B154  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A2B158  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A2B15C  7F A6 EB 78 */	mr r6, r29
/* 80A2B160  38 E0 00 01 */	li r7, 1
/* 80A2B164  39 1D 08 E4 */	addi r8, r29, 0x8e4
/* 80A2B168  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A2B16C  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A2B170  4B 64 B0 D9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A2B174  38 7D 06 D0 */	addi r3, r29, 0x6d0
/* 80A2B178  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2B17C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2B180  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A2B184  4B 64 B9 29 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80A2B188  80 1D 07 AC */	lwz r0, 0x7ac(r29)
/* 80A2B18C  90 1D 09 64 */	stw r0, 0x964(r29)
/* 80A2B190  80 1D 07 B0 */	lwz r0, 0x7b0(r29)
/* 80A2B194  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A2B198  80 1D 07 B4 */	lwz r0, 0x7b4(r29)
/* 80A2B19C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A2B1A0  88 1D 07 B8 */	lbz r0, 0x7b8(r29)
/* 80A2B1A4  98 1D 09 70 */	stb r0, 0x970(r29)
/* 80A2B1A8  A0 1D 07 C0 */	lhz r0, 0x7c0(r29)
/* 80A2B1AC  B0 1D 09 78 */	sth r0, 0x978(r29)
/* 80A2B1B0  A0 1D 07 C2 */	lhz r0, 0x7c2(r29)
/* 80A2B1B4  B0 1D 09 7A */	sth r0, 0x97a(r29)
/* 80A2B1B8  80 1D 07 C4 */	lwz r0, 0x7c4(r29)
/* 80A2B1BC  90 1D 09 7C */	stw r0, 0x97c(r29)
/* 80A2B1C0  80 1D 07 C8 */	lwz r0, 0x7c8(r29)
/* 80A2B1C4  90 1D 09 80 */	stw r0, 0x980(r29)
/* 80A2B1C8  C0 1D 07 D0 */	lfs f0, 0x7d0(r29)
/* 80A2B1CC  D0 1D 09 88 */	stfs f0, 0x988(r29)
/* 80A2B1D0  C0 1D 07 D4 */	lfs f0, 0x7d4(r29)
/* 80A2B1D4  D0 1D 09 8C */	stfs f0, 0x98c(r29)
/* 80A2B1D8  C0 1D 07 D8 */	lfs f0, 0x7d8(r29)
/* 80A2B1DC  D0 1D 09 90 */	stfs f0, 0x990(r29)
/* 80A2B1E0  80 1D 07 DC */	lwz r0, 0x7dc(r29)
/* 80A2B1E4  90 1D 09 94 */	stw r0, 0x994(r29)
/* 80A2B1E8  C0 1D 07 E0 */	lfs f0, 0x7e0(r29)
/* 80A2B1EC  D0 1D 09 98 */	stfs f0, 0x998(r29)
/* 80A2B1F0  80 1D 07 E4 */	lwz r0, 0x7e4(r29)
/* 80A2B1F4  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 80A2B1F8  C0 1D 07 68 */	lfs f0, 0x768(r29)
/* 80A2B1FC  D0 1D 0E 14 */	stfs f0, 0xe14(r29)
/* 80A2B200  7F A3 EB 78 */	mr r3, r29
/* 80A2B204  48 00 DD A9 */	bl setEnvTevColor__10daNpc_Kn_cFv
/* 80A2B208  7F A3 EB 78 */	mr r3, r29
/* 80A2B20C  48 00 DD FD */	bl setRoomNo__10daNpc_Kn_cFv
/* 80A2B210  38 7D 08 A8 */	addi r3, r29, 0x8a8
/* 80A2B214  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 80A2B218  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A2B21C  FC 00 00 1E */	fctiwz f0, f0
/* 80A2B220  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A2B224  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A2B228  38 A0 00 00 */	li r5, 0
/* 80A2B22C  7F A6 EB 78 */	mr r6, r29
/* 80A2B230  4B 65 86 31 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A2B234  7F A3 EB 78 */	mr r3, r29
/* 80A2B238  48 00 06 E5 */	bl resetCol__10daNpc_Kn_cFv
/* 80A2B23C  7F A3 EB 78 */	mr r3, r29
/* 80A2B240  48 00 07 A1 */	bl reset__10daNpc_Kn_cFv
/* 80A2B244  38 00 00 01 */	li r0, 1
/* 80A2B248  98 1D 0A BC */	stb r0, 0xabc(r29)
/* 80A2B24C  7F A3 EB 78 */	mr r3, r29
/* 80A2B250  48 00 04 05 */	bl Execute__10daNpc_Kn_cFv
/* 80A2B254  38 00 00 00 */	li r0, 0
/* 80A2B258  98 1D 0A BC */	stb r0, 0xabc(r29)
lbl_80A2B25C:
/* 80A2B25C  7F C3 F3 78 */	mr r3, r30
lbl_80A2B260:
/* 80A2B260  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2B264  4B 93 6F C5 */	bl _restgpr_29
/* 80A2B268  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A2B26C  7C 08 03 A6 */	mtlr r0
/* 80A2B270  38 21 00 30 */	addi r1, r1, 0x30
/* 80A2B274  4E 80 00 20 */	blr 
