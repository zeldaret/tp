lbl_80A3B220:
/* 80A3B220  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A3B224  7C 08 02 A6 */	mflr r0
/* 80A3B228  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A3B22C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3B230  4B 92 6F A8 */	b _savegpr_28
/* 80A3B234  7C 7D 1B 78 */	mr r29, r3
/* 80A3B238  7C BE 2B 78 */	mr r30, r5
/* 80A3B23C  7C DF 33 78 */	mr r31, r6
/* 80A3B240  A8 03 0D FE */	lha r0, 0xdfe(r3)
/* 80A3B244  2C 00 00 02 */	cmpwi r0, 2
/* 80A3B248  41 80 00 1C */	blt lbl_80A3B264
/* 80A3B24C  7C 83 07 34 */	extsh r3, r4
/* 80A3B250  A8 1D 0D AE */	lha r0, 0xdae(r29)
/* 80A3B254  7C 03 00 00 */	cmpw r3, r0
/* 80A3B258  41 82 00 0C */	beq lbl_80A3B264
/* 80A3B25C  38 00 00 00 */	li r0, 0
/* 80A3B260  B0 1D 0D FE */	sth r0, 0xdfe(r29)
lbl_80A3B264:
/* 80A3B264  A8 7D 0D FE */	lha r3, 0xdfe(r29)
/* 80A3B268  7C 60 07 35 */	extsh. r0, r3
/* 80A3B26C  40 82 00 EC */	bne lbl_80A3B358
/* 80A3B270  A8 1D 0D AE */	lha r0, 0xdae(r29)
/* 80A3B274  7C 00 20 50 */	subf r0, r0, r4
/* 80A3B278  7C 05 07 35 */	extsh. r5, r0
/* 80A3B27C  40 82 00 10 */	bne lbl_80A3B28C
/* 80A3B280  38 00 00 02 */	li r0, 2
/* 80A3B284  B0 1D 0D FE */	sth r0, 0xdfe(r29)
/* 80A3B288  48 00 01 2C */	b lbl_80A3B3B4
lbl_80A3B28C:
/* 80A3B28C  B0 9D 0D FC */	sth r4, 0xdfc(r29)
/* 80A3B290  A8 1D 0D AE */	lha r0, 0xdae(r29)
/* 80A3B294  B0 1D 0D FA */	sth r0, 0xdfa(r29)
/* 80A3B298  38 00 00 00 */	li r0, 0
/* 80A3B29C  B0 1D 0E 00 */	sth r0, 0xe00(r29)
/* 80A3B2A0  3C 60 80 A4 */	lis r3, lit_5560@ha
/* 80A3B2A4  C0 43 09 3C */	lfs f2, lit_5560@l(r3)
/* 80A3B2A8  3C 60 80 A4 */	lis r3, lit_4095@ha
/* 80A3B2AC  C8 23 08 F8 */	lfd f1, lit_4095@l(r3)
/* 80A3B2B0  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80A3B2B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A3B2B8  3C 00 43 30 */	lis r0, 0x4330
/* 80A3B2BC  90 01 00 08 */	stw r0, 8(r1)
/* 80A3B2C0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80A3B2C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A3B2C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A3B2CC  FC 00 02 10 */	fabs f0, f0
/* 80A3B2D0  FC 00 00 18 */	frsp f0, f0
/* 80A3B2D4  FC 00 00 1E */	fctiwz f0, f0
/* 80A3B2D8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A3B2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3B2E0  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A3B2E4  41 80 00 54 */	blt lbl_80A3B338
/* 80A3B2E8  2C 1E 00 00 */	cmpwi r30, 0
/* 80A3B2EC  41 80 00 24 */	blt lbl_80A3B310
/* 80A3B2F0  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A3B2F4  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A3B2F8  4B 70 A5 A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3B2FC  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A3B300  93 DD 0B 8C */	stw r30, 0xb8c(r29)
/* 80A3B304  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A3B308  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A3B30C  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A3B310:
/* 80A3B310  2C 1F 00 00 */	cmpwi r31, 0
/* 80A3B314  41 80 00 24 */	blt lbl_80A3B338
/* 80A3B318  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A3B31C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A3B320  4B 70 A5 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3B324  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A3B328  93 FD 0B B0 */	stw r31, 0xbb0(r29)
/* 80A3B32C  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A3B330  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A3B334  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A3B338:
/* 80A3B338  A8 1D 0D AE */	lha r0, 0xdae(r29)
/* 80A3B33C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80A3B340  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A3B344  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A3B348  A8 7D 0D FE */	lha r3, 0xdfe(r29)
/* 80A3B34C  38 03 00 01 */	addi r0, r3, 1
/* 80A3B350  B0 1D 0D FE */	sth r0, 0xdfe(r29)
/* 80A3B354  48 00 00 60 */	b lbl_80A3B3B4
lbl_80A3B358:
/* 80A3B358  2C 03 00 01 */	cmpwi r3, 1
/* 80A3B35C  40 82 00 58 */	bne lbl_80A3B3B4
/* 80A3B360  7F A3 EB 78 */	mr r3, r29
/* 80A3B364  A8 9D 0D FC */	lha r4, 0xdfc(r29)
/* 80A3B368  7C E5 3B 78 */	mr r5, r7
/* 80A3B36C  7D 06 43 78 */	mr r6, r8
/* 80A3B370  4B FF FD 05 */	bl turn__10daNpc_Kn_cFsii
/* 80A3B374  2C 03 00 00 */	cmpwi r3, 0
/* 80A3B378  41 82 00 2C */	beq lbl_80A3B3A4
/* 80A3B37C  A8 1D 0D AE */	lha r0, 0xdae(r29)
/* 80A3B380  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80A3B384  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A3B388  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A3B38C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A3B390  B0 1D 0D B4 */	sth r0, 0xdb4(r29)
/* 80A3B394  A8 7D 0D FE */	lha r3, 0xdfe(r29)
/* 80A3B398  38 03 00 01 */	addi r0, r3, 1
/* 80A3B39C  B0 1D 0D FE */	sth r0, 0xdfe(r29)
/* 80A3B3A0  48 00 00 14 */	b lbl_80A3B3B4
lbl_80A3B3A4:
/* 80A3B3A4  A8 1D 0D AE */	lha r0, 0xdae(r29)
/* 80A3B3A8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80A3B3AC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A3B3B0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_80A3B3B4:
/* 80A3B3B4  A8 9D 0D FE */	lha r4, 0xdfe(r29)
/* 80A3B3B8  38 00 00 01 */	li r0, 1
/* 80A3B3BC  7C 80 02 78 */	xor r0, r4, r0
/* 80A3B3C0  7C 03 0E 70 */	srawi r3, r0, 1
/* 80A3B3C4  7C 00 20 38 */	and r0, r0, r4
/* 80A3B3C8  7C 00 18 50 */	subf r0, r0, r3
/* 80A3B3CC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80A3B3D0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3B3D4  4B 92 6E 50 */	b _restgpr_28
/* 80A3B3D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A3B3DC  7C 08 03 A6 */	mtlr r0
/* 80A3B3E0  38 21 00 30 */	addi r1, r1, 0x30
/* 80A3B3E4  4E 80 00 20 */	blr 
