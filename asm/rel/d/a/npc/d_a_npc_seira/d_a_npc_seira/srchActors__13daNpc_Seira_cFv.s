lbl_80ACC980:
/* 80ACC980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACC984  7C 08 02 A6 */	mflr r0
/* 80ACC988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACC98C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACC990  7C 7F 1B 78 */	mr r31, r3
/* 80ACC994  88 03 10 C1 */	lbz r0, 0x10c1(r3)
/* 80ACC998  2C 00 00 05 */	cmpwi r0, 5
/* 80ACC99C  41 82 00 48 */	beq lbl_80ACC9E4
/* 80ACC9A0  40 80 00 94 */	bge lbl_80ACCA34
/* 80ACC9A4  2C 00 00 03 */	cmpwi r0, 3
/* 80ACC9A8  40 80 00 8C */	bge lbl_80ACCA34
/* 80ACC9AC  2C 00 00 01 */	cmpwi r0, 1
/* 80ACC9B0  40 80 00 08 */	bge lbl_80ACC9B8
/* 80ACC9B4  48 00 00 80 */	b lbl_80ACCA34
lbl_80ACC9B8:
/* 80ACC9B8  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 80ACC9BC  4B 67 8D 4D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80ACC9C0  28 03 00 00 */	cmplwi r3, 0
/* 80ACC9C4  40 82 00 70 */	bne lbl_80ACCA34
/* 80ACC9C8  7F E3 FB 78 */	mr r3, r31
/* 80ACC9CC  38 80 01 0D */	li r4, 0x10d
/* 80ACC9D0  4B 67 F4 5D */	bl getNearestActorP__8daNpcT_cFs
/* 80ACC9D4  7C 64 1B 78 */	mr r4, r3
/* 80ACC9D8  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 80ACC9DC  4B 67 8D 05 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80ACC9E0  48 00 00 54 */	b lbl_80ACCA34
lbl_80ACC9E4:
/* 80ACC9E4  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 80ACC9E8  4B 67 8D 21 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80ACC9EC  28 03 00 00 */	cmplwi r3, 0
/* 80ACC9F0  40 82 00 1C */	bne lbl_80ACCA0C
/* 80ACC9F4  7F E3 FB 78 */	mr r3, r31
/* 80ACC9F8  38 80 02 54 */	li r4, 0x254
/* 80ACC9FC  4B 67 F4 31 */	bl getNearestActorP__8daNpcT_cFs
/* 80ACCA00  7C 64 1B 78 */	mr r4, r3
/* 80ACCA04  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 80ACCA08  4B 67 8C D9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80ACCA0C:
/* 80ACCA0C  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 80ACCA10  4B 67 8C F9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80ACCA14  28 03 00 00 */	cmplwi r3, 0
/* 80ACCA18  40 82 00 1C */	bne lbl_80ACCA34
/* 80ACCA1C  7F E3 FB 78 */	mr r3, r31
/* 80ACCA20  38 80 02 45 */	li r4, 0x245
/* 80ACCA24  4B 67 F4 09 */	bl getNearestActorP__8daNpcT_cFs
/* 80ACCA28  7C 64 1B 78 */	mr r4, r3
/* 80ACCA2C  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 80ACCA30  4B 67 8C B1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80ACCA34:
/* 80ACCA34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACCA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACCA3C  7C 08 03 A6 */	mtlr r0
/* 80ACCA40  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACCA44  4E 80 00 20 */	blr 
