lbl_809BCE04:
/* 809BCE04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BCE08  7C 08 02 A6 */	mflr r0
/* 809BCE0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BCE10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BCE14  93 C1 00 08 */	stw r30, 8(r1)
/* 809BCE18  7C 7F 1B 78 */	mr r31, r3
/* 809BCE1C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809BCE20  2C 00 00 02 */	cmpwi r0, 2
/* 809BCE24  41 82 00 8C */	beq lbl_809BCEB0
/* 809BCE28  40 80 02 0C */	bge lbl_809BD034
/* 809BCE2C  2C 00 00 00 */	cmpwi r0, 0
/* 809BCE30  40 80 00 0C */	bge lbl_809BCE3C
/* 809BCE34  48 00 02 00 */	b lbl_809BD034
/* 809BCE38  48 00 01 FC */	b lbl_809BD034
lbl_809BCE3C:
/* 809BCE3C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809BCE40  2C 00 00 00 */	cmpwi r0, 0
/* 809BCE44  40 82 00 6C */	bne lbl_809BCEB0
/* 809BCE48  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 809BCE4C  2C 00 00 00 */	cmpwi r0, 0
/* 809BCE50  41 82 00 28 */	beq lbl_809BCE78
/* 809BCE54  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 809BCE58  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809BCE5C  4B 78 8A 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809BCE60  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 809BCE64  38 00 00 00 */	li r0, 0
/* 809BCE68  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 809BCE6C  3C 60 80 9C */	lis r3, lit_4552@ha
/* 809BCE70  C0 03 E5 54 */	lfs f0, lit_4552@l(r3)
/* 809BCE74  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_809BCE78:
/* 809BCE78  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809BCE7C  2C 00 00 00 */	cmpwi r0, 0
/* 809BCE80  41 82 00 28 */	beq lbl_809BCEA8
/* 809BCE84  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809BCE88  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809BCE8C  4B 78 8A 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809BCE90  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809BCE94  38 00 00 00 */	li r0, 0
/* 809BCE98  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809BCE9C  3C 60 80 9C */	lis r3, lit_4552@ha
/* 809BCEA0  C0 03 E5 54 */	lfs f0, lit_4552@l(r3)
/* 809BCEA4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809BCEA8:
/* 809BCEA8  38 00 00 02 */	li r0, 2
/* 809BCEAC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809BCEB0:
/* 809BCEB0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809BCEB4  2C 00 00 00 */	cmpwi r0, 0
/* 809BCEB8  40 82 01 7C */	bne lbl_809BD034
/* 809BCEBC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809BCEC0  4B 78 88 48 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809BCEC4  28 03 00 00 */	cmplwi r3, 0
/* 809BCEC8  41 82 00 C8 */	beq lbl_809BCF90
/* 809BCECC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809BCED0  2C 00 00 00 */	cmpwi r0, 0
/* 809BCED4  41 82 00 28 */	beq lbl_809BCEFC
/* 809BCED8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809BCEDC  4B 78 88 20 */	b remove__18daNpcT_ActorMngr_cFv
/* 809BCEE0  38 00 00 00 */	li r0, 0
/* 809BCEE4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809BCEE8  3C 60 80 9C */	lis r3, lit_4178@ha
/* 809BCEEC  C0 03 E5 40 */	lfs f0, lit_4178@l(r3)
/* 809BCEF0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809BCEF4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809BCEF8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809BCEFC:
/* 809BCEFC  38 00 00 00 */	li r0, 0
/* 809BCF00  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809BCF04  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809BCF08  4B 78 88 00 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809BCF0C  7C 64 1B 78 */	mr r4, r3
/* 809BCF10  7F E3 FB 78 */	mr r3, r31
/* 809BCF14  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 809BCF18  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 809BCF1C  4B 78 DC B4 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 809BCF20  2C 03 00 00 */	cmpwi r3, 0
/* 809BCF24  41 82 00 40 */	beq lbl_809BCF64
/* 809BCF28  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809BCF2C  2C 00 00 01 */	cmpwi r0, 1
/* 809BCF30  41 82 00 2C */	beq lbl_809BCF5C
/* 809BCF34  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809BCF38  4B 78 87 C4 */	b remove__18daNpcT_ActorMngr_cFv
/* 809BCF3C  38 00 00 00 */	li r0, 0
/* 809BCF40  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809BCF44  3C 60 80 9C */	lis r3, lit_4178@ha
/* 809BCF48  C0 03 E5 40 */	lfs f0, lit_4178@l(r3)
/* 809BCF4C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809BCF50  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809BCF54  38 00 00 01 */	li r0, 1
/* 809BCF58  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809BCF5C:
/* 809BCF5C  38 00 00 00 */	li r0, 0
/* 809BCF60  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_809BCF64:
/* 809BCF64  7F E3 FB 78 */	mr r3, r31
/* 809BCF68  4B 78 E3 D0 */	b srchPlayerActor__8daNpcT_cFv
/* 809BCF6C  2C 03 00 00 */	cmpwi r3, 0
/* 809BCF70  40 82 00 C4 */	bne lbl_809BD034
/* 809BCF74  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 809BCF78  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 809BCF7C  7C 03 00 00 */	cmpw r3, r0
/* 809BCF80  40 82 00 B4 */	bne lbl_809BD034
/* 809BCF84  38 00 00 01 */	li r0, 1
/* 809BCF88  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 809BCF8C  48 00 00 A8 */	b lbl_809BD034
lbl_809BCF90:
/* 809BCF90  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809BCF94  2C 00 00 00 */	cmpwi r0, 0
/* 809BCF98  41 82 00 28 */	beq lbl_809BCFC0
/* 809BCF9C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809BCFA0  4B 78 87 5C */	b remove__18daNpcT_ActorMngr_cFv
/* 809BCFA4  38 00 00 00 */	li r0, 0
/* 809BCFA8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809BCFAC  3C 60 80 9C */	lis r3, lit_4178@ha
/* 809BCFB0  C0 03 E5 40 */	lfs f0, lit_4178@l(r3)
/* 809BCFB4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809BCFB8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809BCFBC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809BCFC0:
/* 809BCFC0  38 00 00 00 */	li r0, 0
/* 809BCFC4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809BCFC8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809BCFCC  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 809BCFD0  7C 04 00 00 */	cmpw r4, r0
/* 809BCFD4  41 82 00 58 */	beq lbl_809BD02C
/* 809BCFD8  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 809BCFDC  28 00 00 00 */	cmplwi r0, 0
/* 809BCFE0  40 82 00 18 */	bne lbl_809BCFF8
/* 809BCFE4  7F E3 FB 78 */	mr r3, r31
/* 809BCFE8  4B 78 DA 30 */	b setAngle__8daNpcT_cFs
/* 809BCFEC  38 00 00 01 */	li r0, 1
/* 809BCFF0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 809BCFF4  48 00 00 2C */	b lbl_809BD020
lbl_809BCFF8:
/* 809BCFF8  7F E3 FB 78 */	mr r3, r31
/* 809BCFFC  38 A0 FF FF */	li r5, -1
/* 809BD000  38 C0 FF FF */	li r6, -1
/* 809BD004  38 E0 00 0F */	li r7, 0xf
/* 809BD008  39 00 00 00 */	li r8, 0
/* 809BD00C  4B 78 E6 3C */	b step__8daNpcT_cFsiiii
/* 809BD010  2C 03 00 00 */	cmpwi r3, 0
/* 809BD014  41 82 00 0C */	beq lbl_809BD020
/* 809BD018  38 00 00 01 */	li r0, 1
/* 809BD01C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809BD020:
/* 809BD020  38 00 00 00 */	li r0, 0
/* 809BD024  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 809BD028  48 00 00 0C */	b lbl_809BD034
lbl_809BD02C:
/* 809BD02C  7F E3 FB 78 */	mr r3, r31
/* 809BD030  4B 78 E3 08 */	b srchPlayerActor__8daNpcT_cFv
lbl_809BD034:
/* 809BD034  38 60 00 01 */	li r3, 1
/* 809BD038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BD03C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BD040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BD044  7C 08 03 A6 */	mtlr r0
/* 809BD048  38 21 00 10 */	addi r1, r1, 0x10
/* 809BD04C  4E 80 00 20 */	blr 
