lbl_80029C10:
/* 80029C10  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80029C14  7C 08 02 A6 */	mflr r0
/* 80029C18  90 01 00 54 */	stw r0, 0x54(r1)
/* 80029C1C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80029C20  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80029C24  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80029C28  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80029C2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80029C30  48 33 85 A9 */	bl _savegpr_28
/* 80029C34  7C 7C 1B 78 */	mr r28, r3
/* 80029C38  7C 9D 23 78 */	mr r29, r4
/* 80029C3C  7C BE 2B 78 */	mr r30, r5
/* 80029C40  7C DF 33 78 */	mr r31, r6
/* 80029C44  C3 E2 82 E4 */	lfs f31, lit_4321(r2)
/* 80029C48  FF C0 F8 90 */	fmr f30, f31
/* 80029C4C  4B FF F5 15 */	bl getStayType__15renderingAmap_cCFv
/* 80029C50  2C 03 00 00 */	cmpwi r3, 0
/* 80029C54  40 82 00 E4 */	bne lbl_80029D38
/* 80029C58  C0 02 82 E4 */	lfs f0, lit_4321(r2)
/* 80029C5C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80029C60  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80029C64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80029C68  D0 01 00 08 */	stfs f0, 8(r1)
/* 80029C6C  7F 83 E3 78 */	mr r3, r28
/* 80029C70  7F A4 EB 78 */	mr r4, r29
/* 80029C74  38 A1 00 14 */	addi r5, r1, 0x14
/* 80029C78  38 C1 00 10 */	addi r6, r1, 0x10
/* 80029C7C  38 E1 00 0C */	addi r7, r1, 0xc
/* 80029C80  39 01 00 08 */	addi r8, r1, 8
/* 80029C84  4B FF FE 09 */	bl getMapMinMaxXZ__6dMap_cFiPfPfPfPf
/* 80029C88  C0 A2 82 A0 */	lfs f5, lit_3745(r2)
/* 80029C8C  C0 5C 00 58 */	lfs f2, 0x58(r28)
/* 80029C90  80 7C 00 74 */	lwz r3, 0x74(r28)
/* 80029C94  38 03 00 04 */	addi r0, r3, 4
/* 80029C98  C8 22 82 B8 */	lfd f1, lit_3751(r2)
/* 80029C9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80029CA0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80029CA4  3C 00 43 30 */	lis r0, 0x4330
/* 80029CA8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80029CAC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80029CB0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80029CB4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80029CB8  EC 25 00 32 */	fmuls f1, f5, f0
/* 80029CBC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80029CC0  EC 80 08 28 */	fsubs f4, f0, f1
/* 80029CC4  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80029CC8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80029CCC  EC 60 08 28 */	fsubs f3, f0, f1
/* 80029CD0  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80029CD4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80029CD8  EC 40 08 2A */	fadds f2, f0, f1
/* 80029CDC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80029CE0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80029CE4  EC 20 08 2A */	fadds f1, f0, f1
/* 80029CE8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80029CEC  EC C2 20 28 */	fsubs f6, f2, f4
/* 80029CF0  EC E1 18 28 */	fsubs f7, f1, f3
/* 80029CF4  EC 02 20 2A */	fadds f0, f2, f4
/* 80029CF8  ED 05 00 32 */	fmuls f8, f5, f0
/* 80029CFC  EC 01 18 2A */	fadds f0, f1, f3
/* 80029D00  EC 65 00 32 */	fmuls f3, f5, f0
/* 80029D04  FC 06 38 40 */	fcmpo cr0, f6, f7
/* 80029D08  40 81 00 1C */	ble lbl_80029D24
/* 80029D0C  EC 45 01 B2 */	fmuls f2, f5, f6
/* 80029D10  EC 08 20 28 */	fsubs f0, f8, f4
/* 80029D14  EF E2 00 28 */	fsubs f31, f2, f0
/* 80029D18  EC 01 18 28 */	fsubs f0, f1, f3
/* 80029D1C  EF C2 00 28 */	fsubs f30, f2, f0
/* 80029D20  48 00 00 18 */	b lbl_80029D38
lbl_80029D24:
/* 80029D24  EC 45 01 F2 */	fmuls f2, f5, f7
/* 80029D28  EC 08 20 28 */	fsubs f0, f8, f4
/* 80029D2C  EF E2 00 28 */	fsubs f31, f2, f0
/* 80029D30  EC 01 18 28 */	fsubs f0, f1, f3
/* 80029D34  EF C2 00 28 */	fsubs f30, f2, f0
lbl_80029D38:
/* 80029D38  28 1E 00 00 */	cmplwi r30, 0
/* 80029D3C  41 82 00 08 */	beq lbl_80029D44
/* 80029D40  D3 FE 00 00 */	stfs f31, 0(r30)
lbl_80029D44:
/* 80029D44  28 1F 00 00 */	cmplwi r31, 0
/* 80029D48  41 82 00 08 */	beq lbl_80029D50
/* 80029D4C  D3 DF 00 00 */	stfs f30, 0(r31)
lbl_80029D50:
/* 80029D50  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80029D54  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80029D58  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80029D5C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80029D60  39 61 00 30 */	addi r11, r1, 0x30
/* 80029D64  48 33 84 C1 */	bl _restgpr_28
/* 80029D68  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80029D6C  7C 08 03 A6 */	mtlr r0
/* 80029D70  38 21 00 50 */	addi r1, r1, 0x50
/* 80029D74  4E 80 00 20 */	blr 
