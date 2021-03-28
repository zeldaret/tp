lbl_802C70C8:
/* 802C70C8  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 802C70CC  7C 08 02 A6 */	mflr r0
/* 802C70D0  90 01 01 14 */	stw r0, 0x114(r1)
/* 802C70D4  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 802C70D8  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 802C70DC  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 802C70E0  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 802C70E4  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 802C70E8  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 802C70EC  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 802C70F0  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 802C70F4  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 802C70F8  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 802C70FC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 802C7100  48 09 B0 D9 */	bl _savegpr_28
/* 802C7104  7C 7F 1B 78 */	mr r31, r3
/* 802C7108  38 00 00 64 */	li r0, 0x64
/* 802C710C  98 03 01 B8 */	stb r0, 0x1b8(r3)
/* 802C7110  7C 80 07 74 */	extsb r0, r4
/* 802C7114  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C7118  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C711C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 802C7120  3C 00 43 30 */	lis r0, 0x4330
/* 802C7124  90 01 00 88 */	stw r0, 0x88(r1)
/* 802C7128  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 802C712C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C7130  C0 02 C3 F4 */	lfs f0, lit_4260(r2)
/* 802C7134  EF E1 00 24 */	fdivs f31, f1, f0
/* 802C7138  88 03 00 39 */	lbz r0, 0x39(r3)
/* 802C713C  28 00 00 00 */	cmplwi r0, 0
/* 802C7140  41 82 00 5C */	beq lbl_802C719C
/* 802C7144  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 802C7148  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 802C714C  EC 01 00 2A */	fadds f0, f1, f0
/* 802C7150  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 802C7154  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 802C7158  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 802C715C  EC 01 00 2A */	fadds f0, f1, f0
/* 802C7160  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 802C7164  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 802C7168  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 802C716C  EC 01 00 2A */	fadds f0, f1, f0
/* 802C7170  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 802C7174  88 7F 00 39 */	lbz r3, 0x39(r31)
/* 802C7178  38 03 FF FF */	addi r0, r3, -1
/* 802C717C  98 1F 00 39 */	stb r0, 0x39(r31)
/* 802C7180  88 1F 00 39 */	lbz r0, 0x39(r31)
/* 802C7184  28 00 00 00 */	cmplwi r0, 0
/* 802C7188  40 82 00 14 */	bne lbl_802C719C
/* 802C718C  C0 02 C3 48 */	lfs f0, lit_3503(r2)
/* 802C7190  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 802C7194  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 802C7198  D0 1F 00 5C */	stfs f0, 0x5c(r31)
lbl_802C719C:
/* 802C719C  7F E3 FB 78 */	mr r3, r31
/* 802C71A0  4B FF ED F9 */	bl calcPan__14Z2EnvSeAutoPanFv
/* 802C71A4  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802C71A8  4B FF ED F1 */	bl calcPan__14Z2EnvSeAutoPanFv
/* 802C71AC  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C71B0  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C71B4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 802C71B8  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 802C71BC  41 82 00 2C */	beq lbl_802C71E8
/* 802C71C0  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802C71C4  38 9F 00 3C */	addi r4, r31, 0x3c
/* 802C71C8  38 A1 00 78 */	addi r5, r1, 0x78
/* 802C71CC  38 C0 00 00 */	li r6, 0
/* 802C71D0  4B FF 67 5D */	bl convertAbsToRel__10Z2AudienceFR3VecP3Veci
/* 802C71D4  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802C71D8  38 81 00 78 */	addi r4, r1, 0x78
/* 802C71DC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 802C71E0  38 A0 00 00 */	li r5, 0
/* 802C71E4  4B FF 67 79 */	bl calcRelPosVolume__10Z2AudienceFRC3Vecfi
lbl_802C71E8:
/* 802C71E8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 802C71EC  EC 20 00 72 */	fmuls f1, f0, f1
/* 802C71F0  FF C0 08 90 */	fmr f30, f1
/* 802C71F4  FF A0 08 90 */	fmr f29, f1
/* 802C71F8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 802C71FC  FF 80 00 90 */	fmr f28, f0
/* 802C7200  FF 60 00 90 */	fmr f27, f0
/* 802C7204  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802C7208  88 83 00 00 */	lbz r4, 0(r3)
/* 802C720C  88 1F 00 38 */	lbz r0, 0x38(r31)
/* 802C7210  28 00 00 0B */	cmplwi r0, 0xb
/* 802C7214  41 81 04 4C */	bgt lbl_802C7660
/* 802C7218  3C 60 80 3D */	lis r3, lit_4272@ha
/* 802C721C  38 63 B9 F8 */	addi r3, r3, lit_4272@l
/* 802C7220  54 00 10 3A */	slwi r0, r0, 2
/* 802C7224  7C 03 00 2E */	lwzx r0, r3, r0
/* 802C7228  7C 09 03 A6 */	mtctr r0
/* 802C722C  4E 80 04 20 */	bctr 
/* 802C7230  38 60 00 00 */	li r3, 0
/* 802C7234  48 00 05 98 */	b lbl_802C77CC
/* 802C7238  28 04 00 06 */	cmplwi r4, 6
/* 802C723C  41 80 00 34 */	blt lbl_802C7270
/* 802C7240  28 04 00 12 */	cmplwi r4, 0x12
/* 802C7244  41 81 00 2C */	bgt lbl_802C7270
/* 802C7248  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009001F@ha */
/* 802C724C  38 03 00 1F */	addi r0, r3, 0x001F /* 0x0009001F@l */
/* 802C7250  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802C7254  90 01 00 74 */	stw r0, 0x74(r1)
/* 802C7258  38 03 00 20 */	addi r0, r3, 0x20
/* 802C725C  90 01 00 68 */	stw r0, 0x68(r1)
/* 802C7260  90 01 00 70 */	stw r0, 0x70(r1)
/* 802C7264  C0 02 C3 BC */	lfs f0, lit_3766(r2)
/* 802C7268  EF A1 00 32 */	fmuls f29, f1, f0
/* 802C726C  48 00 03 FC */	b lbl_802C7668
lbl_802C7270:
/* 802C7270  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090020@ha */
/* 802C7274  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00090020@l */
/* 802C7278  90 01 00 64 */	stw r0, 0x64(r1)
/* 802C727C  90 01 00 74 */	stw r0, 0x74(r1)
/* 802C7280  90 01 00 60 */	stw r0, 0x60(r1)
/* 802C7284  90 01 00 70 */	stw r0, 0x70(r1)
/* 802C7288  48 00 03 E0 */	b lbl_802C7668
/* 802C728C  28 04 00 06 */	cmplwi r4, 6
/* 802C7290  41 80 00 18 */	blt lbl_802C72A8
/* 802C7294  28 04 00 12 */	cmplwi r4, 0x12
/* 802C7298  41 81 00 10 */	bgt lbl_802C72A8
/* 802C729C  C0 02 C3 BC */	lfs f0, lit_3766(r2)
/* 802C72A0  EF C1 00 32 */	fmuls f30, f1, f0
/* 802C72A4  FF A0 F0 90 */	fmr f29, f30
lbl_802C72A8:
/* 802C72A8  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090010@ha */
/* 802C72AC  38 03 00 10 */	addi r0, r3, 0x0010 /* 0x00090010@l */
/* 802C72B0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 802C72B4  90 01 00 74 */	stw r0, 0x74(r1)
/* 802C72B8  90 01 00 58 */	stw r0, 0x58(r1)
/* 802C72BC  90 01 00 70 */	stw r0, 0x70(r1)
/* 802C72C0  C3 82 C3 70 */	lfs f28, lit_3704(r2)
/* 802C72C4  C3 62 C3 F8 */	lfs f27, lit_4261(r2)
/* 802C72C8  48 00 03 A0 */	b lbl_802C7668
/* 802C72CC  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090010@ha */
/* 802C72D0  38 03 00 10 */	addi r0, r3, 0x0010 /* 0x00090010@l */
/* 802C72D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 802C72D8  90 01 00 74 */	stw r0, 0x74(r1)
/* 802C72DC  90 01 00 50 */	stw r0, 0x50(r1)
/* 802C72E0  90 01 00 70 */	stw r0, 0x70(r1)
/* 802C72E4  48 00 03 84 */	b lbl_802C7668
/* 802C72E8  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090032@ha */
/* 802C72EC  38 03 00 32 */	addi r0, r3, 0x0032 /* 0x00090032@l */
/* 802C72F0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802C72F4  90 01 00 74 */	stw r0, 0x74(r1)
/* 802C72F8  38 03 00 33 */	addi r0, r3, 0x33
/* 802C72FC  90 01 00 48 */	stw r0, 0x48(r1)
/* 802C7300  90 01 00 70 */	stw r0, 0x70(r1)
/* 802C7304  88 1F 01 41 */	lbz r0, 0x141(r31)
/* 802C7308  7C 00 07 74 */	extsb r0, r0
/* 802C730C  2C 00 00 40 */	cmpwi r0, 0x40
/* 802C7310  40 81 01 10 */	ble lbl_802C7420
/* 802C7314  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C7318  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C731C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 802C7320  3C 00 43 30 */	lis r0, 0x4330
/* 802C7324  90 01 00 88 */	stw r0, 0x88(r1)
/* 802C7328  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 802C732C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C7330  C0 42 C3 FC */	lfs f2, lit_4262(r2)
/* 802C7334  C0 62 C3 F4 */	lfs f3, lit_4260(r2)
/* 802C7338  C0 82 C3 C8 */	lfs f4, lit_3769(r2)
/* 802C733C  C0 A2 C4 00 */	lfs f5, lit_4263(r2)
/* 802C7340  C0 C2 C3 44 */	lfs f6, lit_3502(r2)
/* 802C7344  38 60 00 01 */	li r3, 1
/* 802C7348  4B FE 23 AD */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C734C  EF DE 00 72 */	fmuls f30, f30, f1
/* 802C7350  88 1F 01 41 */	lbz r0, 0x141(r31)
/* 802C7354  7C 00 07 74 */	extsb r0, r0
/* 802C7358  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C735C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C7360  90 01 00 94 */	stw r0, 0x94(r1)
/* 802C7364  3C 00 43 30 */	lis r0, 0x4330
/* 802C7368  90 01 00 90 */	stw r0, 0x90(r1)
/* 802C736C  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 802C7370  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C7374  C0 42 C3 FC */	lfs f2, lit_4262(r2)
/* 802C7378  C0 62 C3 F4 */	lfs f3, lit_4260(r2)
/* 802C737C  C0 82 C3 C8 */	lfs f4, lit_3769(r2)
/* 802C7380  C0 A2 C4 04 */	lfs f5, lit_4264(r2)
/* 802C7384  C0 C2 C4 08 */	lfs f6, lit_4265(r2)
/* 802C7388  38 60 00 01 */	li r3, 1
/* 802C738C  4B FE 23 69 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C7390  EF 9C 00 72 */	fmuls f28, f28, f1
/* 802C7394  88 1F 01 41 */	lbz r0, 0x141(r31)
/* 802C7398  7C 00 07 74 */	extsb r0, r0
/* 802C739C  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C73A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C73A4  90 01 00 9C */	stw r0, 0x9c(r1)
/* 802C73A8  3C 00 43 30 */	lis r0, 0x4330
/* 802C73AC  90 01 00 98 */	stw r0, 0x98(r1)
/* 802C73B0  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 802C73B4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C73B8  C0 42 C3 FC */	lfs f2, lit_4262(r2)
/* 802C73BC  C0 62 C3 F4 */	lfs f3, lit_4260(r2)
/* 802C73C0  C0 82 C3 B0 */	lfs f4, lit_3763(r2)
/* 802C73C4  C0 A2 C3 84 */	lfs f5, lit_3752(r2)
/* 802C73C8  C0 C2 C3 44 */	lfs f6, lit_3502(r2)
/* 802C73CC  38 60 00 01 */	li r3, 1
/* 802C73D0  4B FE 23 25 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C73D4  EF BD 00 72 */	fmuls f29, f29, f1
/* 802C73D8  88 1F 01 41 */	lbz r0, 0x141(r31)
/* 802C73DC  7C 00 07 74 */	extsb r0, r0
/* 802C73E0  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C73E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C73E8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802C73EC  3C 00 43 30 */	lis r0, 0x4330
/* 802C73F0  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 802C73F4  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 802C73F8  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C73FC  C0 42 C3 F4 */	lfs f2, lit_4260(r2)
/* 802C7400  C0 62 C3 FC */	lfs f3, lit_4262(r2)
/* 802C7404  C0 82 C3 C8 */	lfs f4, lit_3769(r2)
/* 802C7408  C0 A2 C4 0C */	lfs f5, lit_4266(r2)
/* 802C740C  C0 C2 C3 90 */	lfs f6, lit_3755(r2)
/* 802C7410  38 60 00 00 */	li r3, 0
/* 802C7414  4B FE 22 E1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C7418  EF 7B 00 72 */	fmuls f27, f27, f1
/* 802C741C  48 00 02 4C */	b lbl_802C7668
lbl_802C7420:
/* 802C7420  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C7424  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C7428  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802C742C  3C 00 43 30 */	lis r0, 0x4330
/* 802C7430  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 802C7434  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 802C7438  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C743C  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C7440  C0 62 C3 FC */	lfs f3, lit_4262(r2)
/* 802C7444  C0 82 C3 C8 */	lfs f4, lit_3769(r2)
/* 802C7448  C0 A2 C3 84 */	lfs f5, lit_3752(r2)
/* 802C744C  C0 C2 C4 00 */	lfs f6, lit_4263(r2)
/* 802C7450  38 60 00 00 */	li r3, 0
/* 802C7454  4B FE 22 A1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C7458  EF DE 00 72 */	fmuls f30, f30, f1
/* 802C745C  88 1F 01 41 */	lbz r0, 0x141(r31)
/* 802C7460  7C 00 07 74 */	extsb r0, r0
/* 802C7464  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C7468  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C746C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 802C7470  3C 00 43 30 */	lis r0, 0x4330
/* 802C7474  90 01 00 98 */	stw r0, 0x98(r1)
/* 802C7478  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 802C747C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C7480  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C7484  C0 62 C3 FC */	lfs f3, lit_4262(r2)
/* 802C7488  C0 82 C3 B0 */	lfs f4, lit_3763(r2)
/* 802C748C  C0 A2 C3 44 */	lfs f5, lit_3502(r2)
/* 802C7490  C0 C2 C4 04 */	lfs f6, lit_4264(r2)
/* 802C7494  38 60 00 00 */	li r3, 0
/* 802C7498  4B FE 22 5D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C749C  EF 9C 00 72 */	fmuls f28, f28, f1
/* 802C74A0  88 1F 01 41 */	lbz r0, 0x141(r31)
/* 802C74A4  7C 00 07 74 */	extsb r0, r0
/* 802C74A8  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C74AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C74B0  90 01 00 94 */	stw r0, 0x94(r1)
/* 802C74B4  3C 00 43 30 */	lis r0, 0x4330
/* 802C74B8  90 01 00 90 */	stw r0, 0x90(r1)
/* 802C74BC  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 802C74C0  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C74C4  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C74C8  C0 62 C3 FC */	lfs f3, lit_4262(r2)
/* 802C74CC  C0 82 C3 B0 */	lfs f4, lit_3763(r2)
/* 802C74D0  C0 A2 C3 50 */	lfs f5, lit_3505(r2)
/* 802C74D4  C0 C2 C3 84 */	lfs f6, lit_3752(r2)
/* 802C74D8  38 60 00 00 */	li r3, 0
/* 802C74DC  4B FE 22 19 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C74E0  EF BD 00 72 */	fmuls f29, f29, f1
/* 802C74E4  88 1F 01 41 */	lbz r0, 0x141(r31)
/* 802C74E8  7C 00 07 74 */	extsb r0, r0
/* 802C74EC  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C74F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C74F4  90 01 00 8C */	stw r0, 0x8c(r1)
/* 802C74F8  3C 00 43 30 */	lis r0, 0x4330
/* 802C74FC  90 01 00 88 */	stw r0, 0x88(r1)
/* 802C7500  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 802C7504  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C7508  C0 42 C3 FC */	lfs f2, lit_4262(r2)
/* 802C750C  C0 62 C3 48 */	lfs f3, lit_3503(r2)
/* 802C7510  C0 82 C3 C8 */	lfs f4, lit_3769(r2)
/* 802C7514  C0 A2 C3 90 */	lfs f5, lit_3755(r2)
/* 802C7518  C0 C2 C3 44 */	lfs f6, lit_3502(r2)
/* 802C751C  38 60 00 01 */	li r3, 1
/* 802C7520  4B FE 21 D5 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C7524  EF 7B 00 72 */	fmuls f27, f27, f1
/* 802C7528  48 00 01 40 */	b lbl_802C7668
/* 802C752C  C3 C2 C3 60 */	lfs f30, lit_3574(r2)
/* 802C7530  C3 A2 C3 D4 */	lfs f29, lit_3772(r2)
/* 802C7534  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009001A@ha */
/* 802C7538  38 03 00 1A */	addi r0, r3, 0x001A /* 0x0009001A@l */
/* 802C753C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C7540  90 01 00 74 */	stw r0, 0x74(r1)
/* 802C7544  38 03 00 1B */	addi r0, r3, 0x1b
/* 802C7548  90 01 00 40 */	stw r0, 0x40(r1)
/* 802C754C  90 01 00 70 */	stw r0, 0x70(r1)
/* 802C7550  48 00 01 18 */	b lbl_802C7668
/* 802C7554  28 04 00 06 */	cmplwi r4, 6
/* 802C7558  41 80 00 20 */	blt lbl_802C7578
/* 802C755C  28 04 00 12 */	cmplwi r4, 0x12
/* 802C7560  41 81 00 18 */	bgt lbl_802C7578
/* 802C7564  C0 02 C3 50 */	lfs f0, lit_3505(r2)
/* 802C7568  EF C1 00 32 */	fmuls f30, f1, f0
/* 802C756C  C0 02 C4 10 */	lfs f0, lit_4267(r2)
/* 802C7570  EF A1 00 32 */	fmuls f29, f1, f0
/* 802C7574  48 00 00 10 */	b lbl_802C7584
lbl_802C7578:
/* 802C7578  C0 02 C3 84 */	lfs f0, lit_3752(r2)
/* 802C757C  EF DE 00 32 */	fmuls f30, f30, f0
/* 802C7580  EF BD 00 32 */	fmuls f29, f29, f0
lbl_802C7584:
/* 802C7584  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090009@ha */
/* 802C7588  38 03 00 09 */	addi r0, r3, 0x0009 /* 0x00090009@l */
/* 802C758C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802C7590  90 01 00 74 */	stw r0, 0x74(r1)
/* 802C7594  38 03 00 0F */	addi r0, r3, 0xf
/* 802C7598  90 01 00 38 */	stw r0, 0x38(r1)
/* 802C759C  90 01 00 70 */	stw r0, 0x70(r1)
/* 802C75A0  48 00 00 C8 */	b lbl_802C7668
/* 802C75A4  28 04 00 06 */	cmplwi r4, 6
/* 802C75A8  41 80 00 20 */	blt lbl_802C75C8
/* 802C75AC  28 04 00 12 */	cmplwi r4, 0x12
/* 802C75B0  41 81 00 18 */	bgt lbl_802C75C8
/* 802C75B4  C0 02 C3 50 */	lfs f0, lit_3505(r2)
/* 802C75B8  EF C1 00 32 */	fmuls f30, f1, f0
/* 802C75BC  C0 02 C3 D4 */	lfs f0, lit_3772(r2)
/* 802C75C0  EF A1 00 32 */	fmuls f29, f1, f0
/* 802C75C4  48 00 00 0C */	b lbl_802C75D0
lbl_802C75C8:
/* 802C75C8  C0 02 C3 84 */	lfs f0, lit_3752(r2)
/* 802C75CC  EF DE 00 32 */	fmuls f30, f30, f0
lbl_802C75D0:
/* 802C75D0  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090009@ha */
/* 802C75D4  38 03 00 09 */	addi r0, r3, 0x0009 /* 0x00090009@l */
/* 802C75D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C75DC  90 01 00 74 */	stw r0, 0x74(r1)
/* 802C75E0  38 03 00 0A */	addi r0, r3, 0xa
/* 802C75E4  90 01 00 30 */	stw r0, 0x30(r1)
/* 802C75E8  90 01 00 70 */	stw r0, 0x70(r1)
/* 802C75EC  48 00 00 7C */	b lbl_802C7668
/* 802C75F0  C0 02 C4 14 */	lfs f0, lit_4268(r2)
/* 802C75F4  EF C1 00 32 */	fmuls f30, f1, f0
/* 802C75F8  C0 02 C3 D4 */	lfs f0, lit_3772(r2)
/* 802C75FC  EF A1 00 32 */	fmuls f29, f1, f0
/* 802C7600  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009001A@ha */
/* 802C7604  38 03 00 1A */	addi r0, r3, 0x001A /* 0x0009001A@l */
/* 802C7608  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802C760C  90 01 00 74 */	stw r0, 0x74(r1)
/* 802C7610  38 03 00 1B */	addi r0, r3, 0x1b
/* 802C7614  90 01 00 28 */	stw r0, 0x28(r1)
/* 802C7618  90 01 00 70 */	stw r0, 0x70(r1)
/* 802C761C  48 00 00 4C */	b lbl_802C7668
/* 802C7620  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090014@ha */
/* 802C7624  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00090014@l */
/* 802C7628  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C762C  90 01 00 74 */	stw r0, 0x74(r1)
/* 802C7630  38 03 00 15 */	addi r0, r3, 0x15
/* 802C7634  90 01 00 20 */	stw r0, 0x20(r1)
/* 802C7638  90 01 00 70 */	stw r0, 0x70(r1)
/* 802C763C  48 00 00 2C */	b lbl_802C7668
/* 802C7640  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009003F@ha */
/* 802C7644  38 03 00 3F */	addi r0, r3, 0x003F /* 0x0009003F@l */
/* 802C7648  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C764C  90 01 00 74 */	stw r0, 0x74(r1)
/* 802C7650  38 03 00 40 */	addi r0, r3, 0x40
/* 802C7654  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C7658  90 01 00 70 */	stw r0, 0x70(r1)
/* 802C765C  48 00 00 0C */	b lbl_802C7668
lbl_802C7660:
/* 802C7660  38 60 00 00 */	li r3, 0
/* 802C7664  48 00 01 68 */	b lbl_802C77CC
lbl_802C7668:
/* 802C7668  7F E3 FB 78 */	mr r3, r31
/* 802C766C  48 00 1D 79 */	bl getFogDensity__10Z2EnvSeMgrFv
/* 802C7670  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C7674  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C7678  EF DE 00 32 */	fmuls f30, f30, f0
/* 802C767C  7F E3 FB 78 */	mr r3, r31
/* 802C7680  48 00 1D 65 */	bl getFogDensity__10Z2EnvSeMgrFv
/* 802C7684  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C7688  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C768C  EF BD 00 32 */	fmuls f29, f29, f0
/* 802C7690  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802C7694  88 03 00 1E */	lbz r0, 0x1e(r3)
/* 802C7698  28 00 00 00 */	cmplwi r0, 0
/* 802C769C  41 82 00 10 */	beq lbl_802C76AC
/* 802C76A0  C0 02 C4 18 */	lfs f0, lit_4269(r2)
/* 802C76A4  EF DE 00 32 */	fmuls f30, f30, f0
/* 802C76A8  EF BD 00 32 */	fmuls f29, f29, f0
lbl_802C76AC:
/* 802C76AC  80 7F 00 04 */	lwz r3, 4(r31)
/* 802C76B0  28 03 00 00 */	cmplwi r3, 0
/* 802C76B4  41 82 00 28 */	beq lbl_802C76DC
/* 802C76B8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802C76BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 802C76C0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802C76C4  7C 04 00 40 */	cmplw r4, r0
/* 802C76C8  41 82 00 14 */	beq lbl_802C76DC
/* 802C76CC  38 80 00 1E */	li r4, 0x1e
/* 802C76D0  4B FD AE 0D */	bl stop__8JAISoundFUl
/* 802C76D4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802C76D8  4B FD AA C9 */	bl releaseHandle__8JAISoundFv
lbl_802C76DC:
/* 802C76DC  3B 9F 00 20 */	addi r28, r31, 0x20
/* 802C76E0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802C76E4  28 03 00 00 */	cmplwi r3, 0
/* 802C76E8  41 82 00 28 */	beq lbl_802C7710
/* 802C76EC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802C76F0  90 81 00 10 */	stw r4, 0x10(r1)
/* 802C76F4  80 01 00 70 */	lwz r0, 0x70(r1)
/* 802C76F8  7C 04 00 40 */	cmplw r4, r0
/* 802C76FC  41 82 00 14 */	beq lbl_802C7710
/* 802C7700  38 80 00 1E */	li r4, 0x1e
/* 802C7704  4B FD AD D9 */	bl stop__8JAISoundFUl
/* 802C7708  80 7C 00 00 */	lwz r3, 0(r28)
/* 802C770C  4B FD AA 95 */	bl releaseHandle__8JAISoundFv
lbl_802C7710:
/* 802C7710  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802C7714  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C7718  7F E3 FB 78 */	mr r3, r31
/* 802C771C  38 81 00 0C */	addi r4, r1, 0xc
/* 802C7720  FC 20 F8 90 */	fmr f1, f31
/* 802C7724  FC 40 F0 90 */	fmr f2, f30
/* 802C7728  FC 60 E0 90 */	fmr f3, f28
/* 802C772C  4B FF E9 B5 */	bl startEnvSeAutoPanLevel__14Z2EnvSeAutoPanF10JAISoundIDfff
/* 802C7730  7C 7D 1B 78 */	mr r29, r3
/* 802C7734  80 01 00 70 */	lwz r0, 0x70(r1)
/* 802C7738  90 01 00 08 */	stw r0, 8(r1)
/* 802C773C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802C7740  38 81 00 08 */	addi r4, r1, 8
/* 802C7744  FC 20 F8 90 */	fmr f1, f31
/* 802C7748  FC 40 E8 90 */	fmr f2, f29
/* 802C774C  FC 60 D8 90 */	fmr f3, f27
/* 802C7750  4B FF E9 91 */	bl startEnvSeAutoPanLevel__14Z2EnvSeAutoPanF10JAISoundIDfff
/* 802C7754  7C 7E 1B 78 */	mr r30, r3
/* 802C7758  88 1F 00 38 */	lbz r0, 0x38(r31)
/* 802C775C  28 00 00 04 */	cmplwi r0, 4
/* 802C7760  40 82 00 54 */	bne lbl_802C77B4
/* 802C7764  38 9F 00 04 */	addi r4, r31, 4
/* 802C7768  80 1F 00 04 */	lwz r0, 4(r31)
/* 802C776C  28 00 00 00 */	cmplwi r0, 0
/* 802C7770  41 82 00 1C */	beq lbl_802C778C
/* 802C7774  80 6D 85 F4 */	lwz r3, data_80450B74(r13)
/* 802C7778  38 A0 00 06 */	li r5, 6
/* 802C777C  88 DF 01 41 */	lbz r6, 0x141(r31)
/* 802C7780  7C C6 07 74 */	extsb r6, r6
/* 802C7784  38 E0 FF FF */	li r7, -1
/* 802C7788  4B FE 37 55 */	bl setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc
lbl_802C778C:
/* 802C778C  80 1C 00 00 */	lwz r0, 0(r28)
/* 802C7790  28 00 00 00 */	cmplwi r0, 0
/* 802C7794  41 82 00 20 */	beq lbl_802C77B4
/* 802C7798  80 6D 85 F4 */	lwz r3, data_80450B74(r13)
/* 802C779C  7F 84 E3 78 */	mr r4, r28
/* 802C77A0  38 A0 00 06 */	li r5, 6
/* 802C77A4  88 DF 01 41 */	lbz r6, 0x141(r31)
/* 802C77A8  7C C6 07 74 */	extsb r6, r6
/* 802C77AC  38 E0 FF FF */	li r7, -1
/* 802C77B0  4B FE 37 2D */	bl setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc
lbl_802C77B4:
/* 802C77B4  38 60 00 00 */	li r3, 0
/* 802C77B8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802C77BC  41 82 00 10 */	beq lbl_802C77CC
/* 802C77C0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802C77C4  41 82 00 08 */	beq lbl_802C77CC
/* 802C77C8  38 60 00 01 */	li r3, 1
lbl_802C77CC:
/* 802C77CC  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 802C77D0  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 802C77D4  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 802C77D8  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 802C77DC  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 802C77E0  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 802C77E4  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 802C77E8  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 802C77EC  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 802C77F0  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 802C77F4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 802C77F8  48 09 AA 2D */	bl _restgpr_28
/* 802C77FC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 802C7800  7C 08 03 A6 */	mtlr r0
/* 802C7804  38 21 01 10 */	addi r1, r1, 0x110
/* 802C7808  4E 80 00 20 */	blr 
