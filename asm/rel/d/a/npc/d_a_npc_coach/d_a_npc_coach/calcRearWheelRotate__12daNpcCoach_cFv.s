lbl_809A0728:
/* 809A0728  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 809A072C  7C 08 02 A6 */	mflr r0
/* 809A0730  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 809A0734  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 809A0738  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 809A073C  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 809A0740  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 809A0744  39 61 00 A0 */	addi r11, r1, 0xa0
/* 809A0748  4B 9C 1A 81 */	bl _savegpr_24
/* 809A074C  7C 7E 1B 78 */	mr r30, r3
/* 809A0750  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha /* 0x809A4ED0@ha */
/* 809A0754  3B E3 4E D0 */	addi r31, r3, M_attr__12daNpcCoach_c@l /* 0x809A4ED0@l */
/* 809A0758  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 809A075C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 809A0760  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809A0764  41 82 06 2C */	beq lbl_809A0D90
/* 809A0768  C0 5E 1B C4 */	lfs f2, 0x1bc4(r30)
/* 809A076C  C0 1E 1B BC */	lfs f0, 0x1bbc(r30)
/* 809A0770  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809A0774  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 809A0778  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 809A077C  C0 5E 1B B8 */	lfs f2, 0x1bb8(r30)
/* 809A0780  C0 1E 1B B0 */	lfs f0, 0x1bb0(r30)
/* 809A0784  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809A0788  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 809A078C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 809A0790  38 61 00 0C */	addi r3, r1, 0xc
/* 809A0794  38 81 00 18 */	addi r4, r1, 0x18
/* 809A0798  4B 9A 6C 05 */	bl PSVECSquareDistance
/* 809A079C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A07A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A07A4  40 81 00 58 */	ble lbl_809A07FC
/* 809A07A8  FC 00 08 34 */	frsqrte f0, f1
/* 809A07AC  C8 9F 01 30 */	lfd f4, 0x130(r31)
/* 809A07B0  FC 44 00 32 */	fmul f2, f4, f0
/* 809A07B4  C8 7F 01 38 */	lfd f3, 0x138(r31)
/* 809A07B8  FC 00 00 32 */	fmul f0, f0, f0
/* 809A07BC  FC 01 00 32 */	fmul f0, f1, f0
/* 809A07C0  FC 03 00 28 */	fsub f0, f3, f0
/* 809A07C4  FC 02 00 32 */	fmul f0, f2, f0
/* 809A07C8  FC 44 00 32 */	fmul f2, f4, f0
/* 809A07CC  FC 00 00 32 */	fmul f0, f0, f0
/* 809A07D0  FC 01 00 32 */	fmul f0, f1, f0
/* 809A07D4  FC 03 00 28 */	fsub f0, f3, f0
/* 809A07D8  FC 02 00 32 */	fmul f0, f2, f0
/* 809A07DC  FC 44 00 32 */	fmul f2, f4, f0
/* 809A07E0  FC 00 00 32 */	fmul f0, f0, f0
/* 809A07E4  FC 01 00 32 */	fmul f0, f1, f0
/* 809A07E8  FC 03 00 28 */	fsub f0, f3, f0
/* 809A07EC  FC 02 00 32 */	fmul f0, f2, f0
/* 809A07F0  FF C1 00 32 */	fmul f30, f1, f0
/* 809A07F4  FF C0 F0 18 */	frsp f30, f30
/* 809A07F8  48 00 00 90 */	b lbl_809A0888
lbl_809A07FC:
/* 809A07FC  C8 1F 01 40 */	lfd f0, 0x140(r31)
/* 809A0800  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A0804  40 80 00 10 */	bge lbl_809A0814
/* 809A0808  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809A080C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809A0810  48 00 00 78 */	b lbl_809A0888
lbl_809A0814:
/* 809A0814  D0 21 00 08 */	stfs f1, 8(r1)
/* 809A0818  80 81 00 08 */	lwz r4, 8(r1)
/* 809A081C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809A0820  3C 00 7F 80 */	lis r0, 0x7f80
/* 809A0824  7C 03 00 00 */	cmpw r3, r0
/* 809A0828  41 82 00 14 */	beq lbl_809A083C
/* 809A082C  40 80 00 40 */	bge lbl_809A086C
/* 809A0830  2C 03 00 00 */	cmpwi r3, 0
/* 809A0834  41 82 00 20 */	beq lbl_809A0854
/* 809A0838  48 00 00 34 */	b lbl_809A086C
lbl_809A083C:
/* 809A083C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A0840  41 82 00 0C */	beq lbl_809A084C
/* 809A0844  38 00 00 01 */	li r0, 1
/* 809A0848  48 00 00 28 */	b lbl_809A0870
lbl_809A084C:
/* 809A084C  38 00 00 02 */	li r0, 2
/* 809A0850  48 00 00 20 */	b lbl_809A0870
lbl_809A0854:
/* 809A0854  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A0858  41 82 00 0C */	beq lbl_809A0864
/* 809A085C  38 00 00 05 */	li r0, 5
/* 809A0860  48 00 00 10 */	b lbl_809A0870
lbl_809A0864:
/* 809A0864  38 00 00 03 */	li r0, 3
/* 809A0868  48 00 00 08 */	b lbl_809A0870
lbl_809A086C:
/* 809A086C  38 00 00 04 */	li r0, 4
lbl_809A0870:
/* 809A0870  2C 00 00 01 */	cmpwi r0, 1
/* 809A0874  40 82 00 10 */	bne lbl_809A0884
/* 809A0878  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809A087C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809A0880  48 00 00 08 */	b lbl_809A0888
lbl_809A0884:
/* 809A0884  FF C0 08 90 */	fmr f30, f1
lbl_809A0888:
/* 809A0888  38 7E 1B BC */	addi r3, r30, 0x1bbc
/* 809A088C  38 9E 1B B0 */	addi r4, r30, 0x1bb0
/* 809A0890  4B 8D 03 75 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809A0894  7C 64 1B 78 */	mr r4, r3
/* 809A0898  A8 7E 1D 6C */	lha r3, 0x1d6c(r30)
/* 809A089C  4B 8D 05 89 */	bl cLib_distanceAngleS__Fss
/* 809A08A0  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 809A08A4  2C 03 40 00 */	cmpwi r3, 0x4000
/* 809A08A8  40 80 00 10 */	bge lbl_809A08B8
/* 809A08AC  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 809A08B0  EC 1E 00 24 */	fdivs f0, f30, f0
/* 809A08B4  48 00 00 10 */	b lbl_809A08C4
lbl_809A08B8:
/* 809A08B8  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 809A08BC  EC 1E 00 24 */	fdivs f0, f30, f0
/* 809A08C0  FC 00 00 50 */	fneg f0, f0
lbl_809A08C4:
/* 809A08C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 809A08C8  FC 00 00 1E */	fctiwz f0, f0
/* 809A08CC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 809A08D0  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 809A08D4  C0 7F 01 C8 */	lfs f3, 0x1c8(r31)
/* 809A08D8  C0 5F 01 D0 */	lfs f2, 0x1d0(r31)
/* 809A08DC  A8 7E 15 7E */	lha r3, 0x157e(r30)
/* 809A08E0  A8 1E 15 84 */	lha r0, 0x1584(r30)
/* 809A08E4  7C 03 00 50 */	subf r0, r3, r0
/* 809A08E8  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 809A08EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A08F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 809A08F4  3C 00 43 30 */	lis r0, 0x4330
/* 809A08F8  90 01 00 30 */	stw r0, 0x30(r1)
/* 809A08FC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 809A0900  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A0904  EC 00 18 24 */	fdivs f0, f0, f3
/* 809A0908  EC 22 00 32 */	fmuls f1, f2, f0
/* 809A090C  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 809A0910  EC 01 00 24 */	fdivs f0, f1, f0
/* 809A0914  EC 03 00 32 */	fmuls f0, f3, f0
/* 809A0918  FC 00 00 1E */	fctiwz f0, f0
/* 809A091C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 809A0920  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 809A0924  7C 04 07 34 */	extsh r4, r0
/* 809A0928  7C A3 07 34 */	extsh r3, r5
/* 809A092C  7C 04 1A 14 */	add r0, r4, r3
/* 809A0930  7C 05 07 34 */	extsh r5, r0
/* 809A0934  7C 03 20 50 */	subf r0, r3, r4
/* 809A0938  7C 03 07 34 */	extsh r3, r0
/* 809A093C  2C 05 11 94 */	cmpwi r5, 0x1194
/* 809A0940  40 81 00 0C */	ble lbl_809A094C
/* 809A0944  38 A0 11 94 */	li r5, 0x1194
/* 809A0948  48 00 00 10 */	b lbl_809A0958
lbl_809A094C:
/* 809A094C  2C 05 EE 6C */	cmpwi r5, -4500
/* 809A0950  40 80 00 08 */	bge lbl_809A0958
/* 809A0954  38 A0 EE 6C */	li r5, -4500
lbl_809A0958:
/* 809A0958  2C 03 11 94 */	cmpwi r3, 0x1194
/* 809A095C  40 81 00 0C */	ble lbl_809A0968
/* 809A0960  38 60 11 94 */	li r3, 0x1194
/* 809A0964  48 00 00 10 */	b lbl_809A0974
lbl_809A0968:
/* 809A0968  2C 03 EE 6C */	cmpwi r3, -4500
/* 809A096C  40 80 00 08 */	bge lbl_809A0974
/* 809A0970  38 60 EE 6C */	li r3, -4500
lbl_809A0974:
/* 809A0974  A8 1E 1D 8C */	lha r0, 0x1d8c(r30)
/* 809A0978  7C 00 2A 14 */	add r0, r0, r5
/* 809A097C  B0 1E 1D 8C */	sth r0, 0x1d8c(r30)
/* 809A0980  A8 1E 1D B0 */	lha r0, 0x1db0(r30)
/* 809A0984  7C 00 1A 14 */	add r0, r0, r3
/* 809A0988  B0 1E 1D B0 */	sth r0, 0x1db0(r30)
/* 809A098C  38 7E 1D 94 */	addi r3, r30, 0x1d94
/* 809A0990  A8 9E 1D 92 */	lha r4, 0x1d92(r30)
/* 809A0994  38 A0 00 10 */	li r5, 0x10
/* 809A0998  4B 8C FD 39 */	bl cLib_chaseS__FPsss
/* 809A099C  2C 03 00 00 */	cmpwi r3, 0
/* 809A09A0  41 82 00 3C */	beq lbl_809A09DC
/* 809A09A4  38 7F 00 00 */	addi r3, r31, 0
/* 809A09A8  A8 03 00 66 */	lha r0, 0x66(r3)
/* 809A09AC  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 809A09B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A09B4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809A09B8  3C 00 43 30 */	lis r0, 0x4330
/* 809A09BC  90 01 00 38 */	stw r0, 0x38(r1)
/* 809A09C0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809A09C4  EC 20 08 28 */	fsubs f1, f0, f1
/* 809A09C8  4B 8C 6F 8D */	bl cM_rndF__Ff
/* 809A09CC  FC 00 08 1E */	fctiwz f0, f1
/* 809A09D0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809A09D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A09D8  B0 1E 1D 92 */	sth r0, 0x1d92(r30)
lbl_809A09DC:
/* 809A09DC  38 7E 1D B8 */	addi r3, r30, 0x1db8
/* 809A09E0  A8 9E 1D B6 */	lha r4, 0x1db6(r30)
/* 809A09E4  38 A0 00 10 */	li r5, 0x10
/* 809A09E8  4B 8C FC E9 */	bl cLib_chaseS__FPsss
/* 809A09EC  2C 03 00 00 */	cmpwi r3, 0
/* 809A09F0  41 82 00 3C */	beq lbl_809A0A2C
/* 809A09F4  38 7F 00 00 */	addi r3, r31, 0
/* 809A09F8  A8 03 00 66 */	lha r0, 0x66(r3)
/* 809A09FC  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 809A0A00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A0A04  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809A0A08  3C 00 43 30 */	lis r0, 0x4330
/* 809A0A0C  90 01 00 38 */	stw r0, 0x38(r1)
/* 809A0A10  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809A0A14  EC 20 08 28 */	fsubs f1, f0, f1
/* 809A0A18  4B 8C 6F 3D */	bl cM_rndF__Ff
/* 809A0A1C  FC 00 08 1E */	fctiwz f0, f1
/* 809A0A20  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809A0A24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A0A28  B0 1E 1D B6 */	sth r0, 0x1db6(r30)
lbl_809A0A2C:
/* 809A0A2C  38 7E 1D 98 */	addi r3, r30, 0x1d98
/* 809A0A30  A8 9E 1D 96 */	lha r4, 0x1d96(r30)
/* 809A0A34  38 A0 00 10 */	li r5, 0x10
/* 809A0A38  4B 8C FC 99 */	bl cLib_chaseS__FPsss
/* 809A0A3C  2C 03 00 00 */	cmpwi r3, 0
/* 809A0A40  41 82 00 3C */	beq lbl_809A0A7C
/* 809A0A44  38 7F 00 00 */	addi r3, r31, 0
/* 809A0A48  A8 03 00 68 */	lha r0, 0x68(r3)
/* 809A0A4C  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 809A0A50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A0A54  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809A0A58  3C 00 43 30 */	lis r0, 0x4330
/* 809A0A5C  90 01 00 38 */	stw r0, 0x38(r1)
/* 809A0A60  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809A0A64  EC 20 08 28 */	fsubs f1, f0, f1
/* 809A0A68  4B 8C 6E ED */	bl cM_rndF__Ff
/* 809A0A6C  FC 00 08 1E */	fctiwz f0, f1
/* 809A0A70  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809A0A74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A0A78  B0 1E 1D 96 */	sth r0, 0x1d96(r30)
lbl_809A0A7C:
/* 809A0A7C  38 7E 1D BC */	addi r3, r30, 0x1dbc
/* 809A0A80  A8 9E 1D BA */	lha r4, 0x1dba(r30)
/* 809A0A84  38 A0 00 10 */	li r5, 0x10
/* 809A0A88  4B 8C FC 49 */	bl cLib_chaseS__FPsss
/* 809A0A8C  2C 03 00 00 */	cmpwi r3, 0
/* 809A0A90  41 82 00 3C */	beq lbl_809A0ACC
/* 809A0A94  38 7F 00 00 */	addi r3, r31, 0
/* 809A0A98  A8 03 00 68 */	lha r0, 0x68(r3)
/* 809A0A9C  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 809A0AA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A0AA4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809A0AA8  3C 00 43 30 */	lis r0, 0x4330
/* 809A0AAC  90 01 00 38 */	stw r0, 0x38(r1)
/* 809A0AB0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809A0AB4  EC 20 08 28 */	fsubs f1, f0, f1
/* 809A0AB8  4B 8C 6E 9D */	bl cM_rndF__Ff
/* 809A0ABC  FC 00 08 1E */	fctiwz f0, f1
/* 809A0AC0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809A0AC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A0AC8  B0 1E 1D BA */	sth r0, 0x1dba(r30)
lbl_809A0ACC:
/* 809A0ACC  A8 1E 1D 8C */	lha r0, 0x1d8c(r30)
/* 809A0AD0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 809A0AD4  7C 00 1E 70 */	srawi r0, r0, 3
/* 809A0AD8  54 00 18 38 */	slwi r0, r0, 3
/* 809A0ADC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809A0AE0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809A0AE4  7C 44 04 2E */	lfsx f2, r4, r0
/* 809A0AE8  A8 1E 1D 94 */	lha r0, 0x1d94(r30)
/* 809A0AEC  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 809A0AF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A0AF4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809A0AF8  3C 60 43 30 */	lis r3, 0x4330
/* 809A0AFC  90 61 00 38 */	stw r3, 0x38(r1)
/* 809A0B00  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809A0B04  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A0B08  EC 00 00 B2 */	fmuls f0, f0, f2
/* 809A0B0C  FC 00 00 1E */	fctiwz f0, f0
/* 809A0B10  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809A0B14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A0B18  B0 1E 1D 8E */	sth r0, 0x1d8e(r30)
/* 809A0B1C  A8 1E 1D B0 */	lha r0, 0x1db0(r30)
/* 809A0B20  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809A0B24  7C 44 04 2E */	lfsx f2, r4, r0
/* 809A0B28  A8 1E 1D B8 */	lha r0, 0x1db8(r30)
/* 809A0B2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A0B30  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809A0B34  90 61 00 28 */	stw r3, 0x28(r1)
/* 809A0B38  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 809A0B3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A0B40  EC 00 00 B2 */	fmuls f0, f0, f2
/* 809A0B44  FC 00 00 1E */	fctiwz f0, f0
/* 809A0B48  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 809A0B4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809A0B50  B0 1E 1D B2 */	sth r0, 0x1db2(r30)
/* 809A0B54  A8 1E 1D 8C */	lha r0, 0x1d8c(r30)
/* 809A0B58  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809A0B5C  7C 44 04 2E */	lfsx f2, r4, r0
/* 809A0B60  A8 1E 1D 98 */	lha r0, 0x1d98(r30)
/* 809A0B64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A0B68  90 01 00 4C */	stw r0, 0x4c(r1)
/* 809A0B6C  90 61 00 48 */	stw r3, 0x48(r1)
/* 809A0B70  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 809A0B74  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A0B78  EC 00 00 B2 */	fmuls f0, f0, f2
/* 809A0B7C  FC 00 00 1E */	fctiwz f0, f0
/* 809A0B80  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 809A0B84  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809A0B88  B0 1E 1D 90 */	sth r0, 0x1d90(r30)
/* 809A0B8C  A8 1E 1D B0 */	lha r0, 0x1db0(r30)
/* 809A0B90  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809A0B94  7C 44 04 2E */	lfsx f2, r4, r0
/* 809A0B98  A8 1E 1D BC */	lha r0, 0x1dbc(r30)
/* 809A0B9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A0BA0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 809A0BA4  90 61 00 58 */	stw r3, 0x58(r1)
/* 809A0BA8  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 809A0BAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A0BB0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 809A0BB4  FC 00 00 1E */	fctiwz f0, f0
/* 809A0BB8  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 809A0BBC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809A0BC0  B0 1E 1D B4 */	sth r0, 0x1db4(r30)
/* 809A0BC4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 809A0BC8  3B 1F 00 00 */	addi r24, r31, 0
/* 809A0BCC  C0 18 00 1C */	lfs f0, 0x1c(r24)
/* 809A0BD0  EF C1 00 24 */	fdivs f30, f1, f0
/* 809A0BD4  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 809A0BD8  EF E0 07 B2 */	fmuls f31, f0, f30
/* 809A0BDC  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 809A0BE0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 809A0BE4  FC 00 00 1E */	fctiwz f0, f0
/* 809A0BE8  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 809A0BEC  83 21 00 6C */	lwz r25, 0x6c(r1)
/* 809A0BF0  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 809A0BF4  EC 00 07 B2 */	fmuls f0, f0, f30
/* 809A0BF8  FC 00 00 1E */	fctiwz f0, f0
/* 809A0BFC  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 809A0C00  83 41 00 74 */	lwz r26, 0x74(r1)
/* 809A0C04  7F 20 07 35 */	extsh. r0, r25
/* 809A0C08  41 82 00 A4 */	beq lbl_809A0CAC
/* 809A0C0C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 809A0C10  41 82 00 9C */	beq lbl_809A0CAC
/* 809A0C14  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A0C18  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 809A0C1C  41 82 00 90 */	beq lbl_809A0CAC
/* 809A0C20  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 809A0C24  41 82 00 88 */	beq lbl_809A0CAC
/* 809A0C28  80 1E 19 88 */	lwz r0, 0x1988(r30)
/* 809A0C2C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 809A0C30  41 82 00 7C */	beq lbl_809A0CAC
/* 809A0C34  38 7E 1D 84 */	addi r3, r30, 0x1d84
/* 809A0C38  38 9E 1D 88 */	addi r4, r30, 0x1d88
/* 809A0C3C  38 BE 1D 78 */	addi r5, r30, 0x1d78
/* 809A0C40  38 DE 1D 6A */	addi r6, r30, 0x1d6a
/* 809A0C44  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 809A0C48  38 FE 15 D4 */	addi r7, r30, 0x15d4
/* 809A0C4C  39 00 00 00 */	li r8, 0
/* 809A0C50  4B 67 C3 D1 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 809A0C54  3B 60 00 00 */	li r27, 0
/* 809A0C58  7F 7D DB 78 */	mr r29, r27
/* 809A0C5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A0C60  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A0C64  7F 39 07 34 */	extsh r25, r25
/* 809A0C68  57 5A 06 3E */	clrlwi r26, r26, 0x18
lbl_809A0C6C:
/* 809A0C6C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 809A0C70  38 63 02 10 */	addi r3, r3, 0x210
/* 809A0C74  38 1D 1D 84 */	addi r0, r29, 0x1d84
/* 809A0C78  7C 9E 00 2E */	lwzx r4, r30, r0
/* 809A0C7C  4B 6A AC 9D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 809A0C80  28 03 00 00 */	cmplwi r3, 0
/* 809A0C84  41 82 00 18 */	beq lbl_809A0C9C
/* 809A0C88  D3 C3 00 28 */	stfs f30, 0x28(r3)
/* 809A0C8C  B3 23 00 52 */	sth r25, 0x52(r3)
/* 809A0C90  9B 43 00 BB */	stb r26, 0xbb(r3)
/* 809A0C94  D3 E3 00 B0 */	stfs f31, 0xb0(r3)
/* 809A0C98  D3 E3 00 B4 */	stfs f31, 0xb4(r3)
lbl_809A0C9C:
/* 809A0C9C  3B 7B 00 01 */	addi r27, r27, 1
/* 809A0CA0  2C 1B 00 02 */	cmpwi r27, 2
/* 809A0CA4  3B BD 00 04 */	addi r29, r29, 4
/* 809A0CA8  41 80 FF C4 */	blt lbl_809A0C6C
lbl_809A0CAC:
/* 809A0CAC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 809A0CB0  C0 18 00 1C */	lfs f0, 0x1c(r24)
/* 809A0CB4  EF E1 00 24 */	fdivs f31, f1, f0
/* 809A0CB8  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 809A0CBC  EF C0 07 F2 */	fmuls f30, f0, f31
/* 809A0CC0  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 809A0CC4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 809A0CC8  FC 00 00 1E */	fctiwz f0, f0
/* 809A0CCC  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 809A0CD0  83 61 00 74 */	lwz r27, 0x74(r1)
/* 809A0CD4  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 809A0CD8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 809A0CDC  FC 00 00 1E */	fctiwz f0, f0
/* 809A0CE0  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 809A0CE4  83 41 00 6C */	lwz r26, 0x6c(r1)
/* 809A0CE8  7F 60 07 35 */	extsh. r0, r27
/* 809A0CEC  41 82 00 A4 */	beq lbl_809A0D90
/* 809A0CF0  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 809A0CF4  41 82 00 9C */	beq lbl_809A0D90
/* 809A0CF8  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A0CFC  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 809A0D00  41 82 00 90 */	beq lbl_809A0D90
/* 809A0D04  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 809A0D08  41 82 00 88 */	beq lbl_809A0D90
/* 809A0D0C  80 1E 19 88 */	lwz r0, 0x1988(r30)
/* 809A0D10  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 809A0D14  41 82 00 7C */	beq lbl_809A0D90
/* 809A0D18  38 7E 1D A8 */	addi r3, r30, 0x1da8
/* 809A0D1C  38 9E 1D AC */	addi r4, r30, 0x1dac
/* 809A0D20  38 BE 1D 9C */	addi r5, r30, 0x1d9c
/* 809A0D24  38 DE 1D 6A */	addi r6, r30, 0x1d6a
/* 809A0D28  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 809A0D2C  38 FE 15 D4 */	addi r7, r30, 0x15d4
/* 809A0D30  39 00 00 00 */	li r8, 0
/* 809A0D34  4B 67 C2 ED */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 809A0D38  3B 20 00 00 */	li r25, 0
/* 809A0D3C  3B E0 00 00 */	li r31, 0
/* 809A0D40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A0D44  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A0D48  7F 7B 07 34 */	extsh r27, r27
/* 809A0D4C  57 5A 06 3E */	clrlwi r26, r26, 0x18
lbl_809A0D50:
/* 809A0D50  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 809A0D54  38 63 02 10 */	addi r3, r3, 0x210
/* 809A0D58  38 1F 1D A8 */	addi r0, r31, 0x1da8
/* 809A0D5C  7C 9E 00 2E */	lwzx r4, r30, r0
/* 809A0D60  4B 6A AB B9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 809A0D64  28 03 00 00 */	cmplwi r3, 0
/* 809A0D68  41 82 00 18 */	beq lbl_809A0D80
/* 809A0D6C  D3 E3 00 28 */	stfs f31, 0x28(r3)
/* 809A0D70  B3 63 00 52 */	sth r27, 0x52(r3)
/* 809A0D74  9B 43 00 BB */	stb r26, 0xbb(r3)
/* 809A0D78  D3 C3 00 B0 */	stfs f30, 0xb0(r3)
/* 809A0D7C  D3 C3 00 B4 */	stfs f30, 0xb4(r3)
lbl_809A0D80:
/* 809A0D80  3B 39 00 01 */	addi r25, r25, 1
/* 809A0D84  2C 19 00 02 */	cmpwi r25, 2
/* 809A0D88  3B FF 00 04 */	addi r31, r31, 4
/* 809A0D8C  41 80 FF C4 */	blt lbl_809A0D50
lbl_809A0D90:
/* 809A0D90  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 809A0D94  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 809A0D98  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 809A0D9C  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 809A0DA0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 809A0DA4  4B 9C 14 71 */	bl _restgpr_24
/* 809A0DA8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 809A0DAC  7C 08 03 A6 */	mtlr r0
/* 809A0DB0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 809A0DB4  4E 80 00 20 */	blr 
