lbl_80AB4200:
/* 80AB4200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB4204  7C 08 02 A6 */	mflr r0
/* 80AB4208  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB420C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB4210  7C 7F 1B 78 */	mr r31, r3
/* 80AB4214  80 03 09 6C */	lwz r0, 0x96c(r3)
/* 80AB4218  2C 00 00 00 */	cmpwi r0, 0
/* 80AB421C  40 82 00 4C */	bne lbl_80AB4268
/* 80AB4220  B0 9F 09 96 */	sth r4, 0x996(r31)
/* 80AB4224  38 00 00 00 */	li r0, 0
/* 80AB4228  90 1F 09 68 */	stw r0, 0x968(r31)
/* 80AB422C  A8 7F 08 F2 */	lha r3, 0x8f2(r31)
/* 80AB4230  A8 1F 09 96 */	lha r0, 0x996(r31)
/* 80AB4234  7C 03 00 00 */	cmpw r3, r0
/* 80AB4238  40 82 00 10 */	bne lbl_80AB4248
/* 80AB423C  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80AB4240  38 03 00 01 */	addi r0, r3, 1
/* 80AB4244  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80AB4248:
/* 80AB4248  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80AB424C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80AB4250  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AB4254  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80AB4258  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80AB425C  38 03 00 01 */	addi r0, r3, 1
/* 80AB4260  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80AB4264  48 00 00 60 */	b lbl_80AB42C4
lbl_80AB4268:
/* 80AB4268  2C 00 00 01 */	cmpwi r0, 1
/* 80AB426C  40 82 00 58 */	bne lbl_80AB42C4
/* 80AB4270  A8 9F 09 96 */	lha r4, 0x996(r31)
/* 80AB4274  3C A0 80 AB */	lis r5, lit_4392@ha /* 0x80AB58A0@ha */
/* 80AB4278  C0 25 58 A0 */	lfs f1, lit_4392@l(r5)  /* 0x80AB58A0@l */
/* 80AB427C  38 A0 00 00 */	li r5, 0
/* 80AB4280  4B 69 FC 75 */	bl turn__8daNpcF_cFsfi
/* 80AB4284  2C 03 00 00 */	cmpwi r3, 0
/* 80AB4288  41 82 00 2C */	beq lbl_80AB42B4
/* 80AB428C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AB4290  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80AB4294  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AB4298  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80AB429C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AB42A0  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80AB42A4  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80AB42A8  38 03 00 01 */	addi r0, r3, 1
/* 80AB42AC  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80AB42B0  48 00 00 14 */	b lbl_80AB42C4
lbl_80AB42B4:
/* 80AB42B4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AB42B8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80AB42BC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AB42C0  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
lbl_80AB42C4:
/* 80AB42C4  80 9F 09 6C */	lwz r4, 0x96c(r31)
/* 80AB42C8  38 00 00 01 */	li r0, 1
/* 80AB42CC  7C 80 02 78 */	xor r0, r4, r0
/* 80AB42D0  7C 03 0E 70 */	srawi r3, r0, 1
/* 80AB42D4  7C 00 20 38 */	and r0, r0, r4
/* 80AB42D8  7C 00 18 50 */	subf r0, r0, r3
/* 80AB42DC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80AB42E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB42E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB42E8  7C 08 03 A6 */	mtlr r0
/* 80AB42EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB42F0  4E 80 00 20 */	blr 
