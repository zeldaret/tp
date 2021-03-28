lbl_80A1F50C:
/* 80A1F50C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1F510  7C 08 02 A6 */	mflr r0
/* 80A1F514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1F518  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1F51C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A1F520  7C 7E 1B 78 */	mr r30, r3
/* 80A1F524  3C A0 80 A2 */	lis r5, lit_3908@ha
/* 80A1F528  38 A5 10 80 */	addi r5, r5, lit_3908@l
/* 80A1F52C  3B E0 00 00 */	li r31, 0
/* 80A1F530  80 04 00 00 */	lwz r0, 0(r4)
/* 80A1F534  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A1F538  41 82 00 54 */	beq lbl_80A1F58C
/* 80A1F53C  40 80 00 10 */	bge lbl_80A1F54C
/* 80A1F540  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A1F544  41 82 00 14 */	beq lbl_80A1F558
/* 80A1F548  48 00 00 D0 */	b lbl_80A1F618
lbl_80A1F54C:
/* 80A1F54C  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A1F550  40 80 00 C8 */	bge lbl_80A1F618
/* 80A1F554  48 00 00 58 */	b lbl_80A1F5AC
lbl_80A1F558:
/* 80A1F558  38 80 10 00 */	li r4, 0x1000
/* 80A1F55C  4B FF FC 3D */	bl _turn_to_link__15daNpcKasiHana_cFs
/* 80A1F560  2C 03 00 00 */	cmpwi r3, 0
/* 80A1F564  41 82 00 10 */	beq lbl_80A1F574
/* 80A1F568  7F C3 F3 78 */	mr r3, r30
/* 80A1F56C  38 80 00 02 */	li r4, 2
/* 80A1F570  4B FF E2 B5 */	bl setLookMode__15daNpcKasiHana_cFi
lbl_80A1F574:
/* 80A1F574  80 7E 14 30 */	lwz r3, 0x1430(r30)
/* 80A1F578  34 03 FF FF */	addic. r0, r3, -1
/* 80A1F57C  90 1E 14 30 */	stw r0, 0x1430(r30)
/* 80A1F580  41 81 00 9C */	bgt lbl_80A1F61C
/* 80A1F584  3B E0 00 01 */	li r31, 1
/* 80A1F588  48 00 00 94 */	b lbl_80A1F61C
lbl_80A1F58C:
/* 80A1F58C  38 80 00 00 */	li r4, 0
/* 80A1F590  38 A0 00 01 */	li r5, 1
/* 80A1F594  38 C0 00 00 */	li r6, 0
/* 80A1F598  4B 73 47 EC */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A1F59C  2C 03 00 00 */	cmpwi r3, 0
/* 80A1F5A0  41 82 00 7C */	beq lbl_80A1F61C
/* 80A1F5A4  3B E0 00 01 */	li r31, 1
/* 80A1F5A8  48 00 00 74 */	b lbl_80A1F61C
lbl_80A1F5AC:
/* 80A1F5AC  A8 1E 09 E0 */	lha r0, 0x9e0(r30)
/* 80A1F5B0  2C 00 00 00 */	cmpwi r0, 0
/* 80A1F5B4  40 82 00 44 */	bne lbl_80A1F5F8
/* 80A1F5B8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A1F5BC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A1F5C0  C0 05 02 68 */	lfs f0, 0x268(r5)
/* 80A1F5C4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80A1F5C8  41 82 00 10 */	beq lbl_80A1F5D8
/* 80A1F5CC  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80A1F5D0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80A1F5D4  40 82 00 24 */	bne lbl_80A1F5F8
lbl_80A1F5D8:
/* 80A1F5D8  7F C3 F3 78 */	mr r3, r30
/* 80A1F5DC  38 80 00 04 */	li r4, 4
/* 80A1F5E0  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 80A1F5E4  38 A0 00 00 */	li r5, 0
/* 80A1F5E8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A1F5EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1F5F0  7D 89 03 A6 */	mtctr r12
/* 80A1F5F4  4E 80 04 21 */	bctrl 
lbl_80A1F5F8:
/* 80A1F5F8  80 7E 14 30 */	lwz r3, 0x1430(r30)
/* 80A1F5FC  38 03 FF FF */	addi r0, r3, -1
/* 80A1F600  90 1E 14 30 */	stw r0, 0x1430(r30)
/* 80A1F604  80 1E 14 30 */	lwz r0, 0x1430(r30)
/* 80A1F608  2C 00 00 00 */	cmpwi r0, 0
/* 80A1F60C  40 82 00 10 */	bne lbl_80A1F61C
/* 80A1F610  3B E0 00 01 */	li r31, 1
/* 80A1F614  48 00 00 08 */	b lbl_80A1F61C
lbl_80A1F618:
/* 80A1F618  3B E0 00 01 */	li r31, 1
lbl_80A1F61C:
/* 80A1F61C  7F E3 FB 78 */	mr r3, r31
/* 80A1F620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1F624  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A1F628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1F62C  7C 08 03 A6 */	mtlr r0
/* 80A1F630  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1F634  4E 80 00 20 */	blr 
