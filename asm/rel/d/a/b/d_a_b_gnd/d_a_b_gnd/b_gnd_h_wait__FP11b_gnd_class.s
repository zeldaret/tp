lbl_805F5F3C:
/* 805F5F3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F5F40  7C 08 02 A6 */	mflr r0
/* 805F5F44  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F5F48  39 61 00 20 */	addi r11, r1, 0x20
/* 805F5F4C  4B D6 C2 90 */	b _savegpr_29
/* 805F5F50  7C 7D 1B 78 */	mr r29, r3
/* 805F5F54  3C 60 80 60 */	lis r3, lit_3815@ha
/* 805F5F58  3B E3 26 64 */	addi r31, r3, lit_3815@l
/* 805F5F5C  AB DD 0C 3C */	lha r30, 0xc3c(r29)
/* 805F5F60  A8 1D 05 BC */	lha r0, 0x5bc(r29)
/* 805F5F64  2C 00 00 01 */	cmpwi r0, 1
/* 805F5F68  41 82 00 80 */	beq lbl_805F5FE8
/* 805F5F6C  40 80 00 14 */	bge lbl_805F5F80
/* 805F5F70  2C 00 FF FF */	cmpwi r0, -1
/* 805F5F74  41 82 00 18 */	beq lbl_805F5F8C
/* 805F5F78  40 80 00 38 */	bge lbl_805F5FB0
/* 805F5F7C  48 00 00 C4 */	b lbl_805F6040
lbl_805F5F80:
/* 805F5F80  2C 00 00 03 */	cmpwi r0, 3
/* 805F5F84  40 80 00 BC */	bge lbl_805F6040
/* 805F5F88  48 00 00 78 */	b lbl_805F6000
lbl_805F5F8C:
/* 805F5F8C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805F5F90  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805F5F94  80 63 00 00 */	lwz r3, 0(r3)
/* 805F5F98  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805F5F9C  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005D@ha */
/* 805F5FA0  38 84 00 5D */	addi r4, r4, 0x005D /* 0x0200005D@l */
/* 805F5FA4  38 A0 00 00 */	li r5, 0
/* 805F5FA8  38 C0 00 00 */	li r6, 0
/* 805F5FAC  4B CB 90 64 */	b bgmStart__8Z2SeqMgrFUlUll
lbl_805F5FB0:
/* 805F5FB0  7F A3 EB 78 */	mr r3, r29
/* 805F5FB4  38 80 00 4B */	li r4, 0x4b
/* 805F5FB8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805F5FBC  38 A0 00 02 */	li r5, 2
/* 805F5FC0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F5FC4  4B FF EA D1 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F5FC8  7F A3 EB 78 */	mr r3, r29
/* 805F5FCC  38 80 00 0F */	li r4, 0xf
/* 805F5FD0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805F5FD4  38 A0 00 02 */	li r5, 2
/* 805F5FD8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F5FDC  4B FF EB 6D */	bl h_anm_init__FP11b_gnd_classifUcf
/* 805F5FE0  38 00 00 01 */	li r0, 1
/* 805F5FE4  B0 1D 05 BC */	sth r0, 0x5bc(r29)
lbl_805F5FE8:
/* 805F5FE8  A8 1D 0C 44 */	lha r0, 0xc44(r29)
/* 805F5FEC  2C 00 00 00 */	cmpwi r0, 0
/* 805F5FF0  40 82 00 50 */	bne lbl_805F6040
/* 805F5FF4  38 00 00 02 */	li r0, 2
/* 805F5FF8  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 805F5FFC  48 00 00 44 */	b lbl_805F6040
lbl_805F6000:
/* 805F6000  38 7D 04 DE */	addi r3, r29, 0x4de
/* 805F6004  7F C4 F3 78 */	mr r4, r30
/* 805F6008  38 A0 00 08 */	li r5, 8
/* 805F600C  38 C0 02 00 */	li r6, 0x200
/* 805F6010  4B C7 A5 F8 */	b cLib_addCalcAngleS2__FPssss
/* 805F6014  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805F6018  7C 00 F0 50 */	subf r0, r0, r30
/* 805F601C  7C 00 07 34 */	extsh r0, r0
/* 805F6020  2C 00 08 00 */	cmpwi r0, 0x800
/* 805F6024  40 80 00 1C */	bge lbl_805F6040
/* 805F6028  2C 00 F8 00 */	cmpwi r0, -2048
/* 805F602C  40 81 00 14 */	ble lbl_805F6040
/* 805F6030  38 00 00 02 */	li r0, 2
/* 805F6034  B0 1D 0A FE */	sth r0, 0xafe(r29)
/* 805F6038  38 00 00 00 */	li r0, 0
/* 805F603C  B0 1D 05 BC */	sth r0, 0x5bc(r29)
lbl_805F6040:
/* 805F6040  38 7D 05 2C */	addi r3, r29, 0x52c
/* 805F6044  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805F6048  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 805F604C  4B C7 9A 34 */	b cLib_addCalc0__FPfff
/* 805F6050  39 61 00 20 */	addi r11, r1, 0x20
/* 805F6054  4B D6 C1 D4 */	b _restgpr_29
/* 805F6058  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F605C  7C 08 03 A6 */	mtlr r0
/* 805F6060  38 21 00 20 */	addi r1, r1, 0x20
/* 805F6064  4E 80 00 20 */	blr 
