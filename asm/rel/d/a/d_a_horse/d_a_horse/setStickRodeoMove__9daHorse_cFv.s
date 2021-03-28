lbl_8083A890:
/* 8083A890  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8083A894  7C 08 02 A6 */	mflr r0
/* 8083A898  90 01 00 44 */	stw r0, 0x44(r1)
/* 8083A89C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8083A8A0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8083A8A4  7C 7E 1B 78 */	mr r30, r3
/* 8083A8A8  3C 60 80 84 */	lis r3, lit_3894@ha
/* 8083A8AC  3B E3 54 AC */	addi r31, r3, lit_3894@l
/* 8083A8B0  80 7E 11 4C */	lwz r3, 0x114c(r30)
/* 8083A8B4  28 03 00 00 */	cmplwi r3, 0
/* 8083A8B8  41 82 03 9C */	beq lbl_8083AC54
/* 8083A8BC  80 83 00 08 */	lwz r4, 8(r3)
/* 8083A8C0  88 1E 16 BA */	lbz r0, 0x16ba(r30)
/* 8083A8C4  54 03 20 36 */	slwi r3, r0, 4
/* 8083A8C8  38 63 00 04 */	addi r3, r3, 4
/* 8083A8CC  7C 64 1A 14 */	add r3, r4, r3
/* 8083A8D0  C0 23 00 08 */	lfs f1, 8(r3)
/* 8083A8D4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8083A8D8  EC 61 00 28 */	fsubs f3, f1, f0
/* 8083A8DC  C0 23 00 04 */	lfs f1, 4(r3)
/* 8083A8E0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8083A8E4  EC 41 00 28 */	fsubs f2, f1, f0
/* 8083A8E8  C0 23 00 00 */	lfs f1, 0(r3)
/* 8083A8EC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8083A8F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8083A8F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8083A8F8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8083A8FC  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8083A900  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8083A904  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083A908  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8083A90C  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8083A910  38 61 00 0C */	addi r3, r1, 0xc
/* 8083A914  4B B0 C8 24 */	b PSVECSquareMag
/* 8083A918  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083A91C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083A920  40 81 00 58 */	ble lbl_8083A978
/* 8083A924  FC 00 08 34 */	frsqrte f0, f1
/* 8083A928  C8 9F 01 60 */	lfd f4, 0x160(r31)
/* 8083A92C  FC 44 00 32 */	fmul f2, f4, f0
/* 8083A930  C8 7F 01 68 */	lfd f3, 0x168(r31)
/* 8083A934  FC 00 00 32 */	fmul f0, f0, f0
/* 8083A938  FC 01 00 32 */	fmul f0, f1, f0
/* 8083A93C  FC 03 00 28 */	fsub f0, f3, f0
/* 8083A940  FC 02 00 32 */	fmul f0, f2, f0
/* 8083A944  FC 44 00 32 */	fmul f2, f4, f0
/* 8083A948  FC 00 00 32 */	fmul f0, f0, f0
/* 8083A94C  FC 01 00 32 */	fmul f0, f1, f0
/* 8083A950  FC 03 00 28 */	fsub f0, f3, f0
/* 8083A954  FC 02 00 32 */	fmul f0, f2, f0
/* 8083A958  FC 44 00 32 */	fmul f2, f4, f0
/* 8083A95C  FC 00 00 32 */	fmul f0, f0, f0
/* 8083A960  FC 01 00 32 */	fmul f0, f1, f0
/* 8083A964  FC 03 00 28 */	fsub f0, f3, f0
/* 8083A968  FC 02 00 32 */	fmul f0, f2, f0
/* 8083A96C  FC 21 00 32 */	fmul f1, f1, f0
/* 8083A970  FC 20 08 18 */	frsp f1, f1
/* 8083A974  48 00 00 88 */	b lbl_8083A9FC
lbl_8083A978:
/* 8083A978  C8 1F 01 70 */	lfd f0, 0x170(r31)
/* 8083A97C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083A980  40 80 00 10 */	bge lbl_8083A990
/* 8083A984  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8083A988  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8083A98C  48 00 00 70 */	b lbl_8083A9FC
lbl_8083A990:
/* 8083A990  D0 21 00 08 */	stfs f1, 8(r1)
/* 8083A994  80 81 00 08 */	lwz r4, 8(r1)
/* 8083A998  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8083A99C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8083A9A0  7C 03 00 00 */	cmpw r3, r0
/* 8083A9A4  41 82 00 14 */	beq lbl_8083A9B8
/* 8083A9A8  40 80 00 40 */	bge lbl_8083A9E8
/* 8083A9AC  2C 03 00 00 */	cmpwi r3, 0
/* 8083A9B0  41 82 00 20 */	beq lbl_8083A9D0
/* 8083A9B4  48 00 00 34 */	b lbl_8083A9E8
lbl_8083A9B8:
/* 8083A9B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8083A9BC  41 82 00 0C */	beq lbl_8083A9C8
/* 8083A9C0  38 00 00 01 */	li r0, 1
/* 8083A9C4  48 00 00 28 */	b lbl_8083A9EC
lbl_8083A9C8:
/* 8083A9C8  38 00 00 02 */	li r0, 2
/* 8083A9CC  48 00 00 20 */	b lbl_8083A9EC
lbl_8083A9D0:
/* 8083A9D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8083A9D4  41 82 00 0C */	beq lbl_8083A9E0
/* 8083A9D8  38 00 00 05 */	li r0, 5
/* 8083A9DC  48 00 00 10 */	b lbl_8083A9EC
lbl_8083A9E0:
/* 8083A9E0  38 00 00 03 */	li r0, 3
/* 8083A9E4  48 00 00 08 */	b lbl_8083A9EC
lbl_8083A9E8:
/* 8083A9E8  38 00 00 04 */	li r0, 4
lbl_8083A9EC:
/* 8083A9EC  2C 00 00 01 */	cmpwi r0, 1
/* 8083A9F0  40 82 00 0C */	bne lbl_8083A9FC
/* 8083A9F4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8083A9F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8083A9FC:
/* 8083A9FC  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8083AA00  D0 1E 17 58 */	stfs f0, 0x1758(r30)
/* 8083AA04  80 1E 17 4C */	lwz r0, 0x174c(r30)
/* 8083AA08  60 00 00 10 */	ori r0, r0, 0x10
/* 8083AA0C  90 1E 17 4C */	stw r0, 0x174c(r30)
/* 8083AA10  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 8083AA14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083AA18  40 80 01 14 */	bge lbl_8083AB2C
/* 8083AA1C  88 1E 16 BC */	lbz r0, 0x16bc(r30)
/* 8083AA20  28 00 00 00 */	cmplwi r0, 0
/* 8083AA24  40 82 01 08 */	bne lbl_8083AB2C
/* 8083AA28  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 8083AA2C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8083AA30  40 82 00 24 */	bne lbl_8083AA54
/* 8083AA34  80 7E 11 4C */	lwz r3, 0x114c(r30)
/* 8083AA38  80 63 00 08 */	lwz r3, 8(r3)
/* 8083AA3C  88 1E 16 BA */	lbz r0, 0x16ba(r30)
/* 8083AA40  54 00 20 36 */	slwi r0, r0, 4
/* 8083AA44  7C 63 02 14 */	add r3, r3, r0
/* 8083AA48  88 03 00 03 */	lbz r0, 3(r3)
/* 8083AA4C  28 00 00 01 */	cmplwi r0, 1
/* 8083AA50  40 82 00 10 */	bne lbl_8083AA60
lbl_8083AA54:
/* 8083AA54  88 1E 16 BB */	lbz r0, 0x16bb(r30)
/* 8083AA58  28 00 00 0F */	cmplwi r0, 0xf
/* 8083AA5C  41 80 00 40 */	blt lbl_8083AA9C
lbl_8083AA60:
/* 8083AA60  88 1E 16 B4 */	lbz r0, 0x16b4(r30)
/* 8083AA64  28 00 00 01 */	cmplwi r0, 1
/* 8083AA68  40 82 00 34 */	bne lbl_8083AA9C
/* 8083AA6C  80 1E 17 4C */	lwz r0, 0x174c(r30)
/* 8083AA70  60 00 02 00 */	ori r0, r0, 0x200
/* 8083AA74  90 1E 17 4C */	stw r0, 0x174c(r30)
/* 8083AA78  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 8083AA7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8083AA80  40 82 00 1C */	bne lbl_8083AA9C
/* 8083AA84  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 8083AA88  4B A2 CE CC */	b cM_rndF__Ff
/* 8083AA8C  FC 00 08 1E */	fctiwz f0, f1
/* 8083AA90  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8083AA94  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8083AA98  98 1E 16 BC */	stb r0, 0x16bc(r30)
lbl_8083AA9C:
/* 8083AA9C  88 7E 16 BA */	lbz r3, 0x16ba(r30)
/* 8083AAA0  38 03 00 01 */	addi r0, r3, 1
/* 8083AAA4  98 1E 16 BA */	stb r0, 0x16ba(r30)
/* 8083AAA8  80 7E 11 4C */	lwz r3, 0x114c(r30)
/* 8083AAAC  A0 63 00 00 */	lhz r3, 0(r3)
/* 8083AAB0  88 1E 16 BA */	lbz r0, 0x16ba(r30)
/* 8083AAB4  7C 03 00 00 */	cmpw r3, r0
/* 8083AAB8  40 82 00 0C */	bne lbl_8083AAC4
/* 8083AABC  38 00 00 00 */	li r0, 0
/* 8083AAC0  98 1E 16 BA */	stb r0, 0x16ba(r30)
lbl_8083AAC4:
/* 8083AAC4  80 7E 11 4C */	lwz r3, 0x114c(r30)
/* 8083AAC8  80 83 00 08 */	lwz r4, 8(r3)
/* 8083AACC  88 1E 16 BA */	lbz r0, 0x16ba(r30)
/* 8083AAD0  54 03 20 36 */	slwi r3, r0, 4
/* 8083AAD4  38 63 00 04 */	addi r3, r3, 4
/* 8083AAD8  7C 64 1A 14 */	add r3, r4, r3
/* 8083AADC  C0 23 00 08 */	lfs f1, 8(r3)
/* 8083AAE0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8083AAE4  EC 61 00 28 */	fsubs f3, f1, f0
/* 8083AAE8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8083AAEC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8083AAF0  EC 41 00 28 */	fsubs f2, f1, f0
/* 8083AAF4  C0 23 00 00 */	lfs f1, 0(r3)
/* 8083AAF8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8083AAFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8083AB00  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8083AB04  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8083AB08  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8083AB0C  3B E0 00 01 */	li r31, 1
/* 8083AB10  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 8083AB14  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8083AB18  41 82 00 4C */	beq lbl_8083AB64
/* 8083AB1C  88 7E 16 BB */	lbz r3, 0x16bb(r30)
/* 8083AB20  38 03 00 01 */	addi r0, r3, 1
/* 8083AB24  98 1E 16 BB */	stb r0, 0x16bb(r30)
/* 8083AB28  48 00 00 3C */	b lbl_8083AB64
lbl_8083AB2C:
/* 8083AB2C  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 8083AB30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083AB34  40 80 00 2C */	bge lbl_8083AB60
/* 8083AB38  88 1E 16 B4 */	lbz r0, 0x16b4(r30)
/* 8083AB3C  28 00 00 02 */	cmplwi r0, 2
/* 8083AB40  41 82 00 20 */	beq lbl_8083AB60
/* 8083AB44  28 00 00 03 */	cmplwi r0, 3
/* 8083AB48  41 82 00 18 */	beq lbl_8083AB60
/* 8083AB4C  88 1E 16 BC */	lbz r0, 0x16bc(r30)
/* 8083AB50  28 00 00 00 */	cmplwi r0, 0
/* 8083AB54  41 82 00 0C */	beq lbl_8083AB60
/* 8083AB58  38 00 00 00 */	li r0, 0
/* 8083AB5C  98 1E 16 BC */	stb r0, 0x16bc(r30)
lbl_8083AB60:
/* 8083AB60  3B E0 00 00 */	li r31, 0
lbl_8083AB64:
/* 8083AB64  38 61 00 18 */	addi r3, r1, 0x18
/* 8083AB68  4B A2 C5 C0 */	b atan2sX_Z__4cXyzCFv
/* 8083AB6C  B0 7E 16 EC */	sth r3, 0x16ec(r30)
/* 8083AB70  88 1E 16 B4 */	lbz r0, 0x16b4(r30)
/* 8083AB74  28 00 00 03 */	cmplwi r0, 3
/* 8083AB78  41 82 00 A0 */	beq lbl_8083AC18
/* 8083AB7C  A8 7E 16 EC */	lha r3, 0x16ec(r30)
/* 8083AB80  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8083AB84  4B A3 62 A0 */	b cLib_distanceAngleS__Fss
/* 8083AB88  2C 03 50 00 */	cmpwi r3, 0x5000
/* 8083AB8C  40 81 00 8C */	ble lbl_8083AC18
/* 8083AB90  88 7E 16 BA */	lbz r3, 0x16ba(r30)
/* 8083AB94  38 03 00 01 */	addi r0, r3, 1
/* 8083AB98  98 1E 16 BA */	stb r0, 0x16ba(r30)
/* 8083AB9C  80 7E 11 4C */	lwz r3, 0x114c(r30)
/* 8083ABA0  A0 63 00 00 */	lhz r3, 0(r3)
/* 8083ABA4  88 1E 16 BA */	lbz r0, 0x16ba(r30)
/* 8083ABA8  7C 03 00 00 */	cmpw r3, r0
/* 8083ABAC  40 82 00 0C */	bne lbl_8083ABB8
/* 8083ABB0  38 00 00 00 */	li r0, 0
/* 8083ABB4  98 1E 16 BA */	stb r0, 0x16ba(r30)
lbl_8083ABB8:
/* 8083ABB8  80 7E 11 4C */	lwz r3, 0x114c(r30)
/* 8083ABBC  80 83 00 08 */	lwz r4, 8(r3)
/* 8083ABC0  88 1E 16 BA */	lbz r0, 0x16ba(r30)
/* 8083ABC4  54 03 20 36 */	slwi r3, r0, 4
/* 8083ABC8  38 63 00 04 */	addi r3, r3, 4
/* 8083ABCC  7C 64 1A 14 */	add r3, r4, r3
/* 8083ABD0  C0 23 00 08 */	lfs f1, 8(r3)
/* 8083ABD4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8083ABD8  EC 61 00 28 */	fsubs f3, f1, f0
/* 8083ABDC  C0 23 00 04 */	lfs f1, 4(r3)
/* 8083ABE0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8083ABE4  EC 41 00 28 */	fsubs f2, f1, f0
/* 8083ABE8  C0 23 00 00 */	lfs f1, 0(r3)
/* 8083ABEC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8083ABF0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8083ABF4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8083ABF8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8083ABFC  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8083AC00  38 61 00 18 */	addi r3, r1, 0x18
/* 8083AC04  4B A2 C5 24 */	b atan2sX_Z__4cXyzCFv
/* 8083AC08  B0 7E 16 EC */	sth r3, 0x16ec(r30)
/* 8083AC0C  3B E0 00 01 */	li r31, 1
/* 8083AC10  38 00 00 00 */	li r0, 0
/* 8083AC14  98 1E 16 BC */	stb r0, 0x16bc(r30)
lbl_8083AC18:
/* 8083AC18  2C 1F 00 00 */	cmpwi r31, 0
/* 8083AC1C  41 82 00 48 */	beq lbl_8083AC64
/* 8083AC20  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8083AC24  A8 1E 16 EC */	lha r0, 0x16ec(r30)
/* 8083AC28  7C 03 00 50 */	subf r0, r3, r0
/* 8083AC2C  7C 00 07 35 */	extsh. r0, r0
/* 8083AC30  40 81 00 14 */	ble lbl_8083AC44
/* 8083AC34  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 8083AC38  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8083AC3C  90 1E 17 44 */	stw r0, 0x1744(r30)
/* 8083AC40  48 00 00 24 */	b lbl_8083AC64
lbl_8083AC44:
/* 8083AC44  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 8083AC48  60 00 00 20 */	ori r0, r0, 0x20
/* 8083AC4C  90 1E 17 44 */	stw r0, 0x1744(r30)
/* 8083AC50  48 00 00 14 */	b lbl_8083AC64
lbl_8083AC54:
/* 8083AC54  38 00 00 00 */	li r0, 0
/* 8083AC58  B0 1E 16 EC */	sth r0, 0x16ec(r30)
/* 8083AC5C  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083AC60  D0 1E 17 58 */	stfs f0, 0x1758(r30)
lbl_8083AC64:
/* 8083AC64  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8083AC68  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8083AC6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8083AC70  7C 08 03 A6 */	mtlr r0
/* 8083AC74  38 21 00 40 */	addi r1, r1, 0x40
/* 8083AC78  4E 80 00 20 */	blr 
