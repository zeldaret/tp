lbl_80ACE828:
/* 80ACE828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACE82C  7C 08 02 A6 */	mflr r0
/* 80ACE830  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACE834  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACE838  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACE83C  7C 7F 1B 78 */	mr r31, r3
/* 80ACE840  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80ACE844  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE848  41 82 00 B8 */	beq lbl_80ACE900
/* 80ACE84C  40 80 00 CC */	bge lbl_80ACE918
/* 80ACE850  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE854  40 80 00 0C */	bge lbl_80ACE860
/* 80ACE858  48 00 00 C0 */	b lbl_80ACE918
/* 80ACE85C  48 00 00 BC */	b lbl_80ACE918
lbl_80ACE860:
/* 80ACE860  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80ACE864  2C 00 00 06 */	cmpwi r0, 6
/* 80ACE868  41 82 00 28 */	beq lbl_80ACE890
/* 80ACE86C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80ACE870  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACE874  4B 67 70 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE878  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80ACE87C  38 00 00 06 */	li r0, 6
/* 80ACE880  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80ACE884  3C 60 80 AD */	lis r3, lit_4716@ha
/* 80ACE888  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)
/* 80ACE88C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80ACE890:
/* 80ACE890  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACE894  2C 00 00 05 */	cmpwi r0, 5
/* 80ACE898  41 82 00 28 */	beq lbl_80ACE8C0
/* 80ACE89C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80ACE8A0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACE8A4  4B 67 6F F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE8A8  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80ACE8AC  38 00 00 05 */	li r0, 5
/* 80ACE8B0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80ACE8B4  3C 60 80 AD */	lis r3, lit_4716@ha
/* 80ACE8B8  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)
/* 80ACE8BC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80ACE8C0:
/* 80ACE8C0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACE8C4  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE8C8  41 82 00 28 */	beq lbl_80ACE8F0
/* 80ACE8CC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACE8D0  4B 67 6E 2C */	b remove__18daNpcT_ActorMngr_cFv
/* 80ACE8D4  38 00 00 00 */	li r0, 0
/* 80ACE8D8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACE8DC  3C 60 80 AD */	lis r3, lit_4063@ha
/* 80ACE8E0  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)
/* 80ACE8E4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACE8E8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE8EC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80ACE8F0:
/* 80ACE8F0  38 00 00 00 */	li r0, 0
/* 80ACE8F4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE8F8  38 00 00 02 */	li r0, 2
/* 80ACE8FC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACE900:
/* 80ACE900  80 1F 10 F8 */	lwz r0, 0x10f8(r31)
/* 80ACE904  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE908  40 82 00 10 */	bne lbl_80ACE918
/* 80ACE90C  38 00 00 01 */	li r0, 1
/* 80ACE910  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80ACE914  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80ACE918:
/* 80ACE918  38 60 00 01 */	li r3, 1
/* 80ACE91C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACE920  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACE924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACE928  7C 08 03 A6 */	mtlr r0
/* 80ACE92C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACE930  4E 80 00 20 */	blr 
