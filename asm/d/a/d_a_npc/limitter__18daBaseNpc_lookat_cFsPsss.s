lbl_8014DB40:
/* 8014DB40  7C 88 07 34 */	extsh r8, r4
/* 8014DB44  A8 65 00 00 */	lha r3, 0(r5)
/* 8014DB48  7D 28 1A 14 */	add r9, r8, r3
/* 8014DB4C  7C C0 07 34 */	extsh r0, r6
/* 8014DB50  7C 00 48 00 */	cmpw r0, r9
/* 8014DB54  40 80 00 24 */	bge lbl_8014DB78
/* 8014DB58  7C 08 00 00 */	cmpw r8, r0
/* 8014DB5C  40 80 00 14 */	bge lbl_8014DB70
/* 8014DB60  7C 00 48 50 */	subf r0, r0, r9
/* 8014DB64  7C 00 18 50 */	subf r0, r0, r3
/* 8014DB68  B0 05 00 00 */	sth r0, 0(r5)
/* 8014DB6C  48 00 00 0C */	b lbl_8014DB78
lbl_8014DB70:
/* 8014DB70  38 00 00 00 */	li r0, 0
/* 8014DB74  B0 05 00 00 */	sth r0, 0(r5)
lbl_8014DB78:
/* 8014DB78  A8 C5 00 00 */	lha r6, 0(r5)
/* 8014DB7C  7D 08 32 14 */	add r8, r8, r6
/* 8014DB80  7C E3 07 34 */	extsh r3, r7
/* 8014DB84  7C 08 18 00 */	cmpw r8, r3
/* 8014DB88  4C 80 00 20 */	bgelr 
/* 8014DB8C  7C 80 07 34 */	extsh r0, r4
/* 8014DB90  7C 03 00 00 */	cmpw r3, r0
/* 8014DB94  40 80 00 14 */	bge lbl_8014DBA8
/* 8014DB98  7C 03 40 50 */	subf r0, r3, r8
/* 8014DB9C  7C 00 30 50 */	subf r0, r0, r6
/* 8014DBA0  B0 05 00 00 */	sth r0, 0(r5)
/* 8014DBA4  4E 80 00 20 */	blr 
lbl_8014DBA8:
/* 8014DBA8  38 00 00 00 */	li r0, 0
/* 8014DBAC  B0 05 00 00 */	sth r0, 0(r5)
/* 8014DBB0  4E 80 00 20 */	blr 
