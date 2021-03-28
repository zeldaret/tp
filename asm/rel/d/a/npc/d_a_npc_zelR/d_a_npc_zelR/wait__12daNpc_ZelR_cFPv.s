lbl_80B70504:
/* 80B70504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B70508  7C 08 02 A6 */	mflr r0
/* 80B7050C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B70510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B70514  93 C1 00 08 */	stw r30, 8(r1)
/* 80B70518  7C 7F 1B 78 */	mr r31, r3
/* 80B7051C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B70520  2C 00 00 02 */	cmpwi r0, 2
/* 80B70524  41 82 00 80 */	beq lbl_80B705A4
/* 80B70528  40 80 01 6C */	bge lbl_80B70694
/* 80B7052C  2C 00 00 00 */	cmpwi r0, 0
/* 80B70530  40 80 00 0C */	bge lbl_80B7053C
/* 80B70534  48 00 01 60 */	b lbl_80B70694
/* 80B70538  48 00 01 5C */	b lbl_80B70694
lbl_80B7053C:
/* 80B7053C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B70540  2C 00 00 01 */	cmpwi r0, 1
/* 80B70544  41 82 00 28 */	beq lbl_80B7056C
/* 80B70548  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B7054C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B70550  4B 5D 53 48 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B70554  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B70558  38 00 00 01 */	li r0, 1
/* 80B7055C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B70560  3C 60 80 B7 */	lis r3, lit_4557@ha
/* 80B70564  C0 03 1B 90 */	lfs f0, lit_4557@l(r3)
/* 80B70568  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B7056C:
/* 80B7056C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B70570  2C 00 00 00 */	cmpwi r0, 0
/* 80B70574  41 82 00 28 */	beq lbl_80B7059C
/* 80B70578  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B7057C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B70580  4B 5D 53 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B70584  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B70588  38 00 00 00 */	li r0, 0
/* 80B7058C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B70590  3C 60 80 B7 */	lis r3, lit_4557@ha
/* 80B70594  C0 03 1B 90 */	lfs f0, lit_4557@l(r3)
/* 80B70598  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B7059C:
/* 80B7059C  38 00 00 02 */	li r0, 2
/* 80B705A0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B705A4:
/* 80B705A4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B705A8  2C 00 00 00 */	cmpwi r0, 0
/* 80B705AC  40 82 00 E8 */	bne lbl_80B70694
/* 80B705B0  7F E3 FB 78 */	mr r3, r31
/* 80B705B4  4B 5D AD 84 */	b srchPlayerActor__8daNpcT_cFv
/* 80B705B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B705BC  41 82 00 54 */	beq lbl_80B70610
/* 80B705C0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B705C4  2C 00 00 01 */	cmpwi r0, 1
/* 80B705C8  41 82 00 2C */	beq lbl_80B705F4
/* 80B705CC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B705D0  4B 5D 51 2C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B705D4  38 00 00 00 */	li r0, 0
/* 80B705D8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B705DC  3C 60 80 B7 */	lis r3, lit_4182@ha
/* 80B705E0  C0 03 1B 7C */	lfs f0, lit_4182@l(r3)
/* 80B705E4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B705E8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B705EC  38 00 00 01 */	li r0, 1
/* 80B705F0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B705F4:
/* 80B705F4  38 00 00 00 */	li r0, 0
/* 80B705F8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B705FC  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 80B70600  20 00 00 01 */	subfic r0, r0, 1
/* 80B70604  7C 00 00 34 */	cntlzw r0, r0
/* 80B70608  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80B7060C  48 00 00 54 */	b lbl_80B70660
lbl_80B70610:
/* 80B70610  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B70614  2C 00 00 00 */	cmpwi r0, 0
/* 80B70618  41 82 00 28 */	beq lbl_80B70640
/* 80B7061C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B70620  4B 5D 50 DC */	b remove__18daNpcT_ActorMngr_cFv
/* 80B70624  38 00 00 00 */	li r0, 0
/* 80B70628  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B7062C  3C 60 80 B7 */	lis r3, lit_4182@ha
/* 80B70630  C0 03 1B 7C */	lfs f0, lit_4182@l(r3)
/* 80B70634  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B70638  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B7063C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B70640:
/* 80B70640  38 00 00 00 */	li r0, 0
/* 80B70644  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B70648  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80B7064C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B70650  7C 63 00 50 */	subf r3, r3, r0
/* 80B70654  30 03 FF FF */	addic r0, r3, -1
/* 80B70658  7C 00 19 10 */	subfe r0, r0, r3
/* 80B7065C  54 00 06 3E */	clrlwi r0, r0, 0x18
lbl_80B70660:
/* 80B70660  2C 00 00 00 */	cmpwi r0, 0
/* 80B70664  41 82 00 30 */	beq lbl_80B70694
/* 80B70668  7F E3 FB 78 */	mr r3, r31
/* 80B7066C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B70670  38 A0 FF FF */	li r5, -1
/* 80B70674  38 C0 FF FF */	li r6, -1
/* 80B70678  38 E0 00 0F */	li r7, 0xf
/* 80B7067C  39 00 00 00 */	li r8, 0
/* 80B70680  4B 5D AF C8 */	b step__8daNpcT_cFsiiii
/* 80B70684  2C 03 00 00 */	cmpwi r3, 0
/* 80B70688  41 82 00 0C */	beq lbl_80B70694
/* 80B7068C  38 00 00 01 */	li r0, 1
/* 80B70690  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B70694:
/* 80B70694  38 60 00 01 */	li r3, 1
/* 80B70698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7069C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B706A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B706A4  7C 08 03 A6 */	mtlr r0
/* 80B706A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B706AC  4E 80 00 20 */	blr 
