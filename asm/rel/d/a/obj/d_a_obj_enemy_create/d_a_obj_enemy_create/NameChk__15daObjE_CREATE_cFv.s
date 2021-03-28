lbl_80BE3618:
/* 80BE3618  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BE361C  54 05 07 3E */	clrlwi r5, r0, 0x1c
/* 80BE3620  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80BE3624  98 03 05 69 */	stb r0, 0x569(r3)
/* 80BE3628  38 00 FF FF */	li r0, -1
/* 80BE362C  90 03 05 78 */	stw r0, 0x578(r3)
/* 80BE3630  A8 03 04 E4 */	lha r0, 0x4e4(r3)
/* 80BE3634  B0 03 05 6E */	sth r0, 0x56e(r3)
/* 80BE3638  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80BE363C  B0 03 05 70 */	sth r0, 0x570(r3)
/* 80BE3640  A8 03 04 E8 */	lha r0, 0x4e8(r3)
/* 80BE3644  B0 03 05 72 */	sth r0, 0x572(r3)
/* 80BE3648  28 05 00 0C */	cmplwi r5, 0xc
/* 80BE364C  4D 81 00 20 */	bgtlr 
/* 80BE3650  3C 80 80 BE */	lis r4, lit_3838@ha
/* 80BE3654  38 84 38 A0 */	addi r4, r4, lit_3838@l
/* 80BE3658  54 A0 10 3A */	slwi r0, r5, 2
/* 80BE365C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80BE3660  7C 09 03 A6 */	mtctr r0
/* 80BE3664  4E 80 04 20 */	bctr 
lbl_80BE3668:
/* 80BE3668  38 00 01 EA */	li r0, 0x1ea
/* 80BE366C  B0 03 05 74 */	sth r0, 0x574(r3)
/* 80BE3670  4E 80 00 20 */	blr 
lbl_80BE3674:
/* 80BE3674  38 00 01 E7 */	li r0, 0x1e7
/* 80BE3678  B0 03 05 74 */	sth r0, 0x574(r3)
/* 80BE367C  4E 80 00 20 */	blr 
lbl_80BE3680:
/* 80BE3680  38 00 01 BE */	li r0, 0x1be
/* 80BE3684  B0 03 05 74 */	sth r0, 0x574(r3)
/* 80BE3688  38 00 FF 1F */	li r0, -225
/* 80BE368C  90 03 05 78 */	stw r0, 0x578(r3)
/* 80BE3690  4E 80 00 20 */	blr 
lbl_80BE3694:
/* 80BE3694  38 00 01 BE */	li r0, 0x1be
/* 80BE3698  B0 03 05 74 */	sth r0, 0x574(r3)
/* 80BE369C  38 00 FF 3F */	li r0, -193
/* 80BE36A0  90 03 05 78 */	stw r0, 0x578(r3)
/* 80BE36A4  4E 80 00 20 */	blr 
lbl_80BE36A8:
/* 80BE36A8  38 00 01 BB */	li r0, 0x1bb
/* 80BE36AC  B0 03 05 74 */	sth r0, 0x574(r3)
/* 80BE36B0  3C 80 00 0B */	lis r4, 0x000B /* 0x000AFF02@ha */
/* 80BE36B4  38 04 FF 02 */	addi r0, r4, 0xFF02 /* 0x000AFF02@l */
/* 80BE36B8  90 03 05 78 */	stw r0, 0x578(r3)
/* 80BE36BC  4E 80 00 20 */	blr 
lbl_80BE36C0:
/* 80BE36C0  38 00 01 EB */	li r0, 0x1eb
/* 80BE36C4  B0 03 05 74 */	sth r0, 0x574(r3)
/* 80BE36C8  4E 80 00 20 */	blr 
lbl_80BE36CC:
/* 80BE36CC  38 00 01 FE */	li r0, 0x1fe
/* 80BE36D0  B0 03 05 74 */	sth r0, 0x574(r3)
/* 80BE36D4  4E 80 00 20 */	blr 
lbl_80BE36D8:
/* 80BE36D8  38 00 01 B3 */	li r0, 0x1b3
/* 80BE36DC  B0 03 05 74 */	sth r0, 0x574(r3)
/* 80BE36E0  4E 80 00 20 */	blr 
lbl_80BE36E4:
/* 80BE36E4  38 00 01 B4 */	li r0, 0x1b4
/* 80BE36E8  B0 03 05 74 */	sth r0, 0x574(r3)
/* 80BE36EC  88 03 05 69 */	lbz r0, 0x569(r3)
/* 80BE36F0  28 00 00 01 */	cmplwi r0, 1
/* 80BE36F4  40 82 00 10 */	bne lbl_80BE3704
/* 80BE36F8  38 00 FE F0 */	li r0, -272
/* 80BE36FC  90 03 05 78 */	stw r0, 0x578(r3)
/* 80BE3700  4E 80 00 20 */	blr 
lbl_80BE3704:
/* 80BE3704  54 04 25 36 */	rlwinm r4, r0, 4, 0x14, 0x1b
/* 80BE3708  38 00 FE 00 */	li r0, -512
/* 80BE370C  7C 80 03 78 */	or r0, r4, r0
/* 80BE3710  90 03 05 78 */	stw r0, 0x578(r3)
/* 80BE3714  4E 80 00 20 */	blr 
lbl_80BE3718:
/* 80BE3718  38 00 01 FB */	li r0, 0x1fb
/* 80BE371C  B0 03 05 74 */	sth r0, 0x574(r3)
/* 80BE3720  38 00 FF 00 */	li r0, -256
/* 80BE3724  90 03 05 78 */	stw r0, 0x578(r3)
/* 80BE3728  4E 80 00 20 */	blr 
lbl_80BE372C:
/* 80BE372C  38 00 01 F9 */	li r0, 0x1f9
/* 80BE3730  B0 03 05 74 */	sth r0, 0x574(r3)
/* 80BE3734  38 00 FF 01 */	li r0, -255
/* 80BE3738  90 03 05 78 */	stw r0, 0x578(r3)
/* 80BE373C  4E 80 00 20 */	blr 
lbl_80BE3740:
/* 80BE3740  38 00 01 FE */	li r0, 0x1fe
/* 80BE3744  B0 03 05 74 */	sth r0, 0x574(r3)
/* 80BE3748  3C 80 FF FF */	lis r4, 0xFFFF /* 0xFFFF01FF@ha */
/* 80BE374C  38 04 01 FF */	addi r0, r4, 0x01FF /* 0xFFFF01FF@l */
/* 80BE3750  90 03 05 78 */	stw r0, 0x578(r3)
/* 80BE3754  A8 A3 04 E8 */	lha r5, 0x4e8(r3)
/* 80BE3758  A8 83 04 E6 */	lha r4, 0x4e6(r3)
/* 80BE375C  38 00 01 00 */	li r0, 0x100
/* 80BE3760  B0 03 05 6E */	sth r0, 0x56e(r3)
/* 80BE3764  B0 83 05 70 */	sth r4, 0x570(r3)
/* 80BE3768  B0 A3 05 72 */	sth r5, 0x572(r3)
lbl_80BE376C:
/* 80BE376C  4E 80 00 20 */	blr 
