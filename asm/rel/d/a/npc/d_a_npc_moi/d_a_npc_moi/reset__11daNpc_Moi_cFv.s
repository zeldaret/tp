lbl_80A74D8C:
/* 80A74D8C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80A74D90  7C 08 02 A6 */	mflr r0
/* 80A74D94  90 01 00 94 */	stw r0, 0x94(r1)
/* 80A74D98  39 61 00 90 */	addi r11, r1, 0x90
/* 80A74D9C  4B 8E D4 3C */	b _savegpr_28
/* 80A74DA0  7C 7D 1B 78 */	mr r29, r3
/* 80A74DA4  3C 60 80 A8 */	lis r3, m__17daNpc_Moi_Param_c@ha
/* 80A74DA8  3B E3 AE F0 */	addi r31, r3, m__17daNpc_Moi_Param_c@l
/* 80A74DAC  38 7D 16 10 */	addi r3, r29, 0x1610
/* 80A74DB0  38 1D 16 70 */	addi r0, r29, 0x1670
/* 80A74DB4  7F C3 00 50 */	subf r30, r3, r0
/* 80A74DB8  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A74DBC  28 03 00 00 */	cmplwi r3, 0
/* 80A74DC0  41 82 00 08 */	beq lbl_80A74DC8
/* 80A74DC4  4B 6D 09 A0 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80A74DC8:
/* 80A74DC8  38 7D 0D 24 */	addi r3, r29, 0xd24
/* 80A74DCC  38 80 00 00 */	li r4, 0
/* 80A74DD0  38 1D 0E 38 */	addi r0, r29, 0xe38
/* 80A74DD4  7C A3 00 50 */	subf r5, r3, r0
/* 80A74DD8  4B 58 E6 80 */	b memset
/* 80A74DDC  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A74DE0  4B 6D 0A B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A74DE4  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A74DE8  4B 6D 0A B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A74DEC  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 80A74DF0  4B 6D 08 E4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A74DF4  38 7D 0B A0 */	addi r3, r29, 0xba0
/* 80A74DF8  4B 6D 08 DC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A74DFC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A74E00  4B 6D 1E 98 */	b initialize__15daNpcT_JntAnm_cFv
/* 80A74E04  38 60 00 00 */	li r3, 0
/* 80A74E08  38 80 00 00 */	li r4, 0
/* 80A74E0C  7C 87 23 78 */	mr r7, r4
/* 80A74E10  7C 86 23 78 */	mr r6, r4
/* 80A74E14  7C 85 23 78 */	mr r5, r4
/* 80A74E18  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A74E1C  38 00 00 02 */	li r0, 2
/* 80A74E20  7C 09 03 A6 */	mtctr r0
lbl_80A74E24:
/* 80A74E24  7D 1D 22 14 */	add r8, r29, r4
/* 80A74E28  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 80A74E2C  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80A74E30  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80A74E34  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A74E38  7C 1D 05 2E */	stfsx f0, r29, r0
/* 80A74E3C  38 63 00 04 */	addi r3, r3, 4
/* 80A74E40  38 84 00 06 */	addi r4, r4, 6
/* 80A74E44  42 00 FF E0 */	bdnz lbl_80A74E24
/* 80A74E48  38 00 00 00 */	li r0, 0
/* 80A74E4C  B0 1D 0D 1C */	sth r0, 0xd1c(r29)
/* 80A74E50  B0 1D 0D 1E */	sth r0, 0xd1e(r29)
/* 80A74E54  98 1D 0D 20 */	stb r0, 0xd20(r29)
/* 80A74E58  38 00 FF FF */	li r0, -1
/* 80A74E5C  90 1D 0D 90 */	stw r0, 0xd90(r29)
/* 80A74E60  38 00 00 01 */	li r0, 1
/* 80A74E64  98 1D 0E 26 */	stb r0, 0xe26(r29)
/* 80A74E68  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80A74E6C  4B 7F 2A E8 */	b cM_rndF__Ff
/* 80A74E70  FC 00 08 1E */	fctiwz f0, f1
/* 80A74E74  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80A74E78  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A74E7C  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80A74E80  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A74E84  D0 1D 0D E0 */	stfs f0, 0xde0(r29)
/* 80A74E88  D0 1D 0D E4 */	stfs f0, 0xde4(r29)
/* 80A74E8C  3B 80 00 00 */	li r28, 0
/* 80A74E90  3B E0 00 00 */	li r31, 0
lbl_80A74E94:
/* 80A74E94  38 7F 15 C8 */	addi r3, r31, 0x15c8
/* 80A74E98  7C 7D 1A 14 */	add r3, r29, r3
/* 80A74E9C  4B 6D 08 38 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A74EA0  3B 9C 00 01 */	addi r28, r28, 1
/* 80A74EA4  2C 1C 00 04 */	cmpwi r28, 4
/* 80A74EA8  3B FF 00 08 */	addi r31, r31, 8
/* 80A74EAC  41 80 FF E8 */	blt lbl_80A74E94
/* 80A74EB0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80A74EB4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80A74EB8  28 00 00 FF */	cmplwi r0, 0xff
/* 80A74EBC  41 82 00 28 */	beq lbl_80A74EE4
/* 80A74EC0  38 7D 15 E8 */	addi r3, r29, 0x15e8
/* 80A74EC4  4B 6D 0D 7C */	b initialize__13daNpcT_Path_cFv
/* 80A74EC8  38 7D 15 E8 */	addi r3, r29, 0x15e8
/* 80A74ECC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80A74ED0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80A74ED4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80A74ED8  7C 05 07 74 */	extsb r5, r0
/* 80A74EDC  38 C0 00 00 */	li r6, 0
/* 80A74EE0  4B 6D 0D 94 */	b setPathInfo__13daNpcT_Path_cFUcScUc
lbl_80A74EE4:
/* 80A74EE4  38 7D 16 10 */	addi r3, r29, 0x1610
/* 80A74EE8  38 80 00 00 */	li r4, 0
/* 80A74EEC  7F C5 F3 78 */	mr r5, r30
/* 80A74EF0  4B 58 E5 68 */	b memset
/* 80A74EF4  38 00 00 00 */	li r0, 0
/* 80A74EF8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80A74EFC  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80A74F00  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80A74F04  A8 1D 04 B6 */	lha r0, 0x4b6(r29)
/* 80A74F08  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80A74F0C  88 1D 15 C4 */	lbz r0, 0x15c4(r29)
/* 80A74F10  2C 00 00 02 */	cmpwi r0, 2
/* 80A74F14  41 82 00 EC */	beq lbl_80A75000
/* 80A74F18  40 80 00 14 */	bge lbl_80A74F2C
/* 80A74F1C  2C 00 00 00 */	cmpwi r0, 0
/* 80A74F20  41 82 01 E0 */	beq lbl_80A75100
/* 80A74F24  40 80 00 1C */	bge lbl_80A74F40
/* 80A74F28  48 00 01 D8 */	b lbl_80A75100
lbl_80A74F2C:
/* 80A74F2C  2C 00 00 06 */	cmpwi r0, 6
/* 80A74F30  40 80 01 D0 */	bge lbl_80A75100
/* 80A74F34  2C 00 00 04 */	cmpwi r0, 4
/* 80A74F38  40 80 01 C8 */	bge lbl_80A75100
/* 80A74F3C  48 00 01 BC */	b lbl_80A750F8
lbl_80A74F40:
/* 80A74F40  80 7D 15 E8 */	lwz r3, 0x15e8(r29)
/* 80A74F44  28 03 00 00 */	cmplwi r3, 0
/* 80A74F48  41 82 00 88 */	beq lbl_80A74FD0
/* 80A74F4C  80 83 00 08 */	lwz r4, 8(r3)
/* 80A74F50  80 64 00 04 */	lwz r3, 4(r4)
/* 80A74F54  80 04 00 08 */	lwz r0, 8(r4)
/* 80A74F58  90 61 00 54 */	stw r3, 0x54(r1)
/* 80A74F5C  90 01 00 58 */	stw r0, 0x58(r1)
/* 80A74F60  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A74F64  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80A74F68  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80A74F6C  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 80A74F70  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80A74F74  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 80A74F78  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80A74F7C  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
/* 80A74F80  80 7D 15 E8 */	lwz r3, 0x15e8(r29)
/* 80A74F84  80 83 00 08 */	lwz r4, 8(r3)
/* 80A74F88  80 64 00 14 */	lwz r3, 0x14(r4)
/* 80A74F8C  80 04 00 18 */	lwz r0, 0x18(r4)
/* 80A74F90  90 61 00 48 */	stw r3, 0x48(r1)
/* 80A74F94  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80A74F98  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80A74F9C  90 01 00 50 */	stw r0, 0x50(r1)
/* 80A74FA0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80A74FA4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A74FA8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80A74FAC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A74FB0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80A74FB4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A74FB8  38 7D 04 A8 */	addi r3, r29, 0x4a8
/* 80A74FBC  38 81 00 60 */	addi r4, r1, 0x60
/* 80A74FC0  4B 7F BC 44 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A74FC4  B0 7D 04 B6 */	sth r3, 0x4b6(r29)
/* 80A74FC8  A8 1D 04 B6 */	lha r0, 0x4b6(r29)
/* 80A74FCC  B0 01 00 12 */	sth r0, 0x12(r1)
lbl_80A74FD0:
/* 80A74FD0  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80A74FD4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A74FD8  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80A74FDC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A74FE0  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80A74FE4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A74FE8  7F A3 EB 78 */	mr r3, r29
/* 80A74FEC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80A74FF0  4B 6D 59 18 */	b setPos__8daNpcT_cF4cXyz
/* 80A74FF4  38 00 00 01 */	li r0, 1
/* 80A74FF8  98 1D 16 6B */	stb r0, 0x166b(r29)
/* 80A74FFC  48 00 01 04 */	b lbl_80A75100
lbl_80A75000:
/* 80A75000  38 60 00 CD */	li r3, 0xcd
/* 80A75004  4B 6D 7A A8 */	b daNpcT_chkEvtBit__FUl
/* 80A75008  2C 03 00 00 */	cmpwi r3, 0
/* 80A7500C  41 82 00 DC */	beq lbl_80A750E8
/* 80A75010  3C 60 80 43 */	lis r3, g_Counter@ha
/* 80A75014  80 83 0C D8 */	lwz r4, g_Counter@l(r3)
/* 80A75018  80 BD 15 E8 */	lwz r5, 0x15e8(r29)
/* 80A7501C  A0 65 00 00 */	lhz r3, 0(r5)
/* 80A75020  7C 04 1B 96 */	divwu r0, r4, r3
/* 80A75024  7C 00 19 D6 */	mullw r0, r0, r3
/* 80A75028  7F C0 20 50 */	subf r30, r0, r4
/* 80A7502C  80 65 00 08 */	lwz r3, 8(r5)
/* 80A75030  57 C0 20 36 */	slwi r0, r30, 4
/* 80A75034  7C 83 02 14 */	add r4, r3, r0
/* 80A75038  80 64 00 04 */	lwz r3, 4(r4)
/* 80A7503C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A75040  90 61 00 30 */	stw r3, 0x30(r1)
/* 80A75044  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A75048  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A7504C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A75050  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80A75054  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80A75058  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80A7505C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80A75060  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80A75064  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A75068  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A7506C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80A75070  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A75074  7F A3 EB 78 */	mr r3, r29
/* 80A75078  38 81 00 24 */	addi r4, r1, 0x24
/* 80A7507C  4B 6D 58 8C */	b setPos__8daNpcT_cF4cXyz
/* 80A75080  B3 DD 16 04 */	sth r30, 0x1604(r29)
/* 80A75084  38 7D 15 E8 */	addi r3, r29, 0x15e8
/* 80A75088  80 9D 15 E8 */	lwz r4, 0x15e8(r29)
/* 80A7508C  A0 84 00 00 */	lhz r4, 0(r4)
/* 80A75090  4B 6D 0D 40 */	b setNextIdx__13daNpcT_Path_cFi
/* 80A75094  A0 1D 16 04 */	lhz r0, 0x1604(r29)
/* 80A75098  80 7D 15 E8 */	lwz r3, 0x15e8(r29)
/* 80A7509C  80 63 00 08 */	lwz r3, 8(r3)
/* 80A750A0  54 00 20 36 */	slwi r0, r0, 4
/* 80A750A4  7C 83 02 14 */	add r4, r3, r0
/* 80A750A8  80 64 00 04 */	lwz r3, 4(r4)
/* 80A750AC  80 04 00 08 */	lwz r0, 8(r4)
/* 80A750B0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A750B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A750B8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A750BC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A750C0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A750C4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A750C8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A750CC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A750D0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A750D4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A750D8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80A750DC  38 81 00 60 */	addi r4, r1, 0x60
/* 80A750E0  4B 7F BB 24 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A750E4  B0 61 00 12 */	sth r3, 0x12(r1)
lbl_80A750E8:
/* 80A750E8  38 00 00 01 */	li r0, 1
/* 80A750EC  98 1D 16 66 */	stb r0, 0x1666(r29)
/* 80A750F0  98 1D 16 68 */	stb r0, 0x1668(r29)
/* 80A750F4  48 00 00 0C */	b lbl_80A75100
lbl_80A750F8:
/* 80A750F8  38 00 00 01 */	li r0, 1
/* 80A750FC  98 1D 16 6F */	stb r0, 0x166f(r29)
lbl_80A75100:
/* 80A75100  38 00 FF FF */	li r0, -1
/* 80A75104  90 1D 15 C0 */	stw r0, 0x15c0(r29)
/* 80A75108  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A7510C  90 01 00 08 */	stw r0, 8(r1)
/* 80A75110  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80A75114  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80A75118  7F A3 EB 78 */	mr r3, r29
/* 80A7511C  38 81 00 08 */	addi r4, r1, 8
/* 80A75120  4B 6D 58 7C */	b setAngle__8daNpcT_cF5csXyz
/* 80A75124  39 61 00 90 */	addi r11, r1, 0x90
/* 80A75128  4B 8E D0 FC */	b _restgpr_28
/* 80A7512C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80A75130  7C 08 03 A6 */	mtlr r0
/* 80A75134  38 21 00 90 */	addi r1, r1, 0x90
/* 80A75138  4E 80 00 20 */	blr 
