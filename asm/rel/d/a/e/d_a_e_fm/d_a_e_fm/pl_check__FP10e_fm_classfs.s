lbl_804F005C:
/* 804F005C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0060  7C 08 02 A6 */	mflr r0
/* 804F0064  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F0068  DB E1 00 08 */	stfd f31, 8(r1)
/* 804F006C  FF E0 08 90 */	fmr f31, f1
/* 804F0070  7C 80 07 35 */	extsh. r0, r4
/* 804F0074  41 82 00 40 */	beq lbl_804F00B4
/* 804F0078  A8 A3 05 C6 */	lha r5, 0x5c6(r3)
/* 804F007C  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 804F0080  7C 05 00 50 */	subf r0, r5, r0
/* 804F0084  7C 05 07 34 */	extsh r5, r0
/* 804F0088  7C 80 07 34 */	extsh r0, r4
/* 804F008C  7C 05 00 00 */	cmpw r5, r0
/* 804F0090  40 81 00 0C */	ble lbl_804F009C
/* 804F0094  38 60 00 00 */	li r3, 0
/* 804F0098  48 00 00 38 */	b lbl_804F00D0
lbl_804F009C:
/* 804F009C  7C 04 00 D0 */	neg r0, r4
/* 804F00A0  7C 00 07 34 */	extsh r0, r0
/* 804F00A4  7C 05 00 00 */	cmpw r5, r0
/* 804F00A8  40 80 00 0C */	bge lbl_804F00B4
/* 804F00AC  38 60 00 00 */	li r3, 0
/* 804F00B0  48 00 00 20 */	b lbl_804F00D0
lbl_804F00B4:
/* 804F00B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F00B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F00BC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 804F00C0  4B B2 A7 21 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804F00C4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804F00C8  7C 00 00 26 */	mfcr r0
/* 804F00CC  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_804F00D0:
/* 804F00D0  CB E1 00 08 */	lfd f31, 8(r1)
/* 804F00D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F00D8  7C 08 03 A6 */	mtlr r0
/* 804F00DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F00E0  4E 80 00 20 */	blr 
