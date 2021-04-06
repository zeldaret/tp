lbl_8096A9FC:
/* 8096A9FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096AA00  7C 08 02 A6 */	mflr r0
/* 8096AA04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096AA08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096AA0C  7C 7F 1B 78 */	mr r31, r3
/* 8096AA10  80 03 09 6C */	lwz r0, 0x96c(r3)
/* 8096AA14  2C 00 00 00 */	cmpwi r0, 0
/* 8096AA18  40 82 00 4C */	bne lbl_8096AA64
/* 8096AA1C  B0 9F 09 96 */	sth r4, 0x996(r31)
/* 8096AA20  38 00 00 00 */	li r0, 0
/* 8096AA24  90 1F 09 68 */	stw r0, 0x968(r31)
/* 8096AA28  A8 7F 08 F2 */	lha r3, 0x8f2(r31)
/* 8096AA2C  A8 1F 09 96 */	lha r0, 0x996(r31)
/* 8096AA30  7C 03 00 00 */	cmpw r3, r0
/* 8096AA34  40 82 00 10 */	bne lbl_8096AA44
/* 8096AA38  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 8096AA3C  38 03 00 01 */	addi r0, r3, 1
/* 8096AA40  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_8096AA44:
/* 8096AA44  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 8096AA48  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8096AA4C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8096AA50  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8096AA54  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 8096AA58  38 03 00 01 */	addi r0, r3, 1
/* 8096AA5C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 8096AA60  48 00 00 60 */	b lbl_8096AAC0
lbl_8096AA64:
/* 8096AA64  2C 00 00 01 */	cmpwi r0, 1
/* 8096AA68  40 82 00 58 */	bne lbl_8096AAC0
/* 8096AA6C  A8 9F 09 96 */	lha r4, 0x996(r31)
/* 8096AA70  3C A0 80 97 */	lis r5, lit_4847@ha /* 0x8096CA4C@ha */
/* 8096AA74  C0 25 CA 4C */	lfs f1, lit_4847@l(r5)  /* 0x8096CA4C@l */
/* 8096AA78  38 A0 00 00 */	li r5, 0
/* 8096AA7C  4B 7E 94 79 */	bl turn__8daNpcF_cFsfi
/* 8096AA80  2C 03 00 00 */	cmpwi r3, 0
/* 8096AA84  41 82 00 2C */	beq lbl_8096AAB0
/* 8096AA88  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8096AA8C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8096AA90  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8096AA94  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 8096AA98  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8096AA9C  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 8096AAA0  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 8096AAA4  38 03 00 01 */	addi r0, r3, 1
/* 8096AAA8  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 8096AAAC  48 00 00 14 */	b lbl_8096AAC0
lbl_8096AAB0:
/* 8096AAB0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8096AAB4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8096AAB8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8096AABC  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
lbl_8096AAC0:
/* 8096AAC0  80 9F 09 6C */	lwz r4, 0x96c(r31)
/* 8096AAC4  38 00 00 01 */	li r0, 1
/* 8096AAC8  7C 80 02 78 */	xor r0, r4, r0
/* 8096AACC  7C 03 0E 70 */	srawi r3, r0, 1
/* 8096AAD0  7C 00 20 38 */	and r0, r0, r4
/* 8096AAD4  7C 00 18 50 */	subf r0, r0, r3
/* 8096AAD8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8096AADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096AAE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096AAE4  7C 08 03 A6 */	mtlr r0
/* 8096AAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8096AAEC  4E 80 00 20 */	blr 
