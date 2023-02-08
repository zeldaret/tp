lbl_80116E9C:
/* 80116E9C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80116EA0  7C 08 02 A6 */	mflr r0
/* 80116EA4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80116EA8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80116EAC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80116EB0  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80116EB4  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80116EB8  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80116EBC  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80116EC0  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 80116EC4  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 80116EC8  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 80116ECC  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 80116ED0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80116ED4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80116ED8  7C 7E 1B 78 */	mr r30, r3
/* 80116EDC  7C 9F 23 78 */	mr r31, r4
/* 80116EE0  38 61 00 14 */	addi r3, r1, 0x14
/* 80116EE4  7C A4 2B 78 */	mr r4, r5
/* 80116EE8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80116EEC  48 14 FC 49 */	bl __mi__4cXyzCFRC3Vec
/* 80116EF0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80116EF4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80116EF8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80116EFC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80116F00  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80116F04  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80116F08  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80116F0C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80116F10  41 82 00 28 */	beq lbl_80116F38
/* 80116F14  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlMoveNoP_c0@ha /* 0x8038EF28@ha */
/* 80116F18  38 63 EF 28 */	addi r3, r3, m__23daAlinkHIO_wlMoveNoP_c0@l /* 0x8038EF28@l */
/* 80116F1C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80116F20  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 80116F24  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 80116F28  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80116F2C  EF 61 00 24 */	fdivs f27, f1, f0
/* 80116F30  EF 7B 06 F2 */	fmuls f27, f27, f27
/* 80116F34  48 00 00 08 */	b lbl_80116F3C
lbl_80116F38:
/* 80116F38  C3 62 92 B8 */	lfs f27, lit_6040(r2)
lbl_80116F3C:
/* 80116F3C  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 80116F40  EF C0 06 F2 */	fmuls f30, f0, f27
/* 80116F44  C0 02 95 FC */	lfs f0, lit_30372(r2)
/* 80116F48  EF A0 06 F2 */	fmuls f29, f0, f27
/* 80116F4C  C0 02 94 54 */	lfs f0, lit_14784(r2)
/* 80116F50  EF 80 06 F2 */	fmuls f28, f0, f27
/* 80116F54  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80116F58  D0 01 00 08 */	stfs f0, 8(r1)
/* 80116F5C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80116F60  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80116F64  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80116F68  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80116F6C  38 61 00 08 */	addi r3, r1, 8
/* 80116F70  48 23 01 C9 */	bl PSVECSquareMag
/* 80116F74  FF E0 08 90 */	fmr f31, f1
/* 80116F78  C0 02 92 9C */	lfs f0, lit_5944(r2)
/* 80116F7C  EC 00 06 F2 */	fmuls f0, f0, f27
/* 80116F80  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80116F84  40 80 00 24 */	bge lbl_80116FA8
/* 80116F88  38 00 00 01 */	li r0, 1
/* 80116F8C  90 1F 00 00 */	stw r0, 0(r31)
/* 80116F90  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 80116F94  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80116F98  40 82 00 80 */	bne lbl_80117018
/* 80116F9C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80116FA0  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 80116FA4  48 00 00 74 */	b lbl_80117018
lbl_80116FA8:
/* 80116FA8  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 80116FAC  41 80 00 1C */	blt lbl_80116FC8
/* 80116FB0  FC 1F E0 40 */	fcmpo cr0, f31, f28
/* 80116FB4  40 80 00 20 */	bge lbl_80116FD4
/* 80116FB8  7F C3 F3 78 */	mr r3, r30
/* 80116FBC  4B F9 C9 49 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 80116FC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80116FC4  41 82 00 10 */	beq lbl_80116FD4
lbl_80116FC8:
/* 80116FC8  38 00 00 01 */	li r0, 1
/* 80116FCC  90 1F 00 00 */	stw r0, 0(r31)
/* 80116FD0  48 00 00 48 */	b lbl_80117018
lbl_80116FD4:
/* 80116FD4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80116FD8  28 00 00 02 */	cmplwi r0, 2
/* 80116FDC  40 82 00 0C */	bne lbl_80116FE8
/* 80116FE0  FC 1F E8 40 */	fcmpo cr0, f31, f29
/* 80116FE4  41 80 00 0C */	blt lbl_80116FF0
lbl_80116FE8:
/* 80116FE8  FC 1F E0 40 */	fcmpo cr0, f31, f28
/* 80116FEC  40 80 00 18 */	bge lbl_80117004
lbl_80116FF0:
/* 80116FF0  38 00 00 02 */	li r0, 2
/* 80116FF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80116FF8  C0 02 96 54 */	lfs f0, lit_35610(r2)
/* 80116FFC  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 80117000  48 00 00 18 */	b lbl_80117018
lbl_80117004:
/* 80117004  A0 1E 06 04 */	lhz r0, 0x604(r30)
/* 80117008  2C 00 00 03 */	cmpwi r0, 3
/* 8011700C  40 82 00 0C */	bne lbl_80117018
/* 80117010  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80117014  D0 1E 06 18 */	stfs f0, 0x618(r30)
lbl_80117018:
/* 80117018  38 61 00 20 */	addi r3, r1, 0x20
/* 8011701C  48 15 01 0D */	bl atan2sX_Z__4cXyzCFv
/* 80117020  B0 7E 06 06 */	sth r3, 0x606(r30)
/* 80117024  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80117028  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8011702C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80117030  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80117034  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80117038  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8011703C  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 80117040  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 80117044  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 80117048  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 8011704C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80117050  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80117054  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80117058  7C 08 03 A6 */	mtlr r0
/* 8011705C  38 21 00 90 */	addi r1, r1, 0x90
/* 80117060  4E 80 00 20 */	blr 
