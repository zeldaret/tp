lbl_8055CD74:
/* 8055CD74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055CD78  7C 08 02 A6 */	mflr r0
/* 8055CD7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055CD80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055CD84  7C 7F 1B 78 */	mr r31, r3
/* 8055CD88  88 03 10 C0 */	lbz r0, 0x10c0(r3)
/* 8055CD8C  28 00 00 0F */	cmplwi r0, 0xf
/* 8055CD90  41 81 03 34 */	bgt lbl_8055D0C4
/* 8055CD94  3C 60 80 56 */	lis r3, lit_5193@ha /* 0x805656BC@ha */
/* 8055CD98  38 63 56 BC */	addi r3, r3, lit_5193@l /* 0x805656BC@l */
/* 8055CD9C  54 00 10 3A */	slwi r0, r0, 2
/* 8055CDA0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8055CDA4  7C 09 03 A6 */	mtctr r0
/* 8055CDA8  4E 80 04 20 */	bctr 
lbl_8055CDAC:
/* 8055CDAC  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 8055CDB0  4B BE 89 59 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055CDB4  28 03 00 00 */	cmplwi r3, 0
/* 8055CDB8  40 82 00 1C */	bne lbl_8055CDD4
/* 8055CDBC  7F E3 FB 78 */	mr r3, r31
/* 8055CDC0  38 80 02 41 */	li r4, 0x241
/* 8055CDC4  4B BE F0 69 */	bl getNearestActorP__8daNpcT_cFs
/* 8055CDC8  7C 64 1B 78 */	mr r4, r3
/* 8055CDCC  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 8055CDD0  4B BE 89 11 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8055CDD4:
/* 8055CDD4  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 8055CDD8  4B BE 89 31 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055CDDC  28 03 00 00 */	cmplwi r3, 0
/* 8055CDE0  40 82 00 1C */	bne lbl_8055CDFC
/* 8055CDE4  7F E3 FB 78 */	mr r3, r31
/* 8055CDE8  38 80 02 6E */	li r4, 0x26e
/* 8055CDEC  4B BE F0 41 */	bl getNearestActorP__8daNpcT_cFs
/* 8055CDF0  7C 64 1B 78 */	mr r4, r3
/* 8055CDF4  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 8055CDF8  4B BE 88 E9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8055CDFC:
/* 8055CDFC  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 8055CE00  4B BE 89 09 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055CE04  28 03 00 00 */	cmplwi r3, 0
/* 8055CE08  40 82 00 1C */	bne lbl_8055CE24
/* 8055CE0C  7F E3 FB 78 */	mr r3, r31
/* 8055CE10  38 80 02 45 */	li r4, 0x245
/* 8055CE14  4B BE F0 19 */	bl getNearestActorP__8daNpcT_cFs
/* 8055CE18  7C 64 1B 78 */	mr r4, r3
/* 8055CE1C  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 8055CE20  4B BE 88 C1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8055CE24:
/* 8055CE24  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 8055CE28  4B BE 88 E1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055CE2C  28 03 00 00 */	cmplwi r3, 0
/* 8055CE30  40 82 02 94 */	bne lbl_8055D0C4
/* 8055CE34  7F E3 FB 78 */	mr r3, r31
/* 8055CE38  38 80 02 5D */	li r4, 0x25d
/* 8055CE3C  4B BE EF F1 */	bl getNearestActorP__8daNpcT_cFs
/* 8055CE40  7C 64 1B 78 */	mr r4, r3
/* 8055CE44  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 8055CE48  4B BE 88 99 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055CE4C  48 00 02 78 */	b lbl_8055D0C4
lbl_8055CE50:
/* 8055CE50  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 8055CE54  4B BE 88 B5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055CE58  28 03 00 00 */	cmplwi r3, 0
/* 8055CE5C  40 82 00 1C */	bne lbl_8055CE78
/* 8055CE60  7F E3 FB 78 */	mr r3, r31
/* 8055CE64  38 80 02 41 */	li r4, 0x241
/* 8055CE68  4B BE EF C5 */	bl getNearestActorP__8daNpcT_cFs
/* 8055CE6C  7C 64 1B 78 */	mr r4, r3
/* 8055CE70  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 8055CE74  4B BE 88 6D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8055CE78:
/* 8055CE78  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 8055CE7C  4B BE 88 8D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055CE80  28 03 00 00 */	cmplwi r3, 0
/* 8055CE84  40 82 02 40 */	bne lbl_8055D0C4
/* 8055CE88  7F E3 FB 78 */	mr r3, r31
/* 8055CE8C  38 80 02 6E */	li r4, 0x26e
/* 8055CE90  4B BE EF 9D */	bl getNearestActorP__8daNpcT_cFs
/* 8055CE94  7C 64 1B 78 */	mr r4, r3
/* 8055CE98  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 8055CE9C  4B BE 88 45 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055CEA0  48 00 02 24 */	b lbl_8055D0C4
lbl_8055CEA4:
/* 8055CEA4  38 7F 11 04 */	addi r3, r31, 0x1104
/* 8055CEA8  4B BE 88 61 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055CEAC  28 03 00 00 */	cmplwi r3, 0
/* 8055CEB0  40 82 02 14 */	bne lbl_8055D0C4
/* 8055CEB4  7F E3 FB 78 */	mr r3, r31
/* 8055CEB8  38 80 02 50 */	li r4, 0x250
/* 8055CEBC  4B BE EF 71 */	bl getNearestActorP__8daNpcT_cFs
/* 8055CEC0  7C 64 1B 78 */	mr r4, r3
/* 8055CEC4  38 7F 11 04 */	addi r3, r31, 0x1104
/* 8055CEC8  4B BE 88 19 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055CECC  48 00 01 F8 */	b lbl_8055D0C4
lbl_8055CED0:
/* 8055CED0  3C 60 80 56 */	lis r3, lit_5156@ha /* 0x805656A4@ha */
/* 8055CED4  38 63 56 A4 */	addi r3, r3, lit_5156@l /* 0x805656A4@l */
/* 8055CED8  38 9F 11 0C */	addi r4, r31, 0x110c
/* 8055CEDC  4B E0 51 6D */	bl __ptmf_cmpr
/* 8055CEE0  2C 03 00 00 */	cmpwi r3, 0
/* 8055CEE4  40 82 00 58 */	bne lbl_8055CF3C
/* 8055CEE8  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 8055CEEC  4B BE 88 1D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055CEF0  28 03 00 00 */	cmplwi r3, 0
/* 8055CEF4  40 82 00 1C */	bne lbl_8055CF10
/* 8055CEF8  7F E3 FB 78 */	mr r3, r31
/* 8055CEFC  38 80 02 6E */	li r4, 0x26e
/* 8055CF00  4B BE EF 2D */	bl getNearestActorP__8daNpcT_cFs
/* 8055CF04  7C 64 1B 78 */	mr r4, r3
/* 8055CF08  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 8055CF0C  4B BE 87 D5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8055CF10:
/* 8055CF10  38 7F 10 F4 */	addi r3, r31, 0x10f4
/* 8055CF14  4B BE 87 F5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055CF18  28 03 00 00 */	cmplwi r3, 0
/* 8055CF1C  40 82 00 20 */	bne lbl_8055CF3C
/* 8055CF20  7F E3 FB 78 */	mr r3, r31
/* 8055CF24  38 80 00 0B */	li r4, 0xb
/* 8055CF28  38 A0 00 00 */	li r5, 0
/* 8055CF2C  4B BE EF B9 */	bl getEvtAreaTagP__8daNpcT_cFii
/* 8055CF30  7C 64 1B 78 */	mr r4, r3
/* 8055CF34  38 7F 10 F4 */	addi r3, r31, 0x10f4
/* 8055CF38  4B BE 87 A9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8055CF3C:
/* 8055CF3C  3C 60 80 56 */	lis r3, lit_5163@ha /* 0x805656B0@ha */
/* 8055CF40  38 63 56 B0 */	addi r3, r3, lit_5163@l /* 0x805656B0@l */
/* 8055CF44  38 9F 11 0C */	addi r4, r31, 0x110c
/* 8055CF48  4B E0 51 01 */	bl __ptmf_cmpr
/* 8055CF4C  2C 03 00 00 */	cmpwi r3, 0
/* 8055CF50  40 82 01 74 */	bne lbl_8055D0C4
/* 8055CF54  38 7F 10 EC */	addi r3, r31, 0x10ec
/* 8055CF58  4B BE 87 B1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055CF5C  28 03 00 00 */	cmplwi r3, 0
/* 8055CF60  40 82 01 64 */	bne lbl_8055D0C4
/* 8055CF64  7F E3 FB 78 */	mr r3, r31
/* 8055CF68  4B BE F0 49 */	bl getShopItemTagP__8daNpcT_cFv
/* 8055CF6C  7C 64 1B 78 */	mr r4, r3
/* 8055CF70  38 7F 10 EC */	addi r3, r31, 0x10ec
/* 8055CF74  4B BE 87 6D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055CF78  48 00 01 4C */	b lbl_8055D0C4
lbl_8055CF7C:
/* 8055CF7C  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 8055CF80  4B BE 87 89 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055CF84  28 03 00 00 */	cmplwi r3, 0
/* 8055CF88  40 82 01 3C */	bne lbl_8055D0C4
/* 8055CF8C  7F E3 FB 78 */	mr r3, r31
/* 8055CF90  38 80 02 45 */	li r4, 0x245
/* 8055CF94  4B BE EE 99 */	bl getNearestActorP__8daNpcT_cFs
/* 8055CF98  7C 64 1B 78 */	mr r4, r3
/* 8055CF9C  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 8055CFA0  4B BE 87 41 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055CFA4  48 00 01 20 */	b lbl_8055D0C4
lbl_8055CFA8:
/* 8055CFA8  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 8055CFAC  4B BE 87 5D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055CFB0  28 03 00 00 */	cmplwi r3, 0
/* 8055CFB4  40 82 00 1C */	bne lbl_8055CFD0
/* 8055CFB8  7F E3 FB 78 */	mr r3, r31
/* 8055CFBC  38 80 02 6E */	li r4, 0x26e
/* 8055CFC0  4B BE EE 6D */	bl getNearestActorP__8daNpcT_cFs
/* 8055CFC4  7C 64 1B 78 */	mr r4, r3
/* 8055CFC8  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 8055CFCC  4B BE 87 15 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8055CFD0:
/* 8055CFD0  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 8055CFD4  4B BE 87 35 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055CFD8  28 03 00 00 */	cmplwi r3, 0
/* 8055CFDC  40 82 00 1C */	bne lbl_8055CFF8
/* 8055CFE0  7F E3 FB 78 */	mr r3, r31
/* 8055CFE4  38 80 02 5D */	li r4, 0x25d
/* 8055CFE8  4B BE EE 45 */	bl getNearestActorP__8daNpcT_cFs
/* 8055CFEC  7C 64 1B 78 */	mr r4, r3
/* 8055CFF0  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 8055CFF4  4B BE 86 ED */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8055CFF8:
/* 8055CFF8  38 7F 10 FC */	addi r3, r31, 0x10fc
/* 8055CFFC  4B BE 87 0D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055D000  28 03 00 00 */	cmplwi r3, 0
/* 8055D004  40 82 00 C0 */	bne lbl_8055D0C4
/* 8055D008  7F E3 FB 78 */	mr r3, r31
/* 8055D00C  38 80 02 64 */	li r4, 0x264
/* 8055D010  4B BE EE 1D */	bl getNearestActorP__8daNpcT_cFs
/* 8055D014  7C 64 1B 78 */	mr r4, r3
/* 8055D018  38 7F 10 FC */	addi r3, r31, 0x10fc
/* 8055D01C  4B BE 86 C5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055D020  48 00 00 A4 */	b lbl_8055D0C4
lbl_8055D024:
/* 8055D024  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 8055D028  4B BE 86 E1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055D02C  28 03 00 00 */	cmplwi r3, 0
/* 8055D030  40 82 00 1C */	bne lbl_8055D04C
/* 8055D034  7F E3 FB 78 */	mr r3, r31
/* 8055D038  38 80 02 41 */	li r4, 0x241
/* 8055D03C  4B BE ED F1 */	bl getNearestActorP__8daNpcT_cFs
/* 8055D040  7C 64 1B 78 */	mr r4, r3
/* 8055D044  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 8055D048  4B BE 86 99 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8055D04C:
/* 8055D04C  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 8055D050  4B BE 86 B9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055D054  28 03 00 00 */	cmplwi r3, 0
/* 8055D058  40 82 00 1C */	bne lbl_8055D074
/* 8055D05C  7F E3 FB 78 */	mr r3, r31
/* 8055D060  38 80 02 6E */	li r4, 0x26e
/* 8055D064  4B BE ED C9 */	bl getNearestActorP__8daNpcT_cFs
/* 8055D068  7C 64 1B 78 */	mr r4, r3
/* 8055D06C  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 8055D070  4B BE 86 71 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8055D074:
/* 8055D074  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 8055D078  4B BE 86 91 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055D07C  28 03 00 00 */	cmplwi r3, 0
/* 8055D080  40 82 00 1C */	bne lbl_8055D09C
/* 8055D084  7F E3 FB 78 */	mr r3, r31
/* 8055D088  38 80 02 45 */	li r4, 0x245
/* 8055D08C  4B BE ED A1 */	bl getNearestActorP__8daNpcT_cFs
/* 8055D090  7C 64 1B 78 */	mr r4, r3
/* 8055D094  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 8055D098  4B BE 86 49 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8055D09C:
/* 8055D09C  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 8055D0A0  4B BE 86 69 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055D0A4  28 03 00 00 */	cmplwi r3, 0
/* 8055D0A8  40 82 00 1C */	bne lbl_8055D0C4
/* 8055D0AC  7F E3 FB 78 */	mr r3, r31
/* 8055D0B0  38 80 02 5D */	li r4, 0x25d
/* 8055D0B4  4B BE ED 79 */	bl getNearestActorP__8daNpcT_cFs
/* 8055D0B8  7C 64 1B 78 */	mr r4, r3
/* 8055D0BC  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 8055D0C0  4B BE 86 21 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8055D0C4:
/* 8055D0C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055D0C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055D0CC  7C 08 03 A6 */	mtlr r0
/* 8055D0D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8055D0D4  4E 80 00 20 */	blr 
