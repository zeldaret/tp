lbl_80BEDEE0:
/* 80BEDEE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEDEE4  7C 08 02 A6 */	mflr r0
/* 80BEDEE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEDEEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEDEF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BEDEF4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BEDEF8  7C 9F 23 78 */	mr r31, r4
/* 80BEDEFC  41 82 01 38 */	beq lbl_80BEE034
/* 80BEDF00  88 1E 10 AC */	lbz r0, 0x10ac(r30)
/* 80BEDF04  28 00 00 00 */	cmplwi r0, 0
/* 80BEDF08  41 82 00 10 */	beq lbl_80BEDF18
/* 80BEDF0C  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80BEDF10  38 9E 10 AD */	addi r4, r30, 0x10ad
/* 80BEDF14  4B 43 F0 F5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80BEDF18:
/* 80BEDF18  7F C3 F3 78 */	mr r3, r30
/* 80BEDF1C  4B 44 39 55 */	bl getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 80BEDF20  7C 64 1B 78 */	mr r4, r3
/* 80BEDF24  38 7E 05 74 */	addi r3, r30, 0x574
/* 80BEDF28  4B 43 F0 E1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BEDF2C  38 7E 07 00 */	addi r3, r30, 0x700
/* 80BEDF30  38 80 FF FF */	li r4, -1
/* 80BEDF34  4B FF FA 91 */	bl __dt__11FlagCloth_cFv
/* 80BEDF38  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80BEDF3C  41 82 00 84 */	beq lbl_80BEDFC0
/* 80BEDF40  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BEDF44  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BEDF48  90 7E 05 F4 */	stw r3, 0x5f4(r30)
/* 80BEDF4C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BEDF50  90 1E 06 D8 */	stw r0, 0x6d8(r30)
/* 80BEDF54  38 03 00 84 */	addi r0, r3, 0x84
/* 80BEDF58  90 1E 06 F0 */	stw r0, 0x6f0(r30)
/* 80BEDF5C  34 1E 06 BC */	addic. r0, r30, 0x6bc
/* 80BEDF60  41 82 00 54 */	beq lbl_80BEDFB4
/* 80BEDF64  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BEDF68  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BEDF6C  90 7E 06 D8 */	stw r3, 0x6d8(r30)
/* 80BEDF70  38 03 00 58 */	addi r0, r3, 0x58
/* 80BEDF74  90 1E 06 F0 */	stw r0, 0x6f0(r30)
/* 80BEDF78  34 1E 06 DC */	addic. r0, r30, 0x6dc
/* 80BEDF7C  41 82 00 10 */	beq lbl_80BEDF8C
/* 80BEDF80  3C 60 80 BF */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BEE9D0@ha */
/* 80BEDF84  38 03 E9 D0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BEE9D0@l */
/* 80BEDF88  90 1E 06 F0 */	stw r0, 0x6f0(r30)
lbl_80BEDF8C:
/* 80BEDF8C  34 1E 06 BC */	addic. r0, r30, 0x6bc
/* 80BEDF90  41 82 00 24 */	beq lbl_80BEDFB4
/* 80BEDF94  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BEDF98  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BEDF9C  90 1E 06 D8 */	stw r0, 0x6d8(r30)
/* 80BEDFA0  34 1E 06 BC */	addic. r0, r30, 0x6bc
/* 80BEDFA4  41 82 00 10 */	beq lbl_80BEDFB4
/* 80BEDFA8  3C 60 80 BF */	lis r3, __vt__8cM3dGAab@ha /* 0x80BEE9DC@ha */
/* 80BEDFAC  38 03 E9 DC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BEE9DC@l */
/* 80BEDFB0  90 1E 06 D4 */	stw r0, 0x6d4(r30)
lbl_80BEDFB4:
/* 80BEDFB4  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80BEDFB8  38 80 00 00 */	li r4, 0
/* 80BEDFBC  4B 49 61 29 */	bl __dt__12dCcD_GObjInfFv
lbl_80BEDFC0:
/* 80BEDFC0  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 80BEDFC4  41 82 00 54 */	beq lbl_80BEE018
/* 80BEDFC8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BEDFCC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BEDFD0  90 7E 05 94 */	stw r3, 0x594(r30)
/* 80BEDFD4  38 03 00 20 */	addi r0, r3, 0x20
/* 80BEDFD8  90 1E 05 98 */	stw r0, 0x598(r30)
/* 80BEDFDC  34 1E 05 98 */	addic. r0, r30, 0x598
/* 80BEDFE0  41 82 00 24 */	beq lbl_80BEE004
/* 80BEDFE4  3C 60 80 BF */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BEE9B8@ha */
/* 80BEDFE8  38 03 E9 B8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BEE9B8@l */
/* 80BEDFEC  90 1E 05 98 */	stw r0, 0x598(r30)
/* 80BEDFF0  34 1E 05 98 */	addic. r0, r30, 0x598
/* 80BEDFF4  41 82 00 10 */	beq lbl_80BEE004
/* 80BEDFF8  3C 60 80 BF */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BEE9AC@ha */
/* 80BEDFFC  38 03 E9 AC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BEE9AC@l */
/* 80BEE000  90 1E 05 98 */	stw r0, 0x598(r30)
lbl_80BEE004:
/* 80BEE004  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 80BEE008  41 82 00 10 */	beq lbl_80BEE018
/* 80BEE00C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BEE010  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BEE014  90 1E 05 94 */	stw r0, 0x594(r30)
lbl_80BEE018:
/* 80BEE018  7F C3 F3 78 */	mr r3, r30
/* 80BEE01C  38 80 00 00 */	li r4, 0
/* 80BEE020  4B 42 AC 6D */	bl __dt__10fopAc_ac_cFv
/* 80BEE024  7F E0 07 35 */	extsh. r0, r31
/* 80BEE028  40 81 00 0C */	ble lbl_80BEE034
/* 80BEE02C  7F C3 F3 78 */	mr r3, r30
/* 80BEE030  4B 6E 0D 0D */	bl __dl__FPv
lbl_80BEE034:
/* 80BEE034  7F C3 F3 78 */	mr r3, r30
/* 80BEE038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEE03C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BEE040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEE044  7C 08 03 A6 */	mtlr r0
/* 80BEE048  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEE04C  4E 80 00 20 */	blr 
