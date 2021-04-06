lbl_800F8F84:
/* 800F8F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F8F88  7C 08 02 A6 */	mflr r0
/* 800F8F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F8F90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F8F94  7C 7F 1B 78 */	mr r31, r3
/* 800F8F98  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 800F8F9C  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800F8FA0  7C 03 00 50 */	subf r0, r3, r0
/* 800F8FA4  7C 03 07 34 */	extsh r3, r0
/* 800F8FA8  4B FB A4 ED */	bl getDirectionFromAngle__9daAlink_cFs
/* 800F8FAC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 800F8FB0  54 A0 04 38 */	rlwinm r0, r5, 0, 0x10, 0x1c
/* 800F8FB4  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800F8FB8  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800F8FBC  7C 84 04 2E */	lfsx f4, r4, r0
/* 800F8FC0  38 84 00 04 */	addi r4, r4, 4
/* 800F8FC4  7C 04 04 2E */	lfsx f0, r4, r0
/* 800F8FC8  2C 03 00 02 */	cmpwi r3, 2
/* 800F8FCC  40 82 00 7C */	bne lbl_800F9048
/* 800F8FD0  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800F8FD4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800F8FD8  41 82 00 70 */	beq lbl_800F9048
/* 800F8FDC  C0 3F 37 C8 */	lfs f1, 0x37c8(r31)
/* 800F8FE0  C0 62 93 2C */	lfs f3, lit_7624(r2)
/* 800F8FE4  C0 42 93 54 */	lfs f2, lit_8248(r2)
/* 800F8FE8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F8FEC  EC 03 00 32 */	fmuls f0, f3, f0
/* 800F8FF0  EC 01 00 2A */	fadds f0, f1, f0
/* 800F8FF4  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 800F8FF8  C0 3F 37 D0 */	lfs f1, 0x37d0(r31)
/* 800F8FFC  EC 02 01 32 */	fmuls f0, f2, f4
/* 800F9000  EC 03 00 32 */	fmuls f0, f3, f0
/* 800F9004  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F9008  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 800F900C  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800F9010  38 03 40 00 */	addi r0, r3, 0x4000
/* 800F9014  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800F9018  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800F901C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F9020  7C 03 00 00 */	cmpw r3, r0
/* 800F9024  40 82 00 10 */	bne lbl_800F9034
/* 800F9028  38 00 00 01 */	li r0, 1
/* 800F902C  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800F9030  48 00 00 0C */	b lbl_800F903C
lbl_800F9034:
/* 800F9034  38 00 FF FF */	li r0, -1
/* 800F9038  B0 1F 30 0E */	sth r0, 0x300e(r31)
lbl_800F903C:
/* 800F903C  38 00 FF FF */	li r0, -1
/* 800F9040  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800F9044  48 00 01 B8 */	b lbl_800F91FC
lbl_800F9048:
/* 800F9048  2C 03 00 03 */	cmpwi r3, 3
/* 800F904C  40 82 00 7C */	bne lbl_800F90C8
/* 800F9050  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800F9054  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800F9058  41 82 00 70 */	beq lbl_800F90C8
/* 800F905C  C0 3F 37 C8 */	lfs f1, 0x37c8(r31)
/* 800F9060  C0 62 93 2C */	lfs f3, lit_7624(r2)
/* 800F9064  C0 42 93 54 */	lfs f2, lit_8248(r2)
/* 800F9068  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F906C  EC 03 00 32 */	fmuls f0, f3, f0
/* 800F9070  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F9074  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 800F9078  C0 3F 37 D0 */	lfs f1, 0x37d0(r31)
/* 800F907C  EC 02 01 32 */	fmuls f0, f2, f4
/* 800F9080  EC 03 00 32 */	fmuls f0, f3, f0
/* 800F9084  EC 01 00 2A */	fadds f0, f1, f0
/* 800F9088  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 800F908C  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800F9090  38 03 C0 00 */	addi r0, r3, -16384
/* 800F9094  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800F9098  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800F909C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F90A0  7C 03 00 00 */	cmpw r3, r0
/* 800F90A4  40 82 00 10 */	bne lbl_800F90B4
/* 800F90A8  38 00 00 01 */	li r0, 1
/* 800F90AC  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800F90B0  48 00 00 0C */	b lbl_800F90BC
lbl_800F90B4:
/* 800F90B4  38 00 FF FF */	li r0, -1
/* 800F90B8  B0 1F 30 0E */	sth r0, 0x300e(r31)
lbl_800F90BC:
/* 800F90BC  38 00 FF FF */	li r0, -1
/* 800F90C0  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800F90C4  48 00 01 38 */	b lbl_800F91FC
lbl_800F90C8:
/* 800F90C8  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800F90CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800F90D0  41 82 00 90 */	beq lbl_800F9160
/* 800F90D4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800F90D8  7C 05 00 00 */	cmpw r5, r0
/* 800F90DC  40 82 00 0C */	bne lbl_800F90E8
/* 800F90E0  2C 03 00 00 */	cmpwi r3, 0
/* 800F90E4  41 82 00 14 */	beq lbl_800F90F8
lbl_800F90E8:
/* 800F90E8  7C 05 00 00 */	cmpw r5, r0
/* 800F90EC  41 82 00 74 */	beq lbl_800F9160
/* 800F90F0  2C 03 00 01 */	cmpwi r3, 1
/* 800F90F4  40 82 00 6C */	bne lbl_800F9160
lbl_800F90F8:
/* 800F90F8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800F90FC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800F9100  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800F9104  7C 03 04 2E */	lfsx f0, r3, r0
/* 800F9108  C0 3F 37 C8 */	lfs f1, 0x37c8(r31)
/* 800F910C  C0 62 93 2C */	lfs f3, lit_7624(r2)
/* 800F9110  C0 42 93 54 */	lfs f2, lit_8248(r2)
/* 800F9114  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F9118  EC 03 00 32 */	fmuls f0, f3, f0
/* 800F911C  EC 01 00 2A */	fadds f0, f1, f0
/* 800F9120  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 800F9124  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800F9128  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800F912C  7C 04 04 2E */	lfsx f0, r4, r0
/* 800F9130  C0 3F 37 D0 */	lfs f1, 0x37d0(r31)
/* 800F9134  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F9138  EC 03 00 32 */	fmuls f0, f3, f0
/* 800F913C  EC 01 00 2A */	fadds f0, f1, f0
/* 800F9140  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 800F9144  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F9148  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800F914C  38 00 00 00 */	li r0, 0
/* 800F9150  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800F9154  38 00 FF FF */	li r0, -1
/* 800F9158  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800F915C  48 00 00 A0 */	b lbl_800F91FC
lbl_800F9160:
/* 800F9160  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800F9164  7C 05 00 00 */	cmpw r5, r0
/* 800F9168  40 82 00 0C */	bne lbl_800F9174
/* 800F916C  2C 03 00 01 */	cmpwi r3, 1
/* 800F9170  41 82 00 14 */	beq lbl_800F9184
lbl_800F9174:
/* 800F9174  7C 05 00 00 */	cmpw r5, r0
/* 800F9178  41 82 00 84 */	beq lbl_800F91FC
/* 800F917C  2C 03 00 00 */	cmpwi r3, 0
/* 800F9180  40 82 00 7C */	bne lbl_800F91FC
lbl_800F9184:
/* 800F9184  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800F9188  3C 63 00 01 */	addis r3, r3, 1
/* 800F918C  38 03 80 00 */	addi r0, r3, -32768
/* 800F9190  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800F9194  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800F9198  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800F919C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800F91A0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800F91A4  7C 03 04 2E */	lfsx f0, r3, r0
/* 800F91A8  C0 3F 37 C8 */	lfs f1, 0x37c8(r31)
/* 800F91AC  C0 62 93 2C */	lfs f3, lit_7624(r2)
/* 800F91B0  C0 42 93 54 */	lfs f2, lit_8248(r2)
/* 800F91B4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F91B8  EC 03 00 32 */	fmuls f0, f3, f0
/* 800F91BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F91C0  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 800F91C4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800F91C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800F91CC  7C 04 04 2E */	lfsx f0, r4, r0
/* 800F91D0  C0 3F 37 D0 */	lfs f1, 0x37d0(r31)
/* 800F91D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F91D8  EC 03 00 32 */	fmuls f0, f3, f0
/* 800F91DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F91E0  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 800F91E4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F91E8  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800F91EC  38 00 00 00 */	li r0, 0
/* 800F91F0  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800F91F4  38 00 FF FF */	li r0, -1
/* 800F91F8  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_800F91FC:
/* 800F91FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F9200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F9204  7C 08 03 A6 */	mtlr r0
/* 800F9208  38 21 00 10 */	addi r1, r1, 0x10
/* 800F920C  4E 80 00 20 */	blr 
