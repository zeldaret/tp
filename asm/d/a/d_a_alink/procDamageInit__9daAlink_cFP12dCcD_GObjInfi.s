lbl_800D8F3C:
/* 800D8F3C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800D8F40  7C 08 02 A6 */	mflr r0
/* 800D8F44  90 01 00 74 */	stw r0, 0x74(r1)
/* 800D8F48  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800D8F4C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 800D8F50  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 800D8F54  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 800D8F58  39 61 00 50 */	addi r11, r1, 0x50
/* 800D8F5C  48 28 92 75 */	bl _savegpr_26
/* 800D8F60  7C 7C 1B 78 */	mr r28, r3
/* 800D8F64  7C 9B 23 78 */	mr r27, r4
/* 800D8F68  7C BA 2B 79 */	or. r26, r5, r5
/* 800D8F6C  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 800D8F70  3B E3 D6 58 */	addi r31, r3, lit_3757@l /* 0x8038D658@l */
/* 800D8F74  40 82 00 70 */	bne lbl_800D8FE4
/* 800D8F78  28 1B 00 00 */	cmplwi r27, 0
/* 800D8F7C  41 82 00 28 */	beq lbl_800D8FA4
/* 800D8F80  7F 63 DB 78 */	mr r3, r27
/* 800D8F84  4B FA B5 C5 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 800D8F88  28 03 00 00 */	cmplwi r3, 0
/* 800D8F8C  41 82 00 58 */	beq lbl_800D8FE4
/* 800D8F90  7F 63 DB 78 */	mr r3, r27
/* 800D8F94  4B FA B5 B5 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 800D8F98  88 03 00 75 */	lbz r0, 0x75(r3)
/* 800D8F9C  28 00 00 02 */	cmplwi r0, 2
/* 800D8FA0  40 82 00 44 */	bne lbl_800D8FE4
lbl_800D8FA4:
/* 800D8FA4  3B C0 00 01 */	li r30, 1
/* 800D8FA8  7F 83 E3 78 */	mr r3, r28
/* 800D8FAC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010053@ha */
/* 800D8FB0  38 84 00 53 */	addi r4, r4, 0x0053 /* 0x00010053@l */
/* 800D8FB4  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800D8FB8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800D8FBC  7D 89 03 A6 */	mtctr r12
/* 800D8FC0  4E 80 04 21 */	bctrl 
/* 800D8FC4  7F 83 E3 78 */	mr r3, r28
/* 800D8FC8  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002004C@ha */
/* 800D8FCC  38 84 00 4C */	addi r4, r4, 0x004C /* 0x0002004C@l */
/* 800D8FD0  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800D8FD4  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800D8FD8  7D 89 03 A6 */	mtctr r12
/* 800D8FDC  4E 80 04 21 */	bctrl 
/* 800D8FE0  48 00 00 48 */	b lbl_800D9028
lbl_800D8FE4:
/* 800D8FE4  7F 83 E3 78 */	mr r3, r28
/* 800D8FE8  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020014@ha */
/* 800D8FEC  38 84 00 14 */	addi r4, r4, 0x0014 /* 0x00020014@l */
/* 800D8FF0  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800D8FF4  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800D8FF8  7D 89 03 A6 */	mtctr r12
/* 800D8FFC  4E 80 04 21 */	bctrl 
/* 800D9000  3B C0 00 00 */	li r30, 0
/* 800D9004  2C 1A 00 00 */	cmpwi r26, 0
/* 800D9008  40 82 00 20 */	bne lbl_800D9028
/* 800D900C  7F 83 E3 78 */	mr r3, r28
/* 800D9010  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010002@ha */
/* 800D9014  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00010002@l */
/* 800D9018  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800D901C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800D9020  7D 89 03 A6 */	mtctr r12
/* 800D9024  4E 80 04 21 */	bctrl 
lbl_800D9028:
/* 800D9028  A0 1C 1F BC */	lhz r0, 0x1fbc(r28)
/* 800D902C  28 00 01 9C */	cmplwi r0, 0x19c
/* 800D9030  40 82 00 1C */	bne lbl_800D904C
/* 800D9034  2C 1E 00 00 */	cmpwi r30, 0
/* 800D9038  40 82 00 14 */	bne lbl_800D904C
/* 800D903C  2C 1A 00 00 */	cmpwi r26, 0
/* 800D9040  40 82 00 0C */	bne lbl_800D904C
/* 800D9044  38 60 00 01 */	li r3, 1
/* 800D9048  48 00 04 A4 */	b lbl_800D94EC
lbl_800D904C:
/* 800D904C  7F 83 E3 78 */	mr r3, r28
/* 800D9050  38 80 00 32 */	li r4, 0x32
/* 800D9054  4B FE 8F 19 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D9058  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 800D905C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800D9060  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800D9064  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800D9068  7F E4 04 2E */	lfsx f31, r4, r0
/* 800D906C  38 A4 00 04 */	addi r5, r4, 4
/* 800D9070  7F C5 04 2E */	lfsx f30, r5, r0
/* 800D9074  28 1B 00 00 */	cmplwi r27, 0
/* 800D9078  41 82 00 18 */	beq lbl_800D9090
/* 800D907C  7F 83 E3 78 */	mr r3, r28
/* 800D9080  7F 64 DB 78 */	mr r4, r27
/* 800D9084  4B FF E4 71 */	bl getDamageVec__9daAlink_cFP12dCcD_GObjInf
/* 800D9088  7C 7D 1B 78 */	mr r29, r3
/* 800D908C  48 00 00 6C */	b lbl_800D90F8
lbl_800D9090:
/* 800D9090  2C 1A 00 00 */	cmpwi r26, 0
/* 800D9094  41 82 00 40 */	beq lbl_800D90D4
/* 800D9098  A8 7C 31 02 */	lha r3, 0x3102(r28)
/* 800D909C  3C 63 00 01 */	addis r3, r3, 1
/* 800D90A0  38 03 80 00 */	addi r0, r3, -32768
/* 800D90A4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800D90A8  7C 25 04 2E */	lfsx f1, r5, r0
/* 800D90AC  7C 04 04 2E */	lfsx f0, r4, r0
/* 800D90B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800D90B4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D90B8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800D90BC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 800D90C0  3B A1 00 24 */	addi r29, r1, 0x24
/* 800D90C4  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 800D90C8  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800D90CC  90 1C 31 A0 */	stw r0, 0x31a0(r28)
/* 800D90D0  48 00 00 28 */	b lbl_800D90F8
lbl_800D90D4:
/* 800D90D4  A8 1C 31 1E */	lha r0, 0x311e(r28)
/* 800D90D8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800D90DC  7C 25 04 2E */	lfsx f1, r5, r0
/* 800D90E0  7C 04 04 2E */	lfsx f0, r4, r0
/* 800D90E4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800D90E8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D90EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800D90F0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 800D90F4  3B A1 00 24 */	addi r29, r1, 0x24
lbl_800D90F8:
/* 800D90F8  C0 7D 00 08 */	lfs f3, 8(r29)
/* 800D90FC  EC 23 07 B2 */	fmuls f1, f3, f30
/* 800D9100  C0 9D 00 00 */	lfs f4, 0(r29)
/* 800D9104  EC 04 07 F2 */	fmuls f0, f4, f31
/* 800D9108  EC 21 00 2A */	fadds f1, f1, f0
/* 800D910C  C0 5D 00 04 */	lfs f2, 4(r29)
/* 800D9110  FC 00 F8 50 */	fneg f0, f31
/* 800D9114  EC 63 00 32 */	fmuls f3, f3, f0
/* 800D9118  EC 04 07 B2 */	fmuls f0, f4, f30
/* 800D911C  EC 03 00 2A */	fadds f0, f3, f0
/* 800D9120  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800D9124  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800D9128  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800D912C  38 7F 0B F4 */	addi r3, r31, 0xbf4
/* 800D9130  AB 43 00 50 */	lha r26, 0x50(r3)
/* 800D9134  7C 1A 00 D0 */	neg r0, r26
/* 800D9138  7C 1B 07 34 */	extsh r27, r0
/* 800D913C  48 18 E5 39 */	bl cM_atan2s__Fff
/* 800D9140  7C 64 07 34 */	extsh r4, r3
/* 800D9144  7C 04 D8 00 */	cmpw r4, r27
/* 800D9148  40 80 00 08 */	bge lbl_800D9150
/* 800D914C  48 00 00 18 */	b lbl_800D9164
lbl_800D9150:
/* 800D9150  7F 40 07 34 */	extsh r0, r26
/* 800D9154  7C 04 00 00 */	cmpw r4, r0
/* 800D9158  40 81 00 08 */	ble lbl_800D9160
/* 800D915C  7F 43 D3 78 */	mr r3, r26
lbl_800D9160:
/* 800D9160  7C 7B 1B 78 */	mr r27, r3
lbl_800D9164:
/* 800D9164  B3 7C 30 0C */	sth r27, 0x300c(r28)
/* 800D9168  38 7F 0B F4 */	addi r3, r31, 0xbf4
/* 800D916C  AB 43 00 52 */	lha r26, 0x52(r3)
/* 800D9170  7C 1A 00 D0 */	neg r0, r26
/* 800D9174  7C 1B 07 34 */	extsh r27, r0
/* 800D9178  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800D917C  EC 20 00 32 */	fmuls f1, f0, f0
/* 800D9180  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800D9184  EC 00 00 32 */	fmuls f0, f0, f0
/* 800D9188  EC 41 00 2A */	fadds f2, f1, f0
/* 800D918C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D9190  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800D9194  40 81 00 0C */	ble lbl_800D91A0
/* 800D9198  FC 00 10 34 */	frsqrte f0, f2
/* 800D919C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_800D91A0:
/* 800D91A0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 800D91A4  FC 40 10 50 */	fneg f2, f2
/* 800D91A8  48 18 E4 CD */	bl cM_atan2s__Fff
/* 800D91AC  7C 64 07 34 */	extsh r4, r3
/* 800D91B0  7C 04 D8 00 */	cmpw r4, r27
/* 800D91B4  40 80 00 08 */	bge lbl_800D91BC
/* 800D91B8  48 00 00 18 */	b lbl_800D91D0
lbl_800D91BC:
/* 800D91BC  7F 40 07 34 */	extsh r0, r26
/* 800D91C0  7C 04 00 00 */	cmpw r4, r0
/* 800D91C4  40 81 00 08 */	ble lbl_800D91CC
/* 800D91C8  7F 43 D3 78 */	mr r3, r26
lbl_800D91CC:
/* 800D91CC  7C 7B 1B 78 */	mr r27, r3
lbl_800D91D0:
/* 800D91D0  B3 7C 30 0E */	sth r27, 0x300e(r28)
/* 800D91D4  2C 1E 00 00 */	cmpwi r30, 0
/* 800D91D8  41 82 00 0C */	beq lbl_800D91E4
/* 800D91DC  C3 C2 92 C0 */	lfs f30, lit_6108(r2)
/* 800D91E0  48 00 00 24 */	b lbl_800D9204
lbl_800D91E4:
/* 800D91E4  80 1C 27 EC */	lwz r0, 0x27ec(r28)
/* 800D91E8  28 00 00 00 */	cmplwi r0, 0
/* 800D91EC  41 82 00 10 */	beq lbl_800D91FC
/* 800D91F0  38 7F 00 BC */	addi r3, r31, 0xbc
/* 800D91F4  C3 C3 00 08 */	lfs f30, 8(r3)
/* 800D91F8  48 00 00 0C */	b lbl_800D9204
lbl_800D91FC:
/* 800D91FC  38 7F 01 10 */	addi r3, r31, 0x110
/* 800D9200  C3 C3 00 08 */	lfs f30, 8(r3)
lbl_800D9204:
/* 800D9204  7F 83 E3 78 */	mr r3, r28
/* 800D9208  4B FD 4A 49 */	bl checkAtnLeftAnime__9daAlink_cFv
/* 800D920C  2C 03 00 00 */	cmpwi r3, 0
/* 800D9210  41 82 00 28 */	beq lbl_800D9238
/* 800D9214  7F 83 E3 78 */	mr r3, r28
/* 800D9218  38 80 00 1A */	li r4, 0x1a
/* 800D921C  38 A0 00 02 */	li r5, 2
/* 800D9220  FC 20 F0 90 */	fmr f1, f30
/* 800D9224  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800D9228  38 C0 FF FF */	li r6, -1
/* 800D922C  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800D9230  4B FD 47 35 */	bl setUnderAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERffsf
/* 800D9234  48 00 00 34 */	b lbl_800D9268
lbl_800D9238:
/* 800D9238  7F 83 E3 78 */	mr r3, r28
/* 800D923C  4B FD 4A B1 */	bl checkAtnRightAnime__9daAlink_cFv
/* 800D9240  2C 03 00 00 */	cmpwi r3, 0
/* 800D9244  41 82 00 24 */	beq lbl_800D9268
/* 800D9248  7F 83 E3 78 */	mr r3, r28
/* 800D924C  38 80 00 1C */	li r4, 0x1c
/* 800D9250  38 A0 00 02 */	li r5, 2
/* 800D9254  FC 20 F0 90 */	fmr f1, f30
/* 800D9258  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800D925C  38 C0 FF FF */	li r6, -1
/* 800D9260  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800D9264  4B FD 47 01 */	bl setUnderAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERffsf
lbl_800D9268:
/* 800D9268  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800D926C  FC 20 00 50 */	fneg f1, f0
/* 800D9270  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800D9274  FC 40 00 50 */	fneg f2, f0
/* 800D9278  48 18 E3 FD */	bl cM_atan2s__Fff
/* 800D927C  4B FD A2 19 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800D9280  2C 03 00 00 */	cmpwi r3, 0
/* 800D9284  40 82 00 24 */	bne lbl_800D92A8
/* 800D9288  7F 83 E3 78 */	mr r3, r28
/* 800D928C  38 80 00 7F */	li r4, 0x7f
/* 800D9290  38 BF 0B F4 */	addi r5, r31, 0xbf4
/* 800D9294  4B FD 3E 61 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D9298  38 7F 0B F4 */	addi r3, r31, 0xbf4
/* 800D929C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800D92A0  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 800D92A4  48 00 00 7C */	b lbl_800D9320
lbl_800D92A8:
/* 800D92A8  2C 03 00 01 */	cmpwi r3, 1
/* 800D92AC  40 82 00 28 */	bne lbl_800D92D4
/* 800D92B0  7F 83 E3 78 */	mr r3, r28
/* 800D92B4  38 80 00 80 */	li r4, 0x80
/* 800D92B8  38 BF 0B F4 */	addi r5, r31, 0xbf4
/* 800D92BC  38 A5 00 14 */	addi r5, r5, 0x14
/* 800D92C0  4B FD 3E 35 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D92C4  38 7F 0B F4 */	addi r3, r31, 0xbf4
/* 800D92C8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800D92CC  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 800D92D0  48 00 00 50 */	b lbl_800D9320
lbl_800D92D4:
/* 800D92D4  2C 03 00 02 */	cmpwi r3, 2
/* 800D92D8  40 82 00 28 */	bne lbl_800D9300
/* 800D92DC  7F 83 E3 78 */	mr r3, r28
/* 800D92E0  38 80 00 81 */	li r4, 0x81
/* 800D92E4  38 BF 0B F4 */	addi r5, r31, 0xbf4
/* 800D92E8  38 A5 00 28 */	addi r5, r5, 0x28
/* 800D92EC  4B FD 3E 09 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D92F0  38 7F 0B F4 */	addi r3, r31, 0xbf4
/* 800D92F4  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800D92F8  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 800D92FC  48 00 00 24 */	b lbl_800D9320
lbl_800D9300:
/* 800D9300  7F 83 E3 78 */	mr r3, r28
/* 800D9304  38 80 00 82 */	li r4, 0x82
/* 800D9308  38 BF 0B F4 */	addi r5, r31, 0xbf4
/* 800D930C  38 A5 00 3C */	addi r5, r5, 0x3c
/* 800D9310  4B FD 3D E5 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D9314  38 7F 0B F4 */	addi r3, r31, 0xbf4
/* 800D9318  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 800D931C  D0 1C 34 78 */	stfs f0, 0x3478(r28)
lbl_800D9320:
/* 800D9320  7F A3 EB 78 */	mr r3, r29
/* 800D9324  48 18 DE 05 */	bl atan2sX_Z__4cXyzCFv
/* 800D9328  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 800D932C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 800D9330  B0 1C 30 10 */	sth r0, 0x3010(r28)
/* 800D9334  C0 3D 00 08 */	lfs f1, 8(r29)
/* 800D9338  C0 1D 00 00 */	lfs f0, 0(r29)
/* 800D933C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800D9340  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D9344  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800D9348  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800D934C  38 61 00 0C */	addi r3, r1, 0xc
/* 800D9350  48 26 DD E9 */	bl PSVECSquareMag
/* 800D9354  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D9358  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D935C  40 81 00 58 */	ble lbl_800D93B4
/* 800D9360  FC 00 08 34 */	frsqrte f0, f1
/* 800D9364  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800D9368  FC 44 00 32 */	fmul f2, f4, f0
/* 800D936C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800D9370  FC 00 00 32 */	fmul f0, f0, f0
/* 800D9374  FC 01 00 32 */	fmul f0, f1, f0
/* 800D9378  FC 03 00 28 */	fsub f0, f3, f0
/* 800D937C  FC 02 00 32 */	fmul f0, f2, f0
/* 800D9380  FC 44 00 32 */	fmul f2, f4, f0
/* 800D9384  FC 00 00 32 */	fmul f0, f0, f0
/* 800D9388  FC 01 00 32 */	fmul f0, f1, f0
/* 800D938C  FC 03 00 28 */	fsub f0, f3, f0
/* 800D9390  FC 02 00 32 */	fmul f0, f2, f0
/* 800D9394  FC 44 00 32 */	fmul f2, f4, f0
/* 800D9398  FC 00 00 32 */	fmul f0, f0, f0
/* 800D939C  FC 01 00 32 */	fmul f0, f1, f0
/* 800D93A0  FC 03 00 28 */	fsub f0, f3, f0
/* 800D93A4  FC 02 00 32 */	fmul f0, f2, f0
/* 800D93A8  FC 21 00 32 */	fmul f1, f1, f0
/* 800D93AC  FC 20 08 18 */	frsp f1, f1
/* 800D93B0  48 00 00 88 */	b lbl_800D9438
lbl_800D93B4:
/* 800D93B4  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800D93B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D93BC  40 80 00 10 */	bge lbl_800D93CC
/* 800D93C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800D93C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800D93C8  48 00 00 70 */	b lbl_800D9438
lbl_800D93CC:
/* 800D93CC  D0 21 00 08 */	stfs f1, 8(r1)
/* 800D93D0  80 81 00 08 */	lwz r4, 8(r1)
/* 800D93D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800D93D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 800D93DC  7C 03 00 00 */	cmpw r3, r0
/* 800D93E0  41 82 00 14 */	beq lbl_800D93F4
/* 800D93E4  40 80 00 40 */	bge lbl_800D9424
/* 800D93E8  2C 03 00 00 */	cmpwi r3, 0
/* 800D93EC  41 82 00 20 */	beq lbl_800D940C
/* 800D93F0  48 00 00 34 */	b lbl_800D9424
lbl_800D93F4:
/* 800D93F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800D93F8  41 82 00 0C */	beq lbl_800D9404
/* 800D93FC  38 00 00 01 */	li r0, 1
/* 800D9400  48 00 00 28 */	b lbl_800D9428
lbl_800D9404:
/* 800D9404  38 00 00 02 */	li r0, 2
/* 800D9408  48 00 00 20 */	b lbl_800D9428
lbl_800D940C:
/* 800D940C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800D9410  41 82 00 0C */	beq lbl_800D941C
/* 800D9414  38 00 00 05 */	li r0, 5
/* 800D9418  48 00 00 10 */	b lbl_800D9428
lbl_800D941C:
/* 800D941C  38 00 00 03 */	li r0, 3
/* 800D9420  48 00 00 08 */	b lbl_800D9428
lbl_800D9424:
/* 800D9424  38 00 00 04 */	li r0, 4
lbl_800D9428:
/* 800D9428  2C 00 00 01 */	cmpwi r0, 1
/* 800D942C  40 82 00 0C */	bne lbl_800D9438
/* 800D9430  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800D9434  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800D9438:
/* 800D9438  38 7F 0B F4 */	addi r3, r31, 0xbf4
/* 800D943C  C0 43 00 54 */	lfs f2, 0x54(r3)
/* 800D9440  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 800D9444  EC 00 00 72 */	fmuls f0, f0, f1
/* 800D9448  EC 02 00 2A */	fadds f0, f2, f0
/* 800D944C  D0 1C 33 98 */	stfs f0, 0x3398(r28)
/* 800D9450  C0 1C 33 98 */	lfs f0, 0x3398(r28)
/* 800D9454  38 7F 00 64 */	addi r3, r31, 0x64
/* 800D9458  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 800D945C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800D9460  40 81 00 08 */	ble lbl_800D9468
/* 800D9464  D0 3C 33 98 */	stfs f1, 0x3398(r28)
lbl_800D9468:
/* 800D9468  C0 42 93 AC */	lfs f2, lit_9828(r2)
/* 800D946C  A8 7C 1F D6 */	lha r3, 0x1fd6(r28)
/* 800D9470  A8 1C 1F D8 */	lha r0, 0x1fd8(r28)
/* 800D9474  7C 03 00 50 */	subf r0, r3, r0
/* 800D9478  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800D947C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D9480  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D9484  3C 00 43 30 */	lis r0, 0x4330
/* 800D9488  90 01 00 30 */	stw r0, 0x30(r1)
/* 800D948C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 800D9490  EC 00 08 28 */	fsubs f0, f0, f1
/* 800D9494  EC 02 00 24 */	fdivs f0, f2, f0
/* 800D9498  D0 1C 34 7C */	stfs f0, 0x347c(r28)
/* 800D949C  2C 1E 00 00 */	cmpwi r30, 0
/* 800D94A0  41 82 00 38 */	beq lbl_800D94D8
/* 800D94A4  38 7F 0B F4 */	addi r3, r31, 0xbf4
/* 800D94A8  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 800D94AC  D0 1C 1F DC */	stfs f0, 0x1fdc(r28)
/* 800D94B0  38 00 00 07 */	li r0, 7
/* 800D94B4  B0 1C 1F D8 */	sth r0, 0x1fd8(r28)
/* 800D94B8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D94BC  D0 1C 33 98 */	stfs f0, 0x3398(r28)
/* 800D94C0  38 00 00 5A */	li r0, 0x5a
/* 800D94C4  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 800D94C8  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800D94CC  64 00 40 00 */	oris r0, r0, 0x4000
/* 800D94D0  90 1C 05 74 */	stw r0, 0x574(r28)
/* 800D94D4  48 00 00 0C */	b lbl_800D94E0
lbl_800D94D8:
/* 800D94D8  38 00 00 00 */	li r0, 0
/* 800D94DC  B0 1C 30 08 */	sth r0, 0x3008(r28)
lbl_800D94E0:
/* 800D94E0  38 00 00 00 */	li r0, 0
/* 800D94E4  B0 1C 30 0A */	sth r0, 0x300a(r28)
/* 800D94E8  38 60 00 01 */	li r3, 1
lbl_800D94EC:
/* 800D94EC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 800D94F0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 800D94F4  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 800D94F8  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 800D94FC  39 61 00 50 */	addi r11, r1, 0x50
/* 800D9500  48 28 8D 1D */	bl _restgpr_26
/* 800D9504  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800D9508  7C 08 03 A6 */	mtlr r0
/* 800D950C  38 21 00 70 */	addi r1, r1, 0x70
/* 800D9510  4E 80 00 20 */	blr 
