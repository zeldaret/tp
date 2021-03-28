lbl_8099AFE0:
/* 8099AFE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099AFE4  7C 08 02 A6 */	mflr r0
/* 8099AFE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099AFEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8099AFF0  7C 7F 1B 78 */	mr r31, r3
/* 8099AFF4  88 03 0D 20 */	lbz r0, 0xd20(r3)
/* 8099AFF8  2C 00 00 00 */	cmpwi r0, 0
/* 8099AFFC  41 82 00 5C */	beq lbl_8099B058
/* 8099B000  38 C0 00 00 */	li r6, 0
/* 8099B004  38 60 00 00 */	li r3, 0
/* 8099B008  7C C4 33 78 */	mr r4, r6
/* 8099B00C  3C A0 80 9A */	lis r5, lit_4123@ha
/* 8099B010  C0 05 D2 F0 */	lfs f0, lit_4123@l(r5)
/* 8099B014  38 00 00 02 */	li r0, 2
/* 8099B018  7C 09 03 A6 */	mtctr r0
lbl_8099B01C:
/* 8099B01C  7C BF 22 14 */	add r5, r31, r4
/* 8099B020  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 8099B024  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 8099B028  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 8099B02C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 8099B030  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8099B034  38 63 00 04 */	addi r3, r3, 4
/* 8099B038  38 84 00 06 */	addi r4, r4, 6
/* 8099B03C  42 00 FF E0 */	bdnz lbl_8099B01C
/* 8099B040  38 00 00 00 */	li r0, 0
/* 8099B044  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 8099B048  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 8099B04C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 8099B050  38 00 00 01 */	li r0, 1
/* 8099B054  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8099B058:
/* 8099B058  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 8099B05C  4B 9C 6F BC */	b __ptmf_test
/* 8099B060  2C 03 00 00 */	cmpwi r3, 0
/* 8099B064  41 82 00 54 */	beq lbl_8099B0B8
/* 8099B068  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 8099B06C  38 9F 10 C8 */	addi r4, r31, 0x10c8
/* 8099B070  4B 9C 6F D8 */	b __ptmf_cmpr
/* 8099B074  2C 03 00 00 */	cmpwi r3, 0
/* 8099B078  40 82 00 1C */	bne lbl_8099B094
/* 8099B07C  7F E3 FB 78 */	mr r3, r31
/* 8099B080  38 80 00 00 */	li r4, 0
/* 8099B084  39 9F 10 D4 */	addi r12, r31, 0x10d4
/* 8099B088  4B 9C 6F FC */	b __ptmf_scall
/* 8099B08C  60 00 00 00 */	nop 
/* 8099B090  48 00 00 28 */	b lbl_8099B0B8
lbl_8099B094:
/* 8099B094  80 7F 10 C8 */	lwz r3, 0x10c8(r31)
/* 8099B098  80 1F 10 CC */	lwz r0, 0x10cc(r31)
/* 8099B09C  90 61 00 08 */	stw r3, 8(r1)
/* 8099B0A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8099B0A4  80 1F 10 D0 */	lwz r0, 0x10d0(r31)
/* 8099B0A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8099B0AC  7F E3 FB 78 */	mr r3, r31
/* 8099B0B0  38 81 00 08 */	addi r4, r1, 8
/* 8099B0B4  48 00 01 29 */	bl setAction__13daNpcClerkT_cFM13daNpcClerkT_cFPCvPvPv_i
lbl_8099B0B8:
/* 8099B0B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8099B0BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099B0C0  7C 08 03 A6 */	mtlr r0
/* 8099B0C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8099B0C8  4E 80 00 20 */	blr 
