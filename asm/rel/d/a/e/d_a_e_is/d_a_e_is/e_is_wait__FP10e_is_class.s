lbl_806F6134:
/* 806F6134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F6138  7C 08 02 A6 */	mflr r0
/* 806F613C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F6140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F6144  93 C1 00 08 */	stw r30, 8(r1)
/* 806F6148  7C 7F 1B 78 */	mr r31, r3
/* 806F614C  3C 80 80 6F */	lis r4, lit_3666@ha
/* 806F6150  C0 44 7B 80 */	lfs f2, lit_3666@l(r4)
/* 806F6154  D0 43 05 2C */	stfs f2, 0x52c(r3)
/* 806F6158  3B C0 00 00 */	li r30, 0
/* 806F615C  38 00 00 05 */	li r0, 5
/* 806F6160  B0 03 06 BA */	sth r0, 0x6ba(r3)
/* 806F6164  A8 03 06 94 */	lha r0, 0x694(r3)
/* 806F6168  2C 00 00 02 */	cmpwi r0, 2
/* 806F616C  41 82 01 2C */	beq lbl_806F6298
/* 806F6170  40 80 00 14 */	bge lbl_806F6184
/* 806F6174  2C 00 00 00 */	cmpwi r0, 0
/* 806F6178  41 82 00 18 */	beq lbl_806F6190
/* 806F617C  40 80 00 7C */	bge lbl_806F61F8
/* 806F6180  48 00 01 88 */	b lbl_806F6308
lbl_806F6184:
/* 806F6184  2C 00 00 04 */	cmpwi r0, 4
/* 806F6188  40 80 01 80 */	bge lbl_806F6308
/* 806F618C  48 00 01 40 */	b lbl_806F62CC
lbl_806F6190:
/* 806F6190  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 806F6194  54 00 00 3E */	slwi r0, r0, 0
/* 806F6198  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 806F619C  38 00 00 00 */	li r0, 0
/* 806F61A0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806F61A4  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 806F61A8  28 00 00 01 */	cmplwi r0, 1
/* 806F61AC  40 82 00 1C */	bne lbl_806F61C8
/* 806F61B0  38 80 00 0B */	li r4, 0xb
/* 806F61B4  3C A0 80 6F */	lis r5, lit_3648@ha
/* 806F61B8  C0 25 7B 6C */	lfs f1, lit_3648@l(r5)
/* 806F61BC  38 A0 00 00 */	li r5, 0
/* 806F61C0  4B FF F8 D5 */	bl anm_init__FP10e_is_classifUcf
/* 806F61C4  48 00 00 18 */	b lbl_806F61DC
lbl_806F61C8:
/* 806F61C8  38 80 00 0A */	li r4, 0xa
/* 806F61CC  3C A0 80 6F */	lis r5, lit_3648@ha
/* 806F61D0  C0 25 7B 6C */	lfs f1, lit_3648@l(r5)
/* 806F61D4  38 A0 00 00 */	li r5, 0
/* 806F61D8  4B FF F8 BD */	bl anm_init__FP10e_is_classifUcf
lbl_806F61DC:
/* 806F61DC  38 00 00 01 */	li r0, 1
/* 806F61E0  B0 1F 06 94 */	sth r0, 0x694(r31)
/* 806F61E4  3C 60 80 6F */	lis r3, lit_3666@ha
/* 806F61E8  C0 03 7B 80 */	lfs f0, lit_3666@l(r3)
/* 806F61EC  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 806F61F0  D0 1F 06 80 */	stfs f0, 0x680(r31)
/* 806F61F4  48 00 01 14 */	b lbl_806F6308
lbl_806F61F8:
/* 806F61F8  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 806F61FC  28 00 00 00 */	cmplwi r0, 0
/* 806F6200  40 82 00 2C */	bne lbl_806F622C
/* 806F6204  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F6208  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806F620C  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 806F6210  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806F6214  7C 05 07 74 */	extsb r5, r0
/* 806F6218  4B 93 F1 48 */	b isSwitch__10dSv_info_cCFii
/* 806F621C  2C 03 00 00 */	cmpwi r3, 0
/* 806F6220  41 82 00 30 */	beq lbl_806F6250
/* 806F6224  3B C0 00 01 */	li r30, 1
/* 806F6228  48 00 00 28 */	b lbl_806F6250
lbl_806F622C:
/* 806F622C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F6230  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806F6234  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 806F6238  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806F623C  7C 05 07 74 */	extsb r5, r0
/* 806F6240  4B 93 F1 20 */	b isSwitch__10dSv_info_cCFii
/* 806F6244  2C 03 00 00 */	cmpwi r3, 0
/* 806F6248  40 82 00 08 */	bne lbl_806F6250
/* 806F624C  3B C0 00 01 */	li r30, 1
lbl_806F6250:
/* 806F6250  88 1F 06 BD */	lbz r0, 0x6bd(r31)
/* 806F6254  7C 00 07 75 */	extsb. r0, r0
/* 806F6258  40 82 00 24 */	bne lbl_806F627C
/* 806F625C  7F C0 07 75 */	extsb. r0, r30
/* 806F6260  41 82 00 A8 */	beq lbl_806F6308
/* 806F6264  7F E3 FB 78 */	mr r3, r31
/* 806F6268  C0 3F 06 AC */	lfs f1, 0x6ac(r31)
/* 806F626C  38 80 10 00 */	li r4, 0x1000
/* 806F6270  4B FF FB C9 */	bl pl_check__FP10e_is_classfs
/* 806F6274  2C 03 00 00 */	cmpwi r3, 0
/* 806F6278  41 82 00 90 */	beq lbl_806F6308
lbl_806F627C:
/* 806F627C  3C 60 80 6F */	lis r3, lit_3648@ha
/* 806F6280  C0 03 7B 6C */	lfs f0, lit_3648@l(r3)
/* 806F6284  D0 1F 06 80 */	stfs f0, 0x680(r31)
/* 806F6288  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 806F628C  38 00 00 02 */	li r0, 2
/* 806F6290  B0 1F 06 94 */	sth r0, 0x694(r31)
/* 806F6294  48 00 00 74 */	b lbl_806F6308
lbl_806F6298:
/* 806F6298  C0 3F 06 84 */	lfs f1, 0x684(r31)
/* 806F629C  3C 60 80 6F */	lis r3, lit_3648@ha
/* 806F62A0  C0 03 7B 6C */	lfs f0, lit_3648@l(r3)
/* 806F62A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F62A8  4C 41 13 82 */	cror 2, 1, 2
/* 806F62AC  40 82 00 5C */	bne lbl_806F6308
/* 806F62B0  38 00 00 03 */	li r0, 3
/* 806F62B4  B0 1F 06 94 */	sth r0, 0x694(r31)
/* 806F62B8  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806F62BC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806F62C0  38 00 00 04 */	li r0, 4
/* 806F62C4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806F62C8  48 00 00 40 */	b lbl_806F6308
lbl_806F62CC:
/* 806F62CC  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806F62D0  38 80 00 01 */	li r4, 1
/* 806F62D4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806F62D8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F62DC  40 82 00 14 */	bne lbl_806F62F0
/* 806F62E0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806F62E4  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 806F62E8  41 82 00 08 */	beq lbl_806F62F0
/* 806F62EC  38 80 00 00 */	li r4, 0
lbl_806F62F0:
/* 806F62F0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806F62F4  41 82 00 14 */	beq lbl_806F6308
/* 806F62F8  38 00 00 01 */	li r0, 1
/* 806F62FC  B0 1F 06 92 */	sth r0, 0x692(r31)
/* 806F6300  38 00 00 00 */	li r0, 0
/* 806F6304  B0 1F 06 94 */	sth r0, 0x694(r31)
lbl_806F6308:
/* 806F6308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F630C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F6310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F6314  7C 08 03 A6 */	mtlr r0
/* 806F6318  38 21 00 10 */	addi r1, r1, 0x10
/* 806F631C  4E 80 00 20 */	blr 
