lbl_8049983C:
/* 8049983C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80499840  7C 08 02 A6 */	mflr r0
/* 80499844  90 01 00 14 */	stw r0, 0x14(r1)
/* 80499848  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049984C  93 C1 00 08 */	stw r30, 8(r1)
/* 80499850  7C 7F 1B 78 */	mr r31, r3
/* 80499854  3C 60 80 4A */	lis r3, stringBase0@ha
/* 80499858  38 63 9A C4 */	addi r3, r3, stringBase0@l
/* 8049985C  38 63 00 17 */	addi r3, r3, 0x17
/* 80499860  4B B9 5B D4 */	b dComIfG_getStageRes__FPCc
/* 80499864  3C 80 00 08 */	lis r4, 8
/* 80499868  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020202@ha */
/* 8049986C  38 A5 02 02 */	addi r5, r5, 0x0202 /* 0x11020202@l */
/* 80499870  4B B7 B3 E4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80499874  90 7F 05 6C */	stw r3, 0x56c(r31)
/* 80499878  3C 60 80 4A */	lis r3, stringBase0@ha
/* 8049987C  38 63 9A C4 */	addi r3, r3, stringBase0@l
/* 80499880  38 63 00 26 */	addi r3, r3, 0x26
/* 80499884  4B B9 5B B0 */	b dComIfG_getStageRes__FPCc
/* 80499888  7C 7E 1B 79 */	or. r30, r3, r3
/* 8049988C  41 82 00 78 */	beq lbl_80499904
/* 80499890  3C 80 00 08 */	lis r4, 8
/* 80499894  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020202@ha */
/* 80499898  38 A5 02 02 */	addi r5, r5, 0x0202 /* 0x11020202@l */
/* 8049989C  4B B7 B3 B8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804998A0  90 7F 05 74 */	stw r3, 0x574(r31)
/* 804998A4  7F C3 F3 78 */	mr r3, r30
/* 804998A8  3C 80 00 08 */	lis r4, 8
/* 804998AC  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020202@ha */
/* 804998B0  38 A5 02 02 */	addi r5, r5, 0x0202 /* 0x11020202@l */
/* 804998B4  4B B7 B3 A0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804998B8  90 7F 05 78 */	stw r3, 0x578(r31)
/* 804998BC  3C 60 80 4A */	lis r3, stringBase0@ha
/* 804998C0  38 63 9A C4 */	addi r3, r3, stringBase0@l
/* 804998C4  38 63 00 34 */	addi r3, r3, 0x34
/* 804998C8  4B B9 5B 6C */	b dComIfG_getStageRes__FPCc
/* 804998CC  7C 65 1B 78 */	mr r5, r3
/* 804998D0  38 7F 05 80 */	addi r3, r31, 0x580
/* 804998D4  38 9E 00 58 */	addi r4, r30, 0x58
/* 804998D8  38 C0 00 01 */	li r6, 1
/* 804998DC  38 E0 00 02 */	li r7, 2
/* 804998E0  3D 00 80 4A */	lis r8, lit_3627@ha
/* 804998E4  C0 28 9A 6C */	lfs f1, lit_3627@l(r8)
/* 804998E8  39 00 00 00 */	li r8, 0
/* 804998EC  39 20 FF FF */	li r9, -1
/* 804998F0  4B B7 3D 4C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 804998F4  2C 03 00 00 */	cmpwi r3, 0
/* 804998F8  40 82 00 0C */	bne lbl_80499904
/* 804998FC  38 60 00 00 */	li r3, 0
/* 80499900  48 00 00 60 */	b lbl_80499960
lbl_80499904:
/* 80499904  3C 60 80 4A */	lis r3, stringBase0@ha
/* 80499908  38 63 9A C4 */	addi r3, r3, stringBase0@l
/* 8049990C  38 63 00 42 */	addi r3, r3, 0x42
/* 80499910  4B B9 5B 24 */	b dComIfG_getStageRes__FPCc
/* 80499914  28 03 00 00 */	cmplwi r3, 0
/* 80499918  41 82 00 18 */	beq lbl_80499930
/* 8049991C  3C 80 00 08 */	lis r4, 8
/* 80499920  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020202@ha */
/* 80499924  38 A5 02 02 */	addi r5, r5, 0x0202 /* 0x11020202@l */
/* 80499928  4B B7 B3 2C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8049992C  90 7F 05 98 */	stw r3, 0x598(r31)
lbl_80499930:
/* 80499930  38 60 00 00 */	li r3, 0
/* 80499934  80 1F 05 6C */	lwz r0, 0x56c(r31)
/* 80499938  28 00 00 00 */	cmplwi r0, 0
/* 8049993C  41 82 00 20 */	beq lbl_8049995C
/* 80499940  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80499944  28 00 00 00 */	cmplwi r0, 0
/* 80499948  41 82 00 14 */	beq lbl_8049995C
/* 8049994C  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80499950  28 00 00 00 */	cmplwi r0, 0
/* 80499954  41 82 00 08 */	beq lbl_8049995C
/* 80499958  38 60 00 01 */	li r3, 1
lbl_8049995C:
/* 8049995C  54 63 06 3E */	clrlwi r3, r3, 0x18
lbl_80499960:
/* 80499960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80499964  83 C1 00 08 */	lwz r30, 8(r1)
/* 80499968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049996C  7C 08 03 A6 */	mtlr r0
/* 80499970  38 21 00 10 */	addi r1, r1, 0x10
/* 80499974  4E 80 00 20 */	blr 
