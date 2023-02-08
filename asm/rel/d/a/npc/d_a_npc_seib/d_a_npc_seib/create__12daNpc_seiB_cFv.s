lbl_80AC5188:
/* 80AC5188  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC518C  7C 08 02 A6 */	mflr r0
/* 80AC5190  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC5194  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC5198  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AC519C  7C 7E 1B 78 */	mr r30, r3
/* 80AC51A0  3C 80 80 AC */	lis r4, cNullVec__6Z2Calc@ha /* 0x80AC70F8@ha */
/* 80AC51A4  3B E4 70 F8 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80AC70F8@l */
/* 80AC51A8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AC51AC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AC51B0  40 82 00 40 */	bne lbl_80AC51F0
/* 80AC51B4  28 1E 00 00 */	cmplwi r30, 0
/* 80AC51B8  41 82 00 2C */	beq lbl_80AC51E4
/* 80AC51BC  38 1F 00 40 */	addi r0, r31, 0x40
/* 80AC51C0  90 01 00 08 */	stw r0, 8(r1)
/* 80AC51C4  38 9F 00 54 */	addi r4, r31, 0x54
/* 80AC51C8  38 BF 00 70 */	addi r5, r31, 0x70
/* 80AC51CC  38 DF 00 E0 */	addi r6, r31, 0xe0
/* 80AC51D0  38 E0 00 04 */	li r7, 4
/* 80AC51D4  39 1F 00 F0 */	addi r8, r31, 0xf0
/* 80AC51D8  39 20 00 04 */	li r9, 4
/* 80AC51DC  39 5F 00 28 */	addi r10, r31, 0x28
/* 80AC51E0  48 00 1D 95 */	bl __ct__12daNpc_seiB_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80AC51E4:
/* 80AC51E4  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80AC51E8  60 00 00 08 */	ori r0, r0, 8
/* 80AC51EC  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80AC51F0:
/* 80AC51F0  7F C3 F3 78 */	mr r3, r30
/* 80AC51F4  48 00 04 35 */	bl getType__12daNpc_seiB_cFv
/* 80AC51F8  98 7E 0E 44 */	stb r3, 0xe44(r30)
/* 80AC51FC  7F C3 F3 78 */	mr r3, r30
/* 80AC5200  48 00 04 49 */	bl getFlowNodeNo__12daNpc_seiB_cFv
/* 80AC5204  90 7E 0A 7C */	stw r3, 0xa7c(r30)
/* 80AC5208  38 00 00 00 */	li r0, 0
/* 80AC520C  98 1E 0A 89 */	stb r0, 0xa89(r30)
/* 80AC5210  7F C3 F3 78 */	mr r3, r30
/* 80AC5214  88 1E 0E 44 */	lbz r0, 0xe44(r30)
/* 80AC5218  54 00 10 3A */	slwi r0, r0, 2
/* 80AC521C  38 9F 00 4C */	addi r4, r31, 0x4c
/* 80AC5220  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AC5224  38 BF 00 40 */	addi r5, r31, 0x40
/* 80AC5228  4B 68 31 D1 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80AC522C  7C 7F 1B 78 */	mr r31, r3
/* 80AC5230  2C 1F 00 04 */	cmpwi r31, 4
/* 80AC5234  40 82 01 78 */	bne lbl_80AC53AC
/* 80AC5238  7F C3 F3 78 */	mr r3, r30
/* 80AC523C  3C 80 80 AC */	lis r4, createHeapCallBack__12daNpc_seiB_cFP10fopAc_ac_c@ha /* 0x80AC5608@ha */
/* 80AC5240  38 84 56 08 */	addi r4, r4, createHeapCallBack__12daNpc_seiB_cFP10fopAc_ac_c@l /* 0x80AC5608@l */
/* 80AC5244  38 A0 00 00 */	li r5, 0
/* 80AC5248  4B 55 52 69 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AC524C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AC5250  40 82 00 0C */	bne lbl_80AC525C
/* 80AC5254  38 60 00 05 */	li r3, 5
/* 80AC5258  48 00 01 58 */	b lbl_80AC53B0
lbl_80AC525C:
/* 80AC525C  7F C3 F3 78 */	mr r3, r30
/* 80AC5260  48 00 04 05 */	bl isDelete__12daNpc_seiB_cFv
/* 80AC5264  2C 03 00 00 */	cmpwi r3, 0
/* 80AC5268  41 82 00 0C */	beq lbl_80AC5274
/* 80AC526C  38 60 00 05 */	li r3, 5
/* 80AC5270  48 00 01 40 */	b lbl_80AC53B0
lbl_80AC5274:
/* 80AC5274  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AC5278  80 63 00 04 */	lwz r3, 4(r3)
/* 80AC527C  38 03 00 24 */	addi r0, r3, 0x24
/* 80AC5280  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80AC5284  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AC5288  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AC528C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AC5290  38 C0 00 03 */	li r6, 3
/* 80AC5294  38 E0 00 01 */	li r7, 1
/* 80AC5298  4B 7F B2 99 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80AC529C  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80AC52A0  90 01 00 08 */	stw r0, 8(r1)
/* 80AC52A4  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AC52A8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AC52AC  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80AC52B0  7F C6 F3 78 */	mr r6, r30
/* 80AC52B4  38 E0 00 01 */	li r7, 1
/* 80AC52B8  39 1E 08 A0 */	addi r8, r30, 0x8a0
/* 80AC52BC  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80AC52C0  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 80AC52C4  4B 5B 0F 85 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AC52C8  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AC52CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AC52D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AC52D4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AC52D8  4B 5B 17 D5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AC52DC  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 80AC52E0  90 1E 09 30 */	stw r0, 0x930(r30)
/* 80AC52E4  80 1E 07 6C */	lwz r0, 0x76c(r30)
/* 80AC52E8  90 1E 09 34 */	stw r0, 0x934(r30)
/* 80AC52EC  80 1E 07 70 */	lwz r0, 0x770(r30)
/* 80AC52F0  90 1E 09 38 */	stw r0, 0x938(r30)
/* 80AC52F4  88 1E 07 74 */	lbz r0, 0x774(r30)
/* 80AC52F8  98 1E 09 3C */	stb r0, 0x93c(r30)
/* 80AC52FC  A0 1E 07 7C */	lhz r0, 0x77c(r30)
/* 80AC5300  B0 1E 09 44 */	sth r0, 0x944(r30)
/* 80AC5304  A0 1E 07 7E */	lhz r0, 0x77e(r30)
/* 80AC5308  B0 1E 09 46 */	sth r0, 0x946(r30)
/* 80AC530C  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 80AC5310  90 1E 09 48 */	stw r0, 0x948(r30)
/* 80AC5314  80 1E 07 84 */	lwz r0, 0x784(r30)
/* 80AC5318  90 1E 09 4C */	stw r0, 0x94c(r30)
/* 80AC531C  C0 1E 07 8C */	lfs f0, 0x78c(r30)
/* 80AC5320  D0 1E 09 54 */	stfs f0, 0x954(r30)
/* 80AC5324  C0 1E 07 90 */	lfs f0, 0x790(r30)
/* 80AC5328  D0 1E 09 58 */	stfs f0, 0x958(r30)
/* 80AC532C  C0 1E 07 94 */	lfs f0, 0x794(r30)
/* 80AC5330  D0 1E 09 5C */	stfs f0, 0x95c(r30)
/* 80AC5334  80 1E 07 98 */	lwz r0, 0x798(r30)
/* 80AC5338  90 1E 09 60 */	stw r0, 0x960(r30)
/* 80AC533C  C0 1E 07 9C */	lfs f0, 0x79c(r30)
/* 80AC5340  D0 1E 09 64 */	stfs f0, 0x964(r30)
/* 80AC5344  80 1E 07 A0 */	lwz r0, 0x7a0(r30)
/* 80AC5348  90 1E 09 68 */	stw r0, 0x968(r30)
/* 80AC534C  C0 1E 07 24 */	lfs f0, 0x724(r30)
/* 80AC5350  D0 1E 0D F4 */	stfs f0, 0xdf4(r30)
/* 80AC5354  7F C3 F3 78 */	mr r3, r30
/* 80AC5358  4B 68 39 19 */	bl setEnvTevColor__8daNpcT_cFv
/* 80AC535C  7F C3 F3 78 */	mr r3, r30
/* 80AC5360  4B 68 39 6D */	bl setRoomNo__8daNpcT_cFv
/* 80AC5364  38 7E 08 64 */	addi r3, r30, 0x864
/* 80AC5368  3C 80 80 AC */	lis r4, m__18daNpc_seiB_Param_c@ha /* 0x80AC7024@ha */
/* 80AC536C  38 84 70 24 */	addi r4, r4, m__18daNpc_seiB_Param_c@l /* 0x80AC7024@l */
/* 80AC5370  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AC5374  FC 00 00 1E */	fctiwz f0, f0
/* 80AC5378  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AC537C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AC5380  38 A0 00 00 */	li r5, 0
/* 80AC5384  7F C6 F3 78 */	mr r6, r30
/* 80AC5388  4B 5B E4 D9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AC538C  7F C3 F3 78 */	mr r3, r30
/* 80AC5390  48 00 02 DD */	bl reset__12daNpc_seiB_cFv
/* 80AC5394  38 00 00 01 */	li r0, 1
/* 80AC5398  98 1E 0A 88 */	stb r0, 0xa88(r30)
/* 80AC539C  7F C3 F3 78 */	mr r3, r30
/* 80AC53A0  48 00 01 B5 */	bl Execute__12daNpc_seiB_cFv
/* 80AC53A4  38 00 00 00 */	li r0, 0
/* 80AC53A8  98 1E 0A 88 */	stb r0, 0xa88(r30)
lbl_80AC53AC:
/* 80AC53AC  7F E3 FB 78 */	mr r3, r31
lbl_80AC53B0:
/* 80AC53B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC53B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AC53B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC53BC  7C 08 03 A6 */	mtlr r0
/* 80AC53C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC53C4  4E 80 00 20 */	blr 
