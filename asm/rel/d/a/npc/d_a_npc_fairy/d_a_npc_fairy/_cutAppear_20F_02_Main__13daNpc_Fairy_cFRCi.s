lbl_809B51F4:
/* 809B51F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B51F8  7C 08 02 A6 */	mflr r0
/* 809B51FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B5200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B5204  93 C1 00 08 */	stw r30, 8(r1)
/* 809B5208  7C 7F 1B 78 */	mr r31, r3
/* 809B520C  3B C0 00 00 */	li r30, 0
/* 809B5210  80 04 00 00 */	lwz r0, 0(r4)
/* 809B5214  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B5218  41 82 00 78 */	beq lbl_809B5290
/* 809B521C  40 80 00 1C */	bge lbl_809B5238
/* 809B5220  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B5224  41 82 00 50 */	beq lbl_809B5274
/* 809B5228  40 80 00 FC */	bge lbl_809B5324
/* 809B522C  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B5230  41 82 00 20 */	beq lbl_809B5250
/* 809B5234  48 00 00 F0 */	b lbl_809B5324
lbl_809B5238:
/* 809B5238  2C 00 00 32 */	cmpwi r0, 0x32
/* 809B523C  41 82 00 E4 */	beq lbl_809B5320
/* 809B5240  40 80 00 E4 */	bge lbl_809B5324
/* 809B5244  2C 00 00 28 */	cmpwi r0, 0x28
/* 809B5248  41 82 00 B4 */	beq lbl_809B52FC
/* 809B524C  48 00 00 D8 */	b lbl_809B5324
lbl_809B5250:
/* 809B5250  A8 7F 0F 90 */	lha r3, 0xf90(r31)
/* 809B5254  38 03 FF FF */	addi r0, r3, -1
/* 809B5258  B0 1F 0F 90 */	sth r0, 0xf90(r31)
/* 809B525C  7C 00 07 35 */	extsh. r0, r0
/* 809B5260  41 81 00 C4 */	bgt lbl_809B5324
/* 809B5264  38 60 00 0B */	li r3, 0xb
/* 809B5268  4B 7F 35 7C */	b dKy_change_colpat__FUc
/* 809B526C  3B C0 00 01 */	li r30, 1
/* 809B5270  48 00 00 B4 */	b lbl_809B5324
lbl_809B5274:
/* 809B5274  A8 7F 0F 90 */	lha r3, 0xf90(r31)
/* 809B5278  38 03 FF FF */	addi r0, r3, -1
/* 809B527C  B0 1F 0F 90 */	sth r0, 0xf90(r31)
/* 809B5280  7C 00 07 35 */	extsh. r0, r0
/* 809B5284  41 81 00 A0 */	bgt lbl_809B5324
/* 809B5288  3B C0 00 01 */	li r30, 1
/* 809B528C  48 00 00 98 */	b lbl_809B5324
lbl_809B5290:
/* 809B5290  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 809B5294  38 A0 00 01 */	li r5, 1
/* 809B5298  88 04 00 11 */	lbz r0, 0x11(r4)
/* 809B529C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809B52A0  40 82 00 1C */	bne lbl_809B52BC
/* 809B52A4  3C 60 80 9C */	lis r3, lit_3943@ha
/* 809B52A8  C0 23 93 C4 */	lfs f1, lit_3943@l(r3)
/* 809B52AC  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 809B52B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809B52B4  41 82 00 08 */	beq lbl_809B52BC
/* 809B52B8  38 A0 00 00 */	li r5, 0
lbl_809B52BC:
/* 809B52BC  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 809B52C0  41 82 00 64 */	beq lbl_809B5324
/* 809B52C4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809B52C8  2C 00 00 03 */	cmpwi r0, 3
/* 809B52CC  41 82 00 28 */	beq lbl_809B52F4
/* 809B52D0  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809B52D4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809B52D8  4B 79 05 C0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B52DC  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809B52E0  38 00 00 03 */	li r0, 3
/* 809B52E4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809B52E8  3C 60 80 9C */	lis r3, lit_3945@ha
/* 809B52EC  C0 03 93 CC */	lfs f0, lit_3945@l(r3)
/* 809B52F0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809B52F4:
/* 809B52F4  3B C0 00 01 */	li r30, 1
/* 809B52F8  48 00 00 2C */	b lbl_809B5324
lbl_809B52FC:
/* 809B52FC  38 80 00 00 */	li r4, 0
/* 809B5300  38 A0 00 00 */	li r5, 0
/* 809B5304  38 C0 00 00 */	li r6, 0
/* 809B5308  38 E0 00 00 */	li r7, 0
/* 809B530C  4B 79 69 6C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B5310  2C 03 00 00 */	cmpwi r3, 0
/* 809B5314  41 82 00 10 */	beq lbl_809B5324
/* 809B5318  3B C0 00 01 */	li r30, 1
/* 809B531C  48 00 00 08 */	b lbl_809B5324
lbl_809B5320:
/* 809B5320  3B C0 00 01 */	li r30, 1
lbl_809B5324:
/* 809B5324  7F C3 F3 78 */	mr r3, r30
/* 809B5328  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B532C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B5330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B5334  7C 08 03 A6 */	mtlr r0
/* 809B5338  38 21 00 10 */	addi r1, r1, 0x10
/* 809B533C  4E 80 00 20 */	blr 
