lbl_8015F97C:
/* 8015F97C  A9 03 00 00 */	lha r8, 0(r3)
/* 8015F980  7C 89 07 34 */	extsh r9, r4
/* 8015F984  7D 48 48 50 */	subf r10, r8, r9
/* 8015F988  7C 08 48 00 */	cmpw r8, r9
/* 8015F98C  41 82 00 94 */	beq lbl_8015FA20
/* 8015F990  7C A0 07 34 */	extsh r0, r5
/* 8015F994  7C AA 03 D6 */	divw r5, r10, r0
/* 8015F998  7C E0 07 34 */	extsh r0, r7
/* 8015F99C  7C 05 00 00 */	cmpw r5, r0
/* 8015F9A0  41 81 00 10 */	bgt lbl_8015F9B0
/* 8015F9A4  7C 00 00 D0 */	neg r0, r0
/* 8015F9A8  7C 05 00 00 */	cmpw r5, r0
/* 8015F9AC  40 80 00 38 */	bge lbl_8015F9E4
lbl_8015F9B0:
/* 8015F9B0  7C C0 07 34 */	extsh r0, r6
/* 8015F9B4  7C 80 00 D0 */	neg r4, r0
/* 8015F9B8  7C 05 20 00 */	cmpw r5, r4
/* 8015F9BC  40 80 00 08 */	bge lbl_8015F9C4
/* 8015F9C0  48 00 00 14 */	b lbl_8015F9D4
lbl_8015F9C4:
/* 8015F9C4  7C 05 00 00 */	cmpw r5, r0
/* 8015F9C8  7C A4 2B 78 */	mr r4, r5
/* 8015F9CC  40 81 00 08 */	ble lbl_8015F9D4
/* 8015F9D0  7C 04 03 78 */	mr r4, r0
lbl_8015F9D4:
/* 8015F9D4  A8 03 00 00 */	lha r0, 0(r3)
/* 8015F9D8  7C 00 22 14 */	add r0, r0, r4
/* 8015F9DC  B0 03 00 00 */	sth r0, 0(r3)
/* 8015F9E0  48 00 00 40 */	b lbl_8015FA20
lbl_8015F9E4:
/* 8015F9E4  2C 0A 00 00 */	cmpwi r10, 0
/* 8015F9E8  41 80 00 20 */	blt lbl_8015FA08
/* 8015F9EC  7C 08 3A 14 */	add r0, r8, r7
/* 8015F9F0  B0 03 00 00 */	sth r0, 0(r3)
/* 8015F9F4  A8 03 00 00 */	lha r0, 0(r3)
/* 8015F9F8  7C 00 48 51 */	subf. r0, r0, r9
/* 8015F9FC  41 81 00 24 */	bgt lbl_8015FA20
/* 8015FA00  B0 83 00 00 */	sth r4, 0(r3)
/* 8015FA04  48 00 00 1C */	b lbl_8015FA20
lbl_8015FA08:
/* 8015FA08  7C 07 40 50 */	subf r0, r7, r8
/* 8015FA0C  B0 03 00 00 */	sth r0, 0(r3)
/* 8015FA10  A8 03 00 00 */	lha r0, 0(r3)
/* 8015FA14  7C 00 48 51 */	subf. r0, r0, r9
/* 8015FA18  41 80 00 08 */	blt lbl_8015FA20
/* 8015FA1C  B0 83 00 00 */	sth r4, 0(r3)
lbl_8015FA20:
/* 8015FA20  A8 03 00 00 */	lha r0, 0(r3)
/* 8015FA24  7C 60 48 50 */	subf r3, r0, r9
/* 8015FA28  4E 80 00 20 */	blr 
