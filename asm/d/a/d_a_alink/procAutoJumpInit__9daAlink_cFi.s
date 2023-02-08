lbl_800C5E68:
/* 800C5E68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C5E6C  7C 08 02 A6 */	mflr r0
/* 800C5E70  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C5E74  39 61 00 20 */	addi r11, r1, 0x20
/* 800C5E78  48 29 C3 5D */	bl _savegpr_27
/* 800C5E7C  7C 7B 1B 78 */	mr r27, r3
/* 800C5E80  7C 9C 23 78 */	mr r28, r4
/* 800C5E84  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 800C5E88  54 1F 05 6A */	rlwinm r31, r0, 0, 0x15, 0x15
/* 800C5E8C  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800C5E90  20 80 00 0E */	subfic r4, r0, 0xe
/* 800C5E94  30 04 FF FF */	addic r0, r4, -1
/* 800C5E98  7F A0 21 10 */	subfe r29, r0, r4
/* 800C5E9C  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800C5EA0  28 00 01 9C */	cmplwi r0, 0x19c
/* 800C5EA4  40 82 00 20 */	bne lbl_800C5EC4
/* 800C5EA8  38 80 00 02 */	li r4, 2
/* 800C5EAC  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C5EB0  4B FE 78 75 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800C5EB4  7F 63 DB 78 */	mr r3, r27
/* 800C5EB8  38 80 00 01 */	li r4, 1
/* 800C5EBC  38 A0 00 00 */	li r5, 0
/* 800C5EC0  4B FF B4 1D */	bl deleteEquipItem__9daAlink_cFii
lbl_800C5EC4:
/* 800C5EC4  80 7B 27 F4 */	lwz r3, 0x27f4(r27)
/* 800C5EC8  28 03 00 00 */	cmplwi r3, 0
/* 800C5ECC  41 82 00 20 */	beq lbl_800C5EEC
/* 800C5ED0  A8 03 00 08 */	lha r0, 8(r3)
/* 800C5ED4  2C 00 00 ED */	cmpwi r0, 0xed
/* 800C5ED8  40 82 00 14 */	bne lbl_800C5EEC
/* 800C5EDC  7F 63 DB 78 */	mr r3, r27
/* 800C5EE0  38 80 00 01 */	li r4, 1
/* 800C5EE4  48 00 12 15 */	bl procSmallJumpInit__9daAlink_cFi
/* 800C5EE8  48 00 02 EC */	b lbl_800C61D4
lbl_800C5EEC:
/* 800C5EEC  7F 63 DB 78 */	mr r3, r27
/* 800C5EF0  38 80 00 15 */	li r4, 0x15
/* 800C5EF4  4B FF CE B1 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C5EF8  2C 03 00 00 */	cmpwi r3, 0
/* 800C5EFC  40 82 00 0C */	bne lbl_800C5F08
/* 800C5F00  38 60 00 00 */	li r3, 0
/* 800C5F04  48 00 02 D0 */	b lbl_800C61D4
lbl_800C5F08:
/* 800C5F08  38 00 00 00 */	li r0, 0
/* 800C5F0C  B0 1B 30 08 */	sth r0, 0x3008(r27)
/* 800C5F10  28 1F 00 00 */	cmplwi r31, 0
/* 800C5F14  40 82 00 1C */	bne lbl_800C5F30
/* 800C5F18  80 1B 06 14 */	lwz r0, 0x614(r27)
/* 800C5F1C  28 00 00 18 */	cmplwi r0, 0x18
/* 800C5F20  40 82 00 64 */	bne lbl_800C5F84
/* 800C5F24  80 1B 06 0C */	lwz r0, 0x60c(r27)
/* 800C5F28  2C 00 00 01 */	cmpwi r0, 1
/* 800C5F2C  40 82 00 58 */	bne lbl_800C5F84
lbl_800C5F30:
/* 800C5F30  28 1F 00 00 */	cmplwi r31, 0
/* 800C5F34  41 82 00 18 */	beq lbl_800C5F4C
/* 800C5F38  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 800C5F3C  60 00 20 00 */	ori r0, r0, 0x2000
/* 800C5F40  90 1B 31 A0 */	stw r0, 0x31a0(r27)
/* 800C5F44  38 00 00 05 */	li r0, 5
/* 800C5F48  B0 1B 30 08 */	sth r0, 0x3008(r27)
lbl_800C5F4C:
/* 800C5F4C  7F 63 DB 78 */	mr r3, r27
/* 800C5F50  38 80 00 33 */	li r4, 0x33
/* 800C5F54  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C5F58  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C5F5C  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C5F60  C0 45 00 6C */	lfs f2, 0x6c(r5)
/* 800C5F64  4B FE 70 7D */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800C5F68  38 00 00 33 */	li r0, 0x33
/* 800C5F6C  90 1B 31 98 */	stw r0, 0x3198(r27)
/* 800C5F70  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 800C5F74  3C 63 00 01 */	addis r3, r3, 1
/* 800C5F78  38 03 80 00 */	addi r0, r3, -32768
/* 800C5F7C  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 800C5F80  48 00 00 44 */	b lbl_800C5FC4
lbl_800C5F84:
/* 800C5F84  7F 63 DB 78 */	mr r3, r27
/* 800C5F88  38 80 00 31 */	li r4, 0x31
/* 800C5F8C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C5F90  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C5F94  4B FE 71 61 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C5F98  2C 1D 00 00 */	cmpwi r29, 0
/* 800C5F9C  40 82 00 18 */	bne lbl_800C5FB4
/* 800C5FA0  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 800C5FA4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C5FA8  38 80 00 00 */	li r4, 0
/* 800C5FAC  38 A0 00 23 */	li r5, 0x23
/* 800C5FB0  4B F4 98 99 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_800C5FB4:
/* 800C5FB4  38 00 00 31 */	li r0, 0x31
/* 800C5FB8  90 1B 31 98 */	stw r0, 0x3198(r27)
/* 800C5FBC  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 800C5FC0  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_800C5FC4:
/* 800C5FC4  80 7B 28 30 */	lwz r3, 0x2830(r27)
/* 800C5FC8  28 03 00 00 */	cmplwi r3, 0
/* 800C5FCC  41 82 00 0C */	beq lbl_800C5FD8
/* 800C5FD0  A8 83 00 08 */	lha r4, 8(r3)
/* 800C5FD4  48 00 00 08 */	b lbl_800C5FDC
lbl_800C5FD8:
/* 800C5FD8  38 80 00 FD */	li r4, 0xfd
lbl_800C5FDC:
/* 800C5FDC  3C 60 80 39 */	lis r3, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C5FE0  38 63 E0 68 */	addi r3, r3, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C5FE4  AB C3 00 52 */	lha r30, 0x52(r3)
/* 800C5FE8  3B A0 00 00 */	li r29, 0
/* 800C5FEC  C0 02 93 9C */	lfs f0, lit_9053(r2)
/* 800C5FF0  D0 1B 34 78 */	stfs f0, 0x3478(r27)
/* 800C5FF4  7C 80 07 34 */	extsh r0, r4
/* 800C5FF8  2C 00 01 08 */	cmpwi r0, 0x108
/* 800C5FFC  41 82 00 0C */	beq lbl_800C6008
/* 800C6000  2C 00 01 09 */	cmpwi r0, 0x109
/* 800C6004  40 82 00 94 */	bne lbl_800C6098
lbl_800C6008:
/* 800C6008  7C 80 07 34 */	extsh r0, r4
/* 800C600C  2C 00 01 08 */	cmpwi r0, 0x108
/* 800C6010  40 82 00 30 */	bne lbl_800C6040
/* 800C6014  80 7B 28 30 */	lwz r3, 0x2830(r27)
/* 800C6018  88 03 05 F0 */	lbz r0, 0x5f0(r3)
/* 800C601C  7C 00 07 74 */	extsb r0, r0
/* 800C6020  20 00 00 03 */	subfic r0, r0, 3
/* 800C6024  7C 00 00 34 */	cntlzw r0, r0
/* 800C6028  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 800C602C  28 00 00 01 */	cmplwi r0, 1
/* 800C6030  40 82 00 10 */	bne lbl_800C6040
/* 800C6034  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800C6038  D0 1B 05 94 */	stfs f0, 0x594(r27)
/* 800C603C  48 00 00 64 */	b lbl_800C60A0
lbl_800C6040:
/* 800C6040  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C6044  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C6048  38 63 01 06 */	addi r3, r3, 0x106
/* 800C604C  4B FD 7A 15 */	bl checkStageName__9daAlink_cFPCc
/* 800C6050  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C6054  41 82 00 18 */	beq lbl_800C606C
/* 800C6058  C0 02 93 38 */	lfs f0, lit_7807(r2)
/* 800C605C  D0 1B 05 94 */	stfs f0, 0x594(r27)
/* 800C6060  C0 02 93 9C */	lfs f0, lit_9053(r2)
/* 800C6064  D0 1B 34 78 */	stfs f0, 0x3478(r27)
/* 800C6068  48 00 00 1C */	b lbl_800C6084
lbl_800C606C:
/* 800C606C  3C 60 80 39 */	lis r3, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C6070  38 63 E0 68 */	addi r3, r3, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C6074  C0 03 00 A8 */	lfs f0, 0xa8(r3)
/* 800C6078  D0 1B 05 94 */	stfs f0, 0x594(r27)
/* 800C607C  C0 03 00 AC */	lfs f0, 0xac(r3)
/* 800C6080  D0 1B 34 78 */	stfs f0, 0x3478(r27)
lbl_800C6084:
/* 800C6084  3C 60 80 39 */	lis r3, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C6088  38 63 E0 68 */	addi r3, r3, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C608C  AB C3 00 58 */	lha r30, 0x58(r3)
/* 800C6090  3B A0 00 01 */	li r29, 1
/* 800C6094  48 00 00 0C */	b lbl_800C60A0
lbl_800C6098:
/* 800C6098  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 800C609C  D0 1B 05 94 */	stfs f0, 0x594(r27)
lbl_800C60A0:
/* 800C60A0  7F 63 DB 78 */	mr r3, r27
/* 800C60A4  48 01 DE 7D */	bl checkGrabRooster__9daAlink_cFv
/* 800C60A8  2C 03 00 00 */	cmpwi r3, 0
/* 800C60AC  41 82 00 10 */	beq lbl_800C60BC
/* 800C60B0  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 800C60B4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 800C60B8  90 1B 31 A0 */	stw r0, 0x31a0(r27)
lbl_800C60BC:
/* 800C60BC  28 1F 00 00 */	cmplwi r31, 0
/* 800C60C0  41 82 00 18 */	beq lbl_800C60D8
/* 800C60C4  C0 22 94 AC */	lfs f1, lit_16641(r2)
/* 800C60C8  C0 1B 05 94 */	lfs f0, 0x594(r27)
/* 800C60CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C60D0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 800C60D4  48 00 00 48 */	b lbl_800C611C
lbl_800C60D8:
/* 800C60D8  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 800C60DC  C0 1B 05 94 */	lfs f0, 0x594(r27)
/* 800C60E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C60E4  41 81 00 20 */	bgt lbl_800C6104
/* 800C60E8  2C 1C 00 00 */	cmpwi r28, 0
/* 800C60EC  40 82 00 18 */	bne lbl_800C6104
/* 800C60F0  3C 60 80 39 */	lis r3, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C60F4  38 63 E0 68 */	addi r3, r3, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C60F8  88 03 00 50 */	lbz r0, 0x50(r3)
/* 800C60FC  28 00 00 01 */	cmplwi r0, 1
/* 800C6100  40 82 00 0C */	bne lbl_800C610C
lbl_800C6104:
/* 800C6104  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 800C6108  48 00 00 14 */	b lbl_800C611C
lbl_800C610C:
/* 800C610C  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 800C6110  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C6114  40 80 00 08 */	bge lbl_800C611C
/* 800C6118  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_800C611C:
/* 800C611C  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 800C6120  3C 60 80 39 */	lis r3, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C6124  38 83 E0 68 */	addi r4, r3, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C6128  C0 04 00 64 */	lfs f0, 0x64(r4)
/* 800C612C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C6130  D0 1B 33 98 */	stfs f0, 0x3398(r27)
/* 800C6134  C0 3B 33 98 */	lfs f1, 0x3398(r27)
/* 800C6138  57 C0 04 38 */	rlwinm r0, r30, 0, 0x10, 0x1c
/* 800C613C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800C6140  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800C6144  7C 03 04 2E */	lfsx f0, r3, r0
/* 800C6148  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C614C  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 800C6150  C0 3B 33 98 */	lfs f1, 0x3398(r27)
/* 800C6154  7C 63 02 14 */	add r3, r3, r0
/* 800C6158  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C615C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C6160  D0 1B 33 98 */	stfs f0, 0x3398(r27)
/* 800C6164  2C 1D 00 00 */	cmpwi r29, 0
/* 800C6168  41 82 00 0C */	beq lbl_800C6174
/* 800C616C  C0 04 00 B0 */	lfs f0, 0xb0(r4)
/* 800C6170  D0 1B 33 98 */	stfs f0, 0x3398(r27)
lbl_800C6174:
/* 800C6174  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha /* 0x80425514@ha */
/* 800C6178  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)  /* 0x80425514@l */
/* 800C617C  D0 1B 35 88 */	stfs f0, 0x3588(r27)
/* 800C6180  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C6184  D0 1B 35 8C */	stfs f0, 0x358c(r27)
/* 800C6188  C0 03 00 08 */	lfs f0, 8(r3)
/* 800C618C  D0 1B 35 90 */	stfs f0, 0x3590(r27)
/* 800C6190  7F 63 DB 78 */	mr r3, r27
/* 800C6194  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010006@ha */
/* 800C6198  38 84 00 06 */	addi r4, r4, 0x0006 /* 0x00010006@l */
/* 800C619C  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 800C61A0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800C61A4  7D 89 03 A6 */	mtctr r12
/* 800C61A8  4E 80 04 21 */	bctrl 
/* 800C61AC  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 800C61B0  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 800C61B4  90 1B 05 70 */	stw r0, 0x570(r27)
/* 800C61B8  38 60 00 00 */	li r3, 0
/* 800C61BC  B0 7B 30 0C */	sth r3, 0x300c(r27)
/* 800C61C0  80 1B 05 80 */	lwz r0, 0x580(r27)
/* 800C61C4  60 00 01 00 */	ori r0, r0, 0x100
/* 800C61C8  90 1B 05 80 */	stw r0, 0x580(r27)
/* 800C61CC  B0 7B 30 14 */	sth r3, 0x3014(r27)
/* 800C61D0  38 60 00 01 */	li r3, 1
lbl_800C61D4:
/* 800C61D4  39 61 00 20 */	addi r11, r1, 0x20
/* 800C61D8  48 29 C0 49 */	bl _restgpr_27
/* 800C61DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C61E0  7C 08 03 A6 */	mtlr r0
/* 800C61E4  38 21 00 20 */	addi r1, r1, 0x20
/* 800C61E8  4E 80 00 20 */	blr 
