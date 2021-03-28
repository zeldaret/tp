lbl_8033BD08:
/* 8033BD08  A0 65 01 A2 */	lhz r3, 0x1a2(r5)
/* 8033BD0C  60 63 00 01 */	ori r3, r3, 1
/* 8033BD10  B0 65 01 A2 */	sth r3, 0x1a2(r5)
/* 8033BD14  D8 05 00 90 */	stfd f0, 0x90(r5)
/* 8033BD18  D8 25 00 98 */	stfd f1, 0x98(r5)
/* 8033BD1C  D8 45 00 A0 */	stfd f2, 0xa0(r5)
/* 8033BD20  D8 65 00 A8 */	stfd f3, 0xa8(r5)
/* 8033BD24  D8 85 00 B0 */	stfd f4, 0xb0(r5)
/* 8033BD28  D8 A5 00 B8 */	stfd f5, 0xb8(r5)
/* 8033BD2C  D8 C5 00 C0 */	stfd f6, 0xc0(r5)
/* 8033BD30  D8 E5 00 C8 */	stfd f7, 0xc8(r5)
/* 8033BD34  D9 05 00 D0 */	stfd f8, 0xd0(r5)
/* 8033BD38  D9 25 00 D8 */	stfd f9, 0xd8(r5)
/* 8033BD3C  D9 45 00 E0 */	stfd f10, 0xe0(r5)
/* 8033BD40  D9 65 00 E8 */	stfd f11, 0xe8(r5)
/* 8033BD44  D9 85 00 F0 */	stfd f12, 0xf0(r5)
/* 8033BD48  D9 A5 00 F8 */	stfd f13, 0xf8(r5)
/* 8033BD4C  D9 C5 01 00 */	stfd f14, 0x100(r5)
/* 8033BD50  D9 E5 01 08 */	stfd f15, 0x108(r5)
/* 8033BD54  DA 05 01 10 */	stfd f16, 0x110(r5)
/* 8033BD58  DA 25 01 18 */	stfd f17, 0x118(r5)
/* 8033BD5C  DA 45 01 20 */	stfd f18, 0x120(r5)
/* 8033BD60  DA 65 01 28 */	stfd f19, 0x128(r5)
/* 8033BD64  DA 85 01 30 */	stfd f20, 0x130(r5)
/* 8033BD68  DA A5 01 38 */	stfd f21, 0x138(r5)
/* 8033BD6C  DA C5 01 40 */	stfd f22, 0x140(r5)
/* 8033BD70  DA E5 01 48 */	stfd f23, 0x148(r5)
/* 8033BD74  DB 05 01 50 */	stfd f24, 0x150(r5)
/* 8033BD78  DB 25 01 58 */	stfd f25, 0x158(r5)
/* 8033BD7C  DB 45 01 60 */	stfd f26, 0x160(r5)
/* 8033BD80  DB 65 01 68 */	stfd f27, 0x168(r5)
/* 8033BD84  DB 85 01 70 */	stfd f28, 0x170(r5)
/* 8033BD88  DB A5 01 78 */	stfd f29, 0x178(r5)
/* 8033BD8C  DB C5 01 80 */	stfd f30, 0x180(r5)
/* 8033BD90  DB E5 01 88 */	stfd f31, 0x188(r5)
/* 8033BD94  FC 00 04 8E */	mffs f0
/* 8033BD98  D8 05 01 90 */	stfd f0, 0x190(r5)
/* 8033BD9C  C8 05 00 90 */	lfd f0, 0x90(r5)
/* 8033BDA0  7C 78 E2 A6 */	mfspr r3, 0x398
/* 8033BDA4  54 63 1F FF */	rlwinm. r3, r3, 3, 0x1f, 0x1f
/* 8033BDA8  41 82 00 84 */	beq lbl_8033BE2C
/* 8033BDAC  F0 05 01 C8 */	psq_st f0, 456(r5), 0, 0 /* qr0 */
/* 8033BDB0  F0 25 01 D0 */	psq_st f1, 464(r5), 0, 0 /* qr0 */
/* 8033BDB4  F0 45 01 D8 */	psq_st f2, 472(r5), 0, 0 /* qr0 */
/* 8033BDB8  F0 65 01 E0 */	psq_st f3, 480(r5), 0, 0 /* qr0 */
/* 8033BDBC  F0 85 01 E8 */	psq_st f4, 488(r5), 0, 0 /* qr0 */
/* 8033BDC0  F0 A5 01 F0 */	psq_st f5, 496(r5), 0, 0 /* qr0 */
/* 8033BDC4  F0 C5 01 F8 */	psq_st f6, 504(r5), 0, 0 /* qr0 */
/* 8033BDC8  F0 E5 02 00 */	psq_st f7, 512(r5), 0, 0 /* qr0 */
/* 8033BDCC  F1 05 02 08 */	psq_st f8, 520(r5), 0, 0 /* qr0 */
/* 8033BDD0  F1 25 02 10 */	psq_st f9, 528(r5), 0, 0 /* qr0 */
/* 8033BDD4  F1 45 02 18 */	psq_st f10, 536(r5), 0, 0 /* qr0 */
/* 8033BDD8  F1 65 02 20 */	psq_st f11, 544(r5), 0, 0 /* qr0 */
/* 8033BDDC  F1 85 02 28 */	psq_st f12, 552(r5), 0, 0 /* qr0 */
/* 8033BDE0  F1 A5 02 30 */	psq_st f13, 560(r5), 0, 0 /* qr0 */
/* 8033BDE4  F1 C5 02 38 */	psq_st f14, 568(r5), 0, 0 /* qr0 */
/* 8033BDE8  F1 E5 02 40 */	psq_st f15, 576(r5), 0, 0 /* qr0 */
/* 8033BDEC  F2 05 02 48 */	psq_st f16, 584(r5), 0, 0 /* qr0 */
/* 8033BDF0  F2 25 02 50 */	psq_st f17, 592(r5), 0, 0 /* qr0 */
/* 8033BDF4  F2 45 02 58 */	psq_st f18, 600(r5), 0, 0 /* qr0 */
/* 8033BDF8  F2 65 02 60 */	psq_st f19, 608(r5), 0, 0 /* qr0 */
/* 8033BDFC  F2 85 02 68 */	psq_st f20, 616(r5), 0, 0 /* qr0 */
/* 8033BE00  F2 A5 02 70 */	psq_st f21, 624(r5), 0, 0 /* qr0 */
/* 8033BE04  F2 C5 02 78 */	psq_st f22, 632(r5), 0, 0 /* qr0 */
/* 8033BE08  F2 E5 02 80 */	psq_st f23, 640(r5), 0, 0 /* qr0 */
/* 8033BE0C  F3 05 02 88 */	psq_st f24, 648(r5), 0, 0 /* qr0 */
/* 8033BE10  F3 25 02 90 */	psq_st f25, 656(r5), 0, 0 /* qr0 */
/* 8033BE14  F3 45 02 98 */	psq_st f26, 664(r5), 0, 0 /* qr0 */
/* 8033BE18  F3 65 02 A0 */	psq_st f27, 672(r5), 0, 0 /* qr0 */
/* 8033BE1C  F3 85 02 A8 */	psq_st f28, 680(r5), 0, 0 /* qr0 */
/* 8033BE20  F3 A5 02 B0 */	psq_st f29, 688(r5), 0, 0 /* qr0 */
/* 8033BE24  F3 C5 02 B8 */	psq_st f30, 696(r5), 0, 0 /* qr0 */
/* 8033BE28  F3 E5 02 C0 */	psq_st f31, 704(r5), 0, 0 /* qr0 */
lbl_8033BE2C:
/* 8033BE2C  4E 80 00 20 */	blr 
