lbl_80576C50:
/* 80576C50  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80576C54  7C 08 02 A6 */	mflr r0
/* 80576C58  90 01 01 24 */	stw r0, 0x124(r1)
/* 80576C5C  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 80576C60  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 80576C64  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 80576C68  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 80576C6C  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 80576C70  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, 0 /* qr0 */
/* 80576C74  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 80576C78  F3 81 00 E8 */	psq_st f28, 232(r1), 0, 0 /* qr0 */
/* 80576C7C  DB 61 00 D0 */	stfd f27, 0xd0(r1)
/* 80576C80  F3 61 00 D8 */	psq_st f27, 216(r1), 0, 0 /* qr0 */
/* 80576C84  DB 41 00 C0 */	stfd f26, 0xc0(r1)
/* 80576C88  F3 41 00 C8 */	psq_st f26, 200(r1), 0, 0 /* qr0 */
/* 80576C8C  DB 21 00 B0 */	stfd f25, 0xb0(r1)
/* 80576C90  F3 21 00 B8 */	psq_st f25, 184(r1), 0, 0 /* qr0 */
/* 80576C94  DB 01 00 A0 */	stfd f24, 0xa0(r1)
/* 80576C98  F3 01 00 A8 */	psq_st f24, 168(r1), 0, 0 /* qr0 */
/* 80576C9C  DA E1 00 90 */	stfd f23, 0x90(r1)
/* 80576CA0  F2 E1 00 98 */	psq_st f23, 152(r1), 0, 0 /* qr0 */
/* 80576CA4  DA C1 00 80 */	stfd f22, 0x80(r1)
/* 80576CA8  F2 C1 00 88 */	psq_st f22, 136(r1), 0, 0 /* qr0 */
/* 80576CAC  DA A1 00 70 */	stfd f21, 0x70(r1)
/* 80576CB0  F2 A1 00 78 */	psq_st f21, 120(r1), 0, 0 /* qr0 */
/* 80576CB4  39 61 00 70 */	addi r11, r1, 0x70
/* 80576CB8  4B DE B5 0D */	bl _savegpr_23
/* 80576CBC  7C 79 1B 78 */	mr r25, r3
/* 80576CC0  FF 20 10 90 */	fmr f25, f2
/* 80576CC4  3C 60 80 58 */	lis r3, ccCylSrc@ha /* 0x80578A88@ha */
/* 80576CC8  3B C3 8A 88 */	addi r30, r3, ccCylSrc@l /* 0x80578A88@l */
/* 80576CCC  7C 9B 07 34 */	extsh r27, r4
/* 80576CD0  7C BC 07 34 */	extsh r28, r5
/* 80576CD4  3B BC FF D8 */	addi r29, r28, -40
/* 80576CD8  C3 5E 00 54 */	lfs f26, 0x54(r30)
/* 80576CDC  C3 7E 00 48 */	lfs f27, 0x48(r30)
/* 80576CE0  C3 9E 00 58 */	lfs f28, 0x58(r30)
/* 80576CE4  C3 BE 00 60 */	lfs f29, 0x60(r30)
/* 80576CE8  C3 FE 00 68 */	lfs f31, 0x68(r30)
/* 80576CEC  C3 DE 00 6C */	lfs f30, 0x6c(r30)
/* 80576CF0  CA FE 00 98 */	lfd f23, 0x98(r30)
/* 80576CF4  3F 40 43 30 */	lis r26, 0x4330
/* 80576CF8  C3 1E 00 74 */	lfs f24, 0x74(r30)
/* 80576CFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80576D00  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80576D04  1F 1B 00 34 */	mulli r24, r27, 0x34
/* 80576D08  48 00 01 60 */	b lbl_80576E68
lbl_80576D0C:
/* 80576D0C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80576D10  4B CF 0C 7D */	bl cM_rndFX__Ff
/* 80576D14  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 80576D18  EE A0 08 2A */	fadds f21, f0, f1
/* 80576D1C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80576D20  4B CF 0C 6D */	bl cM_rndFX__Ff
/* 80576D24  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 80576D28  EC 00 D8 28 */	fsubs f0, f0, f27
/* 80576D2C  EC 1A 00 2A */	fadds f0, f26, f0
/* 80576D30  EE C0 08 2A */	fadds f22, f0, f1
/* 80576D34  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80576D38  4B CF 0C 55 */	bl cM_rndFX__Ff
/* 80576D3C  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 80576D40  EC 00 08 2A */	fadds f0, f0, f1
/* 80576D44  7F F9 C2 14 */	add r31, r25, r24
/* 80576D48  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 80576D4C  D2 DF 05 B0 */	stfs f22, 0x5b0(r31)
/* 80576D50  D2 BF 05 B4 */	stfs f21, 0x5b4(r31)
/* 80576D54  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80576D58  4B CF 0B FD */	bl cM_rndF__Ff
/* 80576D5C  EE DC 08 2A */	fadds f22, f28, f1
/* 80576D60  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80576D64  4B CF 0B F1 */	bl cM_rndF__Ff
/* 80576D68  EE BD 08 2A */	fadds f21, f29, f1
/* 80576D6C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80576D70  4B CF 0B E5 */	bl cM_rndF__Ff
/* 80576D74  EC 1F 08 2A */	fadds f0, f31, f1
/* 80576D78  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 80576D7C  D2 BF 05 C8 */	stfs f21, 0x5c8(r31)
/* 80576D80  D2 DF 05 CC */	stfs f22, 0x5cc(r31)
/* 80576D84  FC 20 C8 90 */	fmr f1, f25
/* 80576D88  4B CF 0C 05 */	bl cM_rndFX__Ff
/* 80576D8C  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80576D90  4B CF 0B FD */	bl cM_rndFX__Ff
/* 80576D94  EE BE 08 2A */	fadds f21, f30, f1
/* 80576D98  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80576D9C  4B CF 0B F1 */	bl cM_rndFX__Ff
/* 80576DA0  FC 00 08 1E */	fctiwz f0, f1
/* 80576DA4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80576DA8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80576DAC  7C 00 07 34 */	extsh r0, r0
/* 80576DB0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80576DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576DB8  93 41 00 10 */	stw r26, 0x10(r1)
/* 80576DBC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80576DC0  EC 20 B8 28 */	fsubs f1, f0, f23
/* 80576DC4  C0 19 11 DC */	lfs f0, 0x11dc(r25)
/* 80576DC8  EC 00 08 2A */	fadds f0, f0, f1
/* 80576DCC  FC 00 00 1E */	fctiwz f0, f0
/* 80576DD0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80576DD4  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80576DD8  D3 1F 05 B8 */	stfs f24, 0x5b8(r31)
/* 80576DDC  D3 1F 05 BC */	stfs f24, 0x5bc(r31)
/* 80576DE0  D2 BF 05 C0 */	stfs f21, 0x5c0(r31)
/* 80576DE4  7E E3 BB 78 */	mr r3, r23
/* 80576DE8  4B A9 55 F5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80576DEC  38 9F 05 B8 */	addi r4, r31, 0x5b8
/* 80576DF0  7E E3 BB 78 */	mr r3, r23
/* 80576DF4  7C 85 23 78 */	mr r5, r4
/* 80576DF8  4B DC FF 75 */	bl PSMTXMultVec
/* 80576DFC  D2 BF 05 BC */	stfs f21, 0x5bc(r31)
/* 80576E00  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80576E04  4B CF 0B 89 */	bl cM_rndFX__Ff
/* 80576E08  FC 00 08 1E */	fctiwz f0, f1
/* 80576E0C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80576E10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80576E14  B0 1F 05 D6 */	sth r0, 0x5d6(r31)
/* 80576E18  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80576E1C  4B CF 0B 71 */	bl cM_rndFX__Ff
/* 80576E20  FC 00 08 1E */	fctiwz f0, f1
/* 80576E24  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80576E28  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80576E2C  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 80576E30  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80576E34  4B CF 0B 59 */	bl cM_rndFX__Ff
/* 80576E38  FC 00 08 1E */	fctiwz f0, f1
/* 80576E3C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80576E40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80576E44  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 80576E48  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80576E4C  4B CF 0B 41 */	bl cM_rndFX__Ff
/* 80576E50  FC 00 08 1E */	fctiwz f0, f1
/* 80576E54  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80576E58  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80576E5C  B0 1F 05 D2 */	sth r0, 0x5d2(r31)
/* 80576E60  3B 7B 00 01 */	addi r27, r27, 1
/* 80576E64  3B 18 00 34 */	addi r24, r24, 0x34
lbl_80576E68:
/* 80576E68  7C 1B E8 00 */	cmpw r27, r29
/* 80576E6C  41 80 FE A0 */	blt lbl_80576D0C
/* 80576E70  7F BA EB 78 */	mr r26, r29
/* 80576E74  3B 7C FF EC */	addi r27, r28, -20
/* 80576E78  C3 FE 00 80 */	lfs f31, 0x80(r30)
/* 80576E7C  C3 DE 00 48 */	lfs f30, 0x48(r30)
/* 80576E80  C3 1E 00 58 */	lfs f24, 0x58(r30)
/* 80576E84  C3 BE 00 60 */	lfs f29, 0x60(r30)
/* 80576E88  C3 9E 00 68 */	lfs f28, 0x68(r30)
/* 80576E8C  C3 7E 00 88 */	lfs f27, 0x88(r30)
/* 80576E90  CB 5E 00 98 */	lfd f26, 0x98(r30)
/* 80576E94  3F E0 43 30 */	lis r31, 0x4330
/* 80576E98  C3 3E 00 74 */	lfs f25, 0x74(r30)
/* 80576E9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80576EA0  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80576EA4  1F 1D 00 34 */	mulli r24, r29, 0x34
/* 80576EA8  48 00 01 60 */	b lbl_80577008
lbl_80576EAC:
/* 80576EAC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80576EB0  4B CF 0A DD */	bl cM_rndFX__Ff
/* 80576EB4  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 80576EB8  EE C0 08 2A */	fadds f22, f0, f1
/* 80576EBC  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80576EC0  4B CF 0A CD */	bl cM_rndFX__Ff
/* 80576EC4  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 80576EC8  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80576ECC  EC 1F 00 2A */	fadds f0, f31, f0
/* 80576ED0  EE A0 08 2A */	fadds f21, f0, f1
/* 80576ED4  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80576ED8  4B CF 0A B5 */	bl cM_rndFX__Ff
/* 80576EDC  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 80576EE0  EC 00 08 2A */	fadds f0, f0, f1
/* 80576EE4  7F B9 C2 14 */	add r29, r25, r24
/* 80576EE8  D0 1D 05 AC */	stfs f0, 0x5ac(r29)
/* 80576EEC  D2 BD 05 B0 */	stfs f21, 0x5b0(r29)
/* 80576EF0  D2 DD 05 B4 */	stfs f22, 0x5b4(r29)
/* 80576EF4  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80576EF8  4B CF 0A 5D */	bl cM_rndF__Ff
/* 80576EFC  EE D8 08 2A */	fadds f22, f24, f1
/* 80576F00  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80576F04  4B CF 0A 51 */	bl cM_rndF__Ff
/* 80576F08  EE BD 08 2A */	fadds f21, f29, f1
/* 80576F0C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80576F10  4B CF 0A 45 */	bl cM_rndF__Ff
/* 80576F14  EC 1C 08 2A */	fadds f0, f28, f1
/* 80576F18  D0 1D 05 C4 */	stfs f0, 0x5c4(r29)
/* 80576F1C  D2 BD 05 C8 */	stfs f21, 0x5c8(r29)
/* 80576F20  D2 DD 05 CC */	stfs f22, 0x5cc(r29)
/* 80576F24  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80576F28  4B CF 0A 65 */	bl cM_rndFX__Ff
/* 80576F2C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80576F30  4B CF 0A 5D */	bl cM_rndFX__Ff
/* 80576F34  EE BB 08 2A */	fadds f21, f27, f1
/* 80576F38  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80576F3C  4B CF 0A 51 */	bl cM_rndFX__Ff
/* 80576F40  FC 00 08 1E */	fctiwz f0, f1
/* 80576F44  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80576F48  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80576F4C  7C 00 07 34 */	extsh r0, r0
/* 80576F50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80576F54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80576F58  93 E1 00 30 */	stw r31, 0x30(r1)
/* 80576F5C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80576F60  EC 20 D0 28 */	fsubs f1, f0, f26
/* 80576F64  C0 19 11 DC */	lfs f0, 0x11dc(r25)
/* 80576F68  EC 00 08 2A */	fadds f0, f0, f1
/* 80576F6C  FC 00 00 1E */	fctiwz f0, f0
/* 80576F70  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80576F74  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80576F78  D3 3D 05 B8 */	stfs f25, 0x5b8(r29)
/* 80576F7C  D3 3D 05 BC */	stfs f25, 0x5bc(r29)
/* 80576F80  D2 BD 05 C0 */	stfs f21, 0x5c0(r29)
/* 80576F84  7E E3 BB 78 */	mr r3, r23
/* 80576F88  4B A9 54 55 */	bl mDoMtx_YrotS__FPA4_fs
/* 80576F8C  38 9D 05 B8 */	addi r4, r29, 0x5b8
/* 80576F90  7E E3 BB 78 */	mr r3, r23
/* 80576F94  7C 85 23 78 */	mr r5, r4
/* 80576F98  4B DC FD D5 */	bl PSMTXMultVec
/* 80576F9C  D2 BD 05 BC */	stfs f21, 0x5bc(r29)
/* 80576FA0  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80576FA4  4B CF 09 E9 */	bl cM_rndFX__Ff
/* 80576FA8  FC 00 08 1E */	fctiwz f0, f1
/* 80576FAC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80576FB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80576FB4  B0 1D 05 D6 */	sth r0, 0x5d6(r29)
/* 80576FB8  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80576FBC  4B CF 09 D1 */	bl cM_rndFX__Ff
/* 80576FC0  FC 00 08 1E */	fctiwz f0, f1
/* 80576FC4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80576FC8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80576FCC  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 80576FD0  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80576FD4  4B CF 09 B9 */	bl cM_rndFX__Ff
/* 80576FD8  FC 00 08 1E */	fctiwz f0, f1
/* 80576FDC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80576FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576FE4  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 80576FE8  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80576FEC  4B CF 09 A1 */	bl cM_rndFX__Ff
/* 80576FF0  FC 00 08 1E */	fctiwz f0, f1
/* 80576FF4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80576FF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80576FFC  B0 1D 05 D2 */	sth r0, 0x5d2(r29)
/* 80577000  3B 5A 00 01 */	addi r26, r26, 1
/* 80577004  3B 18 00 34 */	addi r24, r24, 0x34
lbl_80577008:
/* 80577008  7C 1A D8 00 */	cmpw r26, r27
/* 8057700C  41 80 FE A0 */	blt lbl_80576EAC
/* 80577010  C3 DE 00 90 */	lfs f30, 0x90(r30)
/* 80577014  C3 FE 00 48 */	lfs f31, 0x48(r30)
/* 80577018  C3 BE 00 58 */	lfs f29, 0x58(r30)
/* 8057701C  C3 9E 00 60 */	lfs f28, 0x60(r30)
/* 80577020  C3 7E 00 68 */	lfs f27, 0x68(r30)
/* 80577024  C3 5E 00 8C */	lfs f26, 0x8c(r30)
/* 80577028  C3 3E 00 88 */	lfs f25, 0x88(r30)
/* 8057702C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80577030  3B 03 9A 20 */	addi r24, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80577034  1F 5B 00 34 */	mulli r26, r27, 0x34
/* 80577038  48 00 01 3C */	b lbl_80577174
lbl_8057703C:
/* 8057703C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80577040  4B CF 09 4D */	bl cM_rndFX__Ff
/* 80577044  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 80577048  EE C0 08 2A */	fadds f22, f0, f1
/* 8057704C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80577050  4B CF 09 3D */	bl cM_rndFX__Ff
/* 80577054  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 80577058  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8057705C  EC 1E 00 2A */	fadds f0, f30, f0
/* 80577060  EE A0 08 2A */	fadds f21, f0, f1
/* 80577064  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80577068  4B CF 09 25 */	bl cM_rndFX__Ff
/* 8057706C  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 80577070  EC 00 08 2A */	fadds f0, f0, f1
/* 80577074  7E F9 D2 14 */	add r23, r25, r26
/* 80577078  D0 17 05 AC */	stfs f0, 0x5ac(r23)
/* 8057707C  D2 B7 05 B0 */	stfs f21, 0x5b0(r23)
/* 80577080  D2 D7 05 B4 */	stfs f22, 0x5b4(r23)
/* 80577084  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80577088  4B CF 08 CD */	bl cM_rndF__Ff
/* 8057708C  EE DD 08 2A */	fadds f22, f29, f1
/* 80577090  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80577094  4B CF 08 C1 */	bl cM_rndF__Ff
/* 80577098  EE BC 08 2A */	fadds f21, f28, f1
/* 8057709C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 805770A0  4B CF 08 B5 */	bl cM_rndF__Ff
/* 805770A4  EC 1B 08 2A */	fadds f0, f27, f1
/* 805770A8  D0 17 05 C4 */	stfs f0, 0x5c4(r23)
/* 805770AC  D2 B7 05 C8 */	stfs f21, 0x5c8(r23)
/* 805770B0  D2 D7 05 CC */	stfs f22, 0x5cc(r23)
/* 805770B4  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805770B8  4B CF 08 D5 */	bl cM_rndFX__Ff
/* 805770BC  EE DA 08 2A */	fadds f22, f26, f1
/* 805770C0  FC 20 D0 90 */	fmr f1, f26
/* 805770C4  4B CF 08 C9 */	bl cM_rndFX__Ff
/* 805770C8  EE B9 08 2A */	fadds f21, f25, f1
/* 805770CC  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 805770D0  4B CF 08 BD */	bl cM_rndFX__Ff
/* 805770D4  FC 00 08 1E */	fctiwz f0, f1
/* 805770D8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805770DC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 805770E0  C0 19 05 30 */	lfs f0, 0x530(r25)
/* 805770E4  EC 35 00 2A */	fadds f1, f21, f0
/* 805770E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805770EC  7C 78 02 14 */	add r3, r24, r0
/* 805770F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 805770F4  EC 56 00 32 */	fmuls f2, f22, f0
/* 805770F8  C0 03 00 00 */	lfs f0, 0(r3)
/* 805770FC  EC 16 00 32 */	fmuls f0, f22, f0
/* 80577100  D0 17 05 B8 */	stfs f0, 0x5b8(r23)
/* 80577104  D0 37 05 BC */	stfs f1, 0x5bc(r23)
/* 80577108  D0 57 05 C0 */	stfs f2, 0x5c0(r23)
/* 8057710C  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80577110  4B CF 08 7D */	bl cM_rndFX__Ff
/* 80577114  FC 00 08 1E */	fctiwz f0, f1
/* 80577118  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8057711C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80577120  B0 17 05 D6 */	sth r0, 0x5d6(r23)
/* 80577124  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80577128  4B CF 08 65 */	bl cM_rndFX__Ff
/* 8057712C  FC 00 08 1E */	fctiwz f0, f1
/* 80577130  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80577134  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80577138  B0 17 05 D8 */	sth r0, 0x5d8(r23)
/* 8057713C  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80577140  4B CF 08 4D */	bl cM_rndFX__Ff
/* 80577144  FC 00 08 1E */	fctiwz f0, f1
/* 80577148  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8057714C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80577150  B0 17 05 D0 */	sth r0, 0x5d0(r23)
/* 80577154  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80577158  4B CF 08 35 */	bl cM_rndFX__Ff
/* 8057715C  FC 00 08 1E */	fctiwz f0, f1
/* 80577160  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80577164  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80577168  B0 17 05 D2 */	sth r0, 0x5d2(r23)
/* 8057716C  3B 7B 00 01 */	addi r27, r27, 1
/* 80577170  3B 5A 00 34 */	addi r26, r26, 0x34
lbl_80577174:
/* 80577174  7C 1B E0 00 */	cmpw r27, r28
/* 80577178  41 80 FE C4 */	blt lbl_8057703C
/* 8057717C  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 80577180  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80577184  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 80577188  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 8057718C  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, 0 /* qr0 */
/* 80577190  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 80577194  E3 81 00 E8 */	psq_l f28, 232(r1), 0, 0 /* qr0 */
/* 80577198  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 8057719C  E3 61 00 D8 */	psq_l f27, 216(r1), 0, 0 /* qr0 */
/* 805771A0  CB 61 00 D0 */	lfd f27, 0xd0(r1)
/* 805771A4  E3 41 00 C8 */	psq_l f26, 200(r1), 0, 0 /* qr0 */
/* 805771A8  CB 41 00 C0 */	lfd f26, 0xc0(r1)
/* 805771AC  E3 21 00 B8 */	psq_l f25, 184(r1), 0, 0 /* qr0 */
/* 805771B0  CB 21 00 B0 */	lfd f25, 0xb0(r1)
/* 805771B4  E3 01 00 A8 */	psq_l f24, 168(r1), 0, 0 /* qr0 */
/* 805771B8  CB 01 00 A0 */	lfd f24, 0xa0(r1)
/* 805771BC  E2 E1 00 98 */	psq_l f23, 152(r1), 0, 0 /* qr0 */
/* 805771C0  CA E1 00 90 */	lfd f23, 0x90(r1)
/* 805771C4  E2 C1 00 88 */	psq_l f22, 136(r1), 0, 0 /* qr0 */
/* 805771C8  CA C1 00 80 */	lfd f22, 0x80(r1)
/* 805771CC  E2 A1 00 78 */	psq_l f21, 120(r1), 0, 0 /* qr0 */
/* 805771D0  CA A1 00 70 */	lfd f21, 0x70(r1)
/* 805771D4  39 61 00 70 */	addi r11, r1, 0x70
/* 805771D8  4B DE B0 39 */	bl _restgpr_23
/* 805771DC  80 01 01 24 */	lwz r0, 0x124(r1)
/* 805771E0  7C 08 03 A6 */	mtlr r0
/* 805771E4  38 21 01 20 */	addi r1, r1, 0x120
/* 805771E8  4E 80 00 20 */	blr 
