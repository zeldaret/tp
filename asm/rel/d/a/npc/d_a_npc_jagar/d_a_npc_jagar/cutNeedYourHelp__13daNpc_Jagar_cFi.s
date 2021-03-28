lbl_80A16544:
/* 80A16544  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80A16548  7C 08 02 A6 */	mflr r0
/* 80A1654C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A16550  39 61 00 80 */	addi r11, r1, 0x80
/* 80A16554  4B 94 BC 6C */	b _savegpr_22
/* 80A16558  7C 7F 1B 78 */	mr r31, r3
/* 80A1655C  7C 96 23 78 */	mr r22, r4
/* 80A16560  3C 60 80 A2 */	lis r3, m__19daNpc_Jagar_Param_c@ha
/* 80A16564  3B A3 A3 30 */	addi r29, r3, m__19daNpc_Jagar_Param_c@l
/* 80A16568  3B 60 00 00 */	li r27, 0
/* 80A1656C  3B 40 FF FF */	li r26, -1
/* 80A16570  3B 20 00 00 */	li r25, 0
/* 80A16574  3B 00 00 00 */	li r24, 0
/* 80A16578  3A E0 00 00 */	li r23, 0
/* 80A1657C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A16580  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80A16584  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80A16588  7F 83 E3 78 */	mr r3, r28
/* 80A1658C  3C A0 80 A2 */	lis r5, struct_80A1A49C+0x0@ha
/* 80A16590  38 A5 A4 9C */	addi r5, r5, struct_80A1A49C+0x0@l
/* 80A16594  38 A5 00 8E */	addi r5, r5, 0x8e
/* 80A16598  38 C0 00 03 */	li r6, 3
/* 80A1659C  4B 63 1B 50 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A165A0  28 03 00 00 */	cmplwi r3, 0
/* 80A165A4  41 82 00 08 */	beq lbl_80A165AC
/* 80A165A8  83 43 00 00 */	lwz r26, 0(r3)
lbl_80A165AC:
/* 80A165AC  7F 83 E3 78 */	mr r3, r28
/* 80A165B0  7E C4 B3 78 */	mr r4, r22
/* 80A165B4  3C A0 80 A2 */	lis r5, struct_80A1A49C+0x0@ha
/* 80A165B8  38 A5 A4 9C */	addi r5, r5, struct_80A1A49C+0x0@l
/* 80A165BC  38 A5 00 92 */	addi r5, r5, 0x92
/* 80A165C0  38 C0 00 03 */	li r6, 3
/* 80A165C4  4B 63 1B 28 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A165C8  28 03 00 00 */	cmplwi r3, 0
/* 80A165CC  41 82 00 08 */	beq lbl_80A165D4
/* 80A165D0  83 23 00 00 */	lwz r25, 0(r3)
lbl_80A165D4:
/* 80A165D4  7F 83 E3 78 */	mr r3, r28
/* 80A165D8  7E C4 B3 78 */	mr r4, r22
/* 80A165DC  3C A0 80 A2 */	lis r5, struct_80A1A49C+0x0@ha
/* 80A165E0  38 A5 A4 9C */	addi r5, r5, struct_80A1A49C+0x0@l
/* 80A165E4  38 A5 00 98 */	addi r5, r5, 0x98
/* 80A165E8  38 C0 00 03 */	li r6, 3
/* 80A165EC  4B 63 1B 00 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A165F0  28 03 00 00 */	cmplwi r3, 0
/* 80A165F4  41 82 00 08 */	beq lbl_80A165FC
/* 80A165F8  83 03 00 00 */	lwz r24, 0(r3)
lbl_80A165FC:
/* 80A165FC  7F 83 E3 78 */	mr r3, r28
/* 80A16600  7E C4 B3 78 */	mr r4, r22
/* 80A16604  3C A0 80 A2 */	lis r5, struct_80A1A49C+0x0@ha
/* 80A16608  38 A5 A4 9C */	addi r5, r5, struct_80A1A49C+0x0@l
/* 80A1660C  38 A5 00 9F */	addi r5, r5, 0x9f
/* 80A16610  38 C0 00 03 */	li r6, 3
/* 80A16614  4B 63 1A D8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A16618  28 03 00 00 */	cmplwi r3, 0
/* 80A1661C  41 82 00 08 */	beq lbl_80A16624
/* 80A16620  82 E3 00 00 */	lwz r23, 0(r3)
lbl_80A16624:
/* 80A16624  7F 83 E3 78 */	mr r3, r28
/* 80A16628  7E C4 B3 78 */	mr r4, r22
/* 80A1662C  4B 63 17 20 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A16630  2C 03 00 00 */	cmpwi r3, 0
/* 80A16634  41 82 00 88 */	beq lbl_80A166BC
/* 80A16638  2C 1A 00 07 */	cmpwi r26, 7
/* 80A1663C  41 82 00 58 */	beq lbl_80A16694
/* 80A16640  40 80 00 1C */	bge lbl_80A1665C
/* 80A16644  2C 1A 00 01 */	cmpwi r26, 1
/* 80A16648  41 82 00 38 */	beq lbl_80A16680
/* 80A1664C  40 80 00 70 */	bge lbl_80A166BC
/* 80A16650  2C 1A 00 00 */	cmpwi r26, 0
/* 80A16654  40 80 00 14 */	bge lbl_80A16668
/* 80A16658  48 00 00 64 */	b lbl_80A166BC
lbl_80A1665C:
/* 80A1665C  2C 1A 00 09 */	cmpwi r26, 9
/* 80A16660  40 80 00 5C */	bge lbl_80A166BC
/* 80A16664  48 00 00 4C */	b lbl_80A166B0
lbl_80A16668:
/* 80A16668  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80A1666C  4B 72 F0 9C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A16670  7C 64 1B 78 */	mr r4, r3
/* 80A16674  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80A16678  4B 62 CF E4 */	b setPt2__14dEvt_control_cFPv
/* 80A1667C  48 00 00 40 */	b lbl_80A166BC
lbl_80A16680:
/* 80A16680  7F E3 FB 78 */	mr r3, r31
/* 80A16684  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80A16688  38 A0 00 00 */	li r5, 0
/* 80A1668C  4B 73 55 64 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A16690  48 00 00 2C */	b lbl_80A166BC
lbl_80A16694:
/* 80A16694  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A16698  4B 72 F0 70 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A1669C  7C 64 1B 79 */	or. r4, r3, r3
/* 80A166A0  41 82 00 1C */	beq lbl_80A166BC
/* 80A166A4  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80A166A8  4B 62 CF B4 */	b setPt2__14dEvt_control_cFPv
/* 80A166AC  48 00 00 10 */	b lbl_80A166BC
lbl_80A166B0:
/* 80A166B0  38 00 00 00 */	li r0, 0
/* 80A166B4  98 1F 10 02 */	stb r0, 0x1002(r31)
/* 80A166B8  98 1F 10 03 */	stb r0, 0x1003(r31)
lbl_80A166BC:
/* 80A166BC  80 7D 01 20 */	lwz r3, 0x120(r29)
/* 80A166C0  80 1D 01 24 */	lwz r0, 0x124(r29)
/* 80A166C4  90 61 00 40 */	stw r3, 0x40(r1)
/* 80A166C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A166CC  80 1D 01 28 */	lwz r0, 0x128(r29)
/* 80A166D0  90 01 00 48 */	stw r0, 0x48(r1)
/* 80A166D4  2C 1A 00 01 */	cmpwi r26, 1
/* 80A166D8  41 82 00 E0 */	beq lbl_80A167B8
/* 80A166DC  40 80 00 10 */	bge lbl_80A166EC
/* 80A166E0  2C 1A 00 00 */	cmpwi r26, 0
/* 80A166E4  40 80 00 18 */	bge lbl_80A166FC
/* 80A166E8  48 00 05 D4 */	b lbl_80A16CBC
lbl_80A166EC:
/* 80A166EC  2C 1A 00 08 */	cmpwi r26, 8
/* 80A166F0  41 82 05 C8 */	beq lbl_80A16CB8
/* 80A166F4  40 80 05 C8 */	bge lbl_80A16CBC
/* 80A166F8  48 00 01 2C */	b lbl_80A16824
lbl_80A166FC:
/* 80A166FC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A16700  2C 00 00 00 */	cmpwi r0, 0
/* 80A16704  41 82 00 24 */	beq lbl_80A16728
/* 80A16708  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A1670C  4B 72 EF F0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A16710  38 00 00 00 */	li r0, 0
/* 80A16714  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A16718  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80A1671C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A16720  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A16724  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A16728:
/* 80A16728  38 00 00 00 */	li r0, 0
/* 80A1672C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A16730  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A16734  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A16738  40 82 00 70 */	bne lbl_80A167A8
/* 80A1673C  80 1F 0B 84 */	lwz r0, 0xb84(r31)
/* 80A16740  2C 00 00 00 */	cmpwi r0, 0
/* 80A16744  40 81 05 78 */	ble lbl_80A16CBC
/* 80A16748  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A1674C  2C 00 00 08 */	cmpwi r0, 8
/* 80A16750  41 82 00 24 */	beq lbl_80A16774
/* 80A16754  82 DF 0B 5C */	lwz r22, 0xb5c(r31)
/* 80A16758  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A1675C  4B 72 F1 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A16760  92 DF 0B 5C */	stw r22, 0xb5c(r31)
/* 80A16764  38 00 00 08 */	li r0, 8
/* 80A16768  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A1676C  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 80A16770  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A16774:
/* 80A16774  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A16778  2C 00 00 00 */	cmpwi r0, 0
/* 80A1677C  41 82 00 24 */	beq lbl_80A167A0
/* 80A16780  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80A16784  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A16788  4B 72 F1 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A1678C  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80A16790  38 00 00 00 */	li r0, 0
/* 80A16794  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A16798  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 80A1679C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A167A0:
/* 80A167A0  3B 60 00 01 */	li r27, 1
/* 80A167A4  48 00 05 18 */	b lbl_80A16CBC
lbl_80A167A8:
/* 80A167A8  2C 00 00 00 */	cmpwi r0, 0
/* 80A167AC  40 82 05 10 */	bne lbl_80A16CBC
/* 80A167B0  3B 60 00 01 */	li r27, 1
/* 80A167B4  48 00 05 08 */	b lbl_80A16CBC
lbl_80A167B8:
/* 80A167B8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A167BC  2C 00 00 01 */	cmpwi r0, 1
/* 80A167C0  41 82 00 28 */	beq lbl_80A167E8
/* 80A167C4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A167C8  4B 72 EF 34 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A167CC  38 00 00 00 */	li r0, 0
/* 80A167D0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A167D4  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80A167D8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A167DC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A167E0  38 00 00 01 */	li r0, 1
/* 80A167E4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A167E8:
/* 80A167E8  38 00 00 00 */	li r0, 0
/* 80A167EC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A167F0  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80A167F4  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A167F8  7C 04 00 00 */	cmpw r4, r0
/* 80A167FC  40 82 00 0C */	bne lbl_80A16808
/* 80A16800  3B 60 00 01 */	li r27, 1
/* 80A16804  48 00 04 B8 */	b lbl_80A16CBC
lbl_80A16808:
/* 80A16808  7F E3 FB 78 */	mr r3, r31
/* 80A1680C  38 A0 00 08 */	li r5, 8
/* 80A16810  38 C0 00 0E */	li r6, 0xe
/* 80A16814  38 E0 00 0F */	li r7, 0xf
/* 80A16818  39 00 00 00 */	li r8, 0
/* 80A1681C  4B 73 4E 2C */	b step__8daNpcT_cFsiiii
/* 80A16820  48 00 04 9C */	b lbl_80A16CBC
lbl_80A16824:
/* 80A16824  2C 1A 00 06 */	cmpwi r26, 6
/* 80A16828  41 82 03 F8 */	beq lbl_80A16C20
/* 80A1682C  40 80 00 10 */	bge lbl_80A1683C
/* 80A16830  2C 1A 00 03 */	cmpwi r26, 3
/* 80A16834  40 80 00 14 */	bge lbl_80A16848
/* 80A16838  48 00 03 E8 */	b lbl_80A16C20
lbl_80A1683C:
/* 80A1683C  2C 1A 00 08 */	cmpwi r26, 8
/* 80A16840  40 80 03 E0 */	bge lbl_80A16C20
/* 80A16844  48 00 01 F0 */	b lbl_80A16A34
lbl_80A16848:
/* 80A16848  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80A1684C  4B 72 EE BC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A16850  28 03 00 00 */	cmplwi r3, 0
/* 80A16854  41 82 04 04 */	beq lbl_80A16C58
/* 80A16858  C0 3D 00 C0 */	lfs f1, 0xc0(r29)
/* 80A1685C  D0 3F 0D 6C */	stfs f1, 0xd6c(r31)
/* 80A16860  D0 3F 0D 70 */	stfs f1, 0xd70(r31)
/* 80A16864  D0 3F 0D 74 */	stfs f1, 0xd74(r31)
/* 80A16868  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80A1686C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A16870  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A16874  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A16878  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80A1687C  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80A16880  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A16884  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A16888  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80A1688C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80A16890  38 61 00 28 */	addi r3, r1, 0x28
/* 80A16894  38 81 00 34 */	addi r4, r1, 0x34
/* 80A16898  4B 93 0B 04 */	b PSVECSquareDistance
/* 80A1689C  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80A168A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A168A4  40 81 00 58 */	ble lbl_80A168FC
/* 80A168A8  FC 00 08 34 */	frsqrte f0, f1
/* 80A168AC  C8 9D 01 00 */	lfd f4, 0x100(r29)
/* 80A168B0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A168B4  C8 7D 01 08 */	lfd f3, 0x108(r29)
/* 80A168B8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A168BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A168C0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A168C4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A168C8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A168CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A168D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A168D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A168D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A168DC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A168E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A168E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A168E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A168EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A168F0  FC 21 00 32 */	fmul f1, f1, f0
/* 80A168F4  FC 20 08 18 */	frsp f1, f1
/* 80A168F8  48 00 00 88 */	b lbl_80A16980
lbl_80A168FC:
/* 80A168FC  C8 1D 01 10 */	lfd f0, 0x110(r29)
/* 80A16900  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A16904  40 80 00 10 */	bge lbl_80A16914
/* 80A16908  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A1690C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A16910  48 00 00 70 */	b lbl_80A16980
lbl_80A16914:
/* 80A16914  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A16918  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A1691C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A16920  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A16924  7C 03 00 00 */	cmpw r3, r0
/* 80A16928  41 82 00 14 */	beq lbl_80A1693C
/* 80A1692C  40 80 00 40 */	bge lbl_80A1696C
/* 80A16930  2C 03 00 00 */	cmpwi r3, 0
/* 80A16934  41 82 00 20 */	beq lbl_80A16954
/* 80A16938  48 00 00 34 */	b lbl_80A1696C
lbl_80A1693C:
/* 80A1693C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A16940  41 82 00 0C */	beq lbl_80A1694C
/* 80A16944  38 00 00 01 */	li r0, 1
/* 80A16948  48 00 00 28 */	b lbl_80A16970
lbl_80A1694C:
/* 80A1694C  38 00 00 02 */	li r0, 2
/* 80A16950  48 00 00 20 */	b lbl_80A16970
lbl_80A16954:
/* 80A16954  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A16958  41 82 00 0C */	beq lbl_80A16964
/* 80A1695C  38 00 00 05 */	li r0, 5
/* 80A16960  48 00 00 10 */	b lbl_80A16970
lbl_80A16964:
/* 80A16964  38 00 00 03 */	li r0, 3
/* 80A16968  48 00 00 08 */	b lbl_80A16970
lbl_80A1696C:
/* 80A1696C  38 00 00 04 */	li r0, 4
lbl_80A16970:
/* 80A16970  2C 00 00 01 */	cmpwi r0, 1
/* 80A16974  40 82 00 0C */	bne lbl_80A16980
/* 80A16978  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A1697C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A16980:
/* 80A16980  D0 3F 0D 74 */	stfs f1, 0xd74(r31)
/* 80A16984  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A16988  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A1698C  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80A16990  38 04 40 00 */	addi r0, r4, 0x4000
/* 80A16994  7C 04 07 34 */	extsh r4, r0
/* 80A16998  4B 5F 5A 44 */	b mDoMtx_YrotS__FPA4_fs
/* 80A1699C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A169A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A169A4  38 9F 0D 6C */	addi r4, r31, 0xd6c
/* 80A169A8  7C 85 23 78 */	mr r5, r4
/* 80A169AC  4B 93 03 C0 */	b PSMTXMultVec
/* 80A169B0  38 7F 0D 6C */	addi r3, r31, 0xd6c
/* 80A169B4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A169B8  7C 65 1B 78 */	mr r5, r3
/* 80A169BC  4B 93 06 D4 */	b PSVECAdd
/* 80A169C0  80 7F 0B C8 */	lwz r3, 0xbc8(r31)
/* 80A169C4  38 1F 0D 6C */	addi r0, r31, 0xd6c
/* 80A169C8  7C 63 00 50 */	subf r3, r3, r0
/* 80A169CC  30 03 FF FF */	addic r0, r3, -1
/* 80A169D0  7C 00 19 10 */	subfe r0, r0, r3
/* 80A169D4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A169D8  40 82 00 10 */	bne lbl_80A169E8
/* 80A169DC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A169E0  2C 00 00 03 */	cmpwi r0, 3
/* 80A169E4  41 82 00 30 */	beq lbl_80A16A14
lbl_80A169E8:
/* 80A169E8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A169EC  4B 72 ED 10 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A169F0  38 00 00 00 */	li r0, 0
/* 80A169F4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A169F8  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80A169FC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A16A00  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A16A04  38 00 00 03 */	li r0, 3
/* 80A16A08  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 80A16A0C  38 00 00 01 */	li r0, 1
/* 80A16A10  48 00 00 08 */	b lbl_80A16A18
lbl_80A16A14:
/* 80A16A14  38 00 00 00 */	li r0, 0
lbl_80A16A18:
/* 80A16A18  2C 00 00 00 */	cmpwi r0, 0
/* 80A16A1C  41 82 00 0C */	beq lbl_80A16A28
/* 80A16A20  38 1F 0D 6C */	addi r0, r31, 0xd6c
/* 80A16A24  90 1F 0B C8 */	stw r0, 0xbc8(r31)
lbl_80A16A28:
/* 80A16A28  38 00 00 00 */	li r0, 0
/* 80A16A2C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A16A30  48 00 02 28 */	b lbl_80A16C58
lbl_80A16A34:
/* 80A16A34  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A16A38  4B 72 EC D0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A16A3C  28 03 00 00 */	cmplwi r3, 0
/* 80A16A40  41 82 02 18 */	beq lbl_80A16C58
/* 80A16A44  C0 3D 00 C0 */	lfs f1, 0xc0(r29)
/* 80A16A48  D0 3F 0D 6C */	stfs f1, 0xd6c(r31)
/* 80A16A4C  D0 3F 0D 70 */	stfs f1, 0xd70(r31)
/* 80A16A50  D0 3F 0D 74 */	stfs f1, 0xd74(r31)
/* 80A16A54  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80A16A58  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A16A5C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A16A60  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A16A64  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80A16A68  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80A16A6C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A16A70  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A16A74  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80A16A78  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A16A7C  38 61 00 10 */	addi r3, r1, 0x10
/* 80A16A80  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A16A84  4B 93 09 18 */	b PSVECSquareDistance
/* 80A16A88  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80A16A8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A16A90  40 81 00 58 */	ble lbl_80A16AE8
/* 80A16A94  FC 00 08 34 */	frsqrte f0, f1
/* 80A16A98  C8 9D 01 00 */	lfd f4, 0x100(r29)
/* 80A16A9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A16AA0  C8 7D 01 08 */	lfd f3, 0x108(r29)
/* 80A16AA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A16AA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A16AAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A16AB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A16AB4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A16AB8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A16ABC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A16AC0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A16AC4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A16AC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A16ACC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A16AD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A16AD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A16AD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A16ADC  FC 21 00 32 */	fmul f1, f1, f0
/* 80A16AE0  FC 20 08 18 */	frsp f1, f1
/* 80A16AE4  48 00 00 88 */	b lbl_80A16B6C
lbl_80A16AE8:
/* 80A16AE8  C8 1D 01 10 */	lfd f0, 0x110(r29)
/* 80A16AEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A16AF0  40 80 00 10 */	bge lbl_80A16B00
/* 80A16AF4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A16AF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A16AFC  48 00 00 70 */	b lbl_80A16B6C
lbl_80A16B00:
/* 80A16B00  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A16B04  80 81 00 08 */	lwz r4, 8(r1)
/* 80A16B08  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A16B0C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A16B10  7C 03 00 00 */	cmpw r3, r0
/* 80A16B14  41 82 00 14 */	beq lbl_80A16B28
/* 80A16B18  40 80 00 40 */	bge lbl_80A16B58
/* 80A16B1C  2C 03 00 00 */	cmpwi r3, 0
/* 80A16B20  41 82 00 20 */	beq lbl_80A16B40
/* 80A16B24  48 00 00 34 */	b lbl_80A16B58
lbl_80A16B28:
/* 80A16B28  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A16B2C  41 82 00 0C */	beq lbl_80A16B38
/* 80A16B30  38 00 00 01 */	li r0, 1
/* 80A16B34  48 00 00 28 */	b lbl_80A16B5C
lbl_80A16B38:
/* 80A16B38  38 00 00 02 */	li r0, 2
/* 80A16B3C  48 00 00 20 */	b lbl_80A16B5C
lbl_80A16B40:
/* 80A16B40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A16B44  41 82 00 0C */	beq lbl_80A16B50
/* 80A16B48  38 00 00 05 */	li r0, 5
/* 80A16B4C  48 00 00 10 */	b lbl_80A16B5C
lbl_80A16B50:
/* 80A16B50  38 00 00 03 */	li r0, 3
/* 80A16B54  48 00 00 08 */	b lbl_80A16B5C
lbl_80A16B58:
/* 80A16B58  38 00 00 04 */	li r0, 4
lbl_80A16B5C:
/* 80A16B5C  2C 00 00 01 */	cmpwi r0, 1
/* 80A16B60  40 82 00 0C */	bne lbl_80A16B6C
/* 80A16B64  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A16B68  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A16B6C:
/* 80A16B6C  D0 3F 0D 74 */	stfs f1, 0xd74(r31)
/* 80A16B70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A16B74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A16B78  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80A16B7C  38 04 C0 00 */	addi r0, r4, -16384
/* 80A16B80  7C 04 07 34 */	extsh r4, r0
/* 80A16B84  4B 5F 58 58 */	b mDoMtx_YrotS__FPA4_fs
/* 80A16B88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A16B8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A16B90  38 9F 0D 6C */	addi r4, r31, 0xd6c
/* 80A16B94  7C 85 23 78 */	mr r5, r4
/* 80A16B98  4B 93 01 D4 */	b PSMTXMultVec
/* 80A16B9C  38 7F 0D 6C */	addi r3, r31, 0xd6c
/* 80A16BA0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A16BA4  7C 65 1B 78 */	mr r5, r3
/* 80A16BA8  4B 93 04 E8 */	b PSVECAdd
/* 80A16BAC  80 7F 0B C8 */	lwz r3, 0xbc8(r31)
/* 80A16BB0  38 1F 0D 6C */	addi r0, r31, 0xd6c
/* 80A16BB4  7C 63 00 50 */	subf r3, r3, r0
/* 80A16BB8  30 03 FF FF */	addic r0, r3, -1
/* 80A16BBC  7C 00 19 10 */	subfe r0, r0, r3
/* 80A16BC0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A16BC4  40 82 00 10 */	bne lbl_80A16BD4
/* 80A16BC8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A16BCC  2C 00 00 03 */	cmpwi r0, 3
/* 80A16BD0  41 82 00 30 */	beq lbl_80A16C00
lbl_80A16BD4:
/* 80A16BD4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A16BD8  4B 72 EB 24 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A16BDC  38 00 00 00 */	li r0, 0
/* 80A16BE0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A16BE4  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80A16BE8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A16BEC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A16BF0  38 00 00 03 */	li r0, 3
/* 80A16BF4  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 80A16BF8  38 00 00 01 */	li r0, 1
/* 80A16BFC  48 00 00 08 */	b lbl_80A16C04
lbl_80A16C00:
/* 80A16C00  38 00 00 00 */	li r0, 0
lbl_80A16C04:
/* 80A16C04  2C 00 00 00 */	cmpwi r0, 0
/* 80A16C08  41 82 00 0C */	beq lbl_80A16C14
/* 80A16C0C  38 1F 0D 6C */	addi r0, r31, 0xd6c
/* 80A16C10  90 1F 0B C8 */	stw r0, 0xbc8(r31)
lbl_80A16C14:
/* 80A16C14  38 00 00 00 */	li r0, 0
/* 80A16C18  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A16C1C  48 00 00 3C */	b lbl_80A16C58
lbl_80A16C20:
/* 80A16C20  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A16C24  2C 00 00 01 */	cmpwi r0, 1
/* 80A16C28  41 82 00 28 */	beq lbl_80A16C50
/* 80A16C2C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A16C30  4B 72 EA CC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A16C34  38 00 00 00 */	li r0, 0
/* 80A16C38  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A16C3C  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80A16C40  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A16C44  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A16C48  38 00 00 01 */	li r0, 1
/* 80A16C4C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A16C50:
/* 80A16C50  38 00 00 00 */	li r0, 0
/* 80A16C54  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A16C58:
/* 80A16C58  93 21 00 40 */	stw r25, 0x40(r1)
/* 80A16C5C  93 01 00 44 */	stw r24, 0x44(r1)
/* 80A16C60  7F E3 FB 78 */	mr r3, r31
/* 80A16C64  38 81 00 40 */	addi r4, r1, 0x40
/* 80A16C68  7E E5 BB 78 */	mr r5, r23
/* 80A16C6C  38 C0 00 00 */	li r6, 0
/* 80A16C70  38 E0 00 00 */	li r7, 0
/* 80A16C74  4B 73 50 04 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A16C78  2C 03 00 00 */	cmpwi r3, 0
/* 80A16C7C  41 82 00 2C */	beq lbl_80A16CA8
/* 80A16C80  2C 19 00 00 */	cmpwi r25, 0
/* 80A16C84  40 82 00 20 */	bne lbl_80A16CA4
/* 80A16C88  2C 18 00 00 */	cmpwi r24, 0
/* 80A16C8C  40 82 00 18 */	bne lbl_80A16CA4
/* 80A16C90  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80A16C94  28 00 00 01 */	cmplwi r0, 1
/* 80A16C98  40 82 00 10 */	bne lbl_80A16CA8
/* 80A16C9C  3B 60 00 01 */	li r27, 1
/* 80A16CA0  48 00 00 08 */	b lbl_80A16CA8
lbl_80A16CA4:
/* 80A16CA4  3B 60 00 01 */	li r27, 1
lbl_80A16CA8:
/* 80A16CA8  2C 1A 00 04 */	cmpwi r26, 4
/* 80A16CAC  40 82 00 10 */	bne lbl_80A16CBC
/* 80A16CB0  3B 60 00 01 */	li r27, 1
/* 80A16CB4  48 00 00 08 */	b lbl_80A16CBC
lbl_80A16CB8:
/* 80A16CB8  3B 60 00 01 */	li r27, 1
lbl_80A16CBC:
/* 80A16CBC  7F 63 DB 78 */	mr r3, r27
/* 80A16CC0  39 61 00 80 */	addi r11, r1, 0x80
/* 80A16CC4  4B 94 B5 48 */	b _restgpr_22
/* 80A16CC8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A16CCC  7C 08 03 A6 */	mtlr r0
/* 80A16CD0  38 21 00 80 */	addi r1, r1, 0x80
/* 80A16CD4  4E 80 00 20 */	blr 
