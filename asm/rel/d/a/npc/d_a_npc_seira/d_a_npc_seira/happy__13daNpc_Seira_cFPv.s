lbl_80ACE098:
/* 80ACE098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACE09C  7C 08 02 A6 */	mflr r0
/* 80ACE0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACE0A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACE0A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACE0AC  7C 7F 1B 78 */	mr r31, r3
/* 80ACE0B0  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80ACE0B4  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE0B8  41 82 01 34 */	beq lbl_80ACE1EC
/* 80ACE0BC  40 80 01 48 */	bge lbl_80ACE204
/* 80ACE0C0  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE0C4  40 80 00 0C */	bge lbl_80ACE0D0
/* 80ACE0C8  48 00 01 3C */	b lbl_80ACE204
/* 80ACE0CC  48 00 01 38 */	b lbl_80ACE204
lbl_80ACE0D0:
/* 80ACE0D0  38 60 00 A5 */	li r3, 0xa5
/* 80ACE0D4  4B 67 E9 D8 */	b daNpcT_chkEvtBit__FUl
/* 80ACE0D8  2C 03 00 00 */	cmpwi r3, 0
/* 80ACE0DC  41 82 00 70 */	beq lbl_80ACE14C
/* 80ACE0E0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80ACE0E4  2C 00 00 06 */	cmpwi r0, 6
/* 80ACE0E8  41 82 00 28 */	beq lbl_80ACE110
/* 80ACE0EC  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80ACE0F0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACE0F4  4B 67 77 A4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE0F8  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80ACE0FC  38 00 00 06 */	li r0, 6
/* 80ACE100  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80ACE104  3C 60 80 AD */	lis r3, lit_4716@ha
/* 80ACE108  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)
/* 80ACE10C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80ACE110:
/* 80ACE110  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACE114  2C 00 00 0B */	cmpwi r0, 0xb
/* 80ACE118  41 82 00 28 */	beq lbl_80ACE140
/* 80ACE11C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80ACE120  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACE124  4B 67 77 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE128  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80ACE12C  38 00 00 0B */	li r0, 0xb
/* 80ACE130  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80ACE134  3C 60 80 AD */	lis r3, lit_4716@ha
/* 80ACE138  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)
/* 80ACE13C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80ACE140:
/* 80ACE140  38 00 00 00 */	li r0, 0
/* 80ACE144  98 1F 10 C0 */	stb r0, 0x10c0(r31)
/* 80ACE148  48 00 00 64 */	b lbl_80ACE1AC
lbl_80ACE14C:
/* 80ACE14C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80ACE150  2C 00 00 06 */	cmpwi r0, 6
/* 80ACE154  41 82 00 28 */	beq lbl_80ACE17C
/* 80ACE158  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80ACE15C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACE160  4B 67 77 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE164  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80ACE168  38 00 00 06 */	li r0, 6
/* 80ACE16C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80ACE170  3C 60 80 AD */	lis r3, lit_4716@ha
/* 80ACE174  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)
/* 80ACE178  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80ACE17C:
/* 80ACE17C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACE180  2C 00 00 07 */	cmpwi r0, 7
/* 80ACE184  41 82 00 28 */	beq lbl_80ACE1AC
/* 80ACE188  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80ACE18C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACE190  4B 67 77 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE194  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80ACE198  38 00 00 07 */	li r0, 7
/* 80ACE19C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80ACE1A0  3C 60 80 AD */	lis r3, lit_4716@ha
/* 80ACE1A4  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)
/* 80ACE1A8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80ACE1AC:
/* 80ACE1AC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACE1B0  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE1B4  41 82 00 28 */	beq lbl_80ACE1DC
/* 80ACE1B8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACE1BC  4B 67 75 40 */	b remove__18daNpcT_ActorMngr_cFv
/* 80ACE1C0  38 00 00 00 */	li r0, 0
/* 80ACE1C4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACE1C8  3C 60 80 AD */	lis r3, lit_4063@ha
/* 80ACE1CC  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)
/* 80ACE1D0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACE1D4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE1D8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80ACE1DC:
/* 80ACE1DC  38 00 00 00 */	li r0, 0
/* 80ACE1E0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE1E4  38 00 00 02 */	li r0, 2
/* 80ACE1E8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACE1EC:
/* 80ACE1EC  80 1F 10 F8 */	lwz r0, 0x10f8(r31)
/* 80ACE1F0  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE1F4  40 82 00 10 */	bne lbl_80ACE204
/* 80ACE1F8  38 00 00 01 */	li r0, 1
/* 80ACE1FC  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80ACE200  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80ACE204:
/* 80ACE204  38 60 00 01 */	li r3, 1
/* 80ACE208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACE20C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACE210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACE214  7C 08 03 A6 */	mtlr r0
/* 80ACE218  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACE21C  4E 80 00 20 */	blr 
