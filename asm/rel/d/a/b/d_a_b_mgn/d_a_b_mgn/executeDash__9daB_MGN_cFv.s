lbl_80608EF8:
/* 80608EF8  94 21 FE 40 */	stwu r1, -0x1c0(r1)
/* 80608EFC  7C 08 02 A6 */	mflr r0
/* 80608F00  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 80608F04  39 61 01 C0 */	addi r11, r1, 0x1c0
/* 80608F08  4B D5 92 CD */	bl _savegpr_27
/* 80608F0C  7C 7C 1B 78 */	mr r28, r3
/* 80608F10  3C 80 80 61 */	lis r4, lit_3928@ha /* 0x8060FDE0@ha */
/* 80608F14  3B C4 FD E0 */	addi r30, r4, lit_3928@l /* 0x8060FDE0@l */
/* 80608F18  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80608F1C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80608F20  80 BF 5D AC */	lwz r5, 0x5dac(r31)
/* 80608F24  88 03 0A FA */	lbz r0, 0xafa(r3)
/* 80608F28  28 00 00 14 */	cmplwi r0, 0x14
/* 80608F2C  41 81 0E 2C */	bgt lbl_80609D58
/* 80608F30  3C 80 80 61 */	lis r4, lit_6083@ha /* 0x80610220@ha */
/* 80608F34  38 84 02 20 */	addi r4, r4, lit_6083@l /* 0x80610220@l */
/* 80608F38  54 00 10 3A */	slwi r0, r0, 2
/* 80608F3C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80608F40  7C 09 03 A6 */	mtctr r0
/* 80608F44  4E 80 04 20 */	bctr 
lbl_80608F48:
/* 80608F48  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80608F4C  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80608F50  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80608F54  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80608F58  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80608F5C  C0 05 04 D0 */	lfs f0, 0x4d0(r5)
/* 80608F60  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80608F64  C0 05 04 D4 */	lfs f0, 0x4d4(r5)
/* 80608F68  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80608F6C  C0 05 04 D8 */	lfs f0, 0x4d8(r5)
/* 80608F70  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80608F74  38 61 00 8C */	addi r3, r1, 0x8c
/* 80608F78  38 81 00 98 */	addi r4, r1, 0x98
/* 80608F7C  4B C6 7C 89 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80608F80  7C 7D 1B 78 */	mr r29, r3
/* 80608F84  88 1C 0A FF */	lbz r0, 0xaff(r28)
/* 80608F88  28 00 00 05 */	cmplwi r0, 5
/* 80608F8C  41 80 00 48 */	blt lbl_80608FD4
/* 80608F90  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 80608F94  4B C5 E9 F9 */	bl cM_rndFX__Ff
/* 80608F98  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80608F9C  EC 40 00 72 */	fmuls f2, f0, f1
/* 80608FA0  7F A0 07 34 */	extsh r0, r29
/* 80608FA4  C8 3E 01 20 */	lfd f1, 0x120(r30)
/* 80608FA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80608FAC  90 01 01 8C */	stw r0, 0x18c(r1)
/* 80608FB0  3C 00 43 30 */	lis r0, 0x4330
/* 80608FB4  90 01 01 88 */	stw r0, 0x188(r1)
/* 80608FB8  C8 01 01 88 */	lfd f0, 0x188(r1)
/* 80608FBC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80608FC0  EC 00 10 2A */	fadds f0, f0, f2
/* 80608FC4  FC 00 00 1E */	fctiwz f0, f0
/* 80608FC8  D8 01 01 90 */	stfd f0, 0x190(r1)
/* 80608FCC  83 A1 01 94 */	lwz r29, 0x194(r1)
/* 80608FD0  48 00 00 44 */	b lbl_80609014
lbl_80608FD4:
/* 80608FD4  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 80608FD8  4B C5 E9 B5 */	bl cM_rndFX__Ff
/* 80608FDC  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80608FE0  EC 40 00 72 */	fmuls f2, f0, f1
/* 80608FE4  7F A0 07 34 */	extsh r0, r29
/* 80608FE8  C8 3E 01 20 */	lfd f1, 0x120(r30)
/* 80608FEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80608FF0  90 01 01 9C */	stw r0, 0x19c(r1)
/* 80608FF4  3C 00 43 30 */	lis r0, 0x4330
/* 80608FF8  90 01 01 98 */	stw r0, 0x198(r1)
/* 80608FFC  C8 01 01 98 */	lfd f0, 0x198(r1)
/* 80609000  EC 00 08 28 */	fsubs f0, f0, f1
/* 80609004  EC 00 10 2A */	fadds f0, f0, f2
/* 80609008  FC 00 00 1E */	fctiwz f0, f0
/* 8060900C  D8 01 01 A0 */	stfd f0, 0x1a0(r1)
/* 80609010  83 A1 01 A4 */	lwz r29, 0x1a4(r1)
lbl_80609014:
/* 80609014  88 1C 0A FA */	lbz r0, 0xafa(r28)
/* 80609018  28 00 00 0B */	cmplwi r0, 0xb
/* 8060901C  40 82 00 5C */	bne lbl_80609078
/* 80609020  A8 1C 0A 90 */	lha r0, 0xa90(r28)
/* 80609024  7F BB 07 34 */	extsh r27, r29
/* 80609028  7C 00 D8 50 */	subf r0, r0, r27
/* 8060902C  7C 00 07 34 */	extsh r0, r0
/* 80609030  38 80 18 00 */	li r4, 0x1800
/* 80609034  7C 80 02 78 */	xor r0, r4, r0
/* 80609038  7C 03 0E 70 */	srawi r3, r0, 1
/* 8060903C  7C 00 20 38 */	and r0, r0, r4
/* 80609040  7C 00 18 50 */	subf r0, r0, r3
/* 80609044  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80609048  4B D5 C0 89 */	bl abs
/* 8060904C  2C 03 00 00 */	cmpwi r3, 0
/* 80609050  41 82 00 28 */	beq lbl_80609078
/* 80609054  A8 7C 0A 90 */	lha r3, 0xa90(r28)
/* 80609058  7C 03 D8 50 */	subf r0, r3, r27
/* 8060905C  7C 00 07 35 */	extsh. r0, r0
/* 80609060  40 80 00 10 */	bge lbl_80609070
/* 80609064  38 03 E8 00 */	addi r0, r3, -6144
/* 80609068  7C 1D 07 34 */	extsh r29, r0
/* 8060906C  48 00 00 0C */	b lbl_80609078
lbl_80609070:
/* 80609070  38 03 18 00 */	addi r0, r3, 0x1800
/* 80609074  7C 1D 07 34 */	extsh r29, r0
lbl_80609078:
/* 80609078  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 8060907C  57 A0 04 38 */	rlwinm r0, r29, 0, 0x10, 0x1c
/* 80609080  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80609084  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80609088  7C 03 04 2E */	lfsx f0, r3, r0
/* 8060908C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80609090  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80609094  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80609098  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8060909C  7C 63 02 14 */	add r3, r3, r0
/* 806090A0  C0 03 00 04 */	lfs f0, 4(r3)
/* 806090A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 806090A8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 806090AC  38 61 00 44 */	addi r3, r1, 0x44
/* 806090B0  38 81 00 80 */	addi r4, r1, 0x80
/* 806090B4  38 A1 00 98 */	addi r5, r1, 0x98
/* 806090B8  4B C5 DA 2D */	bl __pl__4cXyzCFRC3Vec
/* 806090BC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 806090C0  D0 1C 0A B0 */	stfs f0, 0xab0(r28)
/* 806090C4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806090C8  D0 1C 0A B4 */	stfs f0, 0xab4(r28)
/* 806090CC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 806090D0  D0 1C 0A B8 */	stfs f0, 0xab8(r28)
/* 806090D4  B3 BC 0A 90 */	sth r29, 0xa90(r28)
/* 806090D8  88 1C 0A FF */	lbz r0, 0xaff(r28)
/* 806090DC  28 00 00 05 */	cmplwi r0, 5
/* 806090E0  41 80 00 50 */	blt lbl_80609130
/* 806090E4  7F 83 E3 78 */	mr r3, r28
/* 806090E8  38 9C 0A B0 */	addi r4, r28, 0xab0
/* 806090EC  38 A0 00 00 */	li r5, 0
/* 806090F0  4B FF DB 7D */	bl setHideSmokeEffect__9daB_MGN_cFP4cXyzUc
/* 806090F4  90 7C 0B 10 */	stw r3, 0xb10(r28)
/* 806090F8  38 00 00 00 */	li r0, 0
/* 806090FC  98 1C 0A FD */	stb r0, 0xafd(r28)
/* 80609100  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80609104  38 00 00 0C */	li r0, 0xc
/* 80609108  98 1C 0A FA */	stb r0, 0xafa(r28)
/* 8060910C  38 00 00 14 */	li r0, 0x14
/* 80609110  90 1C 0A 9C */	stw r0, 0xa9c(r28)
/* 80609114  7F 83 E3 78 */	mr r3, r28
/* 80609118  38 80 00 25 */	li r4, 0x25
/* 8060911C  38 A0 00 02 */	li r5, 2
/* 80609120  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80609124  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80609128  4B FF E7 FD */	bl setBck__9daB_MGN_cFiUcff
/* 8060912C  48 00 0C 2C */	b lbl_80609D58
lbl_80609130:
/* 80609130  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80609134  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80609138  4B C5 E7 35 */	bl cM_rnd__Fv
/* 8060913C  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80609140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80609144  40 80 00 10 */	bge lbl_80609154
/* 80609148  88 1C 0B 02 */	lbz r0, 0xb02(r28)
/* 8060914C  28 00 00 03 */	cmplwi r0, 3
/* 80609150  40 80 00 10 */	bge lbl_80609160
lbl_80609154:
/* 80609154  88 1C 0B 02 */	lbz r0, 0xb02(r28)
/* 80609158  28 00 00 0A */	cmplwi r0, 0xa
/* 8060915C  41 80 01 90 */	blt lbl_806092EC
lbl_80609160:
/* 80609160  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80609164  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80609168  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060916C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80609170  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80609174  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80609178  C0 5C 0A B8 */	lfs f2, 0xab8(r28)
/* 8060917C  C0 1C 0A B0 */	lfs f0, 0xab0(r28)
/* 80609180  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80609184  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80609188  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8060918C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80609190  38 81 00 38 */	addi r4, r1, 0x38
/* 80609194  4B D3 E2 09 */	bl PSVECSquareDistance
/* 80609198  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8060919C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806091A0  40 81 00 58 */	ble lbl_806091F8
/* 806091A4  FC 00 08 34 */	frsqrte f0, f1
/* 806091A8  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 806091AC  FC 44 00 32 */	fmul f2, f4, f0
/* 806091B0  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 806091B4  FC 00 00 32 */	fmul f0, f0, f0
/* 806091B8  FC 01 00 32 */	fmul f0, f1, f0
/* 806091BC  FC 03 00 28 */	fsub f0, f3, f0
/* 806091C0  FC 02 00 32 */	fmul f0, f2, f0
/* 806091C4  FC 44 00 32 */	fmul f2, f4, f0
/* 806091C8  FC 00 00 32 */	fmul f0, f0, f0
/* 806091CC  FC 01 00 32 */	fmul f0, f1, f0
/* 806091D0  FC 03 00 28 */	fsub f0, f3, f0
/* 806091D4  FC 02 00 32 */	fmul f0, f2, f0
/* 806091D8  FC 44 00 32 */	fmul f2, f4, f0
/* 806091DC  FC 00 00 32 */	fmul f0, f0, f0
/* 806091E0  FC 01 00 32 */	fmul f0, f1, f0
/* 806091E4  FC 03 00 28 */	fsub f0, f3, f0
/* 806091E8  FC 02 00 32 */	fmul f0, f2, f0
/* 806091EC  FC 21 00 32 */	fmul f1, f1, f0
/* 806091F0  FC 20 08 18 */	frsp f1, f1
/* 806091F4  48 00 00 88 */	b lbl_8060927C
lbl_806091F8:
/* 806091F8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 806091FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80609200  40 80 00 10 */	bge lbl_80609210
/* 80609204  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80609208  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8060920C  48 00 00 70 */	b lbl_8060927C
lbl_80609210:
/* 80609210  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80609214  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80609218  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8060921C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80609220  7C 03 00 00 */	cmpw r3, r0
/* 80609224  41 82 00 14 */	beq lbl_80609238
/* 80609228  40 80 00 40 */	bge lbl_80609268
/* 8060922C  2C 03 00 00 */	cmpwi r3, 0
/* 80609230  41 82 00 20 */	beq lbl_80609250
/* 80609234  48 00 00 34 */	b lbl_80609268
lbl_80609238:
/* 80609238  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8060923C  41 82 00 0C */	beq lbl_80609248
/* 80609240  38 00 00 01 */	li r0, 1
/* 80609244  48 00 00 28 */	b lbl_8060926C
lbl_80609248:
/* 80609248  38 00 00 02 */	li r0, 2
/* 8060924C  48 00 00 20 */	b lbl_8060926C
lbl_80609250:
/* 80609250  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80609254  41 82 00 0C */	beq lbl_80609260
/* 80609258  38 00 00 05 */	li r0, 5
/* 8060925C  48 00 00 10 */	b lbl_8060926C
lbl_80609260:
/* 80609260  38 00 00 03 */	li r0, 3
/* 80609264  48 00 00 08 */	b lbl_8060926C
lbl_80609268:
/* 80609268  38 00 00 04 */	li r0, 4
lbl_8060926C:
/* 8060926C  2C 00 00 01 */	cmpwi r0, 1
/* 80609270  40 82 00 0C */	bne lbl_8060927C
/* 80609274  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80609278  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8060927C:
/* 8060927C  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80609280  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80609284  40 81 00 68 */	ble lbl_806092EC
/* 80609288  7F 83 E3 78 */	mr r3, r28
/* 8060928C  38 9C 0A B0 */	addi r4, r28, 0xab0
/* 80609290  38 A0 00 00 */	li r5, 0
/* 80609294  4B FF D9 D9 */	bl setHideSmokeEffect__9daB_MGN_cFP4cXyzUc
/* 80609298  90 7C 0B 10 */	stw r3, 0xb10(r28)
/* 8060929C  38 00 00 00 */	li r0, 0
/* 806092A0  98 1C 0A FD */	stb r0, 0xafd(r28)
/* 806092A4  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 806092A8  38 00 00 0C */	li r0, 0xc
/* 806092AC  98 1C 0A FA */	stb r0, 0xafa(r28)
/* 806092B0  38 00 00 3C */	li r0, 0x3c
/* 806092B4  90 1C 0A 9C */	stw r0, 0xa9c(r28)
/* 806092B8  7F 83 E3 78 */	mr r3, r28
/* 806092BC  38 80 00 25 */	li r4, 0x25
/* 806092C0  38 A0 00 02 */	li r5, 2
/* 806092C4  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 806092C8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806092CC  4B FF E6 59 */	bl setBck__9daB_MGN_cFiUcff
/* 806092D0  7F 83 E3 78 */	mr r3, r28
/* 806092D4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806092D8  4B A1 14 39 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806092DC  B0 7C 04 E6 */	sth r3, 0x4e6(r28)
/* 806092E0  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806092E4  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 806092E8  48 00 0A 70 */	b lbl_80609D58
lbl_806092EC:
/* 806092EC  88 7C 0B 02 */	lbz r3, 0xb02(r28)
/* 806092F0  38 03 00 01 */	addi r0, r3, 1
/* 806092F4  98 1C 0B 02 */	stb r0, 0xb02(r28)
/* 806092F8  7F 83 E3 78 */	mr r3, r28
/* 806092FC  38 9C 0A B0 */	addi r4, r28, 0xab0
/* 80609300  38 A0 00 00 */	li r5, 0
/* 80609304  4B FF D9 69 */	bl setHideSmokeEffect__9daB_MGN_cFP4cXyzUc
/* 80609308  90 7C 0B 10 */	stw r3, 0xb10(r28)
/* 8060930C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80609310  4B C5 E6 45 */	bl cM_rndF__Ff
/* 80609314  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 80609318  EC 00 08 2A */	fadds f0, f0, f1
/* 8060931C  FC 00 00 1E */	fctiwz f0, f0
/* 80609320  D8 01 01 A0 */	stfd f0, 0x1a0(r1)
/* 80609324  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 80609328  90 1C 0A 9C */	stw r0, 0xa9c(r28)
/* 8060932C  38 00 00 14 */	li r0, 0x14
/* 80609330  98 1C 0A FA */	stb r0, 0xafa(r28)
/* 80609334  48 00 0A 24 */	b lbl_80609D58
lbl_80609338:
/* 80609338  80 1C 0A 9C */	lwz r0, 0xa9c(r28)
/* 8060933C  2C 00 00 00 */	cmpwi r0, 0
/* 80609340  40 82 0A 18 */	bne lbl_80609D58
/* 80609344  88 1C 0A FF */	lbz r0, 0xaff(r28)
/* 80609348  28 00 00 05 */	cmplwi r0, 5
/* 8060934C  41 80 00 10 */	blt lbl_8060935C
/* 80609350  38 00 00 0F */	li r0, 0xf
/* 80609354  90 1C 0A 9C */	stw r0, 0xa9c(r28)
/* 80609358  48 00 00 0C */	b lbl_80609364
lbl_8060935C:
/* 8060935C  38 00 00 1E */	li r0, 0x1e
/* 80609360  90 1C 0A 9C */	stw r0, 0xa9c(r28)
lbl_80609364:
/* 80609364  80 7C 0B 10 */	lwz r3, 0xb10(r28)
/* 80609368  2C 03 FF FF */	cmpwi r3, -1
/* 8060936C  41 82 00 10 */	beq lbl_8060937C
/* 80609370  38 00 00 05 */	li r0, 5
/* 80609374  7C 7C 1A 14 */	add r3, r28, r3
/* 80609378  98 03 26 B8 */	stb r0, 0x26b8(r3)
lbl_8060937C:
/* 8060937C  38 00 00 0D */	li r0, 0xd
/* 80609380  98 1C 0A FA */	stb r0, 0xafa(r28)
/* 80609384  48 00 09 D4 */	b lbl_80609D58
lbl_80609388:
/* 80609388  80 1C 0A 9C */	lwz r0, 0xa9c(r28)
/* 8060938C  2C 00 00 00 */	cmpwi r0, 0
/* 80609390  40 82 09 C8 */	bne lbl_80609D58
/* 80609394  4B FF E9 75 */	bl onBodyCo__9daB_MGN_cFv
/* 80609398  38 00 00 02 */	li r0, 2
/* 8060939C  98 1C 0A FA */	stb r0, 0xafa(r28)
/* 806093A0  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 806093A4  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 806093A8  38 63 00 07 */	addi r3, r3, 7
/* 806093AC  38 80 00 3C */	li r4, 0x3c
/* 806093B0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806093B4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806093B8  3C A5 00 02 */	addis r5, r5, 2
/* 806093BC  38 C0 00 80 */	li r6, 0x80
/* 806093C0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806093C4  4B A3 2F 29 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806093C8  7C 65 1B 78 */	mr r5, r3
/* 806093CC  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 806093D0  80 63 00 04 */	lwz r3, 4(r3)
/* 806093D4  80 83 00 04 */	lwz r4, 4(r3)
/* 806093D8  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 806093DC  38 84 00 58 */	addi r4, r4, 0x58
/* 806093E0  38 C0 00 01 */	li r6, 1
/* 806093E4  38 E0 00 00 */	li r7, 0
/* 806093E8  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 806093EC  39 00 00 00 */	li r8, 0
/* 806093F0  39 20 FF FF */	li r9, -1
/* 806093F4  4B A0 42 49 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 806093F8  80 1C 0B 88 */	lwz r0, 0xb88(r28)
/* 806093FC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80609400  90 1C 0B 88 */	stw r0, 0xb88(r28)
/* 80609404  38 00 00 14 */	li r0, 0x14
/* 80609408  90 1C 0A AC */	stw r0, 0xaac(r28)
/* 8060940C  38 00 00 15 */	li r0, 0x15
/* 80609410  90 1C 0A 9C */	stw r0, 0xa9c(r28)
/* 80609414  38 00 00 01 */	li r0, 1
/* 80609418  98 1C 05 CC */	stb r0, 0x5cc(r28)
/* 8060941C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80609420  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 80609424  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80609428  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8060942C  80 1C 0B 10 */	lwz r0, 0xb10(r28)
/* 80609430  2C 00 FF FF */	cmpwi r0, -1
/* 80609434  41 82 00 28 */	beq lbl_8060945C
/* 80609438  54 00 08 3C */	slwi r0, r0, 1
/* 8060943C  7C 7C 02 14 */	add r3, r28, r0
/* 80609440  A8 03 26 C0 */	lha r0, 0x26c0(r3)
/* 80609444  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80609448  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 8060944C  38 80 00 07 */	li r4, 7
/* 80609450  80 1C 0B 10 */	lwz r0, 0xb10(r28)
/* 80609454  7C 7C 02 14 */	add r3, r28, r0
/* 80609458  98 83 26 B8 */	stb r4, 0x26b8(r3)
lbl_8060945C:
/* 8060945C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80609460  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80609464  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80609468  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8060946C  7C 64 02 14 */	add r3, r4, r0
/* 80609470  C0 03 00 04 */	lfs f0, 4(r3)
/* 80609474  C0 3C 0A B8 */	lfs f1, 0xab8(r28)
/* 80609478  C0 5E 00 E8 */	lfs f2, 0xe8(r30)
/* 8060947C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80609480  EC 81 00 28 */	fsubs f4, f1, f0
/* 80609484  C0 7C 0A B4 */	lfs f3, 0xab4(r28)
/* 80609488  7C 04 04 2E */	lfsx f0, r4, r0
/* 8060948C  C0 3C 0A B0 */	lfs f1, 0xab0(r28)
/* 80609490  EC 02 00 32 */	fmuls f0, f2, f0
/* 80609494  EC 01 00 28 */	fsubs f0, f1, f0
/* 80609498  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8060949C  D0 7C 04 D4 */	stfs f3, 0x4d4(r28)
/* 806094A0  D0 9C 04 D8 */	stfs f4, 0x4d8(r28)
/* 806094A4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806094A8  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 806094AC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806094B0  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 806094B4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806094B8  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 806094BC  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806094C0  B0 1C 0B 14 */	sth r0, 0xb14(r28)
/* 806094C4  B0 1C 0B 16 */	sth r0, 0xb16(r28)
/* 806094C8  48 00 08 90 */	b lbl_80609D58
lbl_806094CC:
/* 806094CC  80 1C 0B 10 */	lwz r0, 0xb10(r28)
/* 806094D0  2C 00 FF FF */	cmpwi r0, -1
/* 806094D4  41 82 00 18 */	beq lbl_806094EC
/* 806094D8  54 00 08 3C */	slwi r0, r0, 1
/* 806094DC  7C 7C 02 14 */	add r3, r28, r0
/* 806094E0  A8 03 26 C0 */	lha r0, 0x26c0(r3)
/* 806094E4  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 806094E8  B0 1C 04 DE */	sth r0, 0x4de(r28)
lbl_806094EC:
/* 806094EC  80 1C 0A 9C */	lwz r0, 0xa9c(r28)
/* 806094F0  2C 00 00 00 */	cmpwi r0, 0
/* 806094F4  40 82 08 64 */	bne lbl_80609D58
/* 806094F8  80 7C 0B 10 */	lwz r3, 0xb10(r28)
/* 806094FC  2C 03 FF FF */	cmpwi r3, -1
/* 80609500  41 82 00 10 */	beq lbl_80609510
/* 80609504  38 00 00 03 */	li r0, 3
/* 80609508  7C 7C 1A 14 */	add r3, r28, r3
/* 8060950C  98 03 26 B8 */	stb r0, 0x26b8(r3)
lbl_80609510:
/* 80609510  38 00 00 0B */	li r0, 0xb
/* 80609514  98 1C 0A FA */	stb r0, 0xafa(r28)
/* 80609518  48 00 08 40 */	b lbl_80609D58
lbl_8060951C:
/* 8060951C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704FD@ha */
/* 80609520  38 03 04 FD */	addi r0, r3, 0x04FD /* 0x000704FD@l */
/* 80609524  90 01 00 28 */	stw r0, 0x28(r1)
/* 80609528  38 7C 09 E0 */	addi r3, r28, 0x9e0
/* 8060952C  38 81 00 28 */	addi r4, r1, 0x28
/* 80609530  38 A0 FF FF */	li r5, -1
/* 80609534  81 9C 09 E0 */	lwz r12, 0x9e0(r28)
/* 80609538  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8060953C  7D 89 03 A6 */	mtctr r12
/* 80609540  4E 80 04 21 */	bctrl 
/* 80609544  7F 83 E3 78 */	mr r3, r28
/* 80609548  38 80 00 06 */	li r4, 6
/* 8060954C  38 A0 00 00 */	li r5, 0
/* 80609550  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80609554  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80609558  4B FF E3 CD */	bl setBck__9daB_MGN_cFiUcff
/* 8060955C  38 00 00 01 */	li r0, 1
/* 80609560  98 1C 0A FA */	stb r0, 0xafa(r28)
/* 80609564  38 00 00 02 */	li r0, 2
/* 80609568  98 1C 05 CC */	stb r0, 0x5cc(r28)
lbl_8060956C:
/* 8060956C  38 00 00 00 */	li r0, 0
/* 80609570  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80609574  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80609578  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060957C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80609580  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80609584  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80609588  41 82 00 0C */	beq lbl_80609594
/* 8060958C  38 00 00 04 */	li r0, 4
/* 80609590  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_80609594:
/* 80609594  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80609598  38 80 00 01 */	li r4, 1
/* 8060959C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806095A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806095A4  40 82 00 18 */	bne lbl_806095BC
/* 806095A8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806095AC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806095B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806095B4  41 82 00 08 */	beq lbl_806095BC
/* 806095B8  38 80 00 00 */	li r4, 0
lbl_806095BC:
/* 806095BC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806095C0  41 82 07 98 */	beq lbl_80609D58
/* 806095C4  38 00 00 02 */	li r0, 2
/* 806095C8  98 1C 0A FA */	stb r0, 0xafa(r28)
/* 806095CC  38 00 00 00 */	li r0, 0
/* 806095D0  90 1C 0A 9C */	stw r0, 0xa9c(r28)
/* 806095D4  90 1C 0A AC */	stw r0, 0xaac(r28)
/* 806095D8  48 00 07 80 */	b lbl_80609D58
lbl_806095DC:
/* 806095DC  80 1C 0A AC */	lwz r0, 0xaac(r28)
/* 806095E0  2C 00 00 00 */	cmpwi r0, 0
/* 806095E4  40 82 00 0C */	bne lbl_806095F0
/* 806095E8  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 806095EC  D0 1C 05 30 */	stfs f0, 0x530(r28)
lbl_806095F0:
/* 806095F0  7F 83 E3 78 */	mr r3, r28
/* 806095F4  38 80 00 06 */	li r4, 6
/* 806095F8  4B FF E3 D5 */	bl checkBck__9daB_MGN_cFi
/* 806095FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80609600  41 82 00 28 */	beq lbl_80609628
/* 80609604  7F 83 E3 78 */	mr r3, r28
/* 80609608  38 80 00 09 */	li r4, 9
/* 8060960C  38 A0 00 02 */	li r5, 2
/* 80609610  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80609614  3C C0 80 61 */	lis r6, l_HIO@ha /* 0x80610450@ha */
/* 80609618  38 C6 04 50 */	addi r6, r6, l_HIO@l /* 0x80610450@l */
/* 8060961C  C0 46 00 14 */	lfs f2, 0x14(r6)
/* 80609620  4B FF E3 05 */	bl setBck__9daB_MGN_cFiUcff
/* 80609624  48 00 00 24 */	b lbl_80609648
lbl_80609628:
/* 80609628  7F 83 E3 78 */	mr r3, r28
/* 8060962C  38 80 00 09 */	li r4, 9
/* 80609630  38 A0 00 02 */	li r5, 2
/* 80609634  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80609638  3C C0 80 61 */	lis r6, l_HIO@ha /* 0x80610450@ha */
/* 8060963C  38 C6 04 50 */	addi r6, r6, l_HIO@l /* 0x80610450@l */
/* 80609640  C0 46 00 14 */	lfs f2, 0x14(r6)
/* 80609644  4B FF E2 E1 */	bl setBck__9daB_MGN_cFiUcff
lbl_80609648:
/* 80609648  38 00 00 03 */	li r0, 3
/* 8060964C  98 1C 0A FA */	stb r0, 0xafa(r28)
/* 80609650  80 1C 21 0C */	lwz r0, 0x210c(r28)
/* 80609654  60 00 00 01 */	ori r0, r0, 1
/* 80609658  90 1C 21 0C */	stw r0, 0x210c(r28)
/* 8060965C  80 1C 1F BC */	lwz r0, 0x1fbc(r28)
/* 80609660  60 00 00 01 */	ori r0, r0, 1
/* 80609664  90 1C 1F BC */	stw r0, 0x1fbc(r28)
/* 80609668  38 00 00 02 */	li r0, 2
/* 8060966C  98 1C 1F D0 */	stb r0, 0x1fd0(r28)
/* 80609670  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80609674  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80609678  38 00 00 00 */	li r0, 0
/* 8060967C  98 1C 0B 03 */	stb r0, 0xb03(r28)
/* 80609680  4B C5 E1 ED */	bl cM_rnd__Fv
/* 80609684  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80609688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060968C  40 80 00 0C */	bge lbl_80609698
/* 80609690  38 00 00 01 */	li r0, 1
/* 80609694  98 1C 0B 03 */	stb r0, 0xb03(r28)
lbl_80609698:
/* 80609698  3C 60 80 61 */	lis r3, l_HIO@ha /* 0x80610450@ha */
/* 8060969C  38 63 04 50 */	addi r3, r3, l_HIO@l /* 0x80610450@l */
/* 806096A0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806096A4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 806096A8  88 1C 04 9A */	lbz r0, 0x49a(r28)
/* 806096AC  60 00 00 10 */	ori r0, r0, 0x10
/* 806096B0  98 1C 04 9A */	stb r0, 0x49a(r28)
/* 806096B4  88 1C 0B 0B */	lbz r0, 0xb0b(r28)
/* 806096B8  28 00 00 02 */	cmplwi r0, 2
/* 806096BC  41 80 00 50 */	blt lbl_8060970C
/* 806096C0  48 00 66 F5 */	bl checkNowWolf__9daPy_py_cFv
/* 806096C4  28 03 00 00 */	cmplwi r3, 0
/* 806096C8  41 82 00 44 */	beq lbl_8060970C
/* 806096CC  88 7C 0B 0C */	lbz r3, 0xb0c(r28)
/* 806096D0  28 03 00 03 */	cmplwi r3, 3
/* 806096D4  40 80 00 10 */	bge lbl_806096E4
/* 806096D8  38 03 00 01 */	addi r0, r3, 1
/* 806096DC  98 1C 0B 0C */	stb r0, 0xb0c(r28)
/* 806096E0  48 00 00 2C */	b lbl_8060970C
lbl_806096E4:
/* 806096E4  38 60 00 09 */	li r3, 9
/* 806096E8  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 806096EC  7C 04 07 74 */	extsb r4, r0
/* 806096F0  4B A2 44 75 */	bl dComIfGs_isOneZoneSwitch__Fii
/* 806096F4  2C 03 00 00 */	cmpwi r3, 0
/* 806096F8  40 82 00 14 */	bne lbl_8060970C
/* 806096FC  38 60 00 09 */	li r3, 9
/* 80609700  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80609704  7C 04 07 74 */	extsb r4, r0
/* 80609708  4B A2 43 95 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_8060970C:
/* 8060970C  38 00 00 01 */	li r0, 1
/* 80609710  98 1C 0B 09 */	stb r0, 0xb09(r28)
/* 80609714  38 00 00 00 */	li r0, 0
/* 80609718  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 8060971C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80609720  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80609724  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80609728  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8060972C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80609730  41 82 00 9C */	beq lbl_806097CC
/* 80609734  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80609738  60 00 00 04 */	ori r0, r0, 4
/* 8060973C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80609740  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80609744  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80609748  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8060974C  7C 00 00 D0 */	neg r0, r0
/* 80609750  7C 04 07 34 */	extsh r4, r0
/* 80609754  4B A0 2C 89 */	bl mDoMtx_YrotS__FPA4_fs
/* 80609758  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8060975C  FC 20 00 50 */	fneg f1, f0
/* 80609760  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80609764  FC 40 00 50 */	fneg f2, f0
/* 80609768  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8060976C  FC 60 00 50 */	fneg f3, f0
/* 80609770  4B A0 36 2D */	bl transM__14mDoMtx_stack_cFfff
/* 80609774  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80609778  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060977C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80609780  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80609784  38 A1 00 74 */	addi r5, r1, 0x74
/* 80609788  4B D3 D5 E5 */	bl PSMTXMultVec
/* 8060978C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80609790  FC 00 02 10 */	fabs f0, f0
/* 80609794  FC 20 00 18 */	frsp f1, f0
/* 80609798  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8060979C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806097A0  40 80 00 2C */	bge lbl_806097CC
/* 806097A4  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 806097A8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 806097AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806097B0  40 81 00 1C */	ble lbl_806097CC
/* 806097B4  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 806097B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806097BC  40 80 00 10 */	bge lbl_806097CC
/* 806097C0  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 806097C4  60 00 00 10 */	ori r0, r0, 0x10
/* 806097C8  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_806097CC:
/* 806097CC  38 7C 0A E8 */	addi r3, r28, 0xae8
/* 806097D0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806097D4  C0 5E 00 F4 */	lfs f2, 0xf4(r30)
/* 806097D8  4B C6 6F 69 */	bl cLib_chaseF__FPfff
/* 806097DC  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 806097E0  38 80 00 01 */	li r4, 1
/* 806097E4  88 03 00 05 */	lbz r0, 5(r3)
/* 806097E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806097EC  40 82 00 18 */	bne lbl_80609804
/* 806097F0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806097F4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806097F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806097FC  41 82 00 08 */	beq lbl_80609804
/* 80609800  38 80 00 00 */	li r4, 0
lbl_80609804:
/* 80609804  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80609808  41 82 00 0C */	beq lbl_80609814
/* 8060980C  7F 83 E3 78 */	mr r3, r28
/* 80609810  4B FF DA 8D */	bl setBloodEffect__9daB_MGN_cFv
lbl_80609814:
/* 80609814  7F 83 E3 78 */	mr r3, r28
/* 80609818  4B FF C5 61 */	bl setDashSmokeEffect__9daB_MGN_cFv
/* 8060981C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80609820  3C 80 80 61 */	lis r4, l_HIO@ha /* 0x80610450@ha */
/* 80609824  38 84 04 50 */	addi r4, r4, l_HIO@l /* 0x80610450@l */
/* 80609828  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8060982C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80609830  4B C6 6F 11 */	bl cLib_chaseF__FPfff
/* 80609834  88 1C 05 8D */	lbz r0, 0x58d(r28)
/* 80609838  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8060983C  41 82 00 3C */	beq lbl_80609878
/* 80609840  80 1C 21 0C */	lwz r0, 0x210c(r28)
/* 80609844  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80609848  90 1C 21 0C */	stw r0, 0x210c(r28)
/* 8060984C  80 1C 1F BC */	lwz r0, 0x1fbc(r28)
/* 80609850  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80609854  90 1C 1F BC */	stw r0, 0x1fbc(r28)
/* 80609858  88 1C 05 8D */	lbz r0, 0x58d(r28)
/* 8060985C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80609860  98 1C 05 8D */	stb r0, 0x58d(r28)
/* 80609864  7F 83 E3 78 */	mr r3, r28
/* 80609868  38 80 00 03 */	li r4, 3
/* 8060986C  38 A0 00 00 */	li r5, 0
/* 80609870  4B FF E1 BD */	bl setActionMode__9daB_MGN_cFii
/* 80609874  48 00 04 E4 */	b lbl_80609D58
lbl_80609878:
/* 80609878  80 1C 0A 9C */	lwz r0, 0xa9c(r28)
/* 8060987C  2C 00 00 00 */	cmpwi r0, 0
/* 80609880  40 82 04 D8 */	bne lbl_80609D58
/* 80609884  88 1C 0A FF */	lbz r0, 0xaff(r28)
/* 80609888  28 00 00 05 */	cmplwi r0, 5
/* 8060988C  41 80 00 EC */	blt lbl_80609978
/* 80609890  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80609894  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80609898  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8060989C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806098A0  7C 64 02 14 */	add r3, r4, r0
/* 806098A4  C0 43 00 04 */	lfs f2, 4(r3)
/* 806098A8  7C 04 04 2E */	lfsx f0, r4, r0
/* 806098AC  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 806098B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 806098B4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806098B8  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 806098BC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 806098C0  EC 01 00 B2 */	fmuls f0, f1, f2
/* 806098C4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806098C8  38 61 00 68 */	addi r3, r1, 0x68
/* 806098CC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806098D0  7C 65 1B 78 */	mr r5, r3
/* 806098D4  4B D3 D7 BD */	bl PSVECAdd
/* 806098D8  38 61 01 14 */	addi r3, r1, 0x114
/* 806098DC  4B A6 E3 8D */	bl __ct__11dBgS_LinChkFv
/* 806098E0  38 61 01 14 */	addi r3, r1, 0x114
/* 806098E4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806098E8  38 A1 00 68 */	addi r5, r1, 0x68
/* 806098EC  7F 86 E3 78 */	mr r6, r28
/* 806098F0  4B A6 E4 75 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806098F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806098F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806098FC  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 80609900  7F 63 DB 78 */	mr r3, r27
/* 80609904  38 81 01 14 */	addi r4, r1, 0x114
/* 80609908  4B A6 AA AD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8060990C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80609910  41 82 00 58 */	beq lbl_80609968
/* 80609914  7F 63 DB 78 */	mr r3, r27
/* 80609918  A0 81 01 2A */	lhz r4, 0x12a(r1)
/* 8060991C  4B A6 AC FD */	bl GetActorPointer__4cBgSCFi
/* 80609920  28 03 00 00 */	cmplwi r3, 0
/* 80609924  41 82 00 10 */	beq lbl_80609934
/* 80609928  A8 03 00 08 */	lha r0, 8(r3)
/* 8060992C  2C 00 00 6C */	cmpwi r0, 0x6c
/* 80609930  41 82 00 38 */	beq lbl_80609968
lbl_80609934:
/* 80609934  38 00 00 00 */	li r0, 0
/* 80609938  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 8060993C  80 1C 21 0C */	lwz r0, 0x210c(r28)
/* 80609940  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80609944  90 1C 21 0C */	stw r0, 0x210c(r28)
/* 80609948  80 1C 1F BC */	lwz r0, 0x1fbc(r28)
/* 8060994C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80609950  90 1C 1F BC */	stw r0, 0x1fbc(r28)
/* 80609954  7F 83 E3 78 */	mr r3, r28
/* 80609958  38 80 00 00 */	li r4, 0
/* 8060995C  4B FF E1 25 */	bl setExitMode__9daB_MGN_cFi
/* 80609960  38 00 00 03 */	li r0, 3
/* 80609964  90 1C 0A AC */	stw r0, 0xaac(r28)
lbl_80609968:
/* 80609968  38 61 01 14 */	addi r3, r1, 0x114
/* 8060996C  38 80 FF FF */	li r4, -1
/* 80609970  4B A6 E3 6D */	bl __dt__11dBgS_LinChkFv
/* 80609974  48 00 03 E4 */	b lbl_80609D58
lbl_80609978:
/* 80609978  80 1C 0B 88 */	lwz r0, 0xb88(r28)
/* 8060997C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80609980  41 82 00 A4 */	beq lbl_80609A24
/* 80609984  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80609988  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060998C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80609990  A0 9C 0B 1E */	lhz r4, 0xb1e(r28)
/* 80609994  4B A6 AC 85 */	bl GetActorPointer__4cBgSCFi
/* 80609998  28 03 00 00 */	cmplwi r3, 0
/* 8060999C  41 82 00 10 */	beq lbl_806099AC
/* 806099A0  A8 03 00 08 */	lha r0, 8(r3)
/* 806099A4  2C 00 00 6C */	cmpwi r0, 0x6c
/* 806099A8  41 82 00 7C */	beq lbl_80609A24
lbl_806099AC:
/* 806099AC  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 806099B0  A8 1C 0B 58 */	lha r0, 0xb58(r28)
/* 806099B4  7C 03 00 50 */	subf r0, r3, r0
/* 806099B8  7C 03 07 34 */	extsh r3, r0
/* 806099BC  4B D5 B7 15 */	bl abs
/* 806099C0  2C 03 60 00 */	cmpwi r3, 0x6000
/* 806099C4  40 81 00 30 */	ble lbl_806099F4
/* 806099C8  80 1C 21 0C */	lwz r0, 0x210c(r28)
/* 806099CC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806099D0  90 1C 21 0C */	stw r0, 0x210c(r28)
/* 806099D4  80 1C 1F BC */	lwz r0, 0x1fbc(r28)
/* 806099D8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806099DC  90 1C 1F BC */	stw r0, 0x1fbc(r28)
/* 806099E0  7F 83 E3 78 */	mr r3, r28
/* 806099E4  38 80 00 01 */	li r4, 1
/* 806099E8  88 BC 0B 03 */	lbz r5, 0xb03(r28)
/* 806099EC  4B FF E0 41 */	bl setActionMode__9daB_MGN_cFii
/* 806099F0  48 00 03 68 */	b lbl_80609D58
lbl_806099F4:
/* 806099F4  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 806099F8  A8 1C 0B 58 */	lha r0, 0xb58(r28)
/* 806099FC  7C 03 00 50 */	subf r0, r3, r0
/* 80609A00  7C 00 07 35 */	extsh. r0, r0
/* 80609A04  40 80 00 10 */	bge lbl_80609A14
/* 80609A08  38 03 01 00 */	addi r0, r3, 0x100
/* 80609A0C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80609A10  48 00 00 0C */	b lbl_80609A1C
lbl_80609A14:
/* 80609A14  38 03 FF 00 */	addi r0, r3, -256
/* 80609A18  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
lbl_80609A1C:
/* 80609A1C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80609A20  B0 1C 04 DE */	sth r0, 0x4de(r28)
lbl_80609A24:
/* 80609A24  7F 83 E3 78 */	mr r3, r28
/* 80609A28  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80609A2C  4B A1 0C E5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80609A30  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80609A34  7C 03 00 50 */	subf r0, r3, r0
/* 80609A38  7C 03 07 34 */	extsh r3, r0
/* 80609A3C  4B D5 B6 95 */	bl abs
/* 80609A40  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80609A44  40 81 03 14 */	ble lbl_80609D58
/* 80609A48  80 1C 21 0C */	lwz r0, 0x210c(r28)
/* 80609A4C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80609A50  90 1C 21 0C */	stw r0, 0x210c(r28)
/* 80609A54  80 1C 1F BC */	lwz r0, 0x1fbc(r28)
/* 80609A58  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80609A5C  90 1C 1F BC */	stw r0, 0x1fbc(r28)
/* 80609A60  7F 83 E3 78 */	mr r3, r28
/* 80609A64  38 80 00 01 */	li r4, 1
/* 80609A68  88 BC 0B 03 */	lbz r5, 0xb03(r28)
/* 80609A6C  4B FF DF C1 */	bl setActionMode__9daB_MGN_cFii
/* 80609A70  48 00 02 E8 */	b lbl_80609D58
lbl_80609A74:
/* 80609A74  38 7C 0A E8 */	addi r3, r28, 0xae8
/* 80609A78  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80609A7C  C0 5E 00 F4 */	lfs f2, 0xf4(r30)
/* 80609A80  4B C6 6C C1 */	bl cLib_chaseF__FPfff
/* 80609A84  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 80609A88  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80609A8C  4B D1 E9 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 80609A90  2C 03 00 00 */	cmpwi r3, 0
/* 80609A94  41 82 00 C8 */	beq lbl_80609B5C
/* 80609A98  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80609A9C  4B A0 32 C9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80609AA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80609AA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80609AA8  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80609AAC  4B A0 29 89 */	bl mDoMtx_YrotM__FPA4_fs
/* 80609AB0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80609AB4  FC 40 08 90 */	fmr f2, f1
/* 80609AB8  C0 7E 00 E8 */	lfs f3, 0xe8(r30)
/* 80609ABC  4B A0 32 E1 */	bl transM__14mDoMtx_stack_cFfff
/* 80609AC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80609AC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80609AC8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80609ACC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80609AD0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80609AD4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80609AD8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80609ADC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80609AE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80609AE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80609AE8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80609AEC  38 80 00 00 */	li r4, 0
/* 80609AF0  90 81 00 08 */	stw r4, 8(r1)
/* 80609AF4  38 00 FF FF */	li r0, -1
/* 80609AF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80609AFC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80609B00  90 81 00 14 */	stw r4, 0x14(r1)
/* 80609B04  90 81 00 18 */	stw r4, 0x18(r1)
/* 80609B08  38 80 00 00 */	li r4, 0
/* 80609B0C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C1C@ha */
/* 80609B10  38 A5 8C 1C */	addi r5, r5, 0x8C1C /* 0x00008C1C@l */
/* 80609B14  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80609B18  38 FC 01 0C */	addi r7, r28, 0x10c
/* 80609B1C  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 80609B20  39 20 00 00 */	li r9, 0
/* 80609B24  39 40 00 FF */	li r10, 0xff
/* 80609B28  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80609B2C  4B A4 2F 65 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80609B30  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F7@ha */
/* 80609B34  38 03 04 F7 */	addi r0, r3, 0x04F7 /* 0x000704F7@l */
/* 80609B38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80609B3C  38 7C 09 E0 */	addi r3, r28, 0x9e0
/* 80609B40  38 81 00 24 */	addi r4, r1, 0x24
/* 80609B44  38 A0 00 00 */	li r5, 0
/* 80609B48  38 C0 FF FF */	li r6, -1
/* 80609B4C  81 9C 09 E0 */	lwz r12, 0x9e0(r28)
/* 80609B50  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80609B54  7D 89 03 A6 */	mtctr r12
/* 80609B58  4E 80 04 21 */	bctrl 
lbl_80609B5C:
/* 80609B5C  88 1C 0A FF */	lbz r0, 0xaff(r28)
/* 80609B60  28 00 00 05 */	cmplwi r0, 5
/* 80609B64  41 80 00 34 */	blt lbl_80609B98
/* 80609B68  38 00 00 21 */	li r0, 0x21
/* 80609B6C  90 1C 0A AC */	stw r0, 0xaac(r28)
/* 80609B70  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 80609B74  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80609B78  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 80609B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80609B80  40 81 01 D8 */	ble lbl_80609D58
/* 80609B84  38 00 00 00 */	li r0, 0
/* 80609B88  98 1C 0A FE */	stb r0, 0xafe(r28)
/* 80609B8C  38 00 00 0A */	li r0, 0xa
/* 80609B90  98 1C 0A FA */	stb r0, 0xafa(r28)
/* 80609B94  48 00 01 C4 */	b lbl_80609D58
lbl_80609B98:
/* 80609B98  38 00 00 03 */	li r0, 3
/* 80609B9C  90 1C 0A AC */	stw r0, 0xaac(r28)
/* 80609BA0  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 80609BA4  38 80 00 01 */	li r4, 1
/* 80609BA8  88 03 00 05 */	lbz r0, 5(r3)
/* 80609BAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80609BB0  40 82 00 18 */	bne lbl_80609BC8
/* 80609BB4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80609BB8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80609BBC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80609BC0  41 82 00 08 */	beq lbl_80609BC8
/* 80609BC4  38 80 00 00 */	li r4, 0
lbl_80609BC8:
/* 80609BC8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80609BCC  41 82 01 8C */	beq lbl_80609D58
/* 80609BD0  7F 83 E3 78 */	mr r3, r28
/* 80609BD4  38 80 00 07 */	li r4, 7
/* 80609BD8  38 A0 00 00 */	li r5, 0
/* 80609BDC  4B FF DE 51 */	bl setActionMode__9daB_MGN_cFii
/* 80609BE0  48 00 01 78 */	b lbl_80609D58
lbl_80609BE4:
/* 80609BE4  38 80 00 09 */	li r4, 9
/* 80609BE8  38 A0 00 02 */	li r5, 2
/* 80609BEC  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80609BF0  3C C0 80 61 */	lis r6, l_HIO@ha /* 0x80610450@ha */
/* 80609BF4  38 C6 04 50 */	addi r6, r6, l_HIO@l /* 0x80610450@l */
/* 80609BF8  C0 46 00 14 */	lfs f2, 0x14(r6)
/* 80609BFC  4B FF DD 29 */	bl setBck__9daB_MGN_cFiUcff
/* 80609C00  38 00 00 06 */	li r0, 6
/* 80609C04  98 1C 0A FA */	stb r0, 0xafa(r28)
/* 80609C08  80 1C 21 0C */	lwz r0, 0x210c(r28)
/* 80609C0C  60 00 00 01 */	ori r0, r0, 1
/* 80609C10  90 1C 21 0C */	stw r0, 0x210c(r28)
/* 80609C14  80 1C 1F BC */	lwz r0, 0x1fbc(r28)
/* 80609C18  60 00 00 01 */	ori r0, r0, 1
/* 80609C1C  90 1C 1F BC */	stw r0, 0x1fbc(r28)
/* 80609C20  38 00 00 02 */	li r0, 2
/* 80609C24  98 1C 1F D0 */	stb r0, 0x1fd0(r28)
/* 80609C28  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80609C2C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80609C30  3C 60 80 61 */	lis r3, l_HIO@ha /* 0x80610450@ha */
/* 80609C34  38 63 04 50 */	addi r3, r3, l_HIO@l /* 0x80610450@l */
/* 80609C38  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80609C3C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_80609C40:
/* 80609C40  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 80609C44  38 80 00 01 */	li r4, 1
/* 80609C48  88 03 00 05 */	lbz r0, 5(r3)
/* 80609C4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80609C50  40 82 00 18 */	bne lbl_80609C68
/* 80609C54  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80609C58  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80609C5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80609C60  41 82 00 08 */	beq lbl_80609C68
/* 80609C64  38 80 00 00 */	li r4, 0
lbl_80609C68:
/* 80609C68  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80609C6C  41 82 00 0C */	beq lbl_80609C78
/* 80609C70  7F 83 E3 78 */	mr r3, r28
/* 80609C74  4B FF D6 29 */	bl setBloodEffect__9daB_MGN_cFv
lbl_80609C78:
/* 80609C78  7F 83 E3 78 */	mr r3, r28
/* 80609C7C  4B FF C0 FD */	bl setDashSmokeEffect__9daB_MGN_cFv
/* 80609C80  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80609C84  3C 80 80 61 */	lis r4, l_HIO@ha /* 0x80610450@ha */
/* 80609C88  38 84 04 50 */	addi r4, r4, l_HIO@l /* 0x80610450@l */
/* 80609C8C  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80609C90  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80609C94  4B C6 6A AD */	bl cLib_chaseF__FPfff
/* 80609C98  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80609C9C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80609CA0  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80609CA4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80609CA8  7C 64 02 14 */	add r3, r4, r0
/* 80609CAC  C0 43 00 04 */	lfs f2, 4(r3)
/* 80609CB0  7C 04 04 2E */	lfsx f0, r4, r0
/* 80609CB4  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 80609CB8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80609CBC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80609CC0  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80609CC4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80609CC8  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80609CCC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80609CD0  38 61 00 50 */	addi r3, r1, 0x50
/* 80609CD4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80609CD8  7C 65 1B 78 */	mr r5, r3
/* 80609CDC  4B D3 D3 B5 */	bl PSVECAdd
/* 80609CE0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80609CE4  4B A6 DF 85 */	bl __ct__11dBgS_LinChkFv
/* 80609CE8  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80609CEC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80609CF0  38 A1 00 50 */	addi r5, r1, 0x50
/* 80609CF4  7F 86 E3 78 */	mr r6, r28
/* 80609CF8  4B A6 E0 6D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80609CFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80609D00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80609D04  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80609D08  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80609D0C  4B A6 A6 A9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80609D10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80609D14  41 82 00 38 */	beq lbl_80609D4C
/* 80609D18  38 00 00 00 */	li r0, 0
/* 80609D1C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80609D20  80 1C 21 0C */	lwz r0, 0x210c(r28)
/* 80609D24  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80609D28  90 1C 21 0C */	stw r0, 0x210c(r28)
/* 80609D2C  80 1C 1F BC */	lwz r0, 0x1fbc(r28)
/* 80609D30  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80609D34  90 1C 1F BC */	stw r0, 0x1fbc(r28)
/* 80609D38  7F 83 E3 78 */	mr r3, r28
/* 80609D3C  38 80 00 00 */	li r4, 0
/* 80609D40  4B FF DD 41 */	bl setExitMode__9daB_MGN_cFi
/* 80609D44  38 00 00 03 */	li r0, 3
/* 80609D48  90 1C 0A AC */	stw r0, 0xaac(r28)
lbl_80609D4C:
/* 80609D4C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80609D50  38 80 FF FF */	li r4, -1
/* 80609D54  4B A6 DF 89 */	bl __dt__11dBgS_LinChkFv
lbl_80609D58:
/* 80609D58  39 61 01 C0 */	addi r11, r1, 0x1c0
/* 80609D5C  4B D5 84 C5 */	bl _restgpr_27
/* 80609D60  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 80609D64  7C 08 03 A6 */	mtlr r0
/* 80609D68  38 21 01 C0 */	addi r1, r1, 0x1c0
/* 80609D6C  4E 80 00 20 */	blr 
