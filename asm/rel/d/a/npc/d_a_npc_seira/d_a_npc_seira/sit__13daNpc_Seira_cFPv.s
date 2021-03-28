lbl_80ACDE74:
/* 80ACDE74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACDE78  7C 08 02 A6 */	mflr r0
/* 80ACDE7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACDE80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACDE84  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACDE88  7C 7F 1B 78 */	mr r31, r3
/* 80ACDE8C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80ACDE90  2C 00 00 02 */	cmpwi r0, 2
/* 80ACDE94  41 82 00 C8 */	beq lbl_80ACDF5C
/* 80ACDE98  40 80 01 E4 */	bge lbl_80ACE07C
/* 80ACDE9C  2C 00 00 00 */	cmpwi r0, 0
/* 80ACDEA0  40 80 00 0C */	bge lbl_80ACDEAC
/* 80ACDEA4  48 00 01 D8 */	b lbl_80ACE07C
/* 80ACDEA8  48 00 01 D4 */	b lbl_80ACE07C
lbl_80ACDEAC:
/* 80ACDEAC  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80ACDEB0  2C 00 00 02 */	cmpwi r0, 2
/* 80ACDEB4  41 82 00 28 */	beq lbl_80ACDEDC
/* 80ACDEB8  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80ACDEBC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACDEC0  4B 67 79 D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACDEC4  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80ACDEC8  38 00 00 02 */	li r0, 2
/* 80ACDECC  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80ACDED0  3C 60 80 AD */	lis r3, lit_4716@ha
/* 80ACDED4  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)
/* 80ACDED8  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80ACDEDC:
/* 80ACDEDC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACDEE0  2C 00 00 02 */	cmpwi r0, 2
/* 80ACDEE4  41 82 00 28 */	beq lbl_80ACDF0C
/* 80ACDEE8  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80ACDEEC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACDEF0  4B 67 79 A8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACDEF4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80ACDEF8  38 00 00 02 */	li r0, 2
/* 80ACDEFC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80ACDF00  3C 60 80 AD */	lis r3, lit_4716@ha
/* 80ACDF04  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)
/* 80ACDF08  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80ACDF0C:
/* 80ACDF0C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACDF10  2C 00 00 00 */	cmpwi r0, 0
/* 80ACDF14  41 82 00 28 */	beq lbl_80ACDF3C
/* 80ACDF18  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACDF1C  4B 67 77 E0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80ACDF20  38 00 00 00 */	li r0, 0
/* 80ACDF24  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACDF28  3C 60 80 AD */	lis r3, lit_4063@ha
/* 80ACDF2C  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)
/* 80ACDF30  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACDF34  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACDF38  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80ACDF3C:
/* 80ACDF3C  38 00 00 00 */	li r0, 0
/* 80ACDF40  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACDF44  38 60 00 5A */	li r3, 0x5a
/* 80ACDF48  38 80 00 5A */	li r4, 0x5a
/* 80ACDF4C  48 00 1A F9 */	bl func_80ACFA44
/* 80ACDF50  90 7F 10 F4 */	stw r3, 0x10f4(r31)
/* 80ACDF54  38 00 00 02 */	li r0, 2
/* 80ACDF58  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACDF5C:
/* 80ACDF5C  80 1F 10 F8 */	lwz r0, 0x10f8(r31)
/* 80ACDF60  2C 00 00 02 */	cmpwi r0, 2
/* 80ACDF64  40 82 00 10 */	bne lbl_80ACDF74
/* 80ACDF68  38 00 00 01 */	li r0, 1
/* 80ACDF6C  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80ACDF70  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80ACDF74:
/* 80ACDF74  80 1F 10 F4 */	lwz r0, 0x10f4(r31)
/* 80ACDF78  2C 00 00 00 */	cmpwi r0, 0
/* 80ACDF7C  40 82 00 F8 */	bne lbl_80ACE074
/* 80ACDF80  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACDF84  2C 00 00 02 */	cmpwi r0, 2
/* 80ACDF88  40 82 00 68 */	bne lbl_80ACDFF0
/* 80ACDF8C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80ACDF90  2C 00 00 03 */	cmpwi r0, 3
/* 80ACDF94  41 82 00 28 */	beq lbl_80ACDFBC
/* 80ACDF98  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80ACDF9C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACDFA0  4B 67 78 F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACDFA4  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80ACDFA8  38 00 00 03 */	li r0, 3
/* 80ACDFAC  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80ACDFB0  3C 60 80 AD */	lis r3, lit_4716@ha
/* 80ACDFB4  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)
/* 80ACDFB8  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80ACDFBC:
/* 80ACDFBC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACDFC0  2C 00 00 0E */	cmpwi r0, 0xe
/* 80ACDFC4  41 82 00 B8 */	beq lbl_80ACE07C
/* 80ACDFC8  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80ACDFCC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACDFD0  4B 67 78 C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACDFD4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80ACDFD8  38 00 00 0E */	li r0, 0xe
/* 80ACDFDC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80ACDFE0  3C 60 80 AD */	lis r3, lit_4716@ha
/* 80ACDFE4  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)
/* 80ACDFE8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80ACDFEC  48 00 00 90 */	b lbl_80ACE07C
lbl_80ACDFF0:
/* 80ACDFF0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACDFF4  4B 67 7A 30 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80ACDFF8  2C 03 00 00 */	cmpwi r3, 0
/* 80ACDFFC  41 82 00 80 */	beq lbl_80ACE07C
/* 80ACE000  38 60 00 5A */	li r3, 0x5a
/* 80ACE004  38 80 00 5A */	li r4, 0x5a
/* 80ACE008  48 00 1A 3D */	bl func_80ACFA44
/* 80ACE00C  90 7F 10 F4 */	stw r3, 0x10f4(r31)
/* 80ACE010  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80ACE014  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE018  41 82 00 28 */	beq lbl_80ACE040
/* 80ACE01C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80ACE020  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACE024  4B 67 78 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE028  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80ACE02C  38 00 00 02 */	li r0, 2
/* 80ACE030  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80ACE034  3C 60 80 AD */	lis r3, lit_4716@ha
/* 80ACE038  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)
/* 80ACE03C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80ACE040:
/* 80ACE040  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACE044  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE048  41 82 00 34 */	beq lbl_80ACE07C
/* 80ACE04C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80ACE050  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACE054  4B 67 78 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE058  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80ACE05C  38 00 00 02 */	li r0, 2
/* 80ACE060  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80ACE064  3C 60 80 AD */	lis r3, lit_4716@ha
/* 80ACE068  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)
/* 80ACE06C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80ACE070  48 00 00 0C */	b lbl_80ACE07C
lbl_80ACE074:
/* 80ACE074  38 7F 10 F4 */	addi r3, r31, 0x10f4
/* 80ACE078  48 00 19 B1 */	bl func_80ACFA28
lbl_80ACE07C:
/* 80ACE07C  38 60 00 01 */	li r3, 1
/* 80ACE080  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACE084  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACE088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACE08C  7C 08 03 A6 */	mtlr r0
/* 80ACE090  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACE094  4E 80 00 20 */	blr 
