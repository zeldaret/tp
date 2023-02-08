lbl_8085BD0C:
/* 8085BD0C  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 8085BD10  7C 08 02 A6 */	mflr r0
/* 8085BD14  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8085BD18  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 8085BD1C  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, 0 /* qr0 */
/* 8085BD20  DB C1 01 90 */	stfd f30, 0x190(r1)
/* 8085BD24  F3 C1 01 98 */	psq_st f30, 408(r1), 0, 0 /* qr0 */
/* 8085BD28  DB A1 01 80 */	stfd f29, 0x180(r1)
/* 8085BD2C  F3 A1 01 88 */	psq_st f29, 392(r1), 0, 0 /* qr0 */
/* 8085BD30  DB 81 01 70 */	stfd f28, 0x170(r1)
/* 8085BD34  F3 81 01 78 */	psq_st f28, 376(r1), 0, 0 /* qr0 */
/* 8085BD38  DB 61 01 60 */	stfd f27, 0x160(r1)
/* 8085BD3C  F3 61 01 68 */	psq_st f27, 360(r1), 0, 0 /* qr0 */
/* 8085BD40  DB 41 01 50 */	stfd f26, 0x150(r1)
/* 8085BD44  F3 41 01 58 */	psq_st f26, 344(r1), 0, 0 /* qr0 */
/* 8085BD48  DB 21 01 40 */	stfd f25, 0x140(r1)
/* 8085BD4C  F3 21 01 48 */	psq_st f25, 328(r1), 0, 0 /* qr0 */
/* 8085BD50  39 61 01 40 */	addi r11, r1, 0x140
/* 8085BD54  4B B0 64 4D */	bl __save_gpr
/* 8085BD58  7C 6F 1B 78 */	mr r15, r3
/* 8085BD5C  3C 60 80 86 */	lis r3, lit_3836@ha /* 0x8085EF00@ha */
/* 8085BD60  3B 83 EF 00 */	addi r28, r3, lit_3836@l /* 0x8085EF00@l */
/* 8085BD64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085BD68  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085BD6C  83 5D 5D AC */	lwz r26, 0x5dac(r29)
/* 8085BD70  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8085BD74  3B C3 CA 54 */	addi r30, r3, g_env_light@l /* 0x8042CA54@l */
/* 8085BD78  83 3E 10 58 */	lwz r25, 0x1058(r30)
/* 8085BD7C  3B 00 00 00 */	li r24, 0
/* 8085BD80  3A E0 00 00 */	li r23, 0
/* 8085BD84  3A C0 00 00 */	li r22, 0
/* 8085BD88  3A A0 00 00 */	li r21, 0
/* 8085BD8C  3A 80 00 00 */	li r20, 0
/* 8085BD90  3A 60 00 00 */	li r19, 0
/* 8085BD94  38 00 00 00 */	li r0, 0
/* 8085BD98  90 01 00 EC */	stw r0, 0xec(r1)
/* 8085BD9C  38 00 00 00 */	li r0, 0
/* 8085BDA0  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 8085BDA4  28 19 00 00 */	cmplwi r25, 0
/* 8085BDA8  40 82 00 0C */	bne lbl_8085BDB4
/* 8085BDAC  38 60 00 01 */	li r3, 1
/* 8085BDB0  48 00 13 DC */	b lbl_8085D18C
lbl_8085BDB4:
/* 8085BDB4  3A 40 00 00 */	li r18, 0
/* 8085BDB8  39 C0 00 00 */	li r14, 0
/* 8085BDBC  3B 7D 4E 00 */	addi r27, r29, 0x4e00
/* 8085BDC0  3C 60 80 86 */	lis r3, d_a_kytag12__stringBase0@ha /* 0x8085F0EC@ha */
/* 8085BDC4  38 03 F0 EC */	addi r0, r3, d_a_kytag12__stringBase0@l /* 0x8085F0EC@l */
/* 8085BDC8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8085BDCC  C3 FC 00 00 */	lfs f31, 0(r28)
/* 8085BDD0  C3 5C 00 10 */	lfs f26, 0x10(r28)
/* 8085BDD4  C3 7C 01 08 */	lfs f27, 0x108(r28)
/* 8085BDD8  48 00 0E 60 */	b lbl_8085CC38
lbl_8085BDDC:
/* 8085BDDC  3A 2E 00 1C */	addi r17, r14, 0x1c
/* 8085BDE0  7E 39 8A 14 */	add r17, r25, r17
/* 8085BDE4  C3 BC 00 0C */	lfs f29, 0xc(r28)
/* 8085BDE8  88 11 00 00 */	lbz r0, 0(r17)
/* 8085BDEC  7C 00 07 74 */	extsb r0, r0
/* 8085BDF0  2C 00 00 01 */	cmpwi r0, 1
/* 8085BDF4  41 82 04 44 */	beq lbl_8085C238
/* 8085BDF8  40 80 00 10 */	bge lbl_8085BE08
/* 8085BDFC  2C 00 00 00 */	cmpwi r0, 0
/* 8085BE00  40 80 00 14 */	bge lbl_8085BE14
/* 8085BE04  48 00 06 4C */	b lbl_8085C450
lbl_8085BE08:
/* 8085BE08  2C 00 00 03 */	cmpwi r0, 3
/* 8085BE0C  40 80 06 44 */	bge lbl_8085C450
/* 8085BE10  48 00 05 84 */	b lbl_8085C394
lbl_8085BE14:
/* 8085BE14  7F 63 DB 78 */	mr r3, r27
/* 8085BE18  3C 80 80 86 */	lis r4, d_a_kytag12__stringBase0@ha /* 0x8085F0EC@ha */
/* 8085BE1C  38 84 F0 EC */	addi r4, r4, d_a_kytag12__stringBase0@l /* 0x8085F0EC@l */
/* 8085BE20  4B B0 CB 75 */	bl strcmp
/* 8085BE24  2C 03 00 00 */	cmpwi r3, 0
/* 8085BE28  40 82 00 7C */	bne lbl_8085BEA4
/* 8085BE2C  88 0F 04 BA */	lbz r0, 0x4ba(r15)
/* 8085BE30  2C 00 00 01 */	cmpwi r0, 1
/* 8085BE34  40 82 00 70 */	bne lbl_8085BEA4
/* 8085BE38  2C 12 01 90 */	cmpwi r18, 0x190
/* 8085BE3C  40 80 00 68 */	bge lbl_8085BEA4
/* 8085BE40  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 8085BE44  4B A0 BB 49 */	bl cM_rndFX__Ff
/* 8085BE48  C0 1C 00 24 */	lfs f0, 0x24(r28)
/* 8085BE4C  EC 00 08 2A */	fadds f0, f0, f1
/* 8085BE50  D0 11 00 10 */	stfs f0, 0x10(r17)
/* 8085BE54  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 8085BE58  4B A0 BA FD */	bl cM_rndF__Ff
/* 8085BE5C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8085BE60  EC 00 08 2A */	fadds f0, f0, f1
/* 8085BE64  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085BE68  C0 3C 00 38 */	lfs f1, 0x38(r28)
/* 8085BE6C  4B A0 BB 21 */	bl cM_rndFX__Ff
/* 8085BE70  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8085BE74  EC 00 08 2A */	fadds f0, f0, f1
/* 8085BE78  D0 11 00 18 */	stfs f0, 0x18(r17)
/* 8085BE7C  FC 00 E8 90 */	fmr f0, f29
/* 8085BE80  D0 11 00 24 */	stfs f0, 0x24(r17)
/* 8085BE84  FC 00 F2 10 */	fabs f0, f30
/* 8085BE88  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8085BE8C  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 8085BE90  FC 00 00 18 */	frsp f0, f0
/* 8085BE94  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085BE98  EC 02 00 2A */	fadds f0, f2, f0
/* 8085BE9C  D0 11 00 38 */	stfs f0, 0x38(r17)
/* 8085BEA0  48 00 03 78 */	b lbl_8085C218
lbl_8085BEA4:
/* 8085BEA4  7F 63 DB 78 */	mr r3, r27
/* 8085BEA8  3C 80 80 86 */	lis r4, d_a_kytag12__stringBase0@ha /* 0x8085F0EC@ha */
/* 8085BEAC  38 84 F0 EC */	addi r4, r4, d_a_kytag12__stringBase0@l /* 0x8085F0EC@l */
/* 8085BEB0  4B B0 CA E5 */	bl strcmp
/* 8085BEB4  2C 03 00 00 */	cmpwi r3, 0
/* 8085BEB8  40 82 00 84 */	bne lbl_8085BF3C
/* 8085BEBC  88 0F 04 BA */	lbz r0, 0x4ba(r15)
/* 8085BEC0  2C 00 00 01 */	cmpwi r0, 1
/* 8085BEC4  40 82 00 78 */	bne lbl_8085BF3C
/* 8085BEC8  2C 12 01 90 */	cmpwi r18, 0x190
/* 8085BECC  41 80 00 70 */	blt lbl_8085BF3C
/* 8085BED0  2C 12 03 20 */	cmpwi r18, 0x320
/* 8085BED4  40 80 00 68 */	bge lbl_8085BF3C
/* 8085BED8  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 8085BEDC  4B A0 BA B1 */	bl cM_rndFX__Ff
/* 8085BEE0  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 8085BEE4  EC 00 08 2A */	fadds f0, f0, f1
/* 8085BEE8  D0 11 00 10 */	stfs f0, 0x10(r17)
/* 8085BEEC  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 8085BEF0  4B A0 BA 65 */	bl cM_rndF__Ff
/* 8085BEF4  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8085BEF8  EC 00 08 2A */	fadds f0, f0, f1
/* 8085BEFC  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085BF00  C0 3C 00 38 */	lfs f1, 0x38(r28)
/* 8085BF04  4B A0 BA 89 */	bl cM_rndFX__Ff
/* 8085BF08  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8085BF0C  EC 00 08 2A */	fadds f0, f0, f1
/* 8085BF10  D0 11 00 18 */	stfs f0, 0x18(r17)
/* 8085BF14  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8085BF18  D0 11 00 24 */	stfs f0, 0x24(r17)
/* 8085BF1C  FC 00 F2 10 */	fabs f0, f30
/* 8085BF20  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8085BF24  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 8085BF28  FC 00 00 18 */	frsp f0, f0
/* 8085BF2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085BF30  EC 02 00 2A */	fadds f0, f2, f0
/* 8085BF34  D0 11 00 38 */	stfs f0, 0x38(r17)
/* 8085BF38  48 00 02 E0 */	b lbl_8085C218
lbl_8085BF3C:
/* 8085BF3C  7F 63 DB 78 */	mr r3, r27
/* 8085BF40  3C 80 80 86 */	lis r4, d_a_kytag12__stringBase0@ha /* 0x8085F0EC@ha */
/* 8085BF44  38 84 F0 EC */	addi r4, r4, d_a_kytag12__stringBase0@l /* 0x8085F0EC@l */
/* 8085BF48  4B B0 CA 4D */	bl strcmp
/* 8085BF4C  2C 03 00 00 */	cmpwi r3, 0
/* 8085BF50  40 82 00 84 */	bne lbl_8085BFD4
/* 8085BF54  88 0F 04 BA */	lbz r0, 0x4ba(r15)
/* 8085BF58  2C 00 00 01 */	cmpwi r0, 1
/* 8085BF5C  40 82 00 78 */	bne lbl_8085BFD4
/* 8085BF60  2C 12 03 20 */	cmpwi r18, 0x320
/* 8085BF64  41 80 00 70 */	blt lbl_8085BFD4
/* 8085BF68  2C 12 04 B0 */	cmpwi r18, 0x4b0
/* 8085BF6C  40 80 00 68 */	bge lbl_8085BFD4
/* 8085BF70  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 8085BF74  4B A0 BA 19 */	bl cM_rndFX__Ff
/* 8085BF78  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 8085BF7C  EC 00 08 2A */	fadds f0, f0, f1
/* 8085BF80  D0 11 00 10 */	stfs f0, 0x10(r17)
/* 8085BF84  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 8085BF88  4B A0 B9 CD */	bl cM_rndF__Ff
/* 8085BF8C  C0 1C 00 44 */	lfs f0, 0x44(r28)
/* 8085BF90  EC 00 08 2A */	fadds f0, f0, f1
/* 8085BF94  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085BF98  C0 3C 00 38 */	lfs f1, 0x38(r28)
/* 8085BF9C  4B A0 B9 F1 */	bl cM_rndFX__Ff
/* 8085BFA0  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 8085BFA4  EC 00 08 2A */	fadds f0, f0, f1
/* 8085BFA8  D0 11 00 18 */	stfs f0, 0x18(r17)
/* 8085BFAC  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8085BFB0  D0 11 00 24 */	stfs f0, 0x24(r17)
/* 8085BFB4  FC 00 F2 10 */	fabs f0, f30
/* 8085BFB8  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8085BFBC  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 8085BFC0  FC 00 00 18 */	frsp f0, f0
/* 8085BFC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085BFC8  EC 02 00 2A */	fadds f0, f2, f0
/* 8085BFCC  D0 11 00 38 */	stfs f0, 0x38(r17)
/* 8085BFD0  48 00 02 48 */	b lbl_8085C218
lbl_8085BFD4:
/* 8085BFD4  7F 63 DB 78 */	mr r3, r27
/* 8085BFD8  3C 80 80 86 */	lis r4, d_a_kytag12__stringBase0@ha /* 0x8085F0EC@ha */
/* 8085BFDC  38 84 F0 EC */	addi r4, r4, d_a_kytag12__stringBase0@l /* 0x8085F0EC@l */
/* 8085BFE0  4B B0 C9 B5 */	bl strcmp
/* 8085BFE4  2C 03 00 00 */	cmpwi r3, 0
/* 8085BFE8  40 82 00 84 */	bne lbl_8085C06C
/* 8085BFEC  88 0F 04 BA */	lbz r0, 0x4ba(r15)
/* 8085BFF0  2C 00 00 01 */	cmpwi r0, 1
/* 8085BFF4  40 82 00 78 */	bne lbl_8085C06C
/* 8085BFF8  2C 12 04 B0 */	cmpwi r18, 0x4b0
/* 8085BFFC  41 80 00 70 */	blt lbl_8085C06C
/* 8085C000  2C 12 06 40 */	cmpwi r18, 0x640
/* 8085C004  40 80 00 68 */	bge lbl_8085C06C
/* 8085C008  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 8085C00C  4B A0 B9 81 */	bl cM_rndFX__Ff
/* 8085C010  C0 1C 00 24 */	lfs f0, 0x24(r28)
/* 8085C014  EC 00 08 2A */	fadds f0, f0, f1
/* 8085C018  D0 11 00 10 */	stfs f0, 0x10(r17)
/* 8085C01C  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 8085C020  4B A0 B9 35 */	bl cM_rndF__Ff
/* 8085C024  C0 1C 00 44 */	lfs f0, 0x44(r28)
/* 8085C028  EC 00 08 2A */	fadds f0, f0, f1
/* 8085C02C  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085C030  C0 3C 00 38 */	lfs f1, 0x38(r28)
/* 8085C034  4B A0 B9 59 */	bl cM_rndFX__Ff
/* 8085C038  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 8085C03C  EC 00 08 2A */	fadds f0, f0, f1
/* 8085C040  D0 11 00 18 */	stfs f0, 0x18(r17)
/* 8085C044  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8085C048  D0 11 00 24 */	stfs f0, 0x24(r17)
/* 8085C04C  FC 00 F2 10 */	fabs f0, f30
/* 8085C050  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8085C054  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 8085C058  FC 00 00 18 */	frsp f0, f0
/* 8085C05C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085C060  EC 02 00 2A */	fadds f0, f2, f0
/* 8085C064  D0 11 00 38 */	stfs f0, 0x38(r17)
/* 8085C068  48 00 01 B0 */	b lbl_8085C218
lbl_8085C06C:
/* 8085C06C  7F 63 DB 78 */	mr r3, r27
/* 8085C070  3C 80 80 86 */	lis r4, d_a_kytag12__stringBase0@ha /* 0x8085F0EC@ha */
/* 8085C074  38 84 F0 EC */	addi r4, r4, d_a_kytag12__stringBase0@l /* 0x8085F0EC@l */
/* 8085C078  4B B0 C9 1D */	bl strcmp
/* 8085C07C  2C 03 00 00 */	cmpwi r3, 0
/* 8085C080  40 82 00 6C */	bne lbl_8085C0EC
/* 8085C084  88 0F 04 BA */	lbz r0, 0x4ba(r15)
/* 8085C088  2C 00 00 0B */	cmpwi r0, 0xb
/* 8085C08C  40 82 00 60 */	bne lbl_8085C0EC
/* 8085C090  C0 3C 00 4C */	lfs f1, 0x4c(r28)
/* 8085C094  4B A0 B8 F9 */	bl cM_rndFX__Ff
/* 8085C098  D0 31 00 10 */	stfs f1, 0x10(r17)
/* 8085C09C  C0 3C 00 54 */	lfs f1, 0x54(r28)
/* 8085C0A0  4B A0 B8 B5 */	bl cM_rndF__Ff
/* 8085C0A4  C0 1C 00 50 */	lfs f0, 0x50(r28)
/* 8085C0A8  EC 00 08 2A */	fadds f0, f0, f1
/* 8085C0AC  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085C0B0  C0 3C 00 5C */	lfs f1, 0x5c(r28)
/* 8085C0B4  4B A0 B8 D9 */	bl cM_rndFX__Ff
/* 8085C0B8  C0 1C 00 58 */	lfs f0, 0x58(r28)
/* 8085C0BC  EC 00 08 2A */	fadds f0, f0, f1
/* 8085C0C0  D0 11 00 18 */	stfs f0, 0x18(r17)
/* 8085C0C4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8085C0C8  D0 11 00 24 */	stfs f0, 0x24(r17)
/* 8085C0CC  FC 00 F2 10 */	fabs f0, f30
/* 8085C0D0  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8085C0D4  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 8085C0D8  FC 00 00 18 */	frsp f0, f0
/* 8085C0DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085C0E0  EC 02 00 2A */	fadds f0, f2, f0
/* 8085C0E4  D0 11 00 38 */	stfs f0, 0x38(r17)
/* 8085C0E8  48 00 01 30 */	b lbl_8085C218
lbl_8085C0EC:
/* 8085C0EC  88 0F 04 BA */	lbz r0, 0x4ba(r15)
/* 8085C0F0  7C 00 07 74 */	extsb r0, r0
/* 8085C0F4  28 00 00 08 */	cmplwi r0, 8
/* 8085C0F8  41 81 00 6C */	bgt lbl_8085C164
/* 8085C0FC  3C 60 80 86 */	lis r3, lit_4529@ha /* 0x8085F0F4@ha */
/* 8085C100  38 63 F0 F4 */	addi r3, r3, lit_4529@l /* 0x8085F0F4@l */
/* 8085C104  54 00 10 3A */	slwi r0, r0, 2
/* 8085C108  7C 03 00 2E */	lwzx r0, r3, r0
/* 8085C10C  7C 09 03 A6 */	mtctr r0
/* 8085C110  4E 80 04 20 */	bctr 
lbl_8085C114:
/* 8085C114  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 8085C118  C3 9C 00 64 */	lfs f28, 0x64(r28)
/* 8085C11C  C3 3C 00 68 */	lfs f25, 0x68(r28)
/* 8085C120  48 00 00 50 */	b lbl_8085C170
lbl_8085C124:
/* 8085C124  C0 5C 00 6C */	lfs f2, 0x6c(r28)
/* 8085C128  C3 9C 00 70 */	lfs f28, 0x70(r28)
/* 8085C12C  C3 3C 00 68 */	lfs f25, 0x68(r28)
/* 8085C130  48 00 00 40 */	b lbl_8085C170
lbl_8085C134:
/* 8085C134  C0 5C 00 74 */	lfs f2, 0x74(r28)
/* 8085C138  FF 80 10 90 */	fmr f28, f2
/* 8085C13C  C3 3C 00 68 */	lfs f25, 0x68(r28)
/* 8085C140  48 00 00 30 */	b lbl_8085C170
lbl_8085C144:
/* 8085C144  C0 5C 00 78 */	lfs f2, 0x78(r28)
/* 8085C148  C3 9C 00 10 */	lfs f28, 0x10(r28)
/* 8085C14C  C3 3C 00 68 */	lfs f25, 0x68(r28)
/* 8085C150  48 00 00 20 */	b lbl_8085C170
lbl_8085C154:
/* 8085C154  C0 5C 00 10 */	lfs f2, 0x10(r28)
/* 8085C158  C3 9C 00 60 */	lfs f28, 0x60(r28)
/* 8085C15C  C3 3C 00 68 */	lfs f25, 0x68(r28)
/* 8085C160  48 00 00 10 */	b lbl_8085C170
lbl_8085C164:
/* 8085C164  C0 5C 00 10 */	lfs f2, 0x10(r28)
/* 8085C168  FF 80 10 90 */	fmr f28, f2
/* 8085C16C  C3 3C 00 68 */	lfs f25, 0x68(r28)
lbl_8085C170:
/* 8085C170  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8085C174  C0 0F 04 EC */	lfs f0, 0x4ec(r15)
/* 8085C178  EC 00 10 2A */	fadds f0, f0, f2
/* 8085C17C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085C180  4B A0 B8 0D */	bl cM_rndFX__Ff
/* 8085C184  C0 0F 04 D0 */	lfs f0, 0x4d0(r15)
/* 8085C188  EC 00 08 2A */	fadds f0, f0, f1
/* 8085C18C  D0 11 00 10 */	stfs f0, 0x10(r17)
/* 8085C190  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8085C194  C0 0F 04 F0 */	lfs f0, 0x4f0(r15)
/* 8085C198  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085C19C  4B A0 B7 B9 */	bl cM_rndF__Ff
/* 8085C1A0  C0 0F 04 D4 */	lfs f0, 0x4d4(r15)
/* 8085C1A4  EC 00 08 2A */	fadds f0, f0, f1
/* 8085C1A8  EC 19 00 2A */	fadds f0, f25, f0
/* 8085C1AC  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085C1B0  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8085C1B4  C0 0F 04 F4 */	lfs f0, 0x4f4(r15)
/* 8085C1B8  EC 00 E0 2A */	fadds f0, f0, f28
/* 8085C1BC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085C1C0  4B A0 B7 CD */	bl cM_rndFX__Ff
/* 8085C1C4  C0 0F 04 D8 */	lfs f0, 0x4d8(r15)
/* 8085C1C8  EC 00 08 2A */	fadds f0, f0, f1
/* 8085C1CC  D0 11 00 18 */	stfs f0, 0x18(r17)
/* 8085C1D0  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8085C1D4  D0 11 00 24 */	stfs f0, 0x24(r17)
/* 8085C1D8  38 6F 04 D0 */	addi r3, r15, 0x4d0
/* 8085C1DC  38 91 00 10 */	addi r4, r17, 0x10
/* 8085C1E0  4B AE B1 BD */	bl PSVECSquareDistance
/* 8085C1E4  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085C1E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C1EC  40 81 00 08 */	ble lbl_8085C1F4
/* 8085C1F0  48 00 00 0C */	b lbl_8085C1FC
lbl_8085C1F4:
/* 8085C1F4  C8 1C 00 80 */	lfd f0, 0x80(r28)
/* 8085C1F8  FC 01 00 40 */	fcmpo cr0, f1, f0
lbl_8085C1FC:
/* 8085C1FC  FC 00 F2 10 */	fabs f0, f30
/* 8085C200  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8085C204  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 8085C208  FC 00 00 18 */	frsp f0, f0
/* 8085C20C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085C210  EC 02 00 2A */	fadds f0, f2, f0
/* 8085C214  D0 11 00 38 */	stfs f0, 0x38(r17)
lbl_8085C218:
/* 8085C218  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085C21C  D0 11 00 2C */	stfs f0, 0x2c(r17)
/* 8085C220  38 00 00 00 */	li r0, 0
/* 8085C224  B0 11 00 40 */	sth r0, 0x40(r17)
/* 8085C228  B0 11 00 42 */	sth r0, 0x42(r17)
/* 8085C22C  88 71 00 00 */	lbz r3, 0(r17)
/* 8085C230  38 03 00 01 */	addi r0, r3, 1
/* 8085C234  98 11 00 00 */	stb r0, 0(r17)
lbl_8085C238:
/* 8085C238  A0 91 00 3C */	lhz r4, 0x3c(r17)
/* 8085C23C  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 8085C240  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8085C244  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8085C248  7C C5 04 2E */	lfsx f6, r5, r0
/* 8085C24C  FF C0 30 90 */	fmr f30, f6
/* 8085C250  C8 BC 01 28 */	lfd f5, 0x128(r28)
/* 8085C254  90 81 00 AC */	stw r4, 0xac(r1)
/* 8085C258  3C 80 43 30 */	lis r4, 0x4330
/* 8085C25C  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 8085C260  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8085C264  EC 60 28 28 */	fsubs f3, f0, f5
/* 8085C268  C0 5C 00 88 */	lfs f2, 0x88(r28)
/* 8085C26C  C0 3C 00 8C */	lfs f1, 0x8c(r28)
/* 8085C270  56 40 06 FE */	clrlwi r0, r18, 0x1b
/* 8085C274  C8 9C 01 30 */	lfd f4, 0x130(r28)
/* 8085C278  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8085C27C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8085C280  90 81 00 B0 */	stw r4, 0xb0(r1)
/* 8085C284  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 8085C288  EC 00 20 28 */	fsubs f0, f0, f4
/* 8085C28C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085C290  EC 02 00 2A */	fadds f0, f2, f0
/* 8085C294  EC 03 00 2A */	fadds f0, f3, f0
/* 8085C298  FC 00 00 1E */	fctiwz f0, f0
/* 8085C29C  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 8085C2A0  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 8085C2A4  B0 11 00 3C */	sth r0, 0x3c(r17)
/* 8085C2A8  A0 71 00 3E */	lhz r3, 0x3e(r17)
/* 8085C2AC  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8085C2B0  7C E5 04 2E */	lfsx f7, r5, r0
/* 8085C2B4  90 61 00 C4 */	stw r3, 0xc4(r1)
/* 8085C2B8  90 81 00 C0 */	stw r4, 0xc0(r1)
/* 8085C2BC  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 8085C2C0  FC 60 28 28 */	fsub f3, f0, f5
/* 8085C2C4  C8 5C 00 90 */	lfd f2, 0x90(r28)
/* 8085C2C8  C8 3C 00 98 */	lfd f1, 0x98(r28)
/* 8085C2CC  72 40 00 33 */	andi. r0, r18, 0x33
/* 8085C2D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8085C2D4  90 01 00 CC */	stw r0, 0xcc(r1)
/* 8085C2D8  90 81 00 C8 */	stw r4, 0xc8(r1)
/* 8085C2DC  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 8085C2E0  EC 00 20 28 */	fsubs f0, f0, f4
/* 8085C2E4  FC 01 00 32 */	fmul f0, f1, f0
/* 8085C2E8  FC 02 00 2A */	fadd f0, f2, f0
/* 8085C2EC  FC 03 00 2A */	fadd f0, f3, f0
/* 8085C2F0  FC 00 00 1E */	fctiwz f0, f0
/* 8085C2F4  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 8085C2F8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8085C2FC  B0 11 00 3E */	sth r0, 0x3e(r17)
/* 8085C300  C0 1C 00 5C */	lfs f0, 0x5c(r28)
/* 8085C304  EC 40 01 F2 */	fmuls f2, f0, f7
/* 8085C308  D0 51 00 04 */	stfs f2, 4(r17)
/* 8085C30C  C0 3C 00 A0 */	lfs f1, 0xa0(r28)
/* 8085C310  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8085C314  EC 00 30 2A */	fadds f0, f0, f6
/* 8085C318  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085C31C  D0 11 00 08 */	stfs f0, 8(r17)
/* 8085C320  C0 1C 00 A4 */	lfs f0, 0xa4(r28)
/* 8085C324  EC 00 01 F2 */	fmuls f0, f0, f7
/* 8085C328  D0 11 00 0C */	stfs f0, 0xc(r17)
/* 8085C32C  C0 31 00 38 */	lfs f1, 0x38(r17)
/* 8085C330  C0 1C 00 A8 */	lfs f0, 0xa8(r28)
/* 8085C334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C338  40 80 01 18 */	bge lbl_8085C450
/* 8085C33C  80 1E 10 54 */	lwz r0, 0x1054(r30)
/* 8085C340  2C 00 01 F4 */	cmpwi r0, 0x1f4
/* 8085C344  41 81 00 14 */	bgt lbl_8085C358
/* 8085C348  C0 1C 00 AC */	lfs f0, 0xac(r28)
/* 8085C34C  EC 00 10 2A */	fadds f0, f0, f2
/* 8085C350  D0 11 00 38 */	stfs f0, 0x38(r17)
/* 8085C354  48 00 00 FC */	b lbl_8085C450
lbl_8085C358:
/* 8085C358  88 0F 04 BA */	lbz r0, 0x4ba(r15)
/* 8085C35C  2C 00 00 0B */	cmpwi r0, 0xb
/* 8085C360  40 82 00 1C */	bne lbl_8085C37C
/* 8085C364  C0 3C 00 B0 */	lfs f1, 0xb0(r28)
/* 8085C368  C0 1C 00 AC */	lfs f0, 0xac(r28)
/* 8085C36C  EC 00 10 2A */	fadds f0, f0, f2
/* 8085C370  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085C374  D0 11 00 38 */	stfs f0, 0x38(r17)
/* 8085C378  48 00 00 D8 */	b lbl_8085C450
lbl_8085C37C:
/* 8085C37C  C0 3C 00 B4 */	lfs f1, 0xb4(r28)
/* 8085C380  C0 1C 00 AC */	lfs f0, 0xac(r28)
/* 8085C384  EC 00 10 2A */	fadds f0, f0, f2
/* 8085C388  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085C38C  D0 11 00 38 */	stfs f0, 0x38(r17)
/* 8085C390  48 00 00 C0 */	b lbl_8085C450
lbl_8085C394:
/* 8085C394  38 61 00 5C */	addi r3, r1, 0x5c
/* 8085C398  38 91 00 10 */	addi r4, r17, 0x10
/* 8085C39C  38 B1 00 04 */	addi r5, r17, 4
/* 8085C3A0  4B A0 A7 45 */	bl __pl__4cXyzCFRC3Vec
/* 8085C3A4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8085C3A8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8085C3AC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8085C3B0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8085C3B4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8085C3B8  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8085C3BC  C3 BC 00 10 */	lfs f29, 0x10(r28)
/* 8085C3C0  C0 3C 00 B8 */	lfs f1, 0xb8(r28)
/* 8085C3C4  4B A0 B5 C9 */	bl cM_rndFX__Ff
/* 8085C3C8  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8085C3CC  C0 3C 00 B8 */	lfs f1, 0xb8(r28)
/* 8085C3D0  4B A0 B5 BD */	bl cM_rndFX__Ff
/* 8085C3D4  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 8085C3D8  C0 9C 00 0C */	lfs f4, 0xc(r28)
/* 8085C3DC  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 8085C3E0  C0 51 00 04 */	lfs f2, 4(r17)
/* 8085C3E4  C0 7C 00 BC */	lfs f3, 0xbc(r28)
/* 8085C3E8  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8085C3EC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8085C3F0  EC 02 00 2A */	fadds f0, f2, f0
/* 8085C3F4  D0 11 00 04 */	stfs f0, 4(r17)
/* 8085C3F8  C0 51 00 08 */	lfs f2, 8(r17)
/* 8085C3FC  EC 03 01 32 */	fmuls f0, f3, f4
/* 8085C400  EC 02 00 2A */	fadds f0, f2, f0
/* 8085C404  D0 11 00 08 */	stfs f0, 8(r17)
/* 8085C408  C0 51 00 0C */	lfs f2, 0xc(r17)
/* 8085C40C  FC 00 08 18 */	frsp f0, f1
/* 8085C410  EC 03 00 32 */	fmuls f0, f3, f0
/* 8085C414  EC 02 00 2A */	fadds f0, f2, f0
/* 8085C418  D0 11 00 0C */	stfs f0, 0xc(r17)
/* 8085C41C  C0 31 00 38 */	lfs f1, 0x38(r17)
/* 8085C420  C0 1C 00 C0 */	lfs f0, 0xc0(r28)
/* 8085C424  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C428  40 81 00 0C */	ble lbl_8085C434
/* 8085C42C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8085C430  D0 11 00 38 */	stfs f0, 0x38(r17)
lbl_8085C434:
/* 8085C434  C0 31 00 24 */	lfs f1, 0x24(r17)
/* 8085C438  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085C43C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C440  4C 40 13 82 */	cror 2, 0, 2
/* 8085C444  40 82 00 0C */	bne lbl_8085C450
/* 8085C448  38 00 00 01 */	li r0, 1
/* 8085C44C  98 11 00 00 */	stb r0, 0(r17)
lbl_8085C450:
/* 8085C450  7F 63 DB 78 */	mr r3, r27
/* 8085C454  80 81 00 F4 */	lwz r4, 0xf4(r1)
/* 8085C458  4B B0 C5 3D */	bl strcmp
/* 8085C45C  2C 03 00 00 */	cmpwi r3, 0
/* 8085C460  40 82 00 88 */	bne lbl_8085C4E8
/* 8085C464  88 0F 04 BA */	lbz r0, 0x4ba(r15)
/* 8085C468  2C 00 00 01 */	cmpwi r0, 1
/* 8085C46C  40 82 00 7C */	bne lbl_8085C4E8
/* 8085C470  2C 12 06 40 */	cmpwi r18, 0x640
/* 8085C474  40 80 00 74 */	bge lbl_8085C4E8
/* 8085C478  C0 31 00 14 */	lfs f1, 0x14(r17)
/* 8085C47C  C0 1C 00 C4 */	lfs f0, 0xc4(r28)
/* 8085C480  EC 01 00 2A */	fadds f0, f1, f0
/* 8085C484  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085C488  2C 12 03 20 */	cmpwi r18, 0x320
/* 8085C48C  41 80 00 30 */	blt lbl_8085C4BC
/* 8085C490  C0 31 00 14 */	lfs f1, 0x14(r17)
/* 8085C494  C0 1C 00 C8 */	lfs f0, 0xc8(r28)
/* 8085C498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C49C  40 80 00 9C */	bge lbl_8085C538
/* 8085C4A0  C0 1C 00 CC */	lfs f0, 0xcc(r28)
/* 8085C4A4  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085C4A8  38 00 00 01 */	li r0, 1
/* 8085C4AC  98 11 00 00 */	stb r0, 0(r17)
/* 8085C4B0  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8085C4B4  D0 11 00 24 */	stfs f0, 0x24(r17)
/* 8085C4B8  48 00 00 80 */	b lbl_8085C538
lbl_8085C4BC:
/* 8085C4BC  C0 31 00 14 */	lfs f1, 0x14(r17)
/* 8085C4C0  C0 1C 00 D0 */	lfs f0, 0xd0(r28)
/* 8085C4C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C4C8  40 80 00 70 */	bge lbl_8085C538
/* 8085C4CC  C0 1C 00 D4 */	lfs f0, 0xd4(r28)
/* 8085C4D0  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085C4D4  38 00 00 01 */	li r0, 1
/* 8085C4D8  98 11 00 00 */	stb r0, 0(r17)
/* 8085C4DC  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8085C4E0  D0 11 00 24 */	stfs f0, 0x24(r17)
/* 8085C4E4  48 00 00 54 */	b lbl_8085C538
lbl_8085C4E8:
/* 8085C4E8  88 0F 04 BA */	lbz r0, 0x4ba(r15)
/* 8085C4EC  2C 00 00 0B */	cmpwi r0, 0xb
/* 8085C4F0  40 82 00 48 */	bne lbl_8085C538
/* 8085C4F4  C0 3C 00 DC */	lfs f1, 0xdc(r28)
/* 8085C4F8  4B A0 B4 5D */	bl cM_rndF__Ff
/* 8085C4FC  C0 1C 00 D8 */	lfs f0, 0xd8(r28)
/* 8085C500  EC 20 08 2A */	fadds f1, f0, f1
/* 8085C504  C0 11 00 14 */	lfs f0, 0x14(r17)
/* 8085C508  EC 00 08 2A */	fadds f0, f0, f1
/* 8085C50C  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085C510  C0 31 00 14 */	lfs f1, 0x14(r17)
/* 8085C514  C0 1C 00 50 */	lfs f0, 0x50(r28)
/* 8085C518  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C51C  40 80 00 1C */	bge lbl_8085C538
/* 8085C520  C0 1C 00 E0 */	lfs f0, 0xe0(r28)
/* 8085C524  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085C528  38 00 00 01 */	li r0, 1
/* 8085C52C  98 11 00 00 */	stb r0, 0(r17)
/* 8085C530  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8085C534  D0 11 00 24 */	stfs f0, 0x24(r17)
lbl_8085C538:
/* 8085C538  3A 00 00 00 */	li r16, 0
/* 8085C53C  3B E0 00 00 */	li r31, 0
lbl_8085C540:
/* 8085C540  7C 7E FA 14 */	add r3, r30, r31
/* 8085C544  38 03 09 90 */	addi r0, r3, 0x990
/* 8085C548  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 8085C54C  7C 03 03 78 */	mr r3, r0
/* 8085C550  80 63 00 00 */	lwz r3, 0(r3)
/* 8085C554  28 03 00 00 */	cmplwi r3, 0
/* 8085C558  41 82 01 9C */	beq lbl_8085C6F4
/* 8085C55C  38 91 00 10 */	addi r4, r17, 0x10
/* 8085C560  4B AE AE 3D */	bl PSVECSquareDistance
/* 8085C564  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085C568  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C56C  40 81 00 58 */	ble lbl_8085C5C4
/* 8085C570  FC 00 08 34 */	frsqrte f0, f1
/* 8085C574  C8 9C 00 E8 */	lfd f4, 0xe8(r28)
/* 8085C578  FC 44 00 32 */	fmul f2, f4, f0
/* 8085C57C  C8 7C 00 F0 */	lfd f3, 0xf0(r28)
/* 8085C580  FC 00 00 32 */	fmul f0, f0, f0
/* 8085C584  FC 01 00 32 */	fmul f0, f1, f0
/* 8085C588  FC 03 00 28 */	fsub f0, f3, f0
/* 8085C58C  FC 02 00 32 */	fmul f0, f2, f0
/* 8085C590  FC 44 00 32 */	fmul f2, f4, f0
/* 8085C594  FC 00 00 32 */	fmul f0, f0, f0
/* 8085C598  FC 01 00 32 */	fmul f0, f1, f0
/* 8085C59C  FC 03 00 28 */	fsub f0, f3, f0
/* 8085C5A0  FC 02 00 32 */	fmul f0, f2, f0
/* 8085C5A4  FC 44 00 32 */	fmul f2, f4, f0
/* 8085C5A8  FC 00 00 32 */	fmul f0, f0, f0
/* 8085C5AC  FC 01 00 32 */	fmul f0, f1, f0
/* 8085C5B0  FC 03 00 28 */	fsub f0, f3, f0
/* 8085C5B4  FC 02 00 32 */	fmul f0, f2, f0
/* 8085C5B8  FC 21 00 32 */	fmul f1, f1, f0
/* 8085C5BC  FC 20 08 18 */	frsp f1, f1
/* 8085C5C0  48 00 00 88 */	b lbl_8085C648
lbl_8085C5C4:
/* 8085C5C4  C8 1C 00 80 */	lfd f0, 0x80(r28)
/* 8085C5C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C5CC  40 80 00 10 */	bge lbl_8085C5DC
/* 8085C5D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085C5D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8085C5D8  48 00 00 70 */	b lbl_8085C648
lbl_8085C5DC:
/* 8085C5DC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8085C5E0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8085C5E4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085C5E8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085C5EC  7C 03 00 00 */	cmpw r3, r0
/* 8085C5F0  41 82 00 14 */	beq lbl_8085C604
/* 8085C5F4  40 80 00 40 */	bge lbl_8085C634
/* 8085C5F8  2C 03 00 00 */	cmpwi r3, 0
/* 8085C5FC  41 82 00 20 */	beq lbl_8085C61C
/* 8085C600  48 00 00 34 */	b lbl_8085C634
lbl_8085C604:
/* 8085C604  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085C608  41 82 00 0C */	beq lbl_8085C614
/* 8085C60C  38 00 00 01 */	li r0, 1
/* 8085C610  48 00 00 28 */	b lbl_8085C638
lbl_8085C614:
/* 8085C614  38 00 00 02 */	li r0, 2
/* 8085C618  48 00 00 20 */	b lbl_8085C638
lbl_8085C61C:
/* 8085C61C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085C620  41 82 00 0C */	beq lbl_8085C62C
/* 8085C624  38 00 00 05 */	li r0, 5
/* 8085C628  48 00 00 10 */	b lbl_8085C638
lbl_8085C62C:
/* 8085C62C  38 00 00 03 */	li r0, 3
/* 8085C630  48 00 00 08 */	b lbl_8085C638
lbl_8085C634:
/* 8085C634  38 00 00 04 */	li r0, 4
lbl_8085C638:
/* 8085C638  2C 00 00 01 */	cmpwi r0, 1
/* 8085C63C  40 82 00 0C */	bne lbl_8085C648
/* 8085C640  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085C644  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8085C648:
/* 8085C648  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8085C64C  80 61 00 F0 */	lwz r3, 0xf0(r1)
/* 8085C650  80 63 00 00 */	lwz r3, 0(r3)
/* 8085C654  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8085C658  EC 02 00 2A */	fadds f0, f2, f0
/* 8085C65C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C660  40 80 00 94 */	bge lbl_8085C6F4
/* 8085C664  88 11 00 00 */	lbz r0, 0(r17)
/* 8085C668  2C 00 00 02 */	cmpwi r0, 2
/* 8085C66C  41 82 00 74 */	beq lbl_8085C6E0
/* 8085C670  A0 11 00 40 */	lhz r0, 0x40(r17)
/* 8085C674  28 00 00 00 */	cmplwi r0, 0
/* 8085C678  40 82 00 68 */	bne lbl_8085C6E0
/* 8085C67C  2C 17 00 01 */	cmpwi r23, 1
/* 8085C680  40 80 00 60 */	bge lbl_8085C6E0
/* 8085C684  C0 11 00 10 */	lfs f0, 0x10(r17)
/* 8085C688  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8085C68C  C0 11 00 14 */	lfs f0, 0x14(r17)
/* 8085C690  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8085C694  C0 11 00 18 */	lfs f0, 0x18(r17)
/* 8085C698  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8085C69C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080215@ha */
/* 8085C6A0  38 03 02 15 */	addi r0, r3, 0x0215 /* 0x00080215@l */
/* 8085C6A4  90 01 00 30 */	stw r0, 0x30(r1)
/* 8085C6A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8085C6AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8085C6B0  80 63 00 00 */	lwz r3, 0(r3)
/* 8085C6B4  38 81 00 30 */	addi r4, r1, 0x30
/* 8085C6B8  38 A1 00 74 */	addi r5, r1, 0x74
/* 8085C6BC  38 C0 00 00 */	li r6, 0
/* 8085C6C0  38 E0 00 00 */	li r7, 0
/* 8085C6C4  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8085C6C8  FC 40 08 90 */	fmr f2, f1
/* 8085C6CC  C0 7C 00 74 */	lfs f3, 0x74(r28)
/* 8085C6D0  FC 80 18 90 */	fmr f4, f3
/* 8085C6D4  39 00 00 00 */	li r8, 0
/* 8085C6D8  4B A4 F2 AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8085C6DC  3A F7 00 01 */	addi r23, r23, 1
lbl_8085C6E0:
/* 8085C6E0  38 00 00 02 */	li r0, 2
/* 8085C6E4  98 11 00 00 */	stb r0, 0(r17)
/* 8085C6E8  38 00 00 B4 */	li r0, 0xb4
/* 8085C6EC  B0 11 00 40 */	sth r0, 0x40(r17)
/* 8085C6F0  48 00 00 14 */	b lbl_8085C704
lbl_8085C6F4:
/* 8085C6F4  3A 10 00 01 */	addi r16, r16, 1
/* 8085C6F8  2C 10 00 0A */	cmpwi r16, 0xa
/* 8085C6FC  3B FF 00 04 */	addi r31, r31, 4
/* 8085C700  41 80 FE 40 */	blt lbl_8085C540
lbl_8085C704:
/* 8085C704  38 61 00 50 */	addi r3, r1, 0x50
/* 8085C708  38 91 00 10 */	addi r4, r17, 0x10
/* 8085C70C  38 B1 00 04 */	addi r5, r17, 4
/* 8085C710  4B A0 A3 D5 */	bl __pl__4cXyzCFRC3Vec
/* 8085C714  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8085C718  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8085C71C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8085C720  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8085C724  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8085C728  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8085C72C  C0 5A 04 D4 */	lfs f2, 0x4d4(r26)
/* 8085C730  EC 02 F8 28 */	fsubs f0, f2, f31
/* 8085C734  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8085C738  40 80 01 30 */	bge lbl_8085C868
/* 8085C73C  C0 1C 00 F8 */	lfs f0, 0xf8(r28)
/* 8085C740  EC 00 10 2A */	fadds f0, f0, f2
/* 8085C744  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8085C748  40 81 01 20 */	ble lbl_8085C868
/* 8085C74C  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 8085C750  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 8085C754  38 81 00 98 */	addi r4, r1, 0x98
/* 8085C758  4B AE AC 45 */	bl PSVECSquareDistance
/* 8085C75C  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085C760  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C764  40 81 00 58 */	ble lbl_8085C7BC
/* 8085C768  FC 00 08 34 */	frsqrte f0, f1
/* 8085C76C  C8 9C 00 E8 */	lfd f4, 0xe8(r28)
/* 8085C770  FC 44 00 32 */	fmul f2, f4, f0
/* 8085C774  C8 7C 00 F0 */	lfd f3, 0xf0(r28)
/* 8085C778  FC 00 00 32 */	fmul f0, f0, f0
/* 8085C77C  FC 01 00 32 */	fmul f0, f1, f0
/* 8085C780  FC 03 00 28 */	fsub f0, f3, f0
/* 8085C784  FC 02 00 32 */	fmul f0, f2, f0
/* 8085C788  FC 44 00 32 */	fmul f2, f4, f0
/* 8085C78C  FC 00 00 32 */	fmul f0, f0, f0
/* 8085C790  FC 01 00 32 */	fmul f0, f1, f0
/* 8085C794  FC 03 00 28 */	fsub f0, f3, f0
/* 8085C798  FC 02 00 32 */	fmul f0, f2, f0
/* 8085C79C  FC 44 00 32 */	fmul f2, f4, f0
/* 8085C7A0  FC 00 00 32 */	fmul f0, f0, f0
/* 8085C7A4  FC 01 00 32 */	fmul f0, f1, f0
/* 8085C7A8  FC 03 00 28 */	fsub f0, f3, f0
/* 8085C7AC  FC 02 00 32 */	fmul f0, f2, f0
/* 8085C7B0  FC 21 00 32 */	fmul f1, f1, f0
/* 8085C7B4  FC 20 08 18 */	frsp f1, f1
/* 8085C7B8  48 00 00 88 */	b lbl_8085C840
lbl_8085C7BC:
/* 8085C7BC  C8 1C 00 80 */	lfd f0, 0x80(r28)
/* 8085C7C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C7C4  40 80 00 10 */	bge lbl_8085C7D4
/* 8085C7C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085C7CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8085C7D0  48 00 00 70 */	b lbl_8085C840
lbl_8085C7D4:
/* 8085C7D4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8085C7D8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8085C7DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085C7E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085C7E4  7C 03 00 00 */	cmpw r3, r0
/* 8085C7E8  41 82 00 14 */	beq lbl_8085C7FC
/* 8085C7EC  40 80 00 40 */	bge lbl_8085C82C
/* 8085C7F0  2C 03 00 00 */	cmpwi r3, 0
/* 8085C7F4  41 82 00 20 */	beq lbl_8085C814
/* 8085C7F8  48 00 00 34 */	b lbl_8085C82C
lbl_8085C7FC:
/* 8085C7FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085C800  41 82 00 0C */	beq lbl_8085C80C
/* 8085C804  38 00 00 01 */	li r0, 1
/* 8085C808  48 00 00 28 */	b lbl_8085C830
lbl_8085C80C:
/* 8085C80C  38 00 00 02 */	li r0, 2
/* 8085C810  48 00 00 20 */	b lbl_8085C830
lbl_8085C814:
/* 8085C814  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085C818  41 82 00 0C */	beq lbl_8085C824
/* 8085C81C  38 00 00 05 */	li r0, 5
/* 8085C820  48 00 00 10 */	b lbl_8085C830
lbl_8085C824:
/* 8085C824  38 00 00 03 */	li r0, 3
/* 8085C828  48 00 00 08 */	b lbl_8085C830
lbl_8085C82C:
/* 8085C82C  38 00 00 04 */	li r0, 4
lbl_8085C830:
/* 8085C830  2C 00 00 01 */	cmpwi r0, 1
/* 8085C834  40 82 00 0C */	bne lbl_8085C840
/* 8085C838  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085C83C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8085C840:
/* 8085C840  C0 1C 00 FC */	lfs f0, 0xfc(r28)
/* 8085C844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C848  40 80 00 20 */	bge lbl_8085C868
/* 8085C84C  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085C850  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8085C854  40 81 00 14 */	ble lbl_8085C868
/* 8085C858  A0 11 00 40 */	lhz r0, 0x40(r17)
/* 8085C85C  28 00 00 00 */	cmplwi r0, 0
/* 8085C860  40 82 00 08 */	bne lbl_8085C868
/* 8085C864  3A D6 00 01 */	addi r22, r22, 1
lbl_8085C868:
/* 8085C868  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 8085C86C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8085C870  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8085C874  40 82 02 78 */	bne lbl_8085CAEC
/* 8085C878  C0 31 00 38 */	lfs f1, 0x38(r17)
/* 8085C87C  C0 1C 00 A8 */	lfs f0, 0xa8(r28)
/* 8085C880  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C884  4C 41 13 82 */	cror 2, 1, 2
/* 8085C888  40 82 00 08 */	bne lbl_8085C890
/* 8085C88C  C3 BC 00 10 */	lfs f29, 0x10(r28)
lbl_8085C890:
/* 8085C890  38 61 00 44 */	addi r3, r1, 0x44
/* 8085C894  38 91 00 10 */	addi r4, r17, 0x10
/* 8085C898  38 B1 00 04 */	addi r5, r17, 4
/* 8085C89C  4B A0 A2 49 */	bl __pl__4cXyzCFRC3Vec
/* 8085C8A0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8085C8A4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8085C8A8  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8085C8AC  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8085C8B0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8085C8B4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8085C8B8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8085C8BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8085C8C0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8085C8C4  38 61 00 98 */	addi r3, r1, 0x98
/* 8085C8C8  38 81 00 80 */	addi r4, r1, 0x80
/* 8085C8CC  38 A1 00 34 */	addi r5, r1, 0x34
/* 8085C8D0  4B 7F E9 91 */	bl dKyw_pntlight_collision_get_info__FP4cXyzP4cXyzPf
/* 8085C8D4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8085C8D8  C0 1C 01 00 */	lfs f0, 0x100(r28)
/* 8085C8DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C8E0  40 81 00 90 */	ble lbl_8085C970
/* 8085C8E4  88 11 00 00 */	lbz r0, 0(r17)
/* 8085C8E8  2C 00 00 02 */	cmpwi r0, 2
/* 8085C8EC  41 82 00 74 */	beq lbl_8085C960
/* 8085C8F0  A0 11 00 40 */	lhz r0, 0x40(r17)
/* 8085C8F4  28 00 00 00 */	cmplwi r0, 0
/* 8085C8F8  40 82 00 68 */	bne lbl_8085C960
/* 8085C8FC  2C 17 00 01 */	cmpwi r23, 1
/* 8085C900  40 80 00 60 */	bge lbl_8085C960
/* 8085C904  C0 11 00 10 */	lfs f0, 0x10(r17)
/* 8085C908  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8085C90C  C0 11 00 14 */	lfs f0, 0x14(r17)
/* 8085C910  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8085C914  C0 11 00 18 */	lfs f0, 0x18(r17)
/* 8085C918  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8085C91C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080215@ha */
/* 8085C920  38 03 02 15 */	addi r0, r3, 0x0215 /* 0x00080215@l */
/* 8085C924  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8085C928  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8085C92C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8085C930  80 63 00 00 */	lwz r3, 0(r3)
/* 8085C934  38 81 00 2C */	addi r4, r1, 0x2c
/* 8085C938  38 A1 00 68 */	addi r5, r1, 0x68
/* 8085C93C  38 C0 00 00 */	li r6, 0
/* 8085C940  38 E0 00 00 */	li r7, 0
/* 8085C944  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8085C948  FC 40 08 90 */	fmr f2, f1
/* 8085C94C  C0 7C 00 74 */	lfs f3, 0x74(r28)
/* 8085C950  FC 80 18 90 */	fmr f4, f3
/* 8085C954  39 00 00 00 */	li r8, 0
/* 8085C958  4B A4 F0 2D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8085C95C  3A F7 00 01 */	addi r23, r23, 1
lbl_8085C960:
/* 8085C960  38 00 00 02 */	li r0, 2
/* 8085C964  98 11 00 00 */	stb r0, 0(r17)
/* 8085C968  38 00 01 68 */	li r0, 0x168
/* 8085C96C  B0 11 00 40 */	sth r0, 0x40(r17)
lbl_8085C970:
/* 8085C970  38 61 00 38 */	addi r3, r1, 0x38
/* 8085C974  38 91 00 10 */	addi r4, r17, 0x10
/* 8085C978  38 B1 00 04 */	addi r5, r17, 4
/* 8085C97C  4B A0 A1 69 */	bl __pl__4cXyzCFRC3Vec
/* 8085C980  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8085C984  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8085C988  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8085C98C  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8085C990  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8085C994  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8085C998  C0 5A 04 D4 */	lfs f2, 0x4d4(r26)
/* 8085C99C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8085C9A0  EC 00 08 2A */	fadds f0, f0, f1
/* 8085C9A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8085C9A8  40 80 01 44 */	bge lbl_8085CAEC
/* 8085C9AC  C0 1C 00 38 */	lfs f0, 0x38(r28)
/* 8085C9B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8085C9B4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8085C9B8  40 81 01 34 */	ble lbl_8085CAEC
/* 8085C9BC  88 11 00 00 */	lbz r0, 0(r17)
/* 8085C9C0  2C 00 00 02 */	cmpwi r0, 2
/* 8085C9C4  41 82 01 28 */	beq lbl_8085CAEC
/* 8085C9C8  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 8085C9CC  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 8085C9D0  38 81 00 98 */	addi r4, r1, 0x98
/* 8085C9D4  4B AE A9 C9 */	bl PSVECSquareDistance
/* 8085C9D8  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085C9DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085C9E0  40 81 00 58 */	ble lbl_8085CA38
/* 8085C9E4  FC 00 08 34 */	frsqrte f0, f1
/* 8085C9E8  C8 9C 00 E8 */	lfd f4, 0xe8(r28)
/* 8085C9EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8085C9F0  C8 7C 00 F0 */	lfd f3, 0xf0(r28)
/* 8085C9F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8085C9F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8085C9FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8085CA00  FC 02 00 32 */	fmul f0, f2, f0
/* 8085CA04  FC 44 00 32 */	fmul f2, f4, f0
/* 8085CA08  FC 00 00 32 */	fmul f0, f0, f0
/* 8085CA0C  FC 01 00 32 */	fmul f0, f1, f0
/* 8085CA10  FC 03 00 28 */	fsub f0, f3, f0
/* 8085CA14  FC 02 00 32 */	fmul f0, f2, f0
/* 8085CA18  FC 44 00 32 */	fmul f2, f4, f0
/* 8085CA1C  FC 00 00 32 */	fmul f0, f0, f0
/* 8085CA20  FC 01 00 32 */	fmul f0, f1, f0
/* 8085CA24  FC 03 00 28 */	fsub f0, f3, f0
/* 8085CA28  FC 02 00 32 */	fmul f0, f2, f0
/* 8085CA2C  FC 21 00 32 */	fmul f1, f1, f0
/* 8085CA30  FC 20 08 18 */	frsp f1, f1
/* 8085CA34  48 00 00 88 */	b lbl_8085CABC
lbl_8085CA38:
/* 8085CA38  C8 1C 00 80 */	lfd f0, 0x80(r28)
/* 8085CA3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085CA40  40 80 00 10 */	bge lbl_8085CA50
/* 8085CA44  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085CA48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8085CA4C  48 00 00 70 */	b lbl_8085CABC
lbl_8085CA50:
/* 8085CA50  D0 21 00 08 */	stfs f1, 8(r1)
/* 8085CA54  80 81 00 08 */	lwz r4, 8(r1)
/* 8085CA58  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085CA5C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085CA60  7C 03 00 00 */	cmpw r3, r0
/* 8085CA64  41 82 00 14 */	beq lbl_8085CA78
/* 8085CA68  40 80 00 40 */	bge lbl_8085CAA8
/* 8085CA6C  2C 03 00 00 */	cmpwi r3, 0
/* 8085CA70  41 82 00 20 */	beq lbl_8085CA90
/* 8085CA74  48 00 00 34 */	b lbl_8085CAA8
lbl_8085CA78:
/* 8085CA78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085CA7C  41 82 00 0C */	beq lbl_8085CA88
/* 8085CA80  38 00 00 01 */	li r0, 1
/* 8085CA84  48 00 00 28 */	b lbl_8085CAAC
lbl_8085CA88:
/* 8085CA88  38 00 00 02 */	li r0, 2
/* 8085CA8C  48 00 00 20 */	b lbl_8085CAAC
lbl_8085CA90:
/* 8085CA90  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085CA94  41 82 00 0C */	beq lbl_8085CAA0
/* 8085CA98  38 00 00 05 */	li r0, 5
/* 8085CA9C  48 00 00 10 */	b lbl_8085CAAC
lbl_8085CAA0:
/* 8085CAA0  38 00 00 03 */	li r0, 3
/* 8085CAA4  48 00 00 08 */	b lbl_8085CAAC
lbl_8085CAA8:
/* 8085CAA8  38 00 00 04 */	li r0, 4
lbl_8085CAAC:
/* 8085CAAC  2C 00 00 01 */	cmpwi r0, 1
/* 8085CAB0  40 82 00 0C */	bne lbl_8085CABC
/* 8085CAB4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085CAB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8085CABC:
/* 8085CABC  C0 1C 01 04 */	lfs f0, 0x104(r28)
/* 8085CAC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085CAC4  40 80 00 28 */	bge lbl_8085CAEC
/* 8085CAC8  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085CACC  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8085CAD0  40 81 00 1C */	ble lbl_8085CAEC
/* 8085CAD4  C0 31 00 24 */	lfs f1, 0x24(r17)
/* 8085CAD8  C0 1C 01 08 */	lfs f0, 0x108(r28)
/* 8085CADC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085CAE0  4C 41 13 82 */	cror 2, 1, 2
/* 8085CAE4  40 82 00 08 */	bne lbl_8085CAEC
/* 8085CAE8  3B 18 00 01 */	addi r24, r24, 1
lbl_8085CAEC:
/* 8085CAEC  FC 1D D0 40 */	fcmpo cr0, f29, f26
/* 8085CAF0  4C 40 13 82 */	cror 2, 0, 2
/* 8085CAF4  41 82 00 10 */	beq lbl_8085CB04
/* 8085CAF8  A0 11 00 40 */	lhz r0, 0x40(r17)
/* 8085CAFC  28 00 00 00 */	cmplwi r0, 0
/* 8085CB00  40 82 00 70 */	bne lbl_8085CB70
lbl_8085CB04:
/* 8085CB04  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085CB08  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8085CB0C  4C 40 13 82 */	cror 2, 0, 2
/* 8085CB10  40 82 00 20 */	bne lbl_8085CB30
/* 8085CB14  38 71 00 24 */	addi r3, r17, 0x24
/* 8085CB18  FC 20 E8 90 */	fmr f1, f29
/* 8085CB1C  C0 5C 01 0C */	lfs f2, 0x10c(r28)
/* 8085CB20  C0 7C 01 10 */	lfs f3, 0x110(r28)
/* 8085CB24  C0 9C 01 14 */	lfs f4, 0x114(r28)
/* 8085CB28  4B A1 2E 55 */	bl cLib_addCalc__FPfffff
/* 8085CB2C  48 00 00 44 */	b lbl_8085CB70
lbl_8085CB30:
/* 8085CB30  A0 19 00 5E */	lhz r0, 0x5e(r25)
/* 8085CB34  28 00 00 00 */	cmplwi r0, 0
/* 8085CB38  41 82 00 20 */	beq lbl_8085CB58
/* 8085CB3C  38 71 00 24 */	addi r3, r17, 0x24
/* 8085CB40  C0 3C 01 18 */	lfs f1, 0x118(r28)
/* 8085CB44  C0 5C 00 B8 */	lfs f2, 0xb8(r28)
/* 8085CB48  FC 60 10 90 */	fmr f3, f2
/* 8085CB4C  C0 9C 01 1C */	lfs f4, 0x11c(r28)
/* 8085CB50  4B A1 2E 2D */	bl cLib_addCalc__FPfffff
/* 8085CB54  48 00 00 1C */	b lbl_8085CB70
lbl_8085CB58:
/* 8085CB58  38 71 00 24 */	addi r3, r17, 0x24
/* 8085CB5C  FC 20 E8 90 */	fmr f1, f29
/* 8085CB60  C0 5C 01 1C */	lfs f2, 0x11c(r28)
/* 8085CB64  C0 7C 01 20 */	lfs f3, 0x120(r28)
/* 8085CB68  C0 9C 01 24 */	lfs f4, 0x124(r28)
/* 8085CB6C  4B A1 2E 11 */	bl cLib_addCalc__FPfffff
lbl_8085CB70:
/* 8085CB70  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 8085CB74  28 00 00 00 */	cmplwi r0, 0
/* 8085CB78  40 82 00 18 */	bne lbl_8085CB90
/* 8085CB7C  A0 71 00 40 */	lhz r3, 0x40(r17)
/* 8085CB80  28 03 00 00 */	cmplwi r3, 0
/* 8085CB84  41 82 00 0C */	beq lbl_8085CB90
/* 8085CB88  38 03 FF FF */	addi r0, r3, -1
/* 8085CB8C  B0 11 00 40 */	sth r0, 0x40(r17)
lbl_8085CB90:
/* 8085CB90  C0 11 00 24 */	lfs f0, 0x24(r17)
/* 8085CB94  FC 00 D8 40 */	fcmpo cr0, f0, f27
/* 8085CB98  40 81 00 98 */	ble lbl_8085CC30
/* 8085CB9C  7F 63 DB 78 */	mr r3, r27
/* 8085CBA0  3C 80 80 86 */	lis r4, d_a_kytag12__stringBase0@ha /* 0x8085F0EC@ha */
/* 8085CBA4  38 84 F0 EC */	addi r4, r4, d_a_kytag12__stringBase0@l /* 0x8085F0EC@l */
/* 8085CBA8  4B B0 BD ED */	bl strcmp
/* 8085CBAC  2C 03 00 00 */	cmpwi r3, 0
/* 8085CBB0  40 82 00 7C */	bne lbl_8085CC2C
/* 8085CBB4  88 0F 04 BA */	lbz r0, 0x4ba(r15)
/* 8085CBB8  2C 00 00 01 */	cmpwi r0, 1
/* 8085CBBC  40 82 00 70 */	bne lbl_8085CC2C
/* 8085CBC0  2C 12 06 40 */	cmpwi r18, 0x640
/* 8085CBC4  40 80 00 68 */	bge lbl_8085CC2C
/* 8085CBC8  2C 12 01 90 */	cmpwi r18, 0x190
/* 8085CBCC  40 80 00 0C */	bge lbl_8085CBD8
/* 8085CBD0  3A 94 00 01 */	addi r20, r20, 1
/* 8085CBD4  48 00 00 5C */	b lbl_8085CC30
lbl_8085CBD8:
/* 8085CBD8  41 80 00 14 */	blt lbl_8085CBEC
/* 8085CBDC  2C 12 03 20 */	cmpwi r18, 0x320
/* 8085CBE0  40 80 00 0C */	bge lbl_8085CBEC
/* 8085CBE4  3A 73 00 01 */	addi r19, r19, 1
/* 8085CBE8  48 00 00 48 */	b lbl_8085CC30
lbl_8085CBEC:
/* 8085CBEC  2C 12 03 20 */	cmpwi r18, 0x320
/* 8085CBF0  41 80 00 1C */	blt lbl_8085CC0C
/* 8085CBF4  2C 12 04 B0 */	cmpwi r18, 0x4b0
/* 8085CBF8  40 80 00 14 */	bge lbl_8085CC0C
/* 8085CBFC  80 61 00 EC */	lwz r3, 0xec(r1)
/* 8085CC00  38 63 00 01 */	addi r3, r3, 1
/* 8085CC04  90 61 00 EC */	stw r3, 0xec(r1)
/* 8085CC08  48 00 00 28 */	b lbl_8085CC30
lbl_8085CC0C:
/* 8085CC0C  2C 12 04 B0 */	cmpwi r18, 0x4b0
/* 8085CC10  41 80 00 20 */	blt lbl_8085CC30
/* 8085CC14  2C 12 06 40 */	cmpwi r18, 0x640
/* 8085CC18  40 80 00 18 */	bge lbl_8085CC30
/* 8085CC1C  80 61 00 E8 */	lwz r3, 0xe8(r1)
/* 8085CC20  38 63 00 01 */	addi r3, r3, 1
/* 8085CC24  90 61 00 E8 */	stw r3, 0xe8(r1)
/* 8085CC28  48 00 00 08 */	b lbl_8085CC30
lbl_8085CC2C:
/* 8085CC2C  3A B5 00 01 */	addi r21, r21, 1
lbl_8085CC30:
/* 8085CC30  3A 52 00 01 */	addi r18, r18, 1
/* 8085CC34  39 CE 00 44 */	addi r14, r14, 0x44
lbl_8085CC38:
/* 8085CC38  80 1E 10 54 */	lwz r0, 0x1054(r30)
/* 8085CC3C  7C 12 00 00 */	cmpw r18, r0
/* 8085CC40  41 80 F1 9C */	blt lbl_8085BDDC
/* 8085CC44  2C 18 00 00 */	cmpwi r24, 0
/* 8085CC48  41 82 00 40 */	beq lbl_8085CC88
/* 8085CC4C  A8 0F 05 78 */	lha r0, 0x578(r15)
/* 8085CC50  2C 00 00 00 */	cmpwi r0, 0
/* 8085CC54  40 82 00 34 */	bne lbl_8085CC88
/* 8085CC58  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8085CC5C  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 8085CC60  7C 00 07 74 */	extsb r0, r0
/* 8085CC64  2C 00 00 0B */	cmpwi r0, 0xb
/* 8085CC68  41 82 00 0C */	beq lbl_8085CC74
/* 8085CC6C  2C 00 00 01 */	cmpwi r0, 1
/* 8085CC70  40 82 00 10 */	bne lbl_8085CC80
lbl_8085CC74:
/* 8085CC74  38 00 00 3C */	li r0, 0x3c
/* 8085CC78  B0 0F 05 78 */	sth r0, 0x578(r15)
/* 8085CC7C  48 00 00 0C */	b lbl_8085CC88
lbl_8085CC80:
/* 8085CC80  38 00 00 50 */	li r0, 0x50
/* 8085CC84  B0 0F 05 78 */	sth r0, 0x578(r15)
lbl_8085CC88:
/* 8085CC88  A8 6F 05 78 */	lha r3, 0x578(r15)
/* 8085CC8C  7C 60 07 35 */	extsh. r0, r3
/* 8085CC90  41 82 00 58 */	beq lbl_8085CCE8
/* 8085CC94  2C 03 00 3C */	cmpwi r3, 0x3c
/* 8085CC98  41 81 00 50 */	bgt lbl_8085CCE8
/* 8085CC9C  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 8085CCA0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8085CCA4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8085CCA8  40 82 00 0C */	bne lbl_8085CCB4
/* 8085CCAC  38 00 00 2D */	li r0, 0x2d
/* 8085CCB0  B0 19 00 5E */	sth r0, 0x5e(r25)
lbl_8085CCB4:
/* 8085CCB4  7F 43 D3 78 */	mr r3, r26
/* 8085CCB8  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 8085CCBC  81 8C 02 78 */	lwz r12, 0x278(r12)
/* 8085CCC0  7D 89 03 A6 */	mtctr r12
/* 8085CCC4  4E 80 04 21 */	bctrl 
/* 8085CCC8  2C 03 00 00 */	cmpwi r3, 0
/* 8085CCCC  41 82 00 10 */	beq lbl_8085CCDC
/* 8085CCD0  38 00 00 00 */	li r0, 0
/* 8085CCD4  B0 0F 05 78 */	sth r0, 0x578(r15)
/* 8085CCD8  48 00 00 10 */	b lbl_8085CCE8
lbl_8085CCDC:
/* 8085CCDC  80 1A 05 88 */	lwz r0, 0x588(r26)
/* 8085CCE0  60 00 00 02 */	ori r0, r0, 2
/* 8085CCE4  90 1A 05 88 */	stw r0, 0x588(r26)
lbl_8085CCE8:
/* 8085CCE8  A8 6F 05 78 */	lha r3, 0x578(r15)
/* 8085CCEC  2C 03 00 00 */	cmpwi r3, 0
/* 8085CCF0  41 82 00 0C */	beq lbl_8085CCFC
/* 8085CCF4  38 03 FF FF */	addi r0, r3, -1
/* 8085CCF8  B0 0F 05 78 */	sth r0, 0x578(r15)
lbl_8085CCFC:
/* 8085CCFC  A0 79 00 5E */	lhz r3, 0x5e(r25)
/* 8085CD00  28 03 00 00 */	cmplwi r3, 0
/* 8085CD04  41 82 00 0C */	beq lbl_8085CD10
/* 8085CD08  38 03 FF FF */	addi r0, r3, -1
/* 8085CD0C  B0 19 00 5E */	sth r0, 0x5e(r25)
lbl_8085CD10:
/* 8085CD10  7D E3 7B 78 */	mr r3, r15
/* 8085CD14  4B FF EE AD */	bl daKytag12_light_swprd_proc__FP13kytag12_class
/* 8085CD18  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8085CD1C  38 A3 CA 54 */	addi r5, r3, g_env_light@l /* 0x8042CA54@l */
/* 8085CD20  88 05 10 50 */	lbz r0, 0x1050(r5)
/* 8085CD24  54 04 06 7E */	clrlwi r4, r0, 0x19
/* 8085CD28  98 85 10 50 */	stb r4, 0x1050(r5)
/* 8085CD2C  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 8085CD30  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8085CD34  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8085CD38  41 82 00 14 */	beq lbl_8085CD4C
/* 8085CD3C  2C 16 00 00 */	cmpwi r22, 0
/* 8085CD40  40 81 00 0C */	ble lbl_8085CD4C
/* 8085CD44  60 80 00 80 */	ori r0, r4, 0x80
/* 8085CD48  98 05 10 50 */	stb r0, 0x1050(r5)
lbl_8085CD4C:
/* 8085CD4C  7F 63 DB 78 */	mr r3, r27
/* 8085CD50  3C 80 80 86 */	lis r4, d_a_kytag12__stringBase0@ha /* 0x8085F0EC@ha */
/* 8085CD54  38 84 F0 EC */	addi r4, r4, d_a_kytag12__stringBase0@l /* 0x8085F0EC@l */
/* 8085CD58  4B B0 BC 3D */	bl strcmp
/* 8085CD5C  2C 03 00 00 */	cmpwi r3, 0
/* 8085CD60  40 82 02 A8 */	bne lbl_8085D008
/* 8085CD64  88 0F 04 BA */	lbz r0, 0x4ba(r15)
/* 8085CD68  2C 00 00 01 */	cmpwi r0, 1
/* 8085CD6C  40 82 02 9C */	bne lbl_8085D008
/* 8085CD70  C8 5C 01 30 */	lfd f2, 0x130(r28)
/* 8085CD74  6E 80 80 00 */	xoris r0, r20, 0x8000
/* 8085CD78  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8085CD7C  3C 80 43 30 */	lis r4, 0x4330
/* 8085CD80  90 81 00 D0 */	stw r4, 0xd0(r1)
/* 8085CD84  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 8085CD88  EC 20 10 28 */	fsubs f1, f0, f2
/* 8085CD8C  80 7E 10 54 */	lwz r3, 0x1054(r30)
/* 8085CD90  38 00 00 05 */	li r0, 5
/* 8085CD94  7C 03 03 D6 */	divw r0, r3, r0
/* 8085CD98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8085CD9C  90 01 00 CC */	stw r0, 0xcc(r1)
/* 8085CDA0  90 81 00 C8 */	stw r4, 0xc8(r1)
/* 8085CDA4  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 8085CDA8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8085CDAC  EC 21 00 24 */	fdivs f1, f1, f0
/* 8085CDB0  C0 1C 00 24 */	lfs f0, 0x24(r28)
/* 8085CDB4  D0 0F 05 7C */	stfs f0, 0x57c(r15)
/* 8085CDB8  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 8085CDBC  D0 0F 05 80 */	stfs f0, 0x580(r15)
/* 8085CDC0  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8085CDC4  D0 0F 05 84 */	stfs f0, 0x584(r15)
/* 8085CDC8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080217@ha */
/* 8085CDCC  38 03 02 17 */	addi r0, r3, 0x0217 /* 0x00080217@l */
/* 8085CDD0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8085CDD4  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8085CDD8  EC 20 00 72 */	fmuls f1, f0, f1
/* 8085CDDC  4B B0 52 D1 */	bl __cvt_fp2unsigned
/* 8085CDE0  7C 66 1B 78 */	mr r6, r3
/* 8085CDE4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8085CDE8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8085CDEC  80 63 00 00 */	lwz r3, 0(r3)
/* 8085CDF0  38 81 00 28 */	addi r4, r1, 0x28
/* 8085CDF4  38 AF 05 7C */	addi r5, r15, 0x57c
/* 8085CDF8  38 E0 00 00 */	li r7, 0
/* 8085CDFC  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8085CE00  FC 40 08 90 */	fmr f2, f1
/* 8085CE04  C0 7C 00 74 */	lfs f3, 0x74(r28)
/* 8085CE08  FC 80 18 90 */	fmr f4, f3
/* 8085CE0C  39 00 00 00 */	li r8, 0
/* 8085CE10  4B A4 F6 FD */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8085CE14  C8 5C 01 30 */	lfd f2, 0x130(r28)
/* 8085CE18  6E 60 80 00 */	xoris r0, r19, 0x8000
/* 8085CE1C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8085CE20  3C 80 43 30 */	lis r4, 0x4330
/* 8085CE24  90 81 00 C0 */	stw r4, 0xc0(r1)
/* 8085CE28  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 8085CE2C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8085CE30  80 7E 10 54 */	lwz r3, 0x1054(r30)
/* 8085CE34  38 00 00 05 */	li r0, 5
/* 8085CE38  7C 03 03 D6 */	divw r0, r3, r0
/* 8085CE3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8085CE40  90 01 00 BC */	stw r0, 0xbc(r1)
/* 8085CE44  90 81 00 B8 */	stw r4, 0xb8(r1)
/* 8085CE48  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 8085CE4C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8085CE50  EC 21 00 24 */	fdivs f1, f1, f0
/* 8085CE54  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 8085CE58  D0 0F 05 88 */	stfs f0, 0x588(r15)
/* 8085CE5C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 8085CE60  D0 0F 05 8C */	stfs f0, 0x58c(r15)
/* 8085CE64  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8085CE68  D0 0F 05 90 */	stfs f0, 0x590(r15)
/* 8085CE6C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080217@ha */
/* 8085CE70  38 03 02 17 */	addi r0, r3, 0x0217 /* 0x00080217@l */
/* 8085CE74  90 01 00 24 */	stw r0, 0x24(r1)
/* 8085CE78  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8085CE7C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8085CE80  4B B0 52 2D */	bl __cvt_fp2unsigned
/* 8085CE84  7C 66 1B 78 */	mr r6, r3
/* 8085CE88  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8085CE8C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8085CE90  80 63 00 00 */	lwz r3, 0(r3)
/* 8085CE94  38 81 00 24 */	addi r4, r1, 0x24
/* 8085CE98  38 AF 05 88 */	addi r5, r15, 0x588
/* 8085CE9C  38 E0 00 00 */	li r7, 0
/* 8085CEA0  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8085CEA4  FC 40 08 90 */	fmr f2, f1
/* 8085CEA8  C0 7C 00 74 */	lfs f3, 0x74(r28)
/* 8085CEAC  FC 80 18 90 */	fmr f4, f3
/* 8085CEB0  39 00 00 00 */	li r8, 0
/* 8085CEB4  4B A4 F6 59 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8085CEB8  C8 5C 01 30 */	lfd f2, 0x130(r28)
/* 8085CEBC  80 01 00 EC */	lwz r0, 0xec(r1)
/* 8085CEC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8085CEC4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8085CEC8  3C 80 43 30 */	lis r4, 0x4330
/* 8085CECC  90 81 00 B0 */	stw r4, 0xb0(r1)
/* 8085CED0  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 8085CED4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8085CED8  80 7E 10 54 */	lwz r3, 0x1054(r30)
/* 8085CEDC  38 00 00 05 */	li r0, 5
/* 8085CEE0  7C 03 03 D6 */	divw r0, r3, r0
/* 8085CEE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8085CEE8  90 01 00 AC */	stw r0, 0xac(r1)
/* 8085CEEC  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 8085CEF0  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8085CEF4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8085CEF8  EC 21 00 24 */	fdivs f1, f1, f0
/* 8085CEFC  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 8085CF00  D0 0F 05 94 */	stfs f0, 0x594(r15)
/* 8085CF04  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 8085CF08  D0 0F 05 98 */	stfs f0, 0x598(r15)
/* 8085CF0C  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 8085CF10  D0 0F 05 9C */	stfs f0, 0x59c(r15)
/* 8085CF14  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080217@ha */
/* 8085CF18  38 03 02 17 */	addi r0, r3, 0x0217 /* 0x00080217@l */
/* 8085CF1C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8085CF20  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8085CF24  EC 20 00 72 */	fmuls f1, f0, f1
/* 8085CF28  4B B0 51 85 */	bl __cvt_fp2unsigned
/* 8085CF2C  7C 66 1B 78 */	mr r6, r3
/* 8085CF30  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8085CF34  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8085CF38  80 63 00 00 */	lwz r3, 0(r3)
/* 8085CF3C  38 81 00 20 */	addi r4, r1, 0x20
/* 8085CF40  38 AF 05 94 */	addi r5, r15, 0x594
/* 8085CF44  38 E0 00 00 */	li r7, 0
/* 8085CF48  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8085CF4C  FC 40 08 90 */	fmr f2, f1
/* 8085CF50  C0 7C 00 74 */	lfs f3, 0x74(r28)
/* 8085CF54  FC 80 18 90 */	fmr f4, f3
/* 8085CF58  39 00 00 00 */	li r8, 0
/* 8085CF5C  4B A4 F5 B1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8085CF60  C8 5C 01 30 */	lfd f2, 0x130(r28)
/* 8085CF64  80 01 00 E8 */	lwz r0, 0xe8(r1)
/* 8085CF68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8085CF6C  90 01 00 DC */	stw r0, 0xdc(r1)
/* 8085CF70  3C 80 43 30 */	lis r4, 0x4330
/* 8085CF74  90 81 00 D8 */	stw r4, 0xd8(r1)
/* 8085CF78  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 8085CF7C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8085CF80  80 7E 10 54 */	lwz r3, 0x1054(r30)
/* 8085CF84  38 00 00 05 */	li r0, 5
/* 8085CF88  7C 03 03 D6 */	divw r0, r3, r0
/* 8085CF8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8085CF90  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8085CF94  90 81 00 E0 */	stw r4, 0xe0(r1)
/* 8085CF98  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8085CF9C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8085CFA0  EC 21 00 24 */	fdivs f1, f1, f0
/* 8085CFA4  C0 1C 00 24 */	lfs f0, 0x24(r28)
/* 8085CFA8  D0 0F 05 A0 */	stfs f0, 0x5a0(r15)
/* 8085CFAC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 8085CFB0  D0 0F 05 A4 */	stfs f0, 0x5a4(r15)
/* 8085CFB4  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 8085CFB8  D0 0F 05 A8 */	stfs f0, 0x5a8(r15)
/* 8085CFBC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080217@ha */
/* 8085CFC0  38 03 02 17 */	addi r0, r3, 0x0217 /* 0x00080217@l */
/* 8085CFC4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8085CFC8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8085CFCC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8085CFD0  4B B0 50 DD */	bl __cvt_fp2unsigned
/* 8085CFD4  7C 66 1B 78 */	mr r6, r3
/* 8085CFD8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8085CFDC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8085CFE0  80 63 00 00 */	lwz r3, 0(r3)
/* 8085CFE4  38 81 00 1C */	addi r4, r1, 0x1c
/* 8085CFE8  38 AF 05 A0 */	addi r5, r15, 0x5a0
/* 8085CFEC  38 E0 00 00 */	li r7, 0
/* 8085CFF0  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8085CFF4  FC 40 08 90 */	fmr f2, f1
/* 8085CFF8  C0 7C 00 74 */	lfs f3, 0x74(r28)
/* 8085CFFC  FC 80 18 90 */	fmr f4, f3
/* 8085D000  39 00 00 00 */	li r8, 0
/* 8085D004  4B A4 F5 09 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8085D008:
/* 8085D008  88 0F 04 BA */	lbz r0, 0x4ba(r15)
/* 8085D00C  7C 00 07 74 */	extsb r0, r0
/* 8085D010  2C 00 00 0B */	cmpwi r0, 0xb
/* 8085D014  41 82 00 D8 */	beq lbl_8085D0EC
/* 8085D018  2C 00 00 01 */	cmpwi r0, 1
/* 8085D01C  40 82 00 48 */	bne lbl_8085D064
/* 8085D020  C8 5C 01 30 */	lfd f2, 0x130(r28)
/* 8085D024  6E A0 80 00 */	xoris r0, r21, 0x8000
/* 8085D028  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8085D02C  3C 80 43 30 */	lis r4, 0x4330
/* 8085D030  90 81 00 E0 */	stw r4, 0xe0(r1)
/* 8085D034  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8085D038  EC 20 10 28 */	fsubs f1, f0, f2
/* 8085D03C  80 7E 10 54 */	lwz r3, 0x1054(r30)
/* 8085D040  38 00 00 05 */	li r0, 5
/* 8085D044  7C 03 03 D6 */	divw r0, r3, r0
/* 8085D048  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8085D04C  90 01 00 DC */	stw r0, 0xdc(r1)
/* 8085D050  90 81 00 D8 */	stw r4, 0xd8(r1)
/* 8085D054  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 8085D058  EC 00 10 28 */	fsubs f0, f0, f2
/* 8085D05C  EC 21 00 24 */	fdivs f1, f1, f0
/* 8085D060  48 00 00 3C */	b lbl_8085D09C
lbl_8085D064:
/* 8085D064  C8 5C 01 30 */	lfd f2, 0x130(r28)
/* 8085D068  6E A0 80 00 */	xoris r0, r21, 0x8000
/* 8085D06C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8085D070  3C 60 43 30 */	lis r3, 0x4330
/* 8085D074  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 8085D078  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 8085D07C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8085D080  80 1E 10 54 */	lwz r0, 0x1054(r30)
/* 8085D084  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8085D088  90 01 00 CC */	stw r0, 0xcc(r1)
/* 8085D08C  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 8085D090  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 8085D094  EC 00 10 28 */	fsubs f0, f0, f2
/* 8085D098  EC 21 00 24 */	fdivs f1, f1, f0
lbl_8085D09C:
/* 8085D09C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080216@ha */
/* 8085D0A0  38 03 02 16 */	addi r0, r3, 0x0216 /* 0x00080216@l */
/* 8085D0A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8085D0A8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8085D0AC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8085D0B0  4B B0 4F FD */	bl __cvt_fp2unsigned
/* 8085D0B4  7C 66 1B 78 */	mr r6, r3
/* 8085D0B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8085D0BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8085D0C0  80 63 00 00 */	lwz r3, 0(r3)
/* 8085D0C4  38 81 00 18 */	addi r4, r1, 0x18
/* 8085D0C8  38 AF 04 D0 */	addi r5, r15, 0x4d0
/* 8085D0CC  38 E0 00 00 */	li r7, 0
/* 8085D0D0  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8085D0D4  FC 40 08 90 */	fmr f2, f1
/* 8085D0D8  C0 7C 00 74 */	lfs f3, 0x74(r28)
/* 8085D0DC  FC 80 18 90 */	fmr f4, f3
/* 8085D0E0  39 00 00 00 */	li r8, 0
/* 8085D0E4  4B A4 F4 29 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8085D0E8  48 00 00 A0 */	b lbl_8085D188
lbl_8085D0EC:
/* 8085D0EC  C8 5C 01 30 */	lfd f2, 0x130(r28)
/* 8085D0F0  6E A0 80 00 */	xoris r0, r21, 0x8000
/* 8085D0F4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8085D0F8  3C 60 43 30 */	lis r3, 0x4330
/* 8085D0FC  90 61 00 E0 */	stw r3, 0xe0(r1)
/* 8085D100  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8085D104  EC 20 10 28 */	fsubs f1, f0, f2
/* 8085D108  80 1E 10 54 */	lwz r0, 0x1054(r30)
/* 8085D10C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8085D110  90 01 00 DC */	stw r0, 0xdc(r1)
/* 8085D114  90 61 00 D8 */	stw r3, 0xd8(r1)
/* 8085D118  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 8085D11C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8085D120  EC 21 00 24 */	fdivs f1, f1, f0
/* 8085D124  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8085D128  D0 0F 05 7C */	stfs f0, 0x57c(r15)
/* 8085D12C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 8085D130  D0 0F 05 80 */	stfs f0, 0x580(r15)
/* 8085D134  C0 1C 00 58 */	lfs f0, 0x58(r28)
/* 8085D138  D0 0F 05 84 */	stfs f0, 0x584(r15)
/* 8085D13C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080217@ha */
/* 8085D140  38 03 02 17 */	addi r0, r3, 0x0217 /* 0x00080217@l */
/* 8085D144  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085D148  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8085D14C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8085D150  4B B0 4F 5D */	bl __cvt_fp2unsigned
/* 8085D154  7C 66 1B 78 */	mr r6, r3
/* 8085D158  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8085D15C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8085D160  80 63 00 00 */	lwz r3, 0(r3)
/* 8085D164  38 81 00 14 */	addi r4, r1, 0x14
/* 8085D168  38 AF 05 7C */	addi r5, r15, 0x57c
/* 8085D16C  38 E0 00 00 */	li r7, 0
/* 8085D170  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8085D174  FC 40 08 90 */	fmr f2, f1
/* 8085D178  C0 7C 00 74 */	lfs f3, 0x74(r28)
/* 8085D17C  FC 80 18 90 */	fmr f4, f3
/* 8085D180  39 00 00 00 */	li r8, 0
/* 8085D184  4B A4 F3 89 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8085D188:
/* 8085D188  38 60 00 01 */	li r3, 1
lbl_8085D18C:
/* 8085D18C  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, 0 /* qr0 */
/* 8085D190  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 8085D194  E3 C1 01 98 */	psq_l f30, 408(r1), 0, 0 /* qr0 */
/* 8085D198  CB C1 01 90 */	lfd f30, 0x190(r1)
/* 8085D19C  E3 A1 01 88 */	psq_l f29, 392(r1), 0, 0 /* qr0 */
/* 8085D1A0  CB A1 01 80 */	lfd f29, 0x180(r1)
/* 8085D1A4  E3 81 01 78 */	psq_l f28, 376(r1), 0, 0 /* qr0 */
/* 8085D1A8  CB 81 01 70 */	lfd f28, 0x170(r1)
/* 8085D1AC  E3 61 01 68 */	psq_l f27, 360(r1), 0, 0 /* qr0 */
/* 8085D1B0  CB 61 01 60 */	lfd f27, 0x160(r1)
/* 8085D1B4  E3 41 01 58 */	psq_l f26, 344(r1), 0, 0 /* qr0 */
/* 8085D1B8  CB 41 01 50 */	lfd f26, 0x150(r1)
/* 8085D1BC  E3 21 01 48 */	psq_l f25, 328(r1), 0, 0 /* qr0 */
/* 8085D1C0  CB 21 01 40 */	lfd f25, 0x140(r1)
/* 8085D1C4  39 61 01 40 */	addi r11, r1, 0x140
/* 8085D1C8  4B B0 50 25 */	bl __restore_gpr
/* 8085D1CC  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 8085D1D0  7C 08 03 A6 */	mtlr r0
/* 8085D1D4  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 8085D1D8  4E 80 00 20 */	blr 
