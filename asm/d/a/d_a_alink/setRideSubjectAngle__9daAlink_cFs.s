lbl_800EEF30:
/* 800EEF30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EEF34  7C 08 02 A6 */	mflr r0
/* 800EEF38  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EEF3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EEF40  93 C1 00 08 */	stw r30, 8(r1)
/* 800EEF44  7C 7E 1B 78 */	mr r30, r3
/* 800EEF48  7C 9F 23 78 */	mr r31, r4
/* 800EEF4C  A8 83 04 E6 */	lha r4, 0x4e6(r3)
/* 800EEF50  A8 03 05 9E */	lha r0, 0x59e(r3)
/* 800EEF54  7C 04 02 14 */	add r0, r4, r0
/* 800EEF58  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 800EEF5C  4B FD F9 45 */	bl setBodyAngleToCamera__9daAlink_cFv
/* 800EEF60  80 1E 27 EC */	lwz r0, 0x27ec(r30)
/* 800EEF64  28 00 00 00 */	cmplwi r0, 0
/* 800EEF68  41 82 00 0C */	beq lbl_800EEF74
/* 800EEF6C  38 C0 27 10 */	li r6, 0x2710
/* 800EEF70  48 00 00 10 */	b lbl_800EEF80
lbl_800EEF74:
/* 800EEF74  3C 80 80 39 */	lis r4, m__19daAlinkHIO_horse_c0@ha /* 0x8038E5A4@ha */
/* 800EEF78  38 84 E5 A4 */	addi r4, r4, m__19daAlinkHIO_horse_c0@l /* 0x8038E5A4@l */
/* 800EEF7C  A8 C4 00 58 */	lha r6, 0x58(r4)
lbl_800EEF80:
/* 800EEF80  3C 80 80 39 */	lis r4, m__19daAlinkHIO_horse_c0@ha /* 0x8038E5A4@ha */
/* 800EEF84  38 84 E5 A4 */	addi r4, r4, m__19daAlinkHIO_horse_c0@l /* 0x8038E5A4@l */
/* 800EEF88  A8 04 00 5A */	lha r0, 0x5a(r4)
/* 800EEF8C  A8 BE 05 9C */	lha r5, 0x59c(r30)
/* 800EEF90  7C 05 00 00 */	cmpw r5, r0
/* 800EEF94  40 80 00 08 */	bge lbl_800EEF9C
/* 800EEF98  48 00 00 1C */	b lbl_800EEFB4
lbl_800EEF9C:
/* 800EEF9C  7C A4 07 34 */	extsh r4, r5
/* 800EEFA0  7C C0 07 34 */	extsh r0, r6
/* 800EEFA4  7C 04 00 00 */	cmpw r4, r0
/* 800EEFA8  40 81 00 08 */	ble lbl_800EEFB0
/* 800EEFAC  7C C5 33 78 */	mr r5, r6
lbl_800EEFB0:
/* 800EEFB0  7C A0 2B 78 */	mr r0, r5
lbl_800EEFB4:
/* 800EEFB4  B0 1E 05 9C */	sth r0, 0x59c(r30)
/* 800EEFB8  7F E4 07 34 */	extsh r4, r31
/* 800EEFBC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800EEFC0  7C 04 00 50 */	subf r0, r4, r0
/* 800EEFC4  7C 05 07 34 */	extsh r5, r0
/* 800EEFC8  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800EEFCC  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800EEFD0  41 82 00 34 */	beq lbl_800EF004
/* 800EEFD4  2C 05 C0 00 */	cmpwi r5, -16384
/* 800EEFD8  40 80 00 0C */	bge lbl_800EEFE4
/* 800EEFDC  38 00 C0 00 */	li r0, -16384
/* 800EEFE0  48 00 00 18 */	b lbl_800EEFF8
lbl_800EEFE4:
/* 800EEFE4  7C A0 07 34 */	extsh r0, r5
/* 800EEFE8  2C 00 40 00 */	cmpwi r0, 0x4000
/* 800EEFEC  38 00 40 00 */	li r0, 0x4000
/* 800EEFF0  41 81 00 08 */	bgt lbl_800EEFF8
/* 800EEFF4  7C A0 2B 78 */	mr r0, r5
lbl_800EEFF8:
/* 800EEFF8  7C 00 07 34 */	extsh r0, r0
/* 800EEFFC  90 1E 31 90 */	stw r0, 0x3190(r30)
/* 800EF000  48 00 00 08 */	b lbl_800EF008
lbl_800EF004:
/* 800EF004  90 BE 31 90 */	stw r5, 0x3190(r30)
lbl_800EF008:
/* 800EF008  80 1E 31 90 */	lwz r0, 0x3190(r30)
/* 800EF00C  B0 1E 05 9E */	sth r0, 0x59e(r30)
/* 800EF010  B3 FE 04 E6 */	sth r31, 0x4e6(r30)
/* 800EF014  B3 FE 04 DE */	sth r31, 0x4de(r30)
/* 800EF018  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800EF01C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800EF020  40 82 00 18 */	bne lbl_800EF038
/* 800EF024  A8 1E 05 9C */	lha r0, 0x59c(r30)
/* 800EF028  B0 1E 31 0A */	sth r0, 0x310a(r30)
/* 800EF02C  80 1E 31 90 */	lwz r0, 0x3190(r30)
/* 800EF030  7C 04 02 14 */	add r0, r4, r0
/* 800EF034  B0 1E 31 0C */	sth r0, 0x310c(r30)
lbl_800EF038:
/* 800EF038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EF03C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800EF040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EF044  7C 08 03 A6 */	mtlr r0
/* 800EF048  38 21 00 10 */	addi r1, r1, 0x10
/* 800EF04C  4E 80 00 20 */	blr 
