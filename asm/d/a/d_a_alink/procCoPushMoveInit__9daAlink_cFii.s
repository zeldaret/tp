lbl_800E875C:
/* 800E875C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E8760  7C 08 02 A6 */	mflr r0
/* 800E8764  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E8768  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800E876C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 800E8770  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800E8774  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800E8778  7C 7F 1B 78 */	mr r31, r3
/* 800E877C  7C 80 23 78 */	mr r0, r4
/* 800E8780  7C BE 2B 78 */	mr r30, r5
/* 800E8784  38 80 00 00 */	li r4, 0
/* 800E8788  7C 05 03 78 */	mr r5, r0
/* 800E878C  4B FF F7 B1 */	bl setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli
/* 800E8790  2C 03 00 00 */	cmpwi r3, 0
/* 800E8794  40 82 00 0C */	bne lbl_800E87A0
/* 800E8798  38 60 00 00 */	li r3, 0
/* 800E879C  48 00 02 34 */	b lbl_800E89D0
lbl_800E87A0:
/* 800E87A0  7F E3 FB 78 */	mr r3, r31
/* 800E87A4  38 80 01 44 */	li r4, 0x144
/* 800E87A8  4B FD 97 C5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E87AC  7F E3 FB 78 */	mr r3, r31
/* 800E87B0  4B FF F8 F5 */	bl checkPushPullTurnBlock__9daAlink_cFv
/* 800E87B4  B0 7F 30 08 */	sth r3, 0x3008(r31)
/* 800E87B8  7F E3 FB 78 */	mr r3, r31
/* 800E87BC  4B FF FB 99 */	bl getPushPullAnimeSpeed__9daAlink_cFv
/* 800E87C0  FF E0 08 90 */	fmr f31, f1
/* 800E87C4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800E87C8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E87CC  41 82 00 50 */	beq lbl_800E881C
/* 800E87D0  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800E87D4  2C 00 00 00 */	cmpwi r0, 0
/* 800E87D8  41 82 00 18 */	beq lbl_800E87F0
/* 800E87DC  7F E3 FB 78 */	mr r3, r31
/* 800E87E0  38 80 00 09 */	li r4, 9
/* 800E87E4  48 04 0E 95 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 800E87E8  C3 E2 92 B8 */	lfs f31, lit_6040(r2)
/* 800E87EC  48 00 00 24 */	b lbl_800E8810
lbl_800E87F0:
/* 800E87F0  7F E3 FB 78 */	mr r3, r31
/* 800E87F4  38 80 00 08 */	li r4, 8
/* 800E87F8  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800E87FC  38 A0 00 18 */	li r5, 0x18
/* 800E8800  3C C0 80 39 */	lis r6, m__20daAlinkHIO_wlPush_c0@ha /* 0x8038F124@ha */
/* 800E8804  38 C6 F1 24 */	addi r6, r6, m__20daAlinkHIO_wlPush_c0@l /* 0x8038F124@l */
/* 800E8808  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 800E880C  48 04 0E F9 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
lbl_800E8810:
/* 800E8810  C0 02 94 94 */	lfs f0, lit_16210(r2)
/* 800E8814  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800E8818  48 00 00 44 */	b lbl_800E885C
lbl_800E881C:
/* 800E881C  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800E8820  2C 00 00 00 */	cmpwi r0, 0
/* 800E8824  41 82 00 18 */	beq lbl_800E883C
/* 800E8828  7F E3 FB 78 */	mr r3, r31
/* 800E882C  38 80 00 38 */	li r4, 0x38
/* 800E8830  4B FC 47 51 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800E8834  C3 E2 92 B8 */	lfs f31, lit_6040(r2)
/* 800E8838  48 00 00 1C */	b lbl_800E8854
lbl_800E883C:
/* 800E883C  7F E3 FB 78 */	mr r3, r31
/* 800E8840  38 80 00 37 */	li r4, 0x37
/* 800E8844  3C A0 80 39 */	lis r5, m__22daAlinkHIO_pushpull_c0@ha /* 0x8038E210@ha */
/* 800E8848  38 A5 E2 10 */	addi r5, r5, m__22daAlinkHIO_pushpull_c0@l /* 0x8038E210@l */
/* 800E884C  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 800E8850  4B FC 47 91 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_800E8854:
/* 800E8854  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 800E8858  D0 1F 34 78 */	stfs f0, 0x3478(r31)
lbl_800E885C:
/* 800E885C  D3 FF 1F DC */	stfs f31, 0x1fdc(r31)
/* 800E8860  38 00 00 01 */	li r0, 1
/* 800E8864  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 800E8868  B3 DF 30 10 */	sth r30, 0x3010(r31)
/* 800E886C  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800E8870  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 800E8874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E8878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E887C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800E8880  A0 9F 1E 1E */	lhz r4, 0x1e1e(r31)
/* 800E8884  4B F8 BD 95 */	bl GetActorPointer__4cBgSCFi
/* 800E8888  7C 7E 1B 78 */	mr r30, r3
/* 800E888C  7F E4 FB 78 */	mr r4, r31
/* 800E8890  4B F3 1E 81 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800E8894  B0 7F 30 0E */	sth r3, 0x300e(r31)
/* 800E8898  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 800E889C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800E88A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E88A4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E88A8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800E88AC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 800E88B0  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800E88B4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800E88B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800E88BC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800E88C0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 800E88C4  38 61 00 0C */	addi r3, r1, 0xc
/* 800E88C8  38 81 00 18 */	addi r4, r1, 0x18
/* 800E88CC  48 25 EA D1 */	bl PSVECSquareDistance
/* 800E88D0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E88D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E88D8  40 81 00 58 */	ble lbl_800E8930
/* 800E88DC  FC 00 08 34 */	frsqrte f0, f1
/* 800E88E0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800E88E4  FC 44 00 32 */	fmul f2, f4, f0
/* 800E88E8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800E88EC  FC 00 00 32 */	fmul f0, f0, f0
/* 800E88F0  FC 01 00 32 */	fmul f0, f1, f0
/* 800E88F4  FC 03 00 28 */	fsub f0, f3, f0
/* 800E88F8  FC 02 00 32 */	fmul f0, f2, f0
/* 800E88FC  FC 44 00 32 */	fmul f2, f4, f0
/* 800E8900  FC 00 00 32 */	fmul f0, f0, f0
/* 800E8904  FC 01 00 32 */	fmul f0, f1, f0
/* 800E8908  FC 03 00 28 */	fsub f0, f3, f0
/* 800E890C  FC 02 00 32 */	fmul f0, f2, f0
/* 800E8910  FC 44 00 32 */	fmul f2, f4, f0
/* 800E8914  FC 00 00 32 */	fmul f0, f0, f0
/* 800E8918  FC 01 00 32 */	fmul f0, f1, f0
/* 800E891C  FC 03 00 28 */	fsub f0, f3, f0
/* 800E8920  FC 02 00 32 */	fmul f0, f2, f0
/* 800E8924  FC 21 00 32 */	fmul f1, f1, f0
/* 800E8928  FC 20 08 18 */	frsp f1, f1
/* 800E892C  48 00 00 88 */	b lbl_800E89B4
lbl_800E8930:
/* 800E8930  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800E8934  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E8938  40 80 00 10 */	bge lbl_800E8948
/* 800E893C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800E8940  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800E8944  48 00 00 70 */	b lbl_800E89B4
lbl_800E8948:
/* 800E8948  D0 21 00 08 */	stfs f1, 8(r1)
/* 800E894C  80 81 00 08 */	lwz r4, 8(r1)
/* 800E8950  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800E8954  3C 00 7F 80 */	lis r0, 0x7f80
/* 800E8958  7C 03 00 00 */	cmpw r3, r0
/* 800E895C  41 82 00 14 */	beq lbl_800E8970
/* 800E8960  40 80 00 40 */	bge lbl_800E89A0
/* 800E8964  2C 03 00 00 */	cmpwi r3, 0
/* 800E8968  41 82 00 20 */	beq lbl_800E8988
/* 800E896C  48 00 00 34 */	b lbl_800E89A0
lbl_800E8970:
/* 800E8970  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E8974  41 82 00 0C */	beq lbl_800E8980
/* 800E8978  38 00 00 01 */	li r0, 1
/* 800E897C  48 00 00 28 */	b lbl_800E89A4
lbl_800E8980:
/* 800E8980  38 00 00 02 */	li r0, 2
/* 800E8984  48 00 00 20 */	b lbl_800E89A4
lbl_800E8988:
/* 800E8988  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E898C  41 82 00 0C */	beq lbl_800E8998
/* 800E8990  38 00 00 05 */	li r0, 5
/* 800E8994  48 00 00 10 */	b lbl_800E89A4
lbl_800E8998:
/* 800E8998  38 00 00 03 */	li r0, 3
/* 800E899C  48 00 00 08 */	b lbl_800E89A4
lbl_800E89A0:
/* 800E89A0  38 00 00 04 */	li r0, 4
lbl_800E89A4:
/* 800E89A4  2C 00 00 01 */	cmpwi r0, 1
/* 800E89A8  40 82 00 0C */	bne lbl_800E89B4
/* 800E89AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800E89B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800E89B4:
/* 800E89B4  D0 3F 34 7C */	stfs f1, 0x347c(r31)
/* 800E89B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E89BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E89C0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800E89C4  64 00 04 00 */	oris r0, r0, 0x400
/* 800E89C8  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800E89CC  38 60 00 01 */	li r3, 1
lbl_800E89D0:
/* 800E89D0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 800E89D4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800E89D8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800E89DC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800E89E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E89E4  7C 08 03 A6 */	mtlr r0
/* 800E89E8  38 21 00 40 */	addi r1, r1, 0x40
/* 800E89EC  4E 80 00 20 */	blr 
