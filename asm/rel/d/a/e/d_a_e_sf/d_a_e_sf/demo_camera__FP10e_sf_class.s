lbl_80787FE0:
/* 80787FE0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80787FE4  7C 08 02 A6 */	mflr r0
/* 80787FE8  90 01 00 94 */	stw r0, 0x94(r1)
/* 80787FEC  39 61 00 90 */	addi r11, r1, 0x90
/* 80787FF0  4B BD A1 E1 */	bl _savegpr_26
/* 80787FF4  7C 7C 1B 78 */	mr r28, r3
/* 80787FF8  3C 80 80 79 */	lis r4, lit_3908@ha /* 0x80789C38@ha */
/* 80787FFC  3B C4 9C 38 */	addi r30, r4, lit_3908@l /* 0x80789C38@l */
/* 80788000  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80788004  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80788008  83 5F 5D AC */	lwz r26, 0x5dac(r31)
/* 8078800C  88 1F 5D B0 */	lbz r0, 0x5db0(r31)
/* 80788010  7C 00 07 74 */	extsb r0, r0
/* 80788014  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80788018  7C 9F 02 14 */	add r4, r31, r0
/* 8078801C  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 80788020  3B 60 00 00 */	li r27, 0
/* 80788024  A8 03 0F D8 */	lha r0, 0xfd8(r3)
/* 80788028  2C 00 00 0A */	cmpwi r0, 0xa
/* 8078802C  41 82 01 C0 */	beq lbl_807881EC
/* 80788030  40 80 00 20 */	bge lbl_80788050
/* 80788034  2C 00 00 01 */	cmpwi r0, 1
/* 80788038  41 82 00 30 */	beq lbl_80788068
/* 8078803C  40 80 00 08 */	bge lbl_80788044
/* 80788040  48 00 04 10 */	b lbl_80788450
lbl_80788044:
/* 80788044  2C 00 00 03 */	cmpwi r0, 3
/* 80788048  40 80 04 08 */	bge lbl_80788450
/* 8078804C  48 00 00 CC */	b lbl_80788118
lbl_80788050:
/* 80788050  2C 00 00 64 */	cmpwi r0, 0x64
/* 80788054  41 82 03 98 */	beq lbl_807883EC
/* 80788058  40 80 03 F8 */	bge lbl_80788450
/* 8078805C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80788060  40 80 03 F0 */	bge lbl_80788450
/* 80788064  48 00 02 18 */	b lbl_8078827C
lbl_80788068:
/* 80788068  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 8078806C  28 00 00 02 */	cmplwi r0, 2
/* 80788070  41 82 00 28 */	beq lbl_80788098
/* 80788074  38 80 00 02 */	li r4, 2
/* 80788078  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8078807C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80788080  38 C0 00 00 */	li r6, 0
/* 80788084  4B 89 38 85 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80788088  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 8078808C  60 00 00 02 */	ori r0, r0, 2
/* 80788090  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 80788094  48 00 04 BC */	b lbl_80788550
lbl_80788098:
/* 80788098  38 7D 02 48 */	addi r3, r29, 0x248
/* 8078809C  4B 9D 94 35 */	bl Stop__9dCamera_cFv
/* 807880A0  38 00 00 02 */	li r0, 2
/* 807880A4  B0 1C 0F D8 */	sth r0, 0xfd8(r28)
/* 807880A8  38 00 00 00 */	li r0, 0
/* 807880AC  B0 1C 0F DA */	sth r0, 0xfda(r28)
/* 807880B0  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 807880B4  D0 1C 0F F4 */	stfs f0, 0xff4(r28)
/* 807880B8  38 7D 02 48 */	addi r3, r29, 0x248
/* 807880BC  38 80 00 03 */	li r4, 3
/* 807880C0  4B 9D AF 4D */	bl SetTrimSize__9dCamera_cFl
/* 807880C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807880C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807880CC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 807880D0  7F 84 E3 78 */	mr r4, r28
/* 807880D4  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 807880D8  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 807880DC  38 C0 00 00 */	li r6, 0
/* 807880E0  4B 8B A8 35 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 807880E4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807880E8  38 00 00 03 */	li r0, 3
/* 807880EC  B0 04 06 04 */	sth r0, 0x604(r4)
/* 807880F0  38 60 00 00 */	li r3, 0
/* 807880F4  90 64 06 0C */	stw r3, 0x60c(r4)
/* 807880F8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807880FC  38 00 00 17 */	li r0, 0x17
/* 80788100  90 04 06 14 */	stw r0, 0x614(r4)
/* 80788104  38 00 00 01 */	li r0, 1
/* 80788108  90 04 06 0C */	stw r0, 0x60c(r4)
/* 8078810C  38 00 00 02 */	li r0, 2
/* 80788110  90 04 06 10 */	stw r0, 0x610(r4)
/* 80788114  B0 64 06 0A */	sth r3, 0x60a(r4)
lbl_80788118:
/* 80788118  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078811C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80788120  80 63 00 00 */	lwz r3, 0(r3)
/* 80788124  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80788128  4B 88 42 B5 */	bl mDoMtx_YrotS__FPA4_fs
/* 8078812C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80788130  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80788134  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80788138  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8078813C  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80788140  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80788144  38 61 00 68 */	addi r3, r1, 0x68
/* 80788148  38 9C 0F DC */	addi r4, r28, 0xfdc
/* 8078814C  4B AE 8D A1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80788150  38 7C 0F DC */	addi r3, r28, 0xfdc
/* 80788154  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80788158  7C 65 1B 78 */	mr r5, r3
/* 8078815C  4B BB EF 35 */	bl PSVECAdd
/* 80788160  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80788164  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80788168  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8078816C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80788170  C0 3C 05 3C */	lfs f1, 0x53c(r28)
/* 80788174  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80788178  EC 41 00 28 */	fsubs f2, f1, f0
/* 8078817C  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80788180  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 80788184  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80788188  EC 01 00 2A */	fadds f0, f1, f0
/* 8078818C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80788190  40 80 00 08 */	bge lbl_80788198
/* 80788194  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_80788198:
/* 80788198  A8 1C 0F DA */	lha r0, 0xfda(r28)
/* 8078819C  2C 00 00 00 */	cmpwi r0, 0
/* 807881A0  40 82 00 20 */	bne lbl_807881C0
/* 807881A4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807881A8  D0 1C 0F E8 */	stfs f0, 0xfe8(r28)
/* 807881AC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807881B0  D0 1C 0F EC */	stfs f0, 0xfec(r28)
/* 807881B4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 807881B8  D0 1C 0F F0 */	stfs f0, 0xff0(r28)
/* 807881BC  48 00 02 94 */	b lbl_80788450
lbl_807881C0:
/* 807881C0  38 7C 0F EC */	addi r3, r28, 0xfec
/* 807881C4  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 807881C8  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 807881CC  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 807881D0  4B AE 78 6D */	bl cLib_addCalc2__FPffff
/* 807881D4  38 7C 0F F4 */	addi r3, r28, 0xff4
/* 807881D8  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 807881DC  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 807881E0  C0 7E 01 0C */	lfs f3, 0x10c(r30)
/* 807881E4  4B AE 78 59 */	bl cLib_addCalc2__FPffff
/* 807881E8  48 00 02 68 */	b lbl_80788450
lbl_807881EC:
/* 807881EC  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 807881F0  28 00 00 02 */	cmplwi r0, 2
/* 807881F4  41 82 00 28 */	beq lbl_8078821C
/* 807881F8  38 80 00 02 */	li r4, 2
/* 807881FC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80788200  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80788204  38 C0 00 00 */	li r6, 0
/* 80788208  4B 89 37 01 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8078820C  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 80788210  60 00 00 02 */	ori r0, r0, 2
/* 80788214  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 80788218  48 00 03 38 */	b lbl_80788550
lbl_8078821C:
/* 8078821C  38 7D 02 48 */	addi r3, r29, 0x248
/* 80788220  4B 9D 92 B1 */	bl Stop__9dCamera_cFv
/* 80788224  38 00 00 0B */	li r0, 0xb
/* 80788228  B0 1C 0F D8 */	sth r0, 0xfd8(r28)
/* 8078822C  38 00 00 00 */	li r0, 0
/* 80788230  B0 1C 0F DA */	sth r0, 0xfda(r28)
/* 80788234  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80788238  D0 1C 0F F4 */	stfs f0, 0xff4(r28)
/* 8078823C  38 7D 02 48 */	addi r3, r29, 0x248
/* 80788240  38 80 00 03 */	li r4, 3
/* 80788244  4B 9D AD C9 */	bl SetTrimSize__9dCamera_cFl
/* 80788248  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8078824C  38 00 00 03 */	li r0, 3
/* 80788250  B0 04 06 04 */	sth r0, 0x604(r4)
/* 80788254  38 60 00 00 */	li r3, 0
/* 80788258  90 64 06 0C */	stw r3, 0x60c(r4)
/* 8078825C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80788260  38 00 00 17 */	li r0, 0x17
/* 80788264  90 04 06 14 */	stw r0, 0x614(r4)
/* 80788268  38 00 00 01 */	li r0, 1
/* 8078826C  90 04 06 0C */	stw r0, 0x60c(r4)
/* 80788270  38 00 00 02 */	li r0, 2
/* 80788274  90 04 06 10 */	stw r0, 0x610(r4)
/* 80788278  B0 64 06 0A */	sth r3, 0x60a(r4)
lbl_8078827C:
/* 8078827C  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 80788280  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80788284  EC 21 00 28 */	fsubs f1, f1, f0
/* 80788288  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8078828C  C0 5E 01 14 */	lfs f2, 0x114(r30)
/* 80788290  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80788294  EC 42 00 28 */	fsubs f2, f2, f0
/* 80788298  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8078829C  4B AD F3 D9 */	bl cM_atan2s__Fff
/* 807882A0  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 807882A4  B0 7C 04 E6 */	sth r3, 0x4e6(r28)
/* 807882A8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807882AC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807882B0  80 63 00 00 */	lwz r3, 0(r3)
/* 807882B4  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807882B8  4B 88 41 25 */	bl mDoMtx_YrotS__FPA4_fs
/* 807882BC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807882C0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807882C4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807882C8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807882CC  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 807882D0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807882D4  38 61 00 68 */	addi r3, r1, 0x68
/* 807882D8  38 9C 0F DC */	addi r4, r28, 0xfdc
/* 807882DC  4B AE 8C 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807882E0  38 7C 0F DC */	addi r3, r28, 0xfdc
/* 807882E4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807882E8  7C 65 1B 78 */	mr r5, r3
/* 807882EC  4B BB ED A5 */	bl PSVECAdd
/* 807882F0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807882F4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807882F8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807882FC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80788300  C0 3C 05 3C */	lfs f1, 0x53c(r28)
/* 80788304  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80788308  EC 41 00 28 */	fsubs f2, f1, f0
/* 8078830C  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80788310  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 80788314  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80788318  EC 01 00 2A */	fadds f0, f1, f0
/* 8078831C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80788320  40 80 00 08 */	bge lbl_80788328
/* 80788324  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_80788328:
/* 80788328  A8 1C 0F DA */	lha r0, 0xfda(r28)
/* 8078832C  2C 00 00 00 */	cmpwi r0, 0
/* 80788330  40 82 00 7C */	bne lbl_807883AC
/* 80788334  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80788338  D0 1C 0F E8 */	stfs f0, 0xfe8(r28)
/* 8078833C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80788340  D0 1C 0F EC */	stfs f0, 0xfec(r28)
/* 80788344  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80788348  D0 1C 0F F0 */	stfs f0, 0xff0(r28)
/* 8078834C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80788350  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80788354  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80788358  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 8078835C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80788360  38 61 00 68 */	addi r3, r1, 0x68
/* 80788364  38 81 00 5C */	addi r4, r1, 0x5c
/* 80788368  4B AE 8B 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8078836C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80788370  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80788374  7C 65 1B 78 */	mr r5, r3
/* 80788378  4B BB ED 19 */	bl PSVECAdd
/* 8078837C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80788380  38 81 00 5C */	addi r4, r1, 0x5c
/* 80788384  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 80788388  3C A5 00 01 */	addis r5, r5, 1
/* 8078838C  38 05 80 00 */	addi r0, r5, -32768
/* 80788390  7C 05 07 34 */	extsh r5, r0
/* 80788394  38 C0 00 00 */	li r6, 0
/* 80788398  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8078839C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807883A0  7D 89 03 A6 */	mtctr r12
/* 807883A4  4E 80 04 21 */	bctrl 
/* 807883A8  48 00 00 2C */	b lbl_807883D4
lbl_807883AC:
/* 807883AC  38 7C 0F EC */	addi r3, r28, 0xfec
/* 807883B0  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 807883B4  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 807883B8  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 807883BC  4B AE 76 81 */	bl cLib_addCalc2__FPffff
/* 807883C0  38 7C 0F F4 */	addi r3, r28, 0xff4
/* 807883C4  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 807883C8  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 807883CC  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 807883D0  4B AE 76 6D */	bl cLib_addCalc2__FPffff
lbl_807883D4:
/* 807883D4  A8 1C 0F DA */	lha r0, 0xfda(r28)
/* 807883D8  2C 00 00 DC */	cmpwi r0, 0xdc
/* 807883DC  40 82 00 74 */	bne lbl_80788450
/* 807883E0  38 00 00 64 */	li r0, 0x64
/* 807883E4  B0 1C 0F D8 */	sth r0, 0xfd8(r28)
/* 807883E8  48 00 00 68 */	b lbl_80788450
lbl_807883EC:
/* 807883EC  3B 60 00 01 */	li r27, 1
/* 807883F0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807883F4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807883F8  80 63 00 00 */	lwz r3, 0(r3)
/* 807883FC  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 80788400  4B 88 3F DD */	bl mDoMtx_YrotS__FPA4_fs
/* 80788404  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80788408  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8078840C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80788410  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80788414  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80788418  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8078841C  38 61 00 68 */	addi r3, r1, 0x68
/* 80788420  38 9C 0F DC */	addi r4, r28, 0xfdc
/* 80788424  4B AE 8A C9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80788428  38 7C 0F DC */	addi r3, r28, 0xfdc
/* 8078842C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80788430  7C 65 1B 78 */	mr r5, r3
/* 80788434  4B BB EC 5D */	bl PSVECAdd
/* 80788438  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 8078843C  D0 1C 0F E8 */	stfs f0, 0xfe8(r28)
/* 80788440  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 80788444  D0 1C 0F EC */	stfs f0, 0xfec(r28)
/* 80788448  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 8078844C  D0 1C 0F F0 */	stfs f0, 0xff0(r28)
lbl_80788450:
/* 80788450  7F 60 07 75 */	extsb. r0, r27
/* 80788454  41 82 00 84 */	beq lbl_807884D8
/* 80788458  C0 1C 0F E8 */	lfs f0, 0xfe8(r28)
/* 8078845C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80788460  C0 1C 0F EC */	lfs f0, 0xfec(r28)
/* 80788464  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80788468  C0 1C 0F F0 */	lfs f0, 0xff0(r28)
/* 8078846C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80788470  C0 1C 0F DC */	lfs f0, 0xfdc(r28)
/* 80788474  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80788478  C0 1C 0F E0 */	lfs f0, 0xfe0(r28)
/* 8078847C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80788480  C0 1C 0F E4 */	lfs f0, 0xfe4(r28)
/* 80788484  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80788488  38 7D 02 48 */	addi r3, r29, 0x248
/* 8078848C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80788490  38 A1 00 20 */	addi r5, r1, 0x20
/* 80788494  4B 9F 87 85 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 80788498  38 7D 02 48 */	addi r3, r29, 0x248
/* 8078849C  4B 9D 90 11 */	bl Start__9dCamera_cFv
/* 807884A0  38 7D 02 48 */	addi r3, r29, 0x248
/* 807884A4  38 80 00 00 */	li r4, 0
/* 807884A8  4B 9D AB 65 */	bl SetTrimSize__9dCamera_cFl
/* 807884AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807884B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807884B4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 807884B8  4B 8B 9F B1 */	bl reset__14dEvt_control_cFv
/* 807884BC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807884C0  38 00 00 02 */	li r0, 2
/* 807884C4  B0 03 06 04 */	sth r0, 0x604(r3)
/* 807884C8  38 00 00 01 */	li r0, 1
/* 807884CC  90 03 06 14 */	stw r0, 0x614(r3)
/* 807884D0  38 00 00 00 */	li r0, 0
/* 807884D4  B0 1C 0F D8 */	sth r0, 0xfd8(r28)
lbl_807884D8:
/* 807884D8  A8 1C 0F D8 */	lha r0, 0xfd8(r28)
/* 807884DC  2C 00 00 00 */	cmpwi r0, 0
/* 807884E0  40 81 00 70 */	ble lbl_80788550
/* 807884E4  C0 BC 0F E8 */	lfs f5, 0xfe8(r28)
/* 807884E8  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 807884EC  C0 9C 0F EC */	lfs f4, 0xfec(r28)
/* 807884F0  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 807884F4  C0 7C 0F F0 */	lfs f3, 0xff0(r28)
/* 807884F8  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 807884FC  C0 5C 0F DC */	lfs f2, 0xfdc(r28)
/* 80788500  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80788504  C0 3C 0F E0 */	lfs f1, 0xfe0(r28)
/* 80788508  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8078850C  C0 1C 0F E4 */	lfs f0, 0xfe4(r28)
/* 80788510  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80788514  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 80788518  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8078851C  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80788520  D0 41 00 08 */	stfs f2, 8(r1)
/* 80788524  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80788528  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8078852C  38 7D 02 48 */	addi r3, r29, 0x248
/* 80788530  38 81 00 14 */	addi r4, r1, 0x14
/* 80788534  38 A1 00 08 */	addi r5, r1, 8
/* 80788538  C0 3C 0F F4 */	lfs f1, 0xff4(r28)
/* 8078853C  38 C0 00 00 */	li r6, 0
/* 80788540  4B 9F 85 A1 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80788544  A8 7C 0F DA */	lha r3, 0xfda(r28)
/* 80788548  38 03 00 01 */	addi r0, r3, 1
/* 8078854C  B0 1C 0F DA */	sth r0, 0xfda(r28)
lbl_80788550:
/* 80788550  39 61 00 90 */	addi r11, r1, 0x90
/* 80788554  4B BD 9C C9 */	bl _restgpr_26
/* 80788558  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8078855C  7C 08 03 A6 */	mtlr r0
/* 80788560  38 21 00 90 */	addi r1, r1, 0x90
/* 80788564  4E 80 00 20 */	blr 
