lbl_80B73680:
/* 80B73680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B73684  7C 08 02 A6 */	mflr r0
/* 80B73688  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7368C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B73690  93 C1 00 08 */	stw r30, 8(r1)
/* 80B73694  7C 7F 1B 78 */	mr r31, r3
/* 80B73698  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B7369C  2C 00 00 02 */	cmpwi r0, 2
/* 80B736A0  41 82 00 80 */	beq lbl_80B73720
/* 80B736A4  40 80 01 6C */	bge lbl_80B73810
/* 80B736A8  2C 00 00 00 */	cmpwi r0, 0
/* 80B736AC  40 80 00 0C */	bge lbl_80B736B8
/* 80B736B0  48 00 01 60 */	b lbl_80B73810
/* 80B736B4  48 00 01 5C */	b lbl_80B73810
lbl_80B736B8:
/* 80B736B8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B736BC  2C 00 00 01 */	cmpwi r0, 1
/* 80B736C0  41 82 00 28 */	beq lbl_80B736E8
/* 80B736C4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B736C8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B736CC  4B 5D 21 CC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B736D0  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B736D4  38 00 00 01 */	li r0, 1
/* 80B736D8  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B736DC  3C 60 80 B7 */	lis r3, lit_4557@ha
/* 80B736E0  C0 03 4D 0C */	lfs f0, lit_4557@l(r3)
/* 80B736E4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B736E8:
/* 80B736E8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B736EC  2C 00 00 00 */	cmpwi r0, 0
/* 80B736F0  41 82 00 28 */	beq lbl_80B73718
/* 80B736F4  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B736F8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B736FC  4B 5D 21 9C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B73700  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B73704  38 00 00 00 */	li r0, 0
/* 80B73708  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B7370C  3C 60 80 B7 */	lis r3, lit_4557@ha
/* 80B73710  C0 03 4D 0C */	lfs f0, lit_4557@l(r3)
/* 80B73714  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B73718:
/* 80B73718  38 00 00 02 */	li r0, 2
/* 80B7371C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B73720:
/* 80B73720  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B73724  2C 00 00 00 */	cmpwi r0, 0
/* 80B73728  40 82 00 E8 */	bne lbl_80B73810
/* 80B7372C  7F E3 FB 78 */	mr r3, r31
/* 80B73730  4B 5D 7C 08 */	b srchPlayerActor__8daNpcT_cFv
/* 80B73734  2C 03 00 00 */	cmpwi r3, 0
/* 80B73738  41 82 00 54 */	beq lbl_80B7378C
/* 80B7373C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B73740  2C 00 00 01 */	cmpwi r0, 1
/* 80B73744  41 82 00 2C */	beq lbl_80B73770
/* 80B73748  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B7374C  4B 5D 1F B0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B73750  38 00 00 00 */	li r0, 0
/* 80B73754  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B73758  3C 60 80 B7 */	lis r3, lit_4182@ha
/* 80B7375C  C0 03 4C F8 */	lfs f0, lit_4182@l(r3)
/* 80B73760  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B73764  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B73768  38 00 00 01 */	li r0, 1
/* 80B7376C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B73770:
/* 80B73770  38 00 00 00 */	li r0, 0
/* 80B73774  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B73778  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 80B7377C  20 00 00 01 */	subfic r0, r0, 1
/* 80B73780  7C 00 00 34 */	cntlzw r0, r0
/* 80B73784  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80B73788  48 00 00 54 */	b lbl_80B737DC
lbl_80B7378C:
/* 80B7378C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B73790  2C 00 00 00 */	cmpwi r0, 0
/* 80B73794  41 82 00 28 */	beq lbl_80B737BC
/* 80B73798  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B7379C  4B 5D 1F 60 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B737A0  38 00 00 00 */	li r0, 0
/* 80B737A4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B737A8  3C 60 80 B7 */	lis r3, lit_4182@ha
/* 80B737AC  C0 03 4C F8 */	lfs f0, lit_4182@l(r3)
/* 80B737B0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B737B4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B737B8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B737BC:
/* 80B737BC  38 00 00 00 */	li r0, 0
/* 80B737C0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B737C4  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80B737C8  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B737CC  7C 63 00 50 */	subf r3, r3, r0
/* 80B737D0  30 03 FF FF */	addic r0, r3, -1
/* 80B737D4  7C 00 19 10 */	subfe r0, r0, r3
/* 80B737D8  54 00 06 3E */	clrlwi r0, r0, 0x18
lbl_80B737DC:
/* 80B737DC  2C 00 00 00 */	cmpwi r0, 0
/* 80B737E0  41 82 00 30 */	beq lbl_80B73810
/* 80B737E4  7F E3 FB 78 */	mr r3, r31
/* 80B737E8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B737EC  38 A0 FF FF */	li r5, -1
/* 80B737F0  38 C0 FF FF */	li r6, -1
/* 80B737F4  38 E0 00 0F */	li r7, 0xf
/* 80B737F8  39 00 00 00 */	li r8, 0
/* 80B737FC  4B 5D 7E 4C */	b step__8daNpcT_cFsiiii
/* 80B73800  2C 03 00 00 */	cmpwi r3, 0
/* 80B73804  41 82 00 0C */	beq lbl_80B73810
/* 80B73808  38 00 00 01 */	li r0, 1
/* 80B7380C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B73810:
/* 80B73810  38 60 00 01 */	li r3, 1
/* 80B73814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B73818  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B7381C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B73820  7C 08 03 A6 */	mtlr r0
/* 80B73824  38 21 00 10 */	addi r1, r1, 0x10
/* 80B73828  4E 80 00 20 */	blr 
