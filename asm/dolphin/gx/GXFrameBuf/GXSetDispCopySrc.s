lbl_8035CA04:
/* 8035CA04  81 02 CB 80 */	lwz r8, __GXData(r2)
/* 8035CA08  39 20 00 00 */	li r9, 0
/* 8035CA0C  54 A7 04 3E */	clrlwi r7, r5, 0x10
/* 8035CA10  91 28 01 E0 */	stw r9, 0x1e0(r8)
/* 8035CA14  54 C5 04 3E */	clrlwi r5, r6, 0x10
/* 8035CA18  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8035CA1C  80 68 01 E0 */	lwz r3, 0x1e0(r8)
/* 8035CA20  50 03 05 BE */	rlwimi r3, r0, 0, 0x16, 0x1f
/* 8035CA24  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8035CA28  90 68 01 E0 */	stw r3, 0x1e0(r8)
/* 8035CA2C  38 C0 00 49 */	li r6, 0x49
/* 8035CA30  38 87 FF FF */	addi r4, r7, -1
/* 8035CA34  80 E8 01 E0 */	lwz r7, 0x1e0(r8)
/* 8035CA38  50 07 53 2A */	rlwimi r7, r0, 0xa, 0xc, 0x15
/* 8035CA3C  38 65 FF FF */	addi r3, r5, -1
/* 8035CA40  90 E8 01 E0 */	stw r7, 0x1e0(r8)
/* 8035CA44  38 00 00 4A */	li r0, 0x4a
/* 8035CA48  80 A8 01 E0 */	lwz r5, 0x1e0(r8)
/* 8035CA4C  50 C5 C0 0E */	rlwimi r5, r6, 0x18, 0, 7
/* 8035CA50  90 A8 01 E0 */	stw r5, 0x1e0(r8)
/* 8035CA54  91 28 01 E4 */	stw r9, 0x1e4(r8)
/* 8035CA58  80 A8 01 E4 */	lwz r5, 0x1e4(r8)
/* 8035CA5C  50 85 05 BE */	rlwimi r5, r4, 0, 0x16, 0x1f
/* 8035CA60  90 A8 01 E4 */	stw r5, 0x1e4(r8)
/* 8035CA64  80 88 01 E4 */	lwz r4, 0x1e4(r8)
/* 8035CA68  50 64 53 2A */	rlwimi r4, r3, 0xa, 0xc, 0x15
/* 8035CA6C  90 88 01 E4 */	stw r4, 0x1e4(r8)
/* 8035CA70  80 68 01 E4 */	lwz r3, 0x1e4(r8)
/* 8035CA74  50 03 C0 0E */	rlwimi r3, r0, 0x18, 0, 7
/* 8035CA78  90 68 01 E4 */	stw r3, 0x1e4(r8)
/* 8035CA7C  4E 80 00 20 */	blr 
