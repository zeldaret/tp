lbl_80A03F8C:
/* 80A03F8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A03F90  7C 08 02 A6 */	mflr r0
/* 80A03F94  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A03F98  39 61 00 40 */	addi r11, r1, 0x40
/* 80A03F9C  4B 95 E2 40 */	b _savegpr_29
/* 80A03FA0  7C 7E 1B 78 */	mr r30, r3
/* 80A03FA4  3C 60 80 A0 */	lis r3, m__17daNpc_Hoz_Param_c@ha
/* 80A03FA8  3B E3 66 50 */	addi r31, r3, m__17daNpc_Hoz_Param_c@l
/* 80A03FAC  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80A03FB0  2C 00 00 02 */	cmpwi r0, 2
/* 80A03FB4  41 82 01 24 */	beq lbl_80A040D8
/* 80A03FB8  40 80 04 2C */	bge lbl_80A043E4
/* 80A03FBC  2C 00 00 00 */	cmpwi r0, 0
/* 80A03FC0  40 80 00 0C */	bge lbl_80A03FCC
/* 80A03FC4  48 00 04 20 */	b lbl_80A043E4
/* 80A03FC8  48 00 04 1C */	b lbl_80A043E4
lbl_80A03FCC:
/* 80A03FCC  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A03FD0  2C 00 00 22 */	cmpwi r0, 0x22
/* 80A03FD4  41 82 00 24 */	beq lbl_80A03FF8
/* 80A03FD8  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A03FDC  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A03FE0  4B 74 18 B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A03FE4  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A03FE8  38 00 00 22 */	li r0, 0x22
/* 80A03FEC  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A03FF0  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80A03FF4  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A03FF8:
/* 80A03FF8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A03FFC  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A04000  41 82 00 24 */	beq lbl_80A04024
/* 80A04004  40 80 00 14 */	bge lbl_80A04018
/* 80A04008  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A0400C  41 82 00 18 */	beq lbl_80A04024
/* 80A04010  40 80 00 40 */	bge lbl_80A04050
/* 80A04014  48 00 00 94 */	b lbl_80A040A8
lbl_80A04018:
/* 80A04018  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80A0401C  41 82 00 60 */	beq lbl_80A0407C
/* 80A04020  48 00 00 88 */	b lbl_80A040A8
lbl_80A04024:
/* 80A04024  2C 00 00 21 */	cmpwi r0, 0x21
/* 80A04028  41 82 00 A8 */	beq lbl_80A040D0
/* 80A0402C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A04030  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A04034  4B 74 18 64 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A04038  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A0403C  38 00 00 21 */	li r0, 0x21
/* 80A04040  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A04044  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80A04048  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A0404C  48 00 00 84 */	b lbl_80A040D0
lbl_80A04050:
/* 80A04050  2C 00 00 22 */	cmpwi r0, 0x22
/* 80A04054  41 82 00 7C */	beq lbl_80A040D0
/* 80A04058  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A0405C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A04060  4B 74 18 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A04064  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A04068  38 00 00 22 */	li r0, 0x22
/* 80A0406C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A04070  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80A04074  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A04078  48 00 00 58 */	b lbl_80A040D0
lbl_80A0407C:
/* 80A0407C  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80A04080  41 82 00 50 */	beq lbl_80A040D0
/* 80A04084  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A04088  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A0408C  4B 74 18 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A04090  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A04094  38 00 00 1F */	li r0, 0x1f
/* 80A04098  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A0409C  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80A040A0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A040A4  48 00 00 2C */	b lbl_80A040D0
lbl_80A040A8:
/* 80A040A8  2C 00 00 00 */	cmpwi r0, 0
/* 80A040AC  41 82 00 24 */	beq lbl_80A040D0
/* 80A040B0  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A040B4  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A040B8  4B 74 17 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A040BC  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A040C0  38 00 00 00 */	li r0, 0
/* 80A040C4  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A040C8  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80A040CC  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A040D0:
/* 80A040D0  38 00 00 02 */	li r0, 2
/* 80A040D4  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A040D8:
/* 80A040D8  80 1E 0F 84 */	lwz r0, 0xf84(r30)
/* 80A040DC  28 00 00 00 */	cmplwi r0, 0
/* 80A040E0  40 82 00 30 */	bne lbl_80A04110
/* 80A040E4  3C 60 80 A0 */	lis r3, s_sub__FPvPv@ha
/* 80A040E8  38 63 1E BC */	addi r3, r3, s_sub__FPvPv@l
/* 80A040EC  7F C4 F3 78 */	mr r4, r30
/* 80A040F0  4B 61 D2 48 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A040F4  90 7E 0F 84 */	stw r3, 0xf84(r30)
/* 80A040F8  38 00 00 00 */	li r0, 0
/* 80A040FC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80A04100  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80A04104  98 03 00 BC */	stb r0, 0xbc(r3)
/* 80A04108  38 80 00 00 */	li r4, 0
/* 80A0410C  4B 81 A1 5C */	b setMiniGameCount__13dMeter2Info_cFSc
lbl_80A04110:
/* 80A04110  38 7E 0F A0 */	addi r3, r30, 0xfa0
/* 80A04114  4B 74 15 F4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A04118  28 03 00 00 */	cmplwi r3, 0
/* 80A0411C  40 82 00 48 */	bne lbl_80A04164
/* 80A04120  3C 60 80 A0 */	lis r3, s_subCanoe__FPvPv@ha
/* 80A04124  38 63 1F 08 */	addi r3, r3, s_subCanoe__FPvPv@l
/* 80A04128  7F C4 F3 78 */	mr r4, r30
/* 80A0412C  4B 61 D2 0C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A04130  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A04134  41 82 00 30 */	beq lbl_80A04164
/* 80A04138  38 7E 0F A0 */	addi r3, r30, 0xfa0
/* 80A0413C  7F A4 EB 78 */	mr r4, r29
/* 80A04140  4B 74 15 A0 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A04144  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A04148  D0 1E 0F 90 */	stfs f0, 0xf90(r30)
/* 80A0414C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A04150  D0 1E 0F 94 */	stfs f0, 0xf94(r30)
/* 80A04154  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A04158  D0 1E 0F 98 */	stfs f0, 0xf98(r30)
/* 80A0415C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A04160  B0 1E 0F 9C */	sth r0, 0xf9c(r30)
lbl_80A04164:
/* 80A04164  88 1E 0F 8A */	lbz r0, 0xf8a(r30)
/* 80A04168  28 00 00 00 */	cmplwi r0, 0
/* 80A0416C  40 82 01 40 */	bne lbl_80A042AC
/* 80A04170  38 61 00 18 */	addi r3, r1, 0x18
/* 80A04174  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A04178  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A0417C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A04180  80 A5 5D AC */	lwz r5, 0x5dac(r5)
/* 80A04184  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80A04188  4B 86 29 AC */	b __mi__4cXyzCFRC3Vec
/* 80A0418C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A04190  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A04194  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A04198  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A0419C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A041A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A041A4  38 61 00 0C */	addi r3, r1, 0xc
/* 80A041A8  4B 94 2F 90 */	b PSVECSquareMag
/* 80A041AC  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A041B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A041B4  40 81 00 58 */	ble lbl_80A0420C
/* 80A041B8  FC 00 08 34 */	frsqrte f0, f1
/* 80A041BC  C8 9F 00 E8 */	lfd f4, 0xe8(r31)
/* 80A041C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A041C4  C8 7F 00 F0 */	lfd f3, 0xf0(r31)
/* 80A041C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A041CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A041D0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A041D4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A041D8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A041DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A041E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A041E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A041E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A041EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A041F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A041F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A041F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A041FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A04200  FC 21 00 32 */	fmul f1, f1, f0
/* 80A04204  FC 20 08 18 */	frsp f1, f1
/* 80A04208  48 00 00 88 */	b lbl_80A04290
lbl_80A0420C:
/* 80A0420C  C8 1F 00 F8 */	lfd f0, 0xf8(r31)
/* 80A04210  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A04214  40 80 00 10 */	bge lbl_80A04224
/* 80A04218  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A0421C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A04220  48 00 00 70 */	b lbl_80A04290
lbl_80A04224:
/* 80A04224  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A04228  80 81 00 08 */	lwz r4, 8(r1)
/* 80A0422C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A04230  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A04234  7C 03 00 00 */	cmpw r3, r0
/* 80A04238  41 82 00 14 */	beq lbl_80A0424C
/* 80A0423C  40 80 00 40 */	bge lbl_80A0427C
/* 80A04240  2C 03 00 00 */	cmpwi r3, 0
/* 80A04244  41 82 00 20 */	beq lbl_80A04264
/* 80A04248  48 00 00 34 */	b lbl_80A0427C
lbl_80A0424C:
/* 80A0424C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A04250  41 82 00 0C */	beq lbl_80A0425C
/* 80A04254  38 00 00 01 */	li r0, 1
/* 80A04258  48 00 00 28 */	b lbl_80A04280
lbl_80A0425C:
/* 80A0425C  38 00 00 02 */	li r0, 2
/* 80A04260  48 00 00 20 */	b lbl_80A04280
lbl_80A04264:
/* 80A04264  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A04268  41 82 00 0C */	beq lbl_80A04274
/* 80A0426C  38 00 00 05 */	li r0, 5
/* 80A04270  48 00 00 10 */	b lbl_80A04280
lbl_80A04274:
/* 80A04274  38 00 00 03 */	li r0, 3
/* 80A04278  48 00 00 08 */	b lbl_80A04280
lbl_80A0427C:
/* 80A0427C  38 00 00 04 */	li r0, 4
lbl_80A04280:
/* 80A04280  2C 00 00 01 */	cmpwi r0, 1
/* 80A04284  40 82 00 0C */	bne lbl_80A04290
/* 80A04288  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A0428C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A04290:
/* 80A04290  38 7F 00 00 */	addi r3, r31, 0
/* 80A04294  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80A04298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0429C  4C 40 13 82 */	cror 2, 0, 2
/* 80A042A0  40 82 00 0C */	bne lbl_80A042AC
/* 80A042A4  38 00 00 01 */	li r0, 1
/* 80A042A8  98 1E 0E 32 */	stb r0, 0xe32(r30)
lbl_80A042AC:
/* 80A042AC  88 1E 0F 8D */	lbz r0, 0xf8d(r30)
/* 80A042B0  28 00 00 00 */	cmplwi r0, 0
/* 80A042B4  41 82 00 40 */	beq lbl_80A042F4
/* 80A042B8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A042BC  2C 00 00 01 */	cmpwi r0, 1
/* 80A042C0  41 82 00 28 */	beq lbl_80A042E8
/* 80A042C4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A042C8  4B 74 14 34 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A042CC  38 00 00 00 */	li r0, 0
/* 80A042D0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A042D4  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A042D8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A042DC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A042E0  38 00 00 01 */	li r0, 1
/* 80A042E4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A042E8:
/* 80A042E8  38 00 00 00 */	li r0, 0
/* 80A042EC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A042F0  48 00 00 F4 */	b lbl_80A043E4
lbl_80A042F4:
/* 80A042F4  7F C3 F3 78 */	mr r3, r30
/* 80A042F8  4B 74 70 40 */	b srchPlayerActor__8daNpcT_cFv
/* 80A042FC  2C 03 00 00 */	cmpwi r3, 0
/* 80A04300  41 82 00 40 */	beq lbl_80A04340
/* 80A04304  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A04308  2C 00 00 01 */	cmpwi r0, 1
/* 80A0430C  41 82 00 28 */	beq lbl_80A04334
/* 80A04310  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A04314  4B 74 13 E8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A04318  38 00 00 00 */	li r0, 0
/* 80A0431C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A04320  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A04324  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A04328  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A0432C  38 00 00 01 */	li r0, 1
/* 80A04330  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A04334:
/* 80A04334  38 00 00 00 */	li r0, 0
/* 80A04338  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A0433C  48 00 00 70 */	b lbl_80A043AC
lbl_80A04340:
/* 80A04340  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80A04344  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A04348  7C 04 00 00 */	cmpw r4, r0
/* 80A0434C  41 82 00 2C */	beq lbl_80A04378
/* 80A04350  7F C3 F3 78 */	mr r3, r30
/* 80A04354  38 A0 FF FF */	li r5, -1
/* 80A04358  38 C0 FF FF */	li r6, -1
/* 80A0435C  38 E0 00 0F */	li r7, 0xf
/* 80A04360  39 00 00 00 */	li r8, 0
/* 80A04364  4B 74 72 E4 */	b step__8daNpcT_cFsiiii
/* 80A04368  2C 03 00 00 */	cmpwi r3, 0
/* 80A0436C  41 82 00 0C */	beq lbl_80A04378
/* 80A04370  38 00 00 01 */	li r0, 1
/* 80A04374  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A04378:
/* 80A04378  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A0437C  2C 00 00 00 */	cmpwi r0, 0
/* 80A04380  41 82 00 24 */	beq lbl_80A043A4
/* 80A04384  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A04388  4B 74 13 74 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A0438C  38 00 00 00 */	li r0, 0
/* 80A04390  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A04394  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A04398  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A0439C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A043A0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A043A4:
/* 80A043A4  38 00 00 00 */	li r0, 0
/* 80A043A8  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80A043AC:
/* 80A043AC  38 7E 0F A0 */	addi r3, r30, 0xfa0
/* 80A043B0  4B 74 13 58 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A043B4  28 03 00 00 */	cmplwi r3, 0
/* 80A043B8  41 82 00 2C */	beq lbl_80A043E4
/* 80A043BC  A8 1E 0F 9C */	lha r0, 0xf9c(r30)
/* 80A043C0  C0 1E 0F 90 */	lfs f0, 0xf90(r30)
/* 80A043C4  D0 03 14 D0 */	stfs f0, 0x14d0(r3)
/* 80A043C8  C0 1E 0F 94 */	lfs f0, 0xf94(r30)
/* 80A043CC  D0 03 14 D4 */	stfs f0, 0x14d4(r3)
/* 80A043D0  C0 1E 0F 98 */	lfs f0, 0xf98(r30)
/* 80A043D4  D0 03 14 D8 */	stfs f0, 0x14d8(r3)
/* 80A043D8  B0 03 14 4A */	sth r0, 0x144a(r3)
/* 80A043DC  38 00 00 01 */	li r0, 1
/* 80A043E0  98 03 14 46 */	stb r0, 0x1446(r3)
lbl_80A043E4:
/* 80A043E4  38 60 00 01 */	li r3, 1
/* 80A043E8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A043EC  4B 95 DE 3C */	b _restgpr_29
/* 80A043F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A043F4  7C 08 03 A6 */	mtlr r0
/* 80A043F8  38 21 00 40 */	addi r1, r1, 0x40
/* 80A043FC  4E 80 00 20 */	blr 
