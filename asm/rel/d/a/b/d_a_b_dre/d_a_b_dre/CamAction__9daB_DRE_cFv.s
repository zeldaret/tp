lbl_805C8EDC:
/* 805C8EDC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 805C8EE0  7C 08 02 A6 */	mflr r0
/* 805C8EE4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805C8EE8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805C8EEC  4B D9 92 F1 */	bl _savegpr_29
/* 805C8EF0  7C 7D 1B 78 */	mr r29, r3
/* 805C8EF4  3C 80 80 5D */	lis r4, lit_3844@ha /* 0x805CAD5C@ha */
/* 805C8EF8  3B E4 AD 5C */	addi r31, r4, lit_3844@l /* 0x805CAD5C@l */
/* 805C8EFC  C0 A3 04 D0 */	lfs f5, 0x4d0(r3)
/* 805C8F00  D0 A1 00 80 */	stfs f5, 0x80(r1)
/* 805C8F04  C0 83 04 D4 */	lfs f4, 0x4d4(r3)
/* 805C8F08  D0 81 00 84 */	stfs f4, 0x84(r1)
/* 805C8F0C  C0 63 04 D8 */	lfs f3, 0x4d8(r3)
/* 805C8F10  D0 61 00 88 */	stfs f3, 0x88(r1)
/* 805C8F14  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 805C8F18  EC 24 10 2A */	fadds f1, f4, f2
/* 805C8F1C  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 805C8F20  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C8F24  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C8F28  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 805C8F2C  88 03 05 B8 */	lbz r0, 0x5b8(r3)
/* 805C8F30  28 00 00 09 */	cmplwi r0, 9
/* 805C8F34  41 81 03 CC */	bgt lbl_805C9300
/* 805C8F38  3C 80 80 5D */	lis r4, lit_4416@ha /* 0x805CAED4@ha */
/* 805C8F3C  38 84 AE D4 */	addi r4, r4, lit_4416@l /* 0x805CAED4@l */
/* 805C8F40  54 00 10 3A */	slwi r0, r0, 2
/* 805C8F44  7C 04 00 2E */	lwzx r0, r4, r0
/* 805C8F48  7C 09 03 A6 */	mtctr r0
/* 805C8F4C  4E 80 04 20 */	bctr 
lbl_805C8F50:
/* 805C8F50  4B FF EF 5D */	bl CameraSet__9daB_DRE_cFv
/* 805C8F54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C8F58  41 82 03 A8 */	beq lbl_805C9300
/* 805C8F5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C8F60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C8F64  38 80 00 10 */	li r4, 0x10
/* 805C8F68  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805C8F6C  7C 05 07 74 */	extsb r5, r0
/* 805C8F70  4B A6 C3 41 */	bl offSwitch__10dSv_info_cFii
/* 805C8F74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C8F78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C8F7C  38 80 00 3F */	li r4, 0x3f
/* 805C8F80  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805C8F84  7C 05 07 74 */	extsb r5, r0
/* 805C8F88  4B A6 C3 29 */	bl offSwitch__10dSv_info_cFii
/* 805C8F8C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C8F90  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 805C8F94  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805C8F98  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805C8F9C  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 805C8FA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C8FA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C8FA8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805C8FAC  38 80 00 05 */	li r4, 5
/* 805C8FB0  38 A0 00 1F */	li r5, 0x1f
/* 805C8FB4  38 C1 00 74 */	addi r6, r1, 0x74
/* 805C8FB8  4B AA 6B 59 */	bl StartQuake__12dVibration_cFii4cXyz
/* 805C8FBC  88 7D 05 B8 */	lbz r3, 0x5b8(r29)
/* 805C8FC0  38 03 00 01 */	addi r0, r3, 1
/* 805C8FC4  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 805C8FC8  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 805C8FCC  38 03 70 00 */	addi r0, r3, 0x7000
/* 805C8FD0  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 805C8FD4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 805C8FD8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805C8FDC  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 805C8FE0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805C8FE4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 805C8FE8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805C8FEC  7F A3 EB 78 */	mr r3, r29
/* 805C8FF0  38 81 00 68 */	addi r4, r1, 0x68
/* 805C8FF4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805C8FF8  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 805C8FFC  A8 BD 05 FC */	lha r5, 0x5fc(r29)
/* 805C9000  4B FF F0 8D */	bl SetStopCam__9daB_DRE_cF4cXyzffs
/* 805C9004  38 00 00 00 */	li r0, 0
/* 805C9008  B0 1D 06 2C */	sth r0, 0x62c(r29)
/* 805C900C  88 7D 05 B4 */	lbz r3, 0x5b4(r29)
/* 805C9010  38 03 00 01 */	addi r0, r3, 1
/* 805C9014  98 1D 05 B4 */	stb r0, 0x5b4(r29)
/* 805C9018  7F C3 F3 78 */	mr r3, r30
/* 805C901C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 805C9020  81 8C 02 58 */	lwz r12, 0x258(r12)
/* 805C9024  7D 89 03 A6 */	mtctr r12
/* 805C9028  4E 80 04 21 */	bctrl 
/* 805C902C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 805C9030  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C9034  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805C9038  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805C903C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 805C9040  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805C9044  7F C3 F3 78 */	mr r3, r30
/* 805C9048  38 81 00 80 */	addi r4, r1, 0x80
/* 805C904C  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805C9050  38 05 50 00 */	addi r0, r5, 0x5000
/* 805C9054  7C 05 07 34 */	extsh r5, r0
/* 805C9058  38 C0 00 00 */	li r6, 0
/* 805C905C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 805C9060  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805C9064  7D 89 03 A6 */	mtctr r12
/* 805C9068  4E 80 04 21 */	bctrl 
/* 805C906C  48 00 02 94 */	b lbl_805C9300
lbl_805C9070:
/* 805C9070  A8 9D 05 FC */	lha r4, 0x5fc(r29)
/* 805C9074  38 04 FF F0 */	addi r0, r4, -16
/* 805C9078  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 805C907C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 805C9080  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805C9084  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 805C9088  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805C908C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 805C9090  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805C9094  38 81 00 5C */	addi r4, r1, 0x5c
/* 805C9098  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805C909C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 805C90A0  4B FF F1 69 */	bl SetCMoveCam__9daB_DRE_cF4cXyzff
/* 805C90A4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 805C90A8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805C90AC  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 805C90B0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805C90B4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 805C90B8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805C90BC  7F A3 EB 78 */	mr r3, r29
/* 805C90C0  38 81 00 50 */	addi r4, r1, 0x50
/* 805C90C4  C0 3D 06 08 */	lfs f1, 0x608(r29)
/* 805C90C8  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 805C90CC  A8 BD 05 FC */	lha r5, 0x5fc(r29)
/* 805C90D0  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 805C90D4  4B FF F1 79 */	bl SetEyeMoveCam__9daB_DRE_cF4cXyzffsf
/* 805C90D8  48 00 02 28 */	b lbl_805C9300
lbl_805C90DC:
/* 805C90DC  A8 9D 05 FC */	lha r4, 0x5fc(r29)
/* 805C90E0  38 04 FF E0 */	addi r0, r4, -32
/* 805C90E4  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 805C90E8  3C 80 80 5D */	lis r4, data_805CB098@ha /* 0x805CB098@ha */
/* 805C90EC  C4 04 B0 98 */	lfsu f0, data_805CB098@l(r4)  /* 0x805CB098@l */
/* 805C90F0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805C90F4  C0 04 00 04 */	lfs f0, 4(r4)
/* 805C90F8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805C90FC  C0 04 00 08 */	lfs f0, 8(r4)
/* 805C9100  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805C9104  38 81 00 44 */	addi r4, r1, 0x44
/* 805C9108  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 805C910C  4B FF F0 FD */	bl SetCMoveCam__9daB_DRE_cF4cXyzff
/* 805C9110  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 805C9114  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805C9118  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 805C911C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805C9120  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 805C9124  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805C9128  7F A3 EB 78 */	mr r3, r29
/* 805C912C  38 81 00 38 */	addi r4, r1, 0x38
/* 805C9130  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805C9134  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 805C9138  A8 BD 05 FC */	lha r5, 0x5fc(r29)
/* 805C913C  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 805C9140  4B FF F1 0D */	bl SetEyeMoveCam__9daB_DRE_cF4cXyzffsf
/* 805C9144  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 805C9148  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C914C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805C9150  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805C9154  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 805C9158  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805C915C  7F C3 F3 78 */	mr r3, r30
/* 805C9160  38 81 00 80 */	addi r4, r1, 0x80
/* 805C9164  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805C9168  38 05 50 00 */	addi r0, r5, 0x5000
/* 805C916C  7C 05 07 34 */	extsh r5, r0
/* 805C9170  38 C0 00 00 */	li r6, 0
/* 805C9174  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 805C9178  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805C917C  7D 89 03 A6 */	mtctr r12
/* 805C9180  4E 80 04 21 */	bctrl 
/* 805C9184  48 00 01 7C */	b lbl_805C9300
lbl_805C9188:
/* 805C9188  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805C918C  EC 01 00 2A */	fadds f0, f1, f0
/* 805C9190  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805C9194  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 805C9198  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C919C  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 805C91A0  38 81 00 2C */	addi r4, r1, 0x2c
/* 805C91A4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 805C91A8  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 805C91AC  4B FF F0 5D */	bl SetCMoveCam__9daB_DRE_cF4cXyzff
/* 805C91B0  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 805C91B4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C91B8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 805C91BC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805C91C0  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 805C91C4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805C91C8  7F A3 EB 78 */	mr r3, r29
/* 805C91CC  38 81 00 20 */	addi r4, r1, 0x20
/* 805C91D0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805C91D4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 805C91D8  A8 BD 05 FC */	lha r5, 0x5fc(r29)
/* 805C91DC  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 805C91E0  4B FF F0 6D */	bl SetEyeMoveCam__9daB_DRE_cF4cXyzffsf
/* 805C91E4  48 00 01 1C */	b lbl_805C9300
lbl_805C91E8:
/* 805C91E8  D0 A1 00 80 */	stfs f5, 0x80(r1)
/* 805C91EC  D0 81 00 84 */	stfs f4, 0x84(r1)
/* 805C91F0  D0 61 00 88 */	stfs f3, 0x88(r1)
/* 805C91F4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 805C91F8  EC 04 00 2A */	fadds f0, f4, f0
/* 805C91FC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805C9200  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 805C9204  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C9208  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 805C920C  38 81 00 14 */	addi r4, r1, 0x14
/* 805C9210  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 805C9214  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805C9218  4B FF EF F1 */	bl SetCMoveCam__9daB_DRE_cF4cXyzff
/* 805C921C  A8 1D 06 32 */	lha r0, 0x632(r29)
/* 805C9220  2C 00 00 00 */	cmpwi r0, 0
/* 805C9224  40 82 00 38 */	bne lbl_805C925C
/* 805C9228  80 1D 05 B0 */	lwz r0, 0x5b0(r29)
/* 805C922C  2C 00 00 19 */	cmpwi r0, 0x19
/* 805C9230  40 82 00 2C */	bne lbl_805C925C
/* 805C9234  7F A3 EB 78 */	mr r3, r29
/* 805C9238  80 9D 06 EC */	lwz r4, 0x6ec(r29)
/* 805C923C  38 A0 00 24 */	li r5, 0x24
/* 805C9240  38 C0 00 00 */	li r6, 0
/* 805C9244  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 805C9248  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C924C  4B FF EB 89 */	bl SetAnm__9daB_DRE_cFP16mDoExt_McaMorfSOiiff
/* 805C9250  88 7D 05 B4 */	lbz r3, 0x5b4(r29)
/* 805C9254  38 03 00 01 */	addi r0, r3, 1
/* 805C9258  98 1D 05 B4 */	stb r0, 0x5b4(r29)
lbl_805C925C:
/* 805C925C  7F A3 EB 78 */	mr r3, r29
/* 805C9260  4B FF ED A9 */	bl SetStopingCam__9daB_DRE_cFv
/* 805C9264  48 00 00 9C */	b lbl_805C9300
lbl_805C9268:
/* 805C9268  D0 A1 00 08 */	stfs f5, 8(r1)
/* 805C926C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 805C9270  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 805C9274  38 81 00 08 */	addi r4, r1, 8
/* 805C9278  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 805C927C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 805C9280  4B FF EF 89 */	bl SetCMoveCam__9daB_DRE_cF4cXyzff
/* 805C9284  7F A3 EB 78 */	mr r3, r29
/* 805C9288  4B FF ED 81 */	bl SetStopingCam__9daB_DRE_cFv
/* 805C928C  48 00 00 74 */	b lbl_805C9300
lbl_805C9290:
/* 805C9290  4B FF ED 79 */	bl SetStopingCam__9daB_DRE_cFv
/* 805C9294  48 00 00 6C */	b lbl_805C9300
lbl_805C9298:
/* 805C9298  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 805C929C  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 805C92A0  4B FF F1 B9 */	bl SetMoveCam__9daB_DRE_cFff
/* 805C92A4  48 00 00 5C */	b lbl_805C9300
lbl_805C92A8:
/* 805C92A8  C0 3D 05 CC */	lfs f1, 0x5cc(r29)
/* 805C92AC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 805C92B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C92B4  40 80 00 28 */	bge lbl_805C92DC
/* 805C92B8  4B FF F2 8D */	bl SetReleaseCam__9daB_DRE_cFv
/* 805C92BC  88 7D 05 B8 */	lbz r3, 0x5b8(r29)
/* 805C92C0  38 03 00 01 */	addi r0, r3, 1
/* 805C92C4  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 805C92C8  88 7D 05 B4 */	lbz r3, 0x5b4(r29)
/* 805C92CC  38 03 00 01 */	addi r0, r3, 1
/* 805C92D0  98 1D 05 B4 */	stb r0, 0x5b4(r29)
/* 805C92D4  38 00 00 32 */	li r0, 0x32
/* 805C92D8  B0 1D 06 2C */	sth r0, 0x62c(r29)
lbl_805C92DC:
/* 805C92DC  7F A3 EB 78 */	mr r3, r29
/* 805C92E0  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 805C92E4  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 805C92E8  4B FF F1 71 */	bl SetMoveCam__9daB_DRE_cFff
/* 805C92EC  48 00 00 14 */	b lbl_805C9300
lbl_805C92F0:
/* 805C92F0  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 805C92F4  2C 00 00 00 */	cmpwi r0, 0
/* 805C92F8  40 82 00 08 */	bne lbl_805C9300
/* 805C92FC  4B A5 09 81 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_805C9300:
/* 805C9300  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805C9304  4B D9 8F 25 */	bl _restgpr_29
/* 805C9308  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 805C930C  7C 08 03 A6 */	mtlr r0
/* 805C9310  38 21 00 A0 */	addi r1, r1, 0xa0
/* 805C9314  4E 80 00 20 */	blr 
