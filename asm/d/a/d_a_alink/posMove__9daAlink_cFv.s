lbl_800BBF68:
/* 800BBF68  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 800BBF6C  7C 08 02 A6 */	mflr r0
/* 800BBF70  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 800BBF74  DB E1 01 90 */	stfd f31, 0x190(r1)
/* 800BBF78  F3 E1 01 98 */	psq_st f31, 408(r1), 0, 0 /* qr0 */
/* 800BBF7C  DB C1 01 80 */	stfd f30, 0x180(r1)
/* 800BBF80  F3 C1 01 88 */	psq_st f30, 392(r1), 0, 0 /* qr0 */
/* 800BBF84  DB A1 01 70 */	stfd f29, 0x170(r1)
/* 800BBF88  F3 A1 01 78 */	psq_st f29, 376(r1), 0, 0 /* qr0 */
/* 800BBF8C  DB 81 01 60 */	stfd f28, 0x160(r1)
/* 800BBF90  F3 81 01 68 */	psq_st f28, 360(r1), 0, 0 /* qr0 */
/* 800BBF94  39 61 01 60 */	addi r11, r1, 0x160
/* 800BBF98  48 2A 62 39 */	bl _savegpr_26
/* 800BBF9C  7C 7F 1B 78 */	mr r31, r3
/* 800BBFA0  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800BBFA4  3B A4 D6 58 */	addi r29, r4, lit_3757@l /* 0x8038D658@l */
/* 800BBFA8  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800BBFAC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800BBFB0  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800BBFB4  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800BBFB8  7F C4 04 2E */	lfsx f30, r4, r0
/* 800BBFBC  3B 84 00 04 */	addi r28, r4, 4
/* 800BBFC0  7F BC 04 2E */	lfsx f29, r28, r0
/* 800BBFC4  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 800BBFC8  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 800BBFCC  40 82 00 08 */	bne lbl_800BBFD4
/* 800BBFD0  4B FF F6 75 */	bl initGravity__9daAlink_cFv
lbl_800BBFD4:
/* 800BBFD4  7F E3 FB 78 */	mr r3, r31
/* 800BBFD8  38 81 01 08 */	addi r4, r1, 0x108
/* 800BBFDC  FC 20 F0 90 */	fmr f1, f30
/* 800BBFE0  FC 40 E8 90 */	fmr f2, f29
/* 800BBFE4  4B FF F7 BD */	bl transAnimeProc__9daAlink_cFP4cXyzff
/* 800BBFE8  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800BBFEC  54 80 03 5B */	rlwinm. r0, r4, 0, 0xd, 0xd
/* 800BBFF0  41 82 00 0C */	beq lbl_800BBFFC
/* 800BBFF4  AB 5F 30 80 */	lha r26, 0x3080(r31)
/* 800BBFF8  48 00 00 70 */	b lbl_800BC068
lbl_800BBFFC:
/* 800BBFFC  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800BC000  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800BC004  41 82 00 48 */	beq lbl_800BC04C
/* 800BC008  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800BC00C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800BC010  40 82 00 3C */	bne lbl_800BC04C
/* 800BC014  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800BC018  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800BC01C  7C 80 00 39 */	and. r0, r4, r0
/* 800BC020  41 82 00 20 */	beq lbl_800BC040
/* 800BC024  7F E3 FB 78 */	mr r3, r31
/* 800BC028  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800BC02C  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800BC030  7D 89 03 A6 */	mtctr r12
/* 800BC034  4E 80 04 21 */	bctrl 
/* 800BC038  28 03 00 00 */	cmplwi r3, 0
/* 800BC03C  41 82 00 10 */	beq lbl_800BC04C
lbl_800BC040:
/* 800BC040  80 1F 31 74 */	lwz r0, 0x3174(r31)
/* 800BC044  2C 00 00 08 */	cmpwi r0, 8
/* 800BC048  40 82 00 0C */	bne lbl_800BC054
lbl_800BC04C:
/* 800BC04C  3B 40 00 00 */	li r26, 0
/* 800BC050  48 00 00 18 */	b lbl_800BC068
lbl_800BC054:
/* 800BC054  7F E3 FB 78 */	mr r3, r31
/* 800BC058  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800BC05C  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 800BC060  4B FF 40 39 */	bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
/* 800BC064  7C 7A 1B 78 */	mr r26, r3
lbl_800BC068:
/* 800BC068  7F E3 FB 78 */	mr r3, r31
/* 800BC06C  4B FF FC D5 */	bl setFootSpeed__9daAlink_cFv
/* 800BC070  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800BC074  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 800BC078  41 82 00 10 */	beq lbl_800BC088
/* 800BC07C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BC080  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 800BC084  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_800BC088:
/* 800BC088  C0 1F 33 9C */	lfs f0, 0x339c(r31)
/* 800BC08C  FC 00 02 10 */	fabs f0, f0
/* 800BC090  FC 00 00 18 */	frsp f0, f0
/* 800BC094  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800BC098  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 800BC09C  EC 03 00 28 */	fsubs f0, f3, f0
/* 800BC0A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BC0A4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 800BC0A8  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 800BC0AC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800BC0B0  C0 5F 33 9C */	lfs f2, 0x339c(r31)
/* 800BC0B4  C0 3F 33 A0 */	lfs f1, 0x33a0(r31)
/* 800BC0B8  EC 03 00 28 */	fsubs f0, f3, f0
/* 800BC0BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BC0C0  EC 42 00 32 */	fmuls f2, f2, f0
/* 800BC0C4  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 800BC0C8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BC0CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BC0D0  40 80 00 10 */	bge lbl_800BC0E0
/* 800BC0D4  EC 01 10 28 */	fsubs f0, f1, f2
/* 800BC0D8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 800BC0DC  48 00 00 0C */	b lbl_800BC0E8
lbl_800BC0E0:
/* 800BC0E0  EC 01 10 2A */	fadds f0, f1, f2
/* 800BC0E4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_800BC0E8:
/* 800BC0E8  7F E3 FB 78 */	mr r3, r31
/* 800BC0EC  48 04 58 CD */	bl getZoraSwim__9daAlink_cCFv
/* 800BC0F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BC0F4  41 82 00 28 */	beq lbl_800BC11C
/* 800BC0F8  7F E3 FB 78 */	mr r3, r31
/* 800BC0FC  48 00 3C B5 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800BC100  2C 03 00 00 */	cmpwi r3, 0
/* 800BC104  40 82 00 18 */	bne lbl_800BC11C
/* 800BC108  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 800BC10C  38 7D 16 D4 */	addi r3, r29, 0x16d4
/* 800BC110  C0 03 00 E8 */	lfs f0, 0xe8(r3)
/* 800BC114  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BC118  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_800BC11C:
/* 800BC11C  C3 FF 05 2C */	lfs f31, 0x52c(r31)
/* 800BC120  57 5B 04 38 */	rlwinm r27, r26, 0, 0x10, 0x1c
/* 800BC124  7C 1C DC 2E */	lfsx f0, r28, r27
/* 800BC128  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800BC12C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 800BC130  7F 40 07 35 */	extsh. r0, r26
/* 800BC134  40 80 00 3C */	bge lbl_800BC170
/* 800BC138  7F E3 FB 78 */	mr r3, r31
/* 800BC13C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800BC140  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800BC144  7D 89 03 A6 */	mtctr r12
/* 800BC148  4E 80 04 21 */	bctrl 
/* 800BC14C  28 03 00 00 */	cmplwi r3, 0
/* 800BC150  40 82 00 20 */	bne lbl_800BC170
/* 800BC154  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800BC158  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800BC15C  40 82 00 14 */	bne lbl_800BC170
/* 800BC160  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 800BC164  C0 02 95 DC */	lfs f0, lit_27477(r2)
/* 800BC168  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BC16C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_800BC170:
/* 800BC170  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800BC174  28 00 00 15 */	cmplwi r0, 0x15
/* 800BC178  40 82 00 54 */	bne lbl_800BC1CC
/* 800BC17C  7F E3 FB 78 */	mr r3, r31
/* 800BC180  48 02 7D A1 */	bl checkGrabRooster__9daAlink_cFv
/* 800BC184  2C 03 00 00 */	cmpwi r3, 0
/* 800BC188  41 82 00 44 */	beq lbl_800BC1CC
/* 800BC18C  38 7F 0C 04 */	addi r3, r31, 0xc04
/* 800BC190  4B FC 82 D1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 800BC194  28 03 00 00 */	cmplwi r3, 0
/* 800BC198  40 82 00 24 */	bne lbl_800BC1BC
/* 800BC19C  38 7F 0D 40 */	addi r3, r31, 0xd40
/* 800BC1A0  4B FC 82 C1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 800BC1A4  28 03 00 00 */	cmplwi r3, 0
/* 800BC1A8  40 82 00 14 */	bne lbl_800BC1BC
/* 800BC1AC  38 7F 0E 7C */	addi r3, r31, 0xe7c
/* 800BC1B0  4B FC 82 B1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 800BC1B4  28 03 00 00 */	cmplwi r3, 0
/* 800BC1B8  41 82 00 14 */	beq lbl_800BC1CC
lbl_800BC1BC:
/* 800BC1BC  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 800BC1C0  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800BC1C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BC1C8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_800BC1CC:
/* 800BC1CC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800BC1D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800BC1D4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800BC1D8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800BC1DC  7C 23 04 2E */	lfsx f1, r3, r0
/* 800BC1E0  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 800BC1E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 800BC1E8  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 800BC1EC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800BC1F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800BC1F4  7C 3C 04 2E */	lfsx f1, r28, r0
/* 800BC1F8  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 800BC1FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 800BC200  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 800BC204  7F E3 FB 78 */	mr r3, r31
/* 800BC208  4B FE E3 E1 */	bl checkNoCollisionCorret__9daAlink_cFv
/* 800BC20C  2C 03 00 00 */	cmpwi r3, 0
/* 800BC210  40 82 00 18 */	bne lbl_800BC228
/* 800BC214  80 7F 31 A0 */	lwz r3, 0x31a0(r31)
/* 800BC218  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 800BC21C  41 82 00 18 */	beq lbl_800BC234
/* 800BC220  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 800BC224  41 82 00 10 */	beq lbl_800BC234
lbl_800BC228:
/* 800BC228  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BC22C  D0 1F 34 2C */	stfs f0, 0x342c(r31)
/* 800BC230  D0 1F 34 30 */	stfs f0, 0x3430(r31)
lbl_800BC234:
/* 800BC234  7F E3 FB 78 */	mr r3, r31
/* 800BC238  48 05 99 E9 */	bl checkEventRun__9daAlink_cCFv
/* 800BC23C  7C 7E 1B 78 */	mr r30, r3
/* 800BC240  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800BC244  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800BC248  40 82 02 1C */	bne lbl_800BC464
/* 800BC24C  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800BC250  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800BC254  41 82 02 10 */	beq lbl_800BC464
/* 800BC258  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800BC25C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800BC260  40 82 02 04 */	bne lbl_800BC464
/* 800BC264  2C 1E 00 00 */	cmpwi r30, 0
/* 800BC268  40 82 01 FC */	bne lbl_800BC464
/* 800BC26C  38 7F 1A 60 */	addi r3, r31, 0x1a60
/* 800BC270  38 80 00 00 */	li r4, 0
/* 800BC274  4B FE 5F 6D */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 800BC278  7C 64 1B 78 */	mr r4, r3
/* 800BC27C  7F E3 FB 78 */	mr r3, r31
/* 800BC280  4B FF 5D 39 */	bl checkLv2MiddleBossBgRide__9daAlink_cFs
/* 800BC284  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BC288  41 82 01 DC */	beq lbl_800BC464
/* 800BC28C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800BC290  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800BC294  90 01 01 38 */	stw r0, 0x138(r1)
/* 800BC298  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BC29C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BC2A0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800BC2A4  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800BC2A8  38 A1 01 28 */	addi r5, r1, 0x128
/* 800BC2AC  4B FB 84 99 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800BC2B0  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 800BC2B4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800BC2B8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BC2BC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800BC2C0  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 800BC2C4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800BC2C8  38 61 00 48 */	addi r3, r1, 0x48
/* 800BC2CC  48 28 AE 6D */	bl PSVECSquareMag
/* 800BC2D0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BC2D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BC2D8  40 81 00 58 */	ble lbl_800BC330
/* 800BC2DC  FC 00 08 34 */	frsqrte f0, f1
/* 800BC2E0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800BC2E4  FC 44 00 32 */	fmul f2, f4, f0
/* 800BC2E8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800BC2EC  FC 00 00 32 */	fmul f0, f0, f0
/* 800BC2F0  FC 01 00 32 */	fmul f0, f1, f0
/* 800BC2F4  FC 03 00 28 */	fsub f0, f3, f0
/* 800BC2F8  FC 02 00 32 */	fmul f0, f2, f0
/* 800BC2FC  FC 44 00 32 */	fmul f2, f4, f0
/* 800BC300  FC 00 00 32 */	fmul f0, f0, f0
/* 800BC304  FC 01 00 32 */	fmul f0, f1, f0
/* 800BC308  FC 03 00 28 */	fsub f0, f3, f0
/* 800BC30C  FC 02 00 32 */	fmul f0, f2, f0
/* 800BC310  FC 44 00 32 */	fmul f2, f4, f0
/* 800BC314  FC 00 00 32 */	fmul f0, f0, f0
/* 800BC318  FC 01 00 32 */	fmul f0, f1, f0
/* 800BC31C  FC 03 00 28 */	fsub f0, f3, f0
/* 800BC320  FC 02 00 32 */	fmul f0, f2, f0
/* 800BC324  FC 21 00 32 */	fmul f1, f1, f0
/* 800BC328  FC 20 08 18 */	frsp f1, f1
/* 800BC32C  48 00 00 88 */	b lbl_800BC3B4
lbl_800BC330:
/* 800BC330  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800BC334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BC338  40 80 00 10 */	bge lbl_800BC348
/* 800BC33C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BC340  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800BC344  48 00 00 70 */	b lbl_800BC3B4
lbl_800BC348:
/* 800BC348  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800BC34C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 800BC350  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800BC354  3C 00 7F 80 */	lis r0, 0x7f80
/* 800BC358  7C 03 00 00 */	cmpw r3, r0
/* 800BC35C  41 82 00 14 */	beq lbl_800BC370
/* 800BC360  40 80 00 40 */	bge lbl_800BC3A0
/* 800BC364  2C 03 00 00 */	cmpwi r3, 0
/* 800BC368  41 82 00 20 */	beq lbl_800BC388
/* 800BC36C  48 00 00 34 */	b lbl_800BC3A0
lbl_800BC370:
/* 800BC370  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BC374  41 82 00 0C */	beq lbl_800BC380
/* 800BC378  38 00 00 01 */	li r0, 1
/* 800BC37C  48 00 00 28 */	b lbl_800BC3A4
lbl_800BC380:
/* 800BC380  38 00 00 02 */	li r0, 2
/* 800BC384  48 00 00 20 */	b lbl_800BC3A4
lbl_800BC388:
/* 800BC388  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BC38C  41 82 00 0C */	beq lbl_800BC398
/* 800BC390  38 00 00 05 */	li r0, 5
/* 800BC394  48 00 00 10 */	b lbl_800BC3A4
lbl_800BC398:
/* 800BC398  38 00 00 03 */	li r0, 3
/* 800BC39C  48 00 00 08 */	b lbl_800BC3A4
lbl_800BC3A0:
/* 800BC3A0  38 00 00 04 */	li r0, 4
lbl_800BC3A4:
/* 800BC3A4  2C 00 00 01 */	cmpwi r0, 1
/* 800BC3A8  40 82 00 0C */	bne lbl_800BC3B4
/* 800BC3AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BC3B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800BC3B4:
/* 800BC3B4  C0 41 01 2C */	lfs f2, 0x12c(r1)
/* 800BC3B8  48 1A B2 BD */	bl cM_atan2s__Fff
/* 800BC3BC  7C 60 07 34 */	extsh r0, r3
/* 800BC3C0  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800BC3C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800BC3C8  90 01 01 44 */	stw r0, 0x144(r1)
/* 800BC3CC  3C 00 43 30 */	lis r0, 0x4330
/* 800BC3D0  90 01 01 40 */	stw r0, 0x140(r1)
/* 800BC3D4  C8 01 01 40 */	lfd f0, 0x140(r1)
/* 800BC3D8  EC 20 08 28 */	fsubs f1, f0, f1
/* 800BC3DC  C0 02 98 38 */	lfs f0, lit_59593(r2)
/* 800BC3E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 800BC3E4  38 7D 02 74 */	addi r3, r29, 0x274
/* 800BC3E8  C0 43 00 6C */	lfs f2, 0x6c(r3)
/* 800BC3EC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800BC3F0  4C 41 13 82 */	cror 2, 1, 2
/* 800BC3F4  40 82 00 64 */	bne lbl_800BC458
/* 800BC3F8  C0 63 00 68 */	lfs f3, 0x68(r3)
/* 800BC3FC  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 800BC400  4C 40 13 82 */	cror 2, 0, 2
/* 800BC404  40 82 00 54 */	bne lbl_800BC458
/* 800BC408  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 800BC40C  EC 00 10 28 */	fsubs f0, f0, f2
/* 800BC410  EC 21 00 32 */	fmuls f1, f1, f0
/* 800BC414  EC 03 10 28 */	fsubs f0, f3, f2
/* 800BC418  EF 81 00 24 */	fdivs f28, f1, f0
/* 800BC41C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BC420  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 800BC424  38 61 00 90 */	addi r3, r1, 0x90
/* 800BC428  38 81 01 28 */	addi r4, r1, 0x128
/* 800BC42C  48 1A AB 1D */	bl normalizeZP__4cXyzFv
/* 800BC430  C0 3F 04 F8 */	lfs f1, 0x4f8(r31)
/* 800BC434  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 800BC438  EC 1C 00 32 */	fmuls f0, f28, f0
/* 800BC43C  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC440  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 800BC444  C0 3F 05 00 */	lfs f1, 0x500(r31)
/* 800BC448  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 800BC44C  EC 1C 00 32 */	fmuls f0, f28, f0
/* 800BC450  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC454  D0 1F 05 00 */	stfs f0, 0x500(r31)
lbl_800BC458:
/* 800BC458  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800BC45C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800BC460  90 01 01 38 */	stw r0, 0x138(r1)
lbl_800BC464:
/* 800BC464  80 7F 31 A0 */	lwz r3, 0x31a0(r31)
/* 800BC468  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 800BC46C  41 82 02 54 */	beq lbl_800BC6C0
/* 800BC470  38 7F 37 50 */	addi r3, r31, 0x3750
/* 800BC474  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 800BC478  38 84 0C F4 */	addi r4, r4, Zero__4cXyz@l /* 0x80430CF4@l */
/* 800BC47C  38 BD 0E 68 */	addi r5, r29, 0xe68
/* 800BC480  C0 25 00 84 */	lfs f1, 0x84(r5)
/* 800BC484  48 1B 43 29 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 800BC488  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800BC48C  38 9F 37 50 */	addi r4, r31, 0x3750
/* 800BC490  7C 65 1B 78 */	mr r5, r3
/* 800BC494  48 28 AB FD */	bl PSVECAdd
/* 800BC498  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 800BC49C  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 800BC4A0  41 82 00 1C */	beq lbl_800BC4BC
/* 800BC4A4  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800BC4A8  28 00 00 7C */	cmplwi r0, 0x7c
/* 800BC4AC  41 82 00 10 */	beq lbl_800BC4BC
/* 800BC4B0  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 800BC4B4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800BC4B8  48 00 02 EC */	b lbl_800BC7A4
lbl_800BC4BC:
/* 800BC4BC  A0 1F 06 04 */	lhz r0, 0x604(r31)
/* 800BC4C0  2C 00 00 04 */	cmpwi r0, 4
/* 800BC4C4  41 82 00 24 */	beq lbl_800BC4E8
/* 800BC4C8  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800BC4CC  28 00 01 42 */	cmplwi r0, 0x142
/* 800BC4D0  41 82 00 18 */	beq lbl_800BC4E8
/* 800BC4D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BC4D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BC4DC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800BC4E0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800BC4E4  41 82 00 10 */	beq lbl_800BC4F4
lbl_800BC4E8:
/* 800BC4E8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BC4EC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800BC4F0  48 00 02 B4 */	b lbl_800BC7A4
lbl_800BC4F4:
/* 800BC4F4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800BC4F8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800BC4FC  41 82 00 74 */	beq lbl_800BC570
/* 800BC500  7F E3 FB 78 */	mr r3, r31
/* 800BC504  38 80 00 01 */	li r4, 1
/* 800BC508  38 A0 00 01 */	li r5, 1
/* 800BC50C  4B FF EF AD */	bl checkHeavyStateOn__9daAlink_cFii
/* 800BC510  2C 03 00 00 */	cmpwi r3, 0
/* 800BC514  41 82 00 30 */	beq lbl_800BC544
/* 800BC518  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800BC51C  38 7D 22 5C */	addi r3, r29, 0x225c
/* 800BC520  C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 800BC524  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC528  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800BC52C  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 800BC530  C0 23 00 A4 */	lfs f1, 0xa4(r3)
/* 800BC534  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800BC538  40 81 02 6C */	ble lbl_800BC7A4
/* 800BC53C  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 800BC540  48 00 02 64 */	b lbl_800BC7A4
lbl_800BC544:
/* 800BC544  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800BC548  38 7D 22 5C */	addi r3, r29, 0x225c
/* 800BC54C  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 800BC550  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC554  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800BC558  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 800BC55C  C0 23 00 5C */	lfs f1, 0x5c(r3)
/* 800BC560  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800BC564  40 81 02 40 */	ble lbl_800BC7A4
/* 800BC568  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 800BC56C  48 00 02 38 */	b lbl_800BC7A4
lbl_800BC570:
/* 800BC570  54 80 01 8D */	rlwinm. r0, r4, 0, 6, 6
/* 800BC574  40 82 00 30 */	bne lbl_800BC5A4
/* 800BC578  7F E3 FB 78 */	mr r3, r31
/* 800BC57C  48 04 54 3D */	bl getZoraSwim__9daAlink_cCFv
/* 800BC580  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BC584  41 82 00 20 */	beq lbl_800BC5A4
/* 800BC588  FC 20 F8 50 */	fneg f1, f31
/* 800BC58C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800BC590  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800BC594  7C 03 DC 2E */	lfsx f0, r3, r27
/* 800BC598  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BC59C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800BC5A0  48 00 02 04 */	b lbl_800BC7A4
lbl_800BC5A4:
/* 800BC5A4  7F E3 FB 78 */	mr r3, r31
/* 800BC5A8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800BC5AC  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800BC5B0  7D 89 03 A6 */	mtctr r12
/* 800BC5B4  4E 80 04 21 */	bctrl 
/* 800BC5B8  2C 03 00 00 */	cmpwi r3, 0
/* 800BC5BC  41 82 00 10 */	beq lbl_800BC5CC
/* 800BC5C0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800BC5C4  28 00 01 50 */	cmplwi r0, 0x150
/* 800BC5C8  40 82 00 10 */	bne lbl_800BC5D8
lbl_800BC5CC:
/* 800BC5CC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800BC5D0  28 00 00 7C */	cmplwi r0, 0x7c
/* 800BC5D4  40 82 00 2C */	bne lbl_800BC600
lbl_800BC5D8:
/* 800BC5D8  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800BC5DC  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 800BC5E0  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC5E4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800BC5E8  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 800BC5EC  C0 3F 05 34 */	lfs f1, 0x534(r31)
/* 800BC5F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800BC5F4  40 80 01 B0 */	bge lbl_800BC7A4
/* 800BC5F8  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 800BC5FC  48 00 01 A8 */	b lbl_800BC7A4
lbl_800BC600:
/* 800BC600  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800BC604  3B 5D 16 D4 */	addi r26, r29, 0x16d4
/* 800BC608  C0 1A 00 88 */	lfs f0, 0x88(r26)
/* 800BC60C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BC610  40 81 00 14 */	ble lbl_800BC624
/* 800BC614  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 800BC618  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC61C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800BC620  48 00 01 84 */	b lbl_800BC7A4
lbl_800BC624:
/* 800BC624  C0 1F 05 34 */	lfs f0, 0x534(r31)
/* 800BC628  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BC62C  40 80 00 14 */	bge lbl_800BC640
/* 800BC630  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800BC634  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC638  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800BC63C  48 00 01 68 */	b lbl_800BC7A4
lbl_800BC640:
/* 800BC640  7F E3 FB 78 */	mr r3, r31
/* 800BC644  48 00 37 6D */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800BC648  2C 03 00 00 */	cmpwi r3, 0
/* 800BC64C  41 82 00 48 */	beq lbl_800BC694
/* 800BC650  C0 5F 33 B4 */	lfs f2, 0x33b4(r31)
/* 800BC654  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800BC658  7F 43 D3 78 */	mr r3, r26
/* 800BC65C  C0 1A 00 D4 */	lfs f0, 0xd4(r26)
/* 800BC660  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC664  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800BC668  40 81 00 2C */	ble lbl_800BC694
/* 800BC66C  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800BC670  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 800BC674  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC678  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800BC67C  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800BC680  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BC684  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BC688  40 80 00 20 */	bge lbl_800BC6A8
/* 800BC68C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800BC690  48 00 00 18 */	b lbl_800BC6A8
lbl_800BC694:
/* 800BC694  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800BC698  38 7D 16 D4 */	addi r3, r29, 0x16d4
/* 800BC69C  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 800BC6A0  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC6A4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_800BC6A8:
/* 800BC6A8  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 800BC6AC  C0 3A 00 88 */	lfs f1, 0x88(r26)
/* 800BC6B0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800BC6B4  40 81 00 F0 */	ble lbl_800BC7A4
/* 800BC6B8  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 800BC6BC  48 00 00 E8 */	b lbl_800BC7A4
lbl_800BC6C0:
/* 800BC6C0  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 800BC6C4  40 82 00 94 */	bne lbl_800BC758
/* 800BC6C8  7F E3 FB 78 */	mr r3, r31
/* 800BC6CC  38 80 00 01 */	li r4, 1
/* 800BC6D0  38 A0 00 01 */	li r5, 1
/* 800BC6D4  4B FF ED E5 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800BC6D8  2C 03 00 00 */	cmpwi r3, 0
/* 800BC6DC  41 82 00 54 */	beq lbl_800BC730
/* 800BC6E0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800BC6E4  28 00 00 A4 */	cmplwi r0, 0xa4
/* 800BC6E8  41 82 00 48 */	beq lbl_800BC730
/* 800BC6EC  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800BC6F0  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800BC6F4  40 82 00 3C */	bne lbl_800BC730
/* 800BC6F8  C0 5F 04 FC */	lfs f2, 0x4fc(r31)
/* 800BC6FC  C0 22 98 C0 */	lfs f1, lit_70084(r2)
/* 800BC700  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 800BC704  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BC708  EC 02 00 2A */	fadds f0, f2, f0
/* 800BC70C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800BC710  C0 5F 04 FC */	lfs f2, 0x4fc(r31)
/* 800BC714  C0 22 93 2C */	lfs f1, lit_7624(r2)
/* 800BC718  C0 1F 05 34 */	lfs f0, 0x534(r31)
/* 800BC71C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BC720  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800BC724  40 80 00 80 */	bge lbl_800BC7A4
/* 800BC728  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800BC72C  48 00 00 78 */	b lbl_800BC7A4
lbl_800BC730:
/* 800BC730  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800BC734  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 800BC738  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC73C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800BC740  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 800BC744  C0 3F 05 34 */	lfs f1, 0x534(r31)
/* 800BC748  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800BC74C  40 80 00 58 */	bge lbl_800BC7A4
/* 800BC750  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 800BC754  48 00 00 50 */	b lbl_800BC7A4
lbl_800BC758:
/* 800BC758  7F E3 FB 78 */	mr r3, r31
/* 800BC75C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800BC760  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800BC764  7D 89 03 A6 */	mtctr r12
/* 800BC768  4E 80 04 21 */	bctrl 
/* 800BC76C  28 03 00 00 */	cmplwi r3, 0
/* 800BC770  41 82 00 34 */	beq lbl_800BC7A4
/* 800BC774  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800BC778  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800BC77C  90 1F 19 9C */	stw r0, 0x199c(r31)
/* 800BC780  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800BC784  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 800BC788  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC78C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800BC790  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 800BC794  C0 3F 05 34 */	lfs f1, 0x534(r31)
/* 800BC798  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800BC79C  40 80 00 08 */	bge lbl_800BC7A4
/* 800BC7A0  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
lbl_800BC7A4:
/* 800BC7A4  7F E3 FB 78 */	mr r3, r31
/* 800BC7A8  4B FE A8 A9 */	bl setIceSlipSpeed__9daAlink_cFv
/* 800BC7AC  C3 FF 04 D4 */	lfs f31, 0x4d4(r31)
/* 800BC7B0  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800BC7B4  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800BC7B8  41 82 00 20 */	beq lbl_800BC7D8
/* 800BC7BC  7F E3 FB 78 */	mr r3, r31
/* 800BC7C0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800BC7C4  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800BC7C8  7D 89 03 A6 */	mtctr r12
/* 800BC7CC  4E 80 04 21 */	bctrl 
/* 800BC7D0  28 03 00 00 */	cmplwi r3, 0
/* 800BC7D4  41 82 00 FC */	beq lbl_800BC8D0
lbl_800BC7D8:
/* 800BC7D8  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800BC7DC  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800BC7E0  41 82 00 8C */	beq lbl_800BC86C
/* 800BC7E4  38 7F 2C 48 */	addi r3, r31, 0x2c48
/* 800BC7E8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800BC7EC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800BC7F0  48 28 9C C1 */	bl PSMTXCopy
/* 800BC7F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800BC7F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800BC7FC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 800BC800  4B F4 FC 35 */	bl mDoMtx_YrotM__FPA4_fs
/* 800BC804  80 7D 49 E8 */	lwz r3, 0x49e8(r29)
/* 800BC808  80 1D 49 EC */	lwz r0, 0x49ec(r29)
/* 800BC80C  90 61 00 FC */	stw r3, 0xfc(r1)
/* 800BC810  90 01 01 00 */	stw r0, 0x100(r1)
/* 800BC814  80 1D 49 F0 */	lwz r0, 0x49f0(r29)
/* 800BC818  90 01 01 04 */	stw r0, 0x104(r1)
/* 800BC81C  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 800BC820  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 800BC824  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800BC828  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800BC82C  38 81 00 FC */	addi r4, r1, 0xfc
/* 800BC830  38 BF 04 F8 */	addi r5, r31, 0x4f8
/* 800BC834  48 28 A6 19 */	bl PSMTXMultVecSR
/* 800BC838  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800BC83C  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 800BC840  7C 65 1B 78 */	mr r5, r3
/* 800BC844  48 28 A8 4D */	bl PSVECAdd
/* 800BC848  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800BC84C  C0 1F 34 2C */	lfs f0, 0x342c(r31)
/* 800BC850  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC854  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800BC858  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800BC85C  C0 1F 34 30 */	lfs f0, 0x3430(r31)
/* 800BC860  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC864  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800BC868  48 00 00 68 */	b lbl_800BC8D0
lbl_800BC86C:
/* 800BC86C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800BC870  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 800BC874  7C 65 1B 78 */	mr r5, r3
/* 800BC878  48 28 A8 19 */	bl PSVECAdd
/* 800BC87C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800BC880  C0 1F 34 2C */	lfs f0, 0x342c(r31)
/* 800BC884  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC888  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800BC88C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800BC890  C0 1F 34 30 */	lfs f0, 0x3430(r31)
/* 800BC894  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC898  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800BC89C  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800BC8A0  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 800BC8A4  41 82 00 2C */	beq lbl_800BC8D0
/* 800BC8A8  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800BC8AC  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800BC8B0  38 63 05 1E */	addi r3, r3, 0x51e
/* 800BC8B4  4B FE 11 AD */	bl checkStageName__9daAlink_cFPCc
/* 800BC8B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BC8BC  41 82 00 14 */	beq lbl_800BC8D0
/* 800BC8C0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800BC8C4  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800BC8C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 800BC8CC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_800BC8D0:
/* 800BC8D0  7F E3 FB 78 */	mr r3, r31
/* 800BC8D4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800BC8D8  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800BC8DC  7D 89 03 A6 */	mtctr r12
/* 800BC8E0  4E 80 04 21 */	bctrl 
/* 800BC8E4  28 03 00 00 */	cmplwi r3, 0
/* 800BC8E8  41 82 00 30 */	beq lbl_800BC918
/* 800BC8EC  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800BC8F0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800BC8F4  40 82 00 24 */	bne lbl_800BC918
/* 800BC8F8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800BC8FC  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 800BC900  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800BC904  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800BC908  7C 03 DC 2E */	lfsx f0, r3, r27
/* 800BC90C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BC910  EC 02 00 28 */	fsubs f0, f2, f0
/* 800BC914  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_800BC918:
/* 800BC918  38 00 00 00 */	li r0, 0
/* 800BC91C  88 7F 05 6A */	lbz r3, 0x56a(r31)
/* 800BC920  28 03 00 00 */	cmplwi r3, 0
/* 800BC924  41 82 00 10 */	beq lbl_800BC934
/* 800BC928  28 03 00 26 */	cmplwi r3, 0x26
/* 800BC92C  40 80 00 08 */	bge lbl_800BC934
/* 800BC930  38 00 00 01 */	li r0, 1
lbl_800BC934:
/* 800BC934  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800BC938  41 82 00 24 */	beq lbl_800BC95C
/* 800BC93C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800BC940  28 00 00 D3 */	cmplwi r0, 0xd3
/* 800BC944  41 82 00 18 */	beq lbl_800BC95C
/* 800BC948  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800BC94C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 800BC950  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800BC954  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 800BC958  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_800BC95C:
/* 800BC95C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BC960  D0 1F 34 2C */	stfs f0, 0x342c(r31)
/* 800BC964  D0 1F 34 30 */	stfs f0, 0x3430(r31)
/* 800BC968  7F E3 FB 78 */	mr r3, r31
/* 800BC96C  4B FE A9 ED */	bl setPolygonSpeed__9daAlink_cFv
/* 800BC970  7F E3 FB 78 */	mr r3, r31
/* 800BC974  4B FE B3 3D */	bl setWindSpeed__9daAlink_cFv
/* 800BC978  3B 60 00 00 */	li r27, 0
/* 800BC97C  7F E3 FB 78 */	mr r3, r31
/* 800BC980  4B FE DC 69 */	bl checkNoCollisionCorret__9daAlink_cFv
/* 800BC984  2C 03 00 00 */	cmpwi r3, 0
/* 800BC988  40 82 01 B4 */	bne lbl_800BCB3C
/* 800BC98C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800BC990  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800BC994  40 82 01 A8 */	bne lbl_800BCB3C
/* 800BC998  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800BC99C  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800BC9A0  40 82 00 14 */	bne lbl_800BC9B4
/* 800BC9A4  38 9F 08 14 */	addi r4, r31, 0x814
/* 800BC9A8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800BC9AC  7C 65 1B 78 */	mr r5, r3
/* 800BC9B0  48 28 A6 E1 */	bl PSVECAdd
lbl_800BC9B4:
/* 800BC9B4  2C 1E 00 00 */	cmpwi r30, 0
/* 800BC9B8  40 82 01 5C */	bne lbl_800BCB14
/* 800BC9BC  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800BC9C0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800BC9C4  41 82 00 1C */	beq lbl_800BC9E0
/* 800BC9C8  7F E3 FB 78 */	mr r3, r31
/* 800BC9CC  38 80 00 01 */	li r4, 1
/* 800BC9D0  38 A0 00 01 */	li r5, 1
/* 800BC9D4  4B FF EA E5 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800BC9D8  2C 03 00 00 */	cmpwi r3, 0
/* 800BC9DC  40 82 00 24 */	bne lbl_800BCA00
lbl_800BC9E0:
/* 800BC9E0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800BC9E4  C0 1F 34 00 */	lfs f0, 0x3400(r31)
/* 800BC9E8  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC9EC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800BC9F0  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800BC9F4  C0 1F 34 04 */	lfs f0, 0x3404(r31)
/* 800BC9F8  EC 01 00 2A */	fadds f0, f1, f0
/* 800BC9FC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_800BCA00:
/* 800BCA00  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800BCA04  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800BCA08  41 82 00 B8 */	beq lbl_800BCAC0
/* 800BCA0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BCA10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BCA14  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800BCA18  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800BCA1C  4B FB 7C 45 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800BCA20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BCA24  41 82 00 9C */	beq lbl_800BCAC0
/* 800BCA28  7F E3 FB 78 */	mr r3, r31
/* 800BCA2C  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800BCA30  38 A0 00 00 */	li r5, 0
/* 800BCA34  4B FF 36 65 */	bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
/* 800BCA38  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800BCA3C  C0 3F 35 CC */	lfs f1, 0x35cc(r31)
/* 800BCA40  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 800BCA44  7C 1C 04 2E */	lfsx f0, r28, r0
/* 800BCA48  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BCA4C  EC 02 00 2A */	fadds f0, f2, f0
/* 800BCA50  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800BCA54  7F E3 FB 78 */	mr r3, r31
/* 800BCA58  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800BCA5C  38 A0 40 00 */	li r5, 0x4000
/* 800BCA60  4B FF 36 39 */	bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
/* 800BCA64  C0 5F 04 D0 */	lfs f2, 0x4d0(r31)
/* 800BCA68  C0 3F 35 C4 */	lfs f1, 0x35c4(r31)
/* 800BCA6C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 800BCA70  7C 1C 04 2E */	lfsx f0, r28, r0
/* 800BCA74  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BCA78  EC 02 00 2A */	fadds f0, f2, f0
/* 800BCA7C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800BCA80  7F E3 FB 78 */	mr r3, r31
/* 800BCA84  4B FF 6E 81 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800BCA88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BCA8C  41 82 00 34 */	beq lbl_800BCAC0
/* 800BCA90  38 7F 35 C4 */	addi r3, r31, 0x35c4
/* 800BCA94  48 28 A6 A5 */	bl PSVECSquareMag
/* 800BCA98  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800BCA9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BCAA0  40 81 00 20 */	ble lbl_800BCAC0
/* 800BCAA4  7F E3 FB 78 */	mr r3, r31
/* 800BCAA8  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200BB@ha */
/* 800BCAAC  38 84 00 BB */	addi r4, r4, 0x00BB /* 0x000200BB@l */
/* 800BCAB0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800BCAB4  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 800BCAB8  7D 89 03 A6 */	mtctr r12
/* 800BCABC  4E 80 04 21 */	bctrl 
lbl_800BCAC0:
/* 800BCAC0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800BCAC4  38 9F 35 94 */	addi r4, r31, 0x3594
/* 800BCAC8  7C 65 1B 78 */	mr r5, r3
/* 800BCACC  48 28 A5 C5 */	bl PSVECAdd
/* 800BCAD0  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800BCAD4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800BCAD8  41 82 00 18 */	beq lbl_800BCAF0
/* 800BCADC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800BCAE0  38 9F 35 AC */	addi r4, r31, 0x35ac
/* 800BCAE4  7C 65 1B 78 */	mr r5, r3
/* 800BCAE8  48 28 A5 A9 */	bl PSVECAdd
/* 800BCAEC  48 00 04 40 */	b lbl_800BCF2C
lbl_800BCAF0:
/* 800BCAF0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800BCAF4  C0 1F 35 AC */	lfs f0, 0x35ac(r31)
/* 800BCAF8  EC 01 00 2A */	fadds f0, f1, f0
/* 800BCAFC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800BCB00  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800BCB04  C0 1F 35 B4 */	lfs f0, 0x35b4(r31)
/* 800BCB08  EC 01 00 2A */	fadds f0, f1, f0
/* 800BCB0C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800BCB10  48 00 04 1C */	b lbl_800BCF2C
lbl_800BCB14:
/* 800BCB14  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 800BCB18  3C 60 00 01 */	lis r3, 0x0001 /* 0x00014000@ha */
/* 800BCB1C  38 03 40 00 */	addi r0, r3, 0x4000 /* 0x00014000@l */
/* 800BCB20  7C 80 00 39 */	and. r0, r4, r0
/* 800BCB24  41 82 04 08 */	beq lbl_800BCF2C
/* 800BCB28  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800BCB2C  38 9F 35 94 */	addi r4, r31, 0x3594
/* 800BCB30  7C 65 1B 78 */	mr r5, r3
/* 800BCB34  48 28 A5 5D */	bl PSVECAdd
/* 800BCB38  48 00 03 F4 */	b lbl_800BCF2C
lbl_800BCB3C:
/* 800BCB3C  7F E3 FB 78 */	mr r3, r31
/* 800BCB40  48 04 BE 41 */	bl checkOctaIealSpecialCollect__9daAlink_cFv
/* 800BCB44  2C 03 00 00 */	cmpwi r3, 0
/* 800BCB48  41 82 02 38 */	beq lbl_800BCD80
/* 800BCB4C  7F E3 FB 78 */	mr r3, r31
/* 800BCB50  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800BCB54  81 8C 02 48 */	lwz r12, 0x248(r12)
/* 800BCB58  7D 89 03 A6 */	mtctr r12
/* 800BCB5C  4E 80 04 21 */	bctrl 
/* 800BCB60  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800BCB64  48 28 A8 39 */	bl PSVECSquareDistance
/* 800BCB68  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BCB6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BCB70  40 81 00 58 */	ble lbl_800BCBC8
/* 800BCB74  FC 00 08 34 */	frsqrte f0, f1
/* 800BCB78  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800BCB7C  FC 44 00 32 */	fmul f2, f4, f0
/* 800BCB80  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800BCB84  FC 00 00 32 */	fmul f0, f0, f0
/* 800BCB88  FC 01 00 32 */	fmul f0, f1, f0
/* 800BCB8C  FC 03 00 28 */	fsub f0, f3, f0
/* 800BCB90  FC 02 00 32 */	fmul f0, f2, f0
/* 800BCB94  FC 44 00 32 */	fmul f2, f4, f0
/* 800BCB98  FC 00 00 32 */	fmul f0, f0, f0
/* 800BCB9C  FC 01 00 32 */	fmul f0, f1, f0
/* 800BCBA0  FC 03 00 28 */	fsub f0, f3, f0
/* 800BCBA4  FC 02 00 32 */	fmul f0, f2, f0
/* 800BCBA8  FC 44 00 32 */	fmul f2, f4, f0
/* 800BCBAC  FC 00 00 32 */	fmul f0, f0, f0
/* 800BCBB0  FC 01 00 32 */	fmul f0, f1, f0
/* 800BCBB4  FC 03 00 28 */	fsub f0, f3, f0
/* 800BCBB8  FC 02 00 32 */	fmul f0, f2, f0
/* 800BCBBC  FF E1 00 32 */	fmul f31, f1, f0
/* 800BCBC0  FF E0 F8 18 */	frsp f31, f31
/* 800BCBC4  48 00 00 90 */	b lbl_800BCC54
lbl_800BCBC8:
/* 800BCBC8  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800BCBCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BCBD0  40 80 00 10 */	bge lbl_800BCBE0
/* 800BCBD4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BCBD8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800BCBDC  48 00 00 78 */	b lbl_800BCC54
lbl_800BCBE0:
/* 800BCBE0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800BCBE4  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 800BCBE8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800BCBEC  3C 00 7F 80 */	lis r0, 0x7f80
/* 800BCBF0  7C 03 00 00 */	cmpw r3, r0
/* 800BCBF4  41 82 00 14 */	beq lbl_800BCC08
/* 800BCBF8  40 80 00 40 */	bge lbl_800BCC38
/* 800BCBFC  2C 03 00 00 */	cmpwi r3, 0
/* 800BCC00  41 82 00 20 */	beq lbl_800BCC20
/* 800BCC04  48 00 00 34 */	b lbl_800BCC38
lbl_800BCC08:
/* 800BCC08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BCC0C  41 82 00 0C */	beq lbl_800BCC18
/* 800BCC10  38 00 00 01 */	li r0, 1
/* 800BCC14  48 00 00 28 */	b lbl_800BCC3C
lbl_800BCC18:
/* 800BCC18  38 00 00 02 */	li r0, 2
/* 800BCC1C  48 00 00 20 */	b lbl_800BCC3C
lbl_800BCC20:
/* 800BCC20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BCC24  41 82 00 0C */	beq lbl_800BCC30
/* 800BCC28  38 00 00 05 */	li r0, 5
/* 800BCC2C  48 00 00 10 */	b lbl_800BCC3C
lbl_800BCC30:
/* 800BCC30  38 00 00 03 */	li r0, 3
/* 800BCC34  48 00 00 08 */	b lbl_800BCC3C
lbl_800BCC38:
/* 800BCC38  38 00 00 04 */	li r0, 4
lbl_800BCC3C:
/* 800BCC3C  2C 00 00 01 */	cmpwi r0, 1
/* 800BCC40  40 82 00 10 */	bne lbl_800BCC50
/* 800BCC44  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BCC48  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800BCC4C  48 00 00 08 */	b lbl_800BCC54
lbl_800BCC50:
/* 800BCC50  FF E0 08 90 */	fmr f31, f1
lbl_800BCC54:
/* 800BCC54  38 9F 08 14 */	addi r4, r31, 0x814
/* 800BCC58  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800BCC5C  7C 65 1B 78 */	mr r5, r3
/* 800BCC60  48 28 A4 31 */	bl PSVECAdd
/* 800BCC64  7F E3 FB 78 */	mr r3, r31
/* 800BCC68  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800BCC6C  81 8C 02 48 */	lwz r12, 0x248(r12)
/* 800BCC70  7D 89 03 A6 */	mtctr r12
/* 800BCC74  4E 80 04 21 */	bctrl 
/* 800BCC78  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800BCC7C  48 28 A7 21 */	bl PSVECSquareDistance
/* 800BCC80  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BCC84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BCC88  40 81 00 58 */	ble lbl_800BCCE0
/* 800BCC8C  FC 00 08 34 */	frsqrte f0, f1
/* 800BCC90  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800BCC94  FC 44 00 32 */	fmul f2, f4, f0
/* 800BCC98  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800BCC9C  FC 00 00 32 */	fmul f0, f0, f0
/* 800BCCA0  FC 01 00 32 */	fmul f0, f1, f0
/* 800BCCA4  FC 03 00 28 */	fsub f0, f3, f0
/* 800BCCA8  FC 02 00 32 */	fmul f0, f2, f0
/* 800BCCAC  FC 44 00 32 */	fmul f2, f4, f0
/* 800BCCB0  FC 00 00 32 */	fmul f0, f0, f0
/* 800BCCB4  FC 01 00 32 */	fmul f0, f1, f0
/* 800BCCB8  FC 03 00 28 */	fsub f0, f3, f0
/* 800BCCBC  FC 02 00 32 */	fmul f0, f2, f0
/* 800BCCC0  FC 44 00 32 */	fmul f2, f4, f0
/* 800BCCC4  FC 00 00 32 */	fmul f0, f0, f0
/* 800BCCC8  FC 01 00 32 */	fmul f0, f1, f0
/* 800BCCCC  FC 03 00 28 */	fsub f0, f3, f0
/* 800BCCD0  FC 02 00 32 */	fmul f0, f2, f0
/* 800BCCD4  FC 21 00 32 */	fmul f1, f1, f0
/* 800BCCD8  FC 20 08 18 */	frsp f1, f1
/* 800BCCDC  48 00 00 88 */	b lbl_800BCD64
lbl_800BCCE0:
/* 800BCCE0  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800BCCE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BCCE8  40 80 00 10 */	bge lbl_800BCCF8
/* 800BCCEC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BCCF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800BCCF4  48 00 00 70 */	b lbl_800BCD64
lbl_800BCCF8:
/* 800BCCF8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800BCCFC  80 81 00 18 */	lwz r4, 0x18(r1)
/* 800BCD00  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800BCD04  3C 00 7F 80 */	lis r0, 0x7f80
/* 800BCD08  7C 03 00 00 */	cmpw r3, r0
/* 800BCD0C  41 82 00 14 */	beq lbl_800BCD20
/* 800BCD10  40 80 00 40 */	bge lbl_800BCD50
/* 800BCD14  2C 03 00 00 */	cmpwi r3, 0
/* 800BCD18  41 82 00 20 */	beq lbl_800BCD38
/* 800BCD1C  48 00 00 34 */	b lbl_800BCD50
lbl_800BCD20:
/* 800BCD20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BCD24  41 82 00 0C */	beq lbl_800BCD30
/* 800BCD28  38 00 00 01 */	li r0, 1
/* 800BCD2C  48 00 00 28 */	b lbl_800BCD54
lbl_800BCD30:
/* 800BCD30  38 00 00 02 */	li r0, 2
/* 800BCD34  48 00 00 20 */	b lbl_800BCD54
lbl_800BCD38:
/* 800BCD38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BCD3C  41 82 00 0C */	beq lbl_800BCD48
/* 800BCD40  38 00 00 05 */	li r0, 5
/* 800BCD44  48 00 00 10 */	b lbl_800BCD54
lbl_800BCD48:
/* 800BCD48  38 00 00 03 */	li r0, 3
/* 800BCD4C  48 00 00 08 */	b lbl_800BCD54
lbl_800BCD50:
/* 800BCD50  38 00 00 04 */	li r0, 4
lbl_800BCD54:
/* 800BCD54  2C 00 00 01 */	cmpwi r0, 1
/* 800BCD58  40 82 00 0C */	bne lbl_800BCD64
/* 800BCD5C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BCD60  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800BCD64:
/* 800BCD64  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 800BCD68  40 81 01 C4 */	ble lbl_800BCF2C
/* 800BCD6C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800BCD70  EC 01 F8 28 */	fsubs f0, f1, f31
/* 800BCD74  EC 02 00 2A */	fadds f0, f2, f0
/* 800BCD78  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800BCD7C  48 00 01 B0 */	b lbl_800BCF2C
lbl_800BCD80:
/* 800BCD80  2C 1E 00 00 */	cmpwi r30, 0
/* 800BCD84  40 82 01 A8 */	bne lbl_800BCF2C
/* 800BCD88  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800BCD8C  28 00 00 59 */	cmplwi r0, 0x59
/* 800BCD90  41 82 00 24 */	beq lbl_800BCDB4
/* 800BCD94  28 00 00 83 */	cmplwi r0, 0x83
/* 800BCD98  41 82 00 1C */	beq lbl_800BCDB4
/* 800BCD9C  28 00 00 82 */	cmplwi r0, 0x82
/* 800BCDA0  41 82 00 14 */	beq lbl_800BCDB4
/* 800BCDA4  28 00 00 84 */	cmplwi r0, 0x84
/* 800BCDA8  41 82 00 0C */	beq lbl_800BCDB4
/* 800BCDAC  28 00 00 58 */	cmplwi r0, 0x58
/* 800BCDB0  40 82 01 7C */	bne lbl_800BCF2C
lbl_800BCDB4:
/* 800BCDB4  C0 3F 08 1C */	lfs f1, 0x81c(r31)
/* 800BCDB8  C0 1F 08 14 */	lfs f0, 0x814(r31)
/* 800BCDBC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800BCDC0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BCDC4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800BCDC8  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 800BCDCC  38 61 00 3C */	addi r3, r1, 0x3c
/* 800BCDD0  48 28 A3 69 */	bl PSVECSquareMag
/* 800BCDD4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BCDD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BCDDC  40 81 00 58 */	ble lbl_800BCE34
/* 800BCDE0  FC 00 08 34 */	frsqrte f0, f1
/* 800BCDE4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800BCDE8  FC 44 00 32 */	fmul f2, f4, f0
/* 800BCDEC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800BCDF0  FC 00 00 32 */	fmul f0, f0, f0
/* 800BCDF4  FC 01 00 32 */	fmul f0, f1, f0
/* 800BCDF8  FC 03 00 28 */	fsub f0, f3, f0
/* 800BCDFC  FC 02 00 32 */	fmul f0, f2, f0
/* 800BCE00  FC 44 00 32 */	fmul f2, f4, f0
/* 800BCE04  FC 00 00 32 */	fmul f0, f0, f0
/* 800BCE08  FC 01 00 32 */	fmul f0, f1, f0
/* 800BCE0C  FC 03 00 28 */	fsub f0, f3, f0
/* 800BCE10  FC 02 00 32 */	fmul f0, f2, f0
/* 800BCE14  FC 44 00 32 */	fmul f2, f4, f0
/* 800BCE18  FC 00 00 32 */	fmul f0, f0, f0
/* 800BCE1C  FC 01 00 32 */	fmul f0, f1, f0
/* 800BCE20  FC 03 00 28 */	fsub f0, f3, f0
/* 800BCE24  FC 02 00 32 */	fmul f0, f2, f0
/* 800BCE28  FF E1 00 32 */	fmul f31, f1, f0
/* 800BCE2C  FF E0 F8 18 */	frsp f31, f31
/* 800BCE30  48 00 00 90 */	b lbl_800BCEC0
lbl_800BCE34:
/* 800BCE34  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800BCE38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BCE3C  40 80 00 10 */	bge lbl_800BCE4C
/* 800BCE40  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BCE44  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800BCE48  48 00 00 78 */	b lbl_800BCEC0
lbl_800BCE4C:
/* 800BCE4C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800BCE50  80 81 00 14 */	lwz r4, 0x14(r1)
/* 800BCE54  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800BCE58  3C 00 7F 80 */	lis r0, 0x7f80
/* 800BCE5C  7C 03 00 00 */	cmpw r3, r0
/* 800BCE60  41 82 00 14 */	beq lbl_800BCE74
/* 800BCE64  40 80 00 40 */	bge lbl_800BCEA4
/* 800BCE68  2C 03 00 00 */	cmpwi r3, 0
/* 800BCE6C  41 82 00 20 */	beq lbl_800BCE8C
/* 800BCE70  48 00 00 34 */	b lbl_800BCEA4
lbl_800BCE74:
/* 800BCE74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BCE78  41 82 00 0C */	beq lbl_800BCE84
/* 800BCE7C  38 00 00 01 */	li r0, 1
/* 800BCE80  48 00 00 28 */	b lbl_800BCEA8
lbl_800BCE84:
/* 800BCE84  38 00 00 02 */	li r0, 2
/* 800BCE88  48 00 00 20 */	b lbl_800BCEA8
lbl_800BCE8C:
/* 800BCE8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BCE90  41 82 00 0C */	beq lbl_800BCE9C
/* 800BCE94  38 00 00 05 */	li r0, 5
/* 800BCE98  48 00 00 10 */	b lbl_800BCEA8
lbl_800BCE9C:
/* 800BCE9C  38 00 00 03 */	li r0, 3
/* 800BCEA0  48 00 00 08 */	b lbl_800BCEA8
lbl_800BCEA4:
/* 800BCEA4  38 00 00 04 */	li r0, 4
lbl_800BCEA8:
/* 800BCEA8  2C 00 00 01 */	cmpwi r0, 1
/* 800BCEAC  40 82 00 10 */	bne lbl_800BCEBC
/* 800BCEB0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BCEB4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800BCEB8  48 00 00 08 */	b lbl_800BCEC0
lbl_800BCEBC:
/* 800BCEBC  FF E0 08 90 */	fmr f31, f1
lbl_800BCEC0:
/* 800BCEC0  3B 60 00 01 */	li r27, 1
/* 800BCEC4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800BCEC8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800BCECC  40 81 00 60 */	ble lbl_800BCF2C
/* 800BCED0  38 7F 08 14 */	addi r3, r31, 0x814
/* 800BCED4  48 1A A2 55 */	bl atan2sX_Z__4cXyzCFv
/* 800BCED8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800BCEDC  7C 00 18 50 */	subf r0, r0, r3
/* 800BCEE0  7C 00 07 35 */	extsh. r0, r0
/* 800BCEE4  41 80 00 28 */	blt lbl_800BCF0C
/* 800BCEE8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800BCEEC  EC 1F 07 72 */	fmuls f0, f31, f29
/* 800BCEF0  EC 01 00 2A */	fadds f0, f1, f0
/* 800BCEF4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800BCEF8  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800BCEFC  EC 1F 07 B2 */	fmuls f0, f31, f30
/* 800BCF00  EC 01 00 28 */	fsubs f0, f1, f0
/* 800BCF04  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800BCF08  48 00 00 24 */	b lbl_800BCF2C
lbl_800BCF0C:
/* 800BCF0C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800BCF10  EC 1F 07 72 */	fmuls f0, f31, f29
/* 800BCF14  EC 01 00 28 */	fsubs f0, f1, f0
/* 800BCF18  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800BCF1C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800BCF20  EC 1F 07 B2 */	fmuls f0, f31, f30
/* 800BCF24  EC 01 00 2A */	fadds f0, f1, f0
/* 800BCF28  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_800BCF2C:
/* 800BCF2C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800BCF30  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800BCF34  41 82 01 A4 */	beq lbl_800BD0D8
/* 800BCF38  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800BCF3C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800BCF40  41 82 01 98 */	beq lbl_800BD0D8
/* 800BCF44  38 61 00 84 */	addi r3, r1, 0x84
/* 800BCF48  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800BCF4C  38 BF 37 98 */	addi r5, r31, 0x3798
/* 800BCF50  48 1A 9B E5 */	bl __mi__4cXyzCFRC3Vec
/* 800BCF54  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 800BCF58  D0 41 00 F0 */	stfs f2, 0xf0(r1)
/* 800BCF5C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 800BCF60  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 800BCF64  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 800BCF68  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 800BCF6C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 800BCF70  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BCF74  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800BCF78  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 800BCF7C  38 61 00 30 */	addi r3, r1, 0x30
/* 800BCF80  48 28 A1 B9 */	bl PSVECSquareMag
/* 800BCF84  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BCF88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BCF8C  40 81 00 58 */	ble lbl_800BCFE4
/* 800BCF90  FC 00 08 34 */	frsqrte f0, f1
/* 800BCF94  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800BCF98  FC 44 00 32 */	fmul f2, f4, f0
/* 800BCF9C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800BCFA0  FC 00 00 32 */	fmul f0, f0, f0
/* 800BCFA4  FC 01 00 32 */	fmul f0, f1, f0
/* 800BCFA8  FC 03 00 28 */	fsub f0, f3, f0
/* 800BCFAC  FC 02 00 32 */	fmul f0, f2, f0
/* 800BCFB0  FC 44 00 32 */	fmul f2, f4, f0
/* 800BCFB4  FC 00 00 32 */	fmul f0, f0, f0
/* 800BCFB8  FC 01 00 32 */	fmul f0, f1, f0
/* 800BCFBC  FC 03 00 28 */	fsub f0, f3, f0
/* 800BCFC0  FC 02 00 32 */	fmul f0, f2, f0
/* 800BCFC4  FC 44 00 32 */	fmul f2, f4, f0
/* 800BCFC8  FC 00 00 32 */	fmul f0, f0, f0
/* 800BCFCC  FC 01 00 32 */	fmul f0, f1, f0
/* 800BCFD0  FC 03 00 28 */	fsub f0, f3, f0
/* 800BCFD4  FC 02 00 32 */	fmul f0, f2, f0
/* 800BCFD8  FF E1 00 32 */	fmul f31, f1, f0
/* 800BCFDC  FF E0 F8 18 */	frsp f31, f31
/* 800BCFE0  48 00 00 90 */	b lbl_800BD070
lbl_800BCFE4:
/* 800BCFE4  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800BCFE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BCFEC  40 80 00 10 */	bge lbl_800BCFFC
/* 800BCFF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BCFF4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800BCFF8  48 00 00 78 */	b lbl_800BD070
lbl_800BCFFC:
/* 800BCFFC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800BD000  80 81 00 10 */	lwz r4, 0x10(r1)
/* 800BD004  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800BD008  3C 00 7F 80 */	lis r0, 0x7f80
/* 800BD00C  7C 03 00 00 */	cmpw r3, r0
/* 800BD010  41 82 00 14 */	beq lbl_800BD024
/* 800BD014  40 80 00 40 */	bge lbl_800BD054
/* 800BD018  2C 03 00 00 */	cmpwi r3, 0
/* 800BD01C  41 82 00 20 */	beq lbl_800BD03C
/* 800BD020  48 00 00 34 */	b lbl_800BD054
lbl_800BD024:
/* 800BD024  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BD028  41 82 00 0C */	beq lbl_800BD034
/* 800BD02C  38 00 00 01 */	li r0, 1
/* 800BD030  48 00 00 28 */	b lbl_800BD058
lbl_800BD034:
/* 800BD034  38 00 00 02 */	li r0, 2
/* 800BD038  48 00 00 20 */	b lbl_800BD058
lbl_800BD03C:
/* 800BD03C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BD040  41 82 00 0C */	beq lbl_800BD04C
/* 800BD044  38 00 00 05 */	li r0, 5
/* 800BD048  48 00 00 10 */	b lbl_800BD058
lbl_800BD04C:
/* 800BD04C  38 00 00 03 */	li r0, 3
/* 800BD050  48 00 00 08 */	b lbl_800BD058
lbl_800BD054:
/* 800BD054  38 00 00 04 */	li r0, 4
lbl_800BD058:
/* 800BD058  2C 00 00 01 */	cmpwi r0, 1
/* 800BD05C  40 82 00 10 */	bne lbl_800BD06C
/* 800BD060  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BD064  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800BD068  48 00 00 08 */	b lbl_800BD070
lbl_800BD06C:
/* 800BD06C  FF E0 08 90 */	fmr f31, f1
lbl_800BD070:
/* 800BD070  38 61 00 F0 */	addi r3, r1, 0xf0
/* 800BD074  48 1A A0 B5 */	bl atan2sX_Z__4cXyzCFv
/* 800BD078  7C 65 1B 78 */	mr r5, r3
/* 800BD07C  7F E3 FB 78 */	mr r3, r31
/* 800BD080  38 9F 1A F0 */	addi r4, r31, 0x1af0
/* 800BD084  4B FF 30 15 */	bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
/* 800BD088  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 800BD08C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800BD090  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800BD094  7C 03 04 2E */	lfsx f0, r3, r0
/* 800BD098  EC 7F 00 32 */	fmuls f3, f31, f0
/* 800BD09C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BD0A0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800BD0A4  40 80 00 08 */	bge lbl_800BD0AC
/* 800BD0A8  FC 60 00 90 */	fmr f3, f0
lbl_800BD0AC:
/* 800BD0AC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800BD0B0  C0 5F 33 B4 */	lfs f2, 0x33b4(r31)
/* 800BD0B4  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800BD0B8  EC 02 00 2A */	fadds f0, f2, f0
/* 800BD0BC  EC 03 00 2A */	fadds f0, f3, f0
/* 800BD0C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BD0C4  41 81 00 14 */	bgt lbl_800BD0D8
/* 800BD0C8  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800BD0CC  28 00 00 7C */	cmplwi r0, 0x7c
/* 800BD0D0  41 82 00 08 */	beq lbl_800BD0D8
/* 800BD0D4  D0 5F 04 D4 */	stfs f2, 0x4d4(r31)
lbl_800BD0D8:
/* 800BD0D8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BD0DC  D0 1F 34 00 */	stfs f0, 0x3400(r31)
/* 800BD0E0  D0 1F 34 04 */	stfs f0, 0x3404(r31)
/* 800BD0E4  38 7F 08 14 */	addi r3, r31, 0x814
/* 800BD0E8  48 1A 68 75 */	bl ClrCcMove__9cCcD_SttsFv
/* 800BD0EC  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800BD0F0  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 800BD0F4  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 800BD0F8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BD0FC  D0 1F 34 64 */	stfs f0, 0x3464(r31)
/* 800BD100  D0 1F 34 68 */	stfs f0, 0x3468(r31)
/* 800BD104  88 1F 2F 99 */	lbz r0, 0x2f99(r31)
/* 800BD108  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 800BD10C  41 82 01 78 */	beq lbl_800BD284
/* 800BD110  38 61 00 78 */	addi r3, r1, 0x78
/* 800BD114  38 9F 34 D4 */	addi r4, r31, 0x34d4
/* 800BD118  38 A1 01 08 */	addi r5, r1, 0x108
/* 800BD11C  48 1A 9A 19 */	bl __mi__4cXyzCFRC3Vec
/* 800BD120  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 800BD124  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 800BD128  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 800BD12C  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 800BD130  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 800BD134  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 800BD138  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800BD13C  28 00 00 80 */	cmplwi r0, 0x80
/* 800BD140  40 82 00 2C */	bne lbl_800BD16C
/* 800BD144  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 800BD148  2C 00 00 00 */	cmpwi r0, 0
/* 800BD14C  41 82 00 20 */	beq lbl_800BD16C
/* 800BD150  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 800BD154  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 800BD158  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 800BD15C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800BD160  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 800BD164  C0 03 00 08 */	lfs f0, 8(r3)
/* 800BD168  D0 01 00 EC */	stfs f0, 0xec(r1)
lbl_800BD16C:
/* 800BD16C  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800BD170  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800BD174  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800BD178  7C 80 00 39 */	and. r0, r4, r0
/* 800BD17C  41 82 00 0C */	beq lbl_800BD188
/* 800BD180  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800BD184  48 00 00 10 */	b lbl_800BD194
lbl_800BD188:
/* 800BD188  A8 1F 2F F0 */	lha r0, 0x2ff0(r31)
/* 800BD18C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800BD190  7C 5C 04 2E */	lfsx f2, r28, r0
lbl_800BD194:
/* 800BD194  88 1F 2F 99 */	lbz r0, 0x2f99(r31)
/* 800BD198  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800BD19C  40 82 00 0C */	bne lbl_800BD1A8
/* 800BD1A0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BD1A4  D0 01 00 EC */	stfs f0, 0xec(r1)
lbl_800BD1A8:
/* 800BD1A8  88 1F 2F 99 */	lbz r0, 0x2f99(r31)
/* 800BD1AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800BD1B0  40 82 00 0C */	bne lbl_800BD1BC
/* 800BD1B4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BD1B8  D0 01 00 E4 */	stfs f0, 0xe4(r1)
lbl_800BD1BC:
/* 800BD1BC  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 800BD1C0  EC 20 07 B2 */	fmuls f1, f0, f30
/* 800BD1C4  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 800BD1C8  EC 00 07 72 */	fmuls f0, f0, f29
/* 800BD1CC  EC 01 00 2A */	fadds f0, f1, f0
/* 800BD1D0  EC 02 00 32 */	fmuls f0, f2, f0
/* 800BD1D4  D0 1F 34 64 */	stfs f0, 0x3464(r31)
/* 800BD1D8  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 800BD1DC  EC 20 07 72 */	fmuls f1, f0, f29
/* 800BD1E0  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 800BD1E4  EC 00 07 B2 */	fmuls f0, f0, f30
/* 800BD1E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 800BD1EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 800BD1F0  D0 1F 34 68 */	stfs f0, 0x3468(r31)
/* 800BD1F4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800BD1F8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800BD1FC  41 82 00 4C */	beq lbl_800BD248
/* 800BD200  38 7F 2C 48 */	addi r3, r31, 0x2c48
/* 800BD204  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800BD208  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800BD20C  48 28 92 A5 */	bl PSMTXCopy
/* 800BD210  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800BD214  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800BD218  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800BD21C  4B F4 F2 19 */	bl mDoMtx_YrotM__FPA4_fs
/* 800BD220  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800BD224  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800BD228  38 81 00 E4 */	addi r4, r1, 0xe4
/* 800BD22C  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 800BD230  48 28 9B 3D */	bl PSMTXMultVec
/* 800BD234  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800BD238  38 81 00 D8 */	addi r4, r1, 0xd8
/* 800BD23C  7C 65 1B 78 */	mr r5, r3
/* 800BD240  48 28 9E 51 */	bl PSVECAdd
/* 800BD244  48 00 00 40 */	b lbl_800BD284
lbl_800BD248:
/* 800BD248  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800BD24C  C0 1F 34 64 */	lfs f0, 0x3464(r31)
/* 800BD250  EC 01 00 2A */	fadds f0, f1, f0
/* 800BD254  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800BD258  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800BD25C  C0 1F 34 68 */	lfs f0, 0x3468(r31)
/* 800BD260  EC 01 00 2A */	fadds f0, f1, f0
/* 800BD264  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800BD268  88 1F 2F 99 */	lbz r0, 0x2f99(r31)
/* 800BD26C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800BD270  41 82 00 14 */	beq lbl_800BD284
/* 800BD274  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800BD278  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 800BD27C  EC 01 00 2A */	fadds f0, f1, f0
/* 800BD280  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_800BD284:
/* 800BD284  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800BD288  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800BD28C  41 82 00 18 */	beq lbl_800BD2A4
/* 800BD290  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800BD294  C0 1F 33 C4 */	lfs f0, 0x33c4(r31)
/* 800BD298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BD29C  40 81 00 08 */	ble lbl_800BD2A4
/* 800BD2A0  D0 3F 33 C4 */	stfs f1, 0x33c4(r31)
lbl_800BD2A4:
/* 800BD2A4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800BD2A8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800BD2AC  41 82 03 94 */	beq lbl_800BD640
/* 800BD2B0  38 61 00 6C */	addi r3, r1, 0x6c
/* 800BD2B4  38 9F 36 A8 */	addi r4, r31, 0x36a8
/* 800BD2B8  C0 2D 81 10 */	lfs f1, l_autoUpHeight(r13)
/* 800BD2BC  48 1A 98 C9 */	bl __ml__4cXyzCFf
/* 800BD2C0  38 61 00 60 */	addi r3, r1, 0x60
/* 800BD2C4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800BD2C8  38 A1 00 6C */	addi r5, r1, 0x6c
/* 800BD2CC  48 1A 98 19 */	bl __pl__4cXyzCFRC3Vec
/* 800BD2D0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 800BD2D4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 800BD2D8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 800BD2DC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 800BD2E0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 800BD2E4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 800BD2E8  80 7D 49 F4 */	lwz r3, 0x49f4(r29)
/* 800BD2EC  80 1D 49 F8 */	lwz r0, 0x49f8(r29)
/* 800BD2F0  90 61 00 A8 */	stw r3, 0xa8(r1)
/* 800BD2F4  90 01 00 AC */	stw r0, 0xac(r1)
/* 800BD2F8  80 1D 49 FC */	lwz r0, 0x49fc(r29)
/* 800BD2FC  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 800BD300  3B 60 80 00 */	li r27, -32768
/* 800BD304  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800BD308  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800BD30C  90 01 01 24 */	stw r0, 0x124(r1)
/* 800BD310  3B 40 00 00 */	li r26, 0
/* 800BD314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BD318  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BD31C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 800BD320  3B 9F 1B 78 */	addi r28, r31, 0x1b78
/* 800BD324  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800BD328  3B C3 9A 20 */	addi r30, r3, sincosTable___5JMath@l /* 0x80439A20@l */
lbl_800BD32C:
/* 800BD32C  C0 3F 18 E4 */	lfs f1, 0x18e4(r31)
/* 800BD330  57 60 04 38 */	rlwinm r0, r27, 0, 0x10, 0x1c
/* 800BD334  7C 7E 02 14 */	add r3, r30, r0
/* 800BD338  C0 03 00 00 */	lfs f0, 0(r3)
/* 800BD33C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BD340  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 800BD344  C0 03 00 04 */	lfs f0, 4(r3)
/* 800BD348  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BD34C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 800BD350  38 7F 2C 48 */	addi r3, r31, 0x2c48
/* 800BD354  38 81 00 A8 */	addi r4, r1, 0xa8
/* 800BD358  38 A1 00 CC */	addi r5, r1, 0xcc
/* 800BD35C  48 28 9A 11 */	bl PSMTXMultVec
/* 800BD360  38 61 00 54 */	addi r3, r1, 0x54
/* 800BD364  38 81 00 C0 */	addi r4, r1, 0xc0
/* 800BD368  38 A1 00 CC */	addi r5, r1, 0xcc
/* 800BD36C  48 1A 97 79 */	bl __pl__4cXyzCFRC3Vec
/* 800BD370  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 800BD374  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 800BD378  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 800BD37C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 800BD380  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 800BD384  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 800BD388  7F E3 FB 78 */	mr r3, r31
/* 800BD38C  38 81 00 C0 */	addi r4, r1, 0xc0
/* 800BD390  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 800BD394  4B FE 4E 05 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800BD398  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BD39C  41 82 02 84 */	beq lbl_800BD620
/* 800BD3A0  7F A3 EB 78 */	mr r3, r29
/* 800BD3A4  38 9F 1B 5C */	addi r4, r31, 0x1b5c
/* 800BD3A8  38 A1 01 14 */	addi r5, r1, 0x114
/* 800BD3AC  4B FB 73 99 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800BD3B0  38 61 00 B4 */	addi r3, r1, 0xb4
/* 800BD3B4  7F 84 E3 78 */	mr r4, r28
/* 800BD3B8  48 28 9F E5 */	bl PSVECSquareDistance
/* 800BD3BC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BD3C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BD3C4  40 81 00 58 */	ble lbl_800BD41C
/* 800BD3C8  FC 00 08 34 */	frsqrte f0, f1
/* 800BD3CC  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800BD3D0  FC 44 00 32 */	fmul f2, f4, f0
/* 800BD3D4  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800BD3D8  FC 00 00 32 */	fmul f0, f0, f0
/* 800BD3DC  FC 01 00 32 */	fmul f0, f1, f0
/* 800BD3E0  FC 03 00 28 */	fsub f0, f3, f0
/* 800BD3E4  FC 02 00 32 */	fmul f0, f2, f0
/* 800BD3E8  FC 44 00 32 */	fmul f2, f4, f0
/* 800BD3EC  FC 00 00 32 */	fmul f0, f0, f0
/* 800BD3F0  FC 01 00 32 */	fmul f0, f1, f0
/* 800BD3F4  FC 03 00 28 */	fsub f0, f3, f0
/* 800BD3F8  FC 02 00 32 */	fmul f0, f2, f0
/* 800BD3FC  FC 44 00 32 */	fmul f2, f4, f0
/* 800BD400  FC 00 00 32 */	fmul f0, f0, f0
/* 800BD404  FC 01 00 32 */	fmul f0, f1, f0
/* 800BD408  FC 03 00 28 */	fsub f0, f3, f0
/* 800BD40C  FC 02 00 32 */	fmul f0, f2, f0
/* 800BD410  FF E1 00 32 */	fmul f31, f1, f0
/* 800BD414  FF E0 F8 18 */	frsp f31, f31
/* 800BD418  48 00 00 90 */	b lbl_800BD4A8
lbl_800BD41C:
/* 800BD41C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800BD420  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BD424  40 80 00 10 */	bge lbl_800BD434
/* 800BD428  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BD42C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800BD430  48 00 00 78 */	b lbl_800BD4A8
lbl_800BD434:
/* 800BD434  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800BD438  80 81 00 0C */	lwz r4, 0xc(r1)
/* 800BD43C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800BD440  3C 00 7F 80 */	lis r0, 0x7f80
/* 800BD444  7C 03 00 00 */	cmpw r3, r0
/* 800BD448  41 82 00 14 */	beq lbl_800BD45C
/* 800BD44C  40 80 00 40 */	bge lbl_800BD48C
/* 800BD450  2C 03 00 00 */	cmpwi r3, 0
/* 800BD454  41 82 00 20 */	beq lbl_800BD474
/* 800BD458  48 00 00 34 */	b lbl_800BD48C
lbl_800BD45C:
/* 800BD45C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BD460  41 82 00 0C */	beq lbl_800BD46C
/* 800BD464  38 00 00 01 */	li r0, 1
/* 800BD468  48 00 00 28 */	b lbl_800BD490
lbl_800BD46C:
/* 800BD46C  38 00 00 02 */	li r0, 2
/* 800BD470  48 00 00 20 */	b lbl_800BD490
lbl_800BD474:
/* 800BD474  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BD478  41 82 00 0C */	beq lbl_800BD484
/* 800BD47C  38 00 00 05 */	li r0, 5
/* 800BD480  48 00 00 10 */	b lbl_800BD490
lbl_800BD484:
/* 800BD484  38 00 00 03 */	li r0, 3
/* 800BD488  48 00 00 08 */	b lbl_800BD490
lbl_800BD48C:
/* 800BD48C  38 00 00 04 */	li r0, 4
lbl_800BD490:
/* 800BD490  2C 00 00 01 */	cmpwi r0, 1
/* 800BD494  40 82 00 10 */	bne lbl_800BD4A4
/* 800BD498  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BD49C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800BD4A0  48 00 00 08 */	b lbl_800BD4A8
lbl_800BD4A4:
/* 800BD4A4  FF E0 08 90 */	fmr f31, f1
lbl_800BD4A8:
/* 800BD4A8  38 7F 2C 78 */	addi r3, r31, 0x2c78
/* 800BD4AC  38 81 01 14 */	addi r4, r1, 0x114
/* 800BD4B0  38 A1 00 CC */	addi r5, r1, 0xcc
/* 800BD4B4  48 28 99 99 */	bl PSMTXMultVecSR
/* 800BD4B8  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 800BD4BC  48 1A AD 55 */	bl cBgW_CheckBWall__Ff
/* 800BD4C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BD4C4  41 82 01 5C */	beq lbl_800BD620
/* 800BD4C8  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 800BD4CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800BD4D0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BD4D4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800BD4D8  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 800BD4DC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800BD4E0  38 61 00 24 */	addi r3, r1, 0x24
/* 800BD4E4  48 28 9C 55 */	bl PSVECSquareMag
/* 800BD4E8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BD4EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BD4F0  40 81 00 58 */	ble lbl_800BD548
/* 800BD4F4  FC 00 08 34 */	frsqrte f0, f1
/* 800BD4F8  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800BD4FC  FC 44 00 32 */	fmul f2, f4, f0
/* 800BD500  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800BD504  FC 00 00 32 */	fmul f0, f0, f0
/* 800BD508  FC 01 00 32 */	fmul f0, f1, f0
/* 800BD50C  FC 03 00 28 */	fsub f0, f3, f0
/* 800BD510  FC 02 00 32 */	fmul f0, f2, f0
/* 800BD514  FC 44 00 32 */	fmul f2, f4, f0
/* 800BD518  FC 00 00 32 */	fmul f0, f0, f0
/* 800BD51C  FC 01 00 32 */	fmul f0, f1, f0
/* 800BD520  FC 03 00 28 */	fsub f0, f3, f0
/* 800BD524  FC 02 00 32 */	fmul f0, f2, f0
/* 800BD528  FC 44 00 32 */	fmul f2, f4, f0
/* 800BD52C  FC 00 00 32 */	fmul f0, f0, f0
/* 800BD530  FC 01 00 32 */	fmul f0, f1, f0
/* 800BD534  FC 03 00 28 */	fsub f0, f3, f0
/* 800BD538  FC 02 00 32 */	fmul f0, f2, f0
/* 800BD53C  FC 21 00 32 */	fmul f1, f1, f0
/* 800BD540  FC 20 08 18 */	frsp f1, f1
/* 800BD544  48 00 00 88 */	b lbl_800BD5CC
lbl_800BD548:
/* 800BD548  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800BD54C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BD550  40 80 00 10 */	bge lbl_800BD560
/* 800BD554  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BD558  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800BD55C  48 00 00 70 */	b lbl_800BD5CC
lbl_800BD560:
/* 800BD560  D0 21 00 08 */	stfs f1, 8(r1)
/* 800BD564  80 81 00 08 */	lwz r4, 8(r1)
/* 800BD568  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800BD56C  3C 00 7F 80 */	lis r0, 0x7f80
/* 800BD570  7C 03 00 00 */	cmpw r3, r0
/* 800BD574  41 82 00 14 */	beq lbl_800BD588
/* 800BD578  40 80 00 40 */	bge lbl_800BD5B8
/* 800BD57C  2C 03 00 00 */	cmpwi r3, 0
/* 800BD580  41 82 00 20 */	beq lbl_800BD5A0
/* 800BD584  48 00 00 34 */	b lbl_800BD5B8
lbl_800BD588:
/* 800BD588  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BD58C  41 82 00 0C */	beq lbl_800BD598
/* 800BD590  38 00 00 01 */	li r0, 1
/* 800BD594  48 00 00 28 */	b lbl_800BD5BC
lbl_800BD598:
/* 800BD598  38 00 00 02 */	li r0, 2
/* 800BD59C  48 00 00 20 */	b lbl_800BD5BC
lbl_800BD5A0:
/* 800BD5A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BD5A4  41 82 00 0C */	beq lbl_800BD5B0
/* 800BD5A8  38 00 00 05 */	li r0, 5
/* 800BD5AC  48 00 00 10 */	b lbl_800BD5BC
lbl_800BD5B0:
/* 800BD5B0  38 00 00 03 */	li r0, 3
/* 800BD5B4  48 00 00 08 */	b lbl_800BD5BC
lbl_800BD5B8:
/* 800BD5B8  38 00 00 04 */	li r0, 4
lbl_800BD5BC:
/* 800BD5BC  2C 00 00 01 */	cmpwi r0, 1
/* 800BD5C0  40 82 00 0C */	bne lbl_800BD5CC
/* 800BD5C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BD5C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800BD5CC:
/* 800BD5CC  EC 3F 08 24 */	fdivs f1, f31, f1
/* 800BD5D0  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 800BD5D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 800BD5D8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 800BD5DC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BD5E0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 800BD5E4  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 800BD5E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 800BD5EC  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 800BD5F0  38 7F 2C 48 */	addi r3, r31, 0x2c48
/* 800BD5F4  38 81 00 CC */	addi r4, r1, 0xcc
/* 800BD5F8  7C 85 23 78 */	mr r5, r4
/* 800BD5FC  48 28 98 51 */	bl PSMTXMultVecSR
/* 800BD600  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800BD604  38 81 00 CC */	addi r4, r1, 0xcc
/* 800BD608  7C 65 1B 78 */	mr r5, r3
/* 800BD60C  48 28 9A 85 */	bl PSVECAdd
/* 800BD610  38 61 00 C0 */	addi r3, r1, 0xc0
/* 800BD614  38 81 00 CC */	addi r4, r1, 0xcc
/* 800BD618  7C 65 1B 78 */	mr r5, r3
/* 800BD61C  48 28 9A 75 */	bl PSVECAdd
lbl_800BD620:
/* 800BD620  3B 5A 00 01 */	addi r26, r26, 1
/* 800BD624  2C 1A 00 08 */	cmpwi r26, 8
/* 800BD628  3B 7B 20 00 */	addi r27, r27, 0x2000
/* 800BD62C  41 80 FD 00 */	blt lbl_800BD32C
/* 800BD630  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800BD634  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800BD638  90 01 01 24 */	stw r0, 0x124(r1)
/* 800BD63C  48 00 00 88 */	b lbl_800BD6C4
lbl_800BD640:
/* 800BD640  2C 1B 00 00 */	cmpwi r27, 0
/* 800BD644  41 82 00 80 */	beq lbl_800BD6C4
/* 800BD648  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 800BD64C  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 800BD650  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 800BD654  C0 03 00 04 */	lfs f0, 4(r3)
/* 800BD658  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 800BD65C  C0 03 00 08 */	lfs f0, 8(r3)
/* 800BD660  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 800BD664  7F E3 FB 78 */	mr r3, r31
/* 800BD668  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800BD66C  38 04 40 00 */	addi r0, r4, 0x4000
/* 800BD670  7C 04 07 34 */	extsh r4, r0
/* 800BD674  38 A1 00 9C */	addi r5, r1, 0x9c
/* 800BD678  48 03 C9 F9 */	bl hangMoveBgCheck__9daAlink_cFsP4cXyz
/* 800BD67C  2C 03 00 00 */	cmpwi r3, 0
/* 800BD680  40 82 00 24 */	bne lbl_800BD6A4
/* 800BD684  7F E3 FB 78 */	mr r3, r31
/* 800BD688  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800BD68C  38 04 C0 00 */	addi r0, r4, -16384
/* 800BD690  7C 04 07 34 */	extsh r4, r0
/* 800BD694  38 A1 00 9C */	addi r5, r1, 0x9c
/* 800BD698  48 03 C9 D9 */	bl hangMoveBgCheck__9daAlink_cFsP4cXyz
/* 800BD69C  2C 03 00 00 */	cmpwi r3, 0
/* 800BD6A0  41 82 00 24 */	beq lbl_800BD6C4
lbl_800BD6A4:
/* 800BD6A4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800BD6A8  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 800BD6AC  EC 01 00 2A */	fadds f0, f1, f0
/* 800BD6B0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800BD6B4  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800BD6B8  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 800BD6BC  EC 01 00 2A */	fadds f0, f1, f0
/* 800BD6C0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_800BD6C4:
/* 800BD6C4  E3 E1 01 98 */	psq_l f31, 408(r1), 0, 0 /* qr0 */
/* 800BD6C8  CB E1 01 90 */	lfd f31, 0x190(r1)
/* 800BD6CC  E3 C1 01 88 */	psq_l f30, 392(r1), 0, 0 /* qr0 */
/* 800BD6D0  CB C1 01 80 */	lfd f30, 0x180(r1)
/* 800BD6D4  E3 A1 01 78 */	psq_l f29, 376(r1), 0, 0 /* qr0 */
/* 800BD6D8  CB A1 01 70 */	lfd f29, 0x170(r1)
/* 800BD6DC  E3 81 01 68 */	psq_l f28, 360(r1), 0, 0 /* qr0 */
/* 800BD6E0  CB 81 01 60 */	lfd f28, 0x160(r1)
/* 800BD6E4  39 61 01 60 */	addi r11, r1, 0x160
/* 800BD6E8  48 2A 4B 35 */	bl _restgpr_26
/* 800BD6EC  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 800BD6F0  7C 08 03 A6 */	mtlr r0
/* 800BD6F4  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 800BD6F8  4E 80 00 20 */	blr 
