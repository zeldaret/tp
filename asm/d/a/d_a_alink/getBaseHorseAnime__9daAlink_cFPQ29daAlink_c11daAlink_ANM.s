lbl_800EDB48:
/* 800EDB48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EDB4C  7C 08 02 A6 */	mflr r0
/* 800EDB50  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EDB54  39 61 00 20 */	addi r11, r1, 0x20
/* 800EDB58  48 27 46 81 */	bl _savegpr_28
/* 800EDB5C  7C 7C 1B 78 */	mr r28, r3
/* 800EDB60  7C 9D 23 78 */	mr r29, r4
/* 800EDB64  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800EDB68  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800EDB6C  83 E4 5D B8 */	lwz r31, 0x5db8(r4)
/* 800EDB70  4B FF F5 05 */	bl checkHorseNoUpperAnime__9daAlink_cCFv
/* 800EDB74  2C 03 00 00 */	cmpwi r3, 0
/* 800EDB78  40 82 00 10 */	bne lbl_800EDB88
/* 800EDB7C  A0 1C 1F BC */	lhz r0, 0x1fbc(r28)
/* 800EDB80  28 00 02 65 */	cmplwi r0, 0x265
/* 800EDB84  40 82 00 70 */	bne lbl_800EDBF4
lbl_800EDB88:
/* 800EDB88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800EDB8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800EDB90  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800EDB94  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800EDB98  40 82 00 5C */	bne lbl_800EDBF4
/* 800EDB9C  88 03 00 15 */	lbz r0, 0x15(r3)
/* 800EDBA0  28 00 00 FF */	cmplwi r0, 0xff
/* 800EDBA4  41 82 00 14 */	beq lbl_800EDBB8
/* 800EDBA8  7F 83 E3 78 */	mr r3, r28
/* 800EDBAC  38 80 00 0B */	li r4, 0xb
/* 800EDBB0  4B FC 56 71 */	bl setRStatus__9daAlink_cFUc
/* 800EDBB4  48 00 00 10 */	b lbl_800EDBC4
lbl_800EDBB8:
/* 800EDBB8  7F 83 E3 78 */	mr r3, r28
/* 800EDBBC  38 80 00 3E */	li r4, 0x3e
/* 800EDBC0  4B FC 56 61 */	bl setRStatus__9daAlink_cFUc
lbl_800EDBC4:
/* 800EDBC4  7F 83 E3 78 */	mr r3, r28
/* 800EDBC8  4B FC 4A 9D */	bl spActionButton__9daAlink_cFv
/* 800EDBCC  2C 03 00 00 */	cmpwi r3, 0
/* 800EDBD0  41 82 00 24 */	beq lbl_800EDBF4
/* 800EDBD4  7F 83 E3 78 */	mr r3, r28
/* 800EDBD8  38 80 00 02 */	li r4, 2
/* 800EDBDC  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800EDBE0  4B FB FB 45 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800EDBE4  38 00 00 55 */	li r0, 0x55
/* 800EDBE8  90 1D 00 00 */	stw r0, 0(r29)
/* 800EDBEC  90 1D 00 04 */	stw r0, 4(r29)
/* 800EDBF0  48 00 01 64 */	b lbl_800EDD54
lbl_800EDBF4:
/* 800EDBF4  3B C0 00 00 */	li r30, 0
/* 800EDBF8  3B 80 00 00 */	li r28, 0
lbl_800EDBFC:
/* 800EDBFC  38 1C 16 C4 */	addi r0, r28, 0x16c4
/* 800EDC00  7C 1F 02 2E */	lhzx r0, r31, r0
/* 800EDC04  28 00 00 07 */	cmplwi r0, 7
/* 800EDC08  41 82 00 14 */	beq lbl_800EDC1C
/* 800EDC0C  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 800EDC10  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EDC14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EDC18  40 80 00 24 */	bge lbl_800EDC3C
lbl_800EDC1C:
/* 800EDC1C  2C 1E 00 01 */	cmpwi r30, 1
/* 800EDC20  40 82 00 10 */	bne lbl_800EDC30
/* 800EDC24  38 00 00 4A */	li r0, 0x4a
/* 800EDC28  90 1D 00 00 */	stw r0, 0(r29)
/* 800EDC2C  48 00 01 14 */	b lbl_800EDD40
lbl_800EDC30:
/* 800EDC30  38 00 00 54 */	li r0, 0x54
/* 800EDC34  90 1D 00 00 */	stw r0, 0(r29)
/* 800EDC38  48 00 01 08 */	b lbl_800EDD40
lbl_800EDC3C:
/* 800EDC3C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800EDC40  28 00 00 12 */	cmplwi r0, 0x12
/* 800EDC44  40 82 00 10 */	bne lbl_800EDC54
/* 800EDC48  38 00 00 4C */	li r0, 0x4c
/* 800EDC4C  90 1D 00 00 */	stw r0, 0(r29)
/* 800EDC50  48 00 00 F0 */	b lbl_800EDD40
lbl_800EDC54:
/* 800EDC54  28 00 00 22 */	cmplwi r0, 0x22
/* 800EDC58  40 82 00 10 */	bne lbl_800EDC68
/* 800EDC5C  38 00 00 4A */	li r0, 0x4a
/* 800EDC60  90 1D 00 00 */	stw r0, 0(r29)
/* 800EDC64  48 00 00 DC */	b lbl_800EDD40
lbl_800EDC68:
/* 800EDC68  28 00 00 11 */	cmplwi r0, 0x11
/* 800EDC6C  40 82 00 10 */	bne lbl_800EDC7C
/* 800EDC70  38 00 00 4E */	li r0, 0x4e
/* 800EDC74  90 1D 00 00 */	stw r0, 0(r29)
/* 800EDC78  48 00 00 C8 */	b lbl_800EDD40
lbl_800EDC7C:
/* 800EDC7C  28 00 00 13 */	cmplwi r0, 0x13
/* 800EDC80  40 82 00 28 */	bne lbl_800EDCA8
/* 800EDC84  4B FF EA E9 */	bl checkHorseZeldaBowMode__9daAlink_cFv
/* 800EDC88  2C 03 00 00 */	cmpwi r3, 0
/* 800EDC8C  41 82 00 10 */	beq lbl_800EDC9C
/* 800EDC90  38 00 00 4C */	li r0, 0x4c
/* 800EDC94  90 1D 00 00 */	stw r0, 0(r29)
/* 800EDC98  48 00 00 A8 */	b lbl_800EDD40
lbl_800EDC9C:
/* 800EDC9C  38 00 00 4B */	li r0, 0x4b
/* 800EDCA0  90 1D 00 00 */	stw r0, 0(r29)
/* 800EDCA4  48 00 00 9C */	b lbl_800EDD40
lbl_800EDCA8:
/* 800EDCA8  28 00 00 23 */	cmplwi r0, 0x23
/* 800EDCAC  40 82 00 10 */	bne lbl_800EDCBC
/* 800EDCB0  38 00 00 49 */	li r0, 0x49
/* 800EDCB4  90 1D 00 00 */	stw r0, 0(r29)
/* 800EDCB8  48 00 00 88 */	b lbl_800EDD40
lbl_800EDCBC:
/* 800EDCBC  28 00 00 17 */	cmplwi r0, 0x17
/* 800EDCC0  41 82 00 0C */	beq lbl_800EDCCC
/* 800EDCC4  28 00 00 18 */	cmplwi r0, 0x18
/* 800EDCC8  40 82 00 24 */	bne lbl_800EDCEC
lbl_800EDCCC:
/* 800EDCCC  2C 1E 00 01 */	cmpwi r30, 1
/* 800EDCD0  40 82 00 10 */	bne lbl_800EDCE0
/* 800EDCD4  38 00 00 4A */	li r0, 0x4a
/* 800EDCD8  90 1D 00 00 */	stw r0, 0(r29)
/* 800EDCDC  48 00 00 64 */	b lbl_800EDD40
lbl_800EDCE0:
/* 800EDCE0  38 00 00 5A */	li r0, 0x5a
/* 800EDCE4  90 1D 00 00 */	stw r0, 0(r29)
/* 800EDCE8  48 00 00 58 */	b lbl_800EDD40
lbl_800EDCEC:
/* 800EDCEC  28 00 00 19 */	cmplwi r0, 0x19
/* 800EDCF0  41 82 00 0C */	beq lbl_800EDCFC
/* 800EDCF4  28 00 00 1A */	cmplwi r0, 0x1a
/* 800EDCF8  40 82 00 24 */	bne lbl_800EDD1C
lbl_800EDCFC:
/* 800EDCFC  2C 1E 00 01 */	cmpwi r30, 1
/* 800EDD00  40 82 00 10 */	bne lbl_800EDD10
/* 800EDD04  38 00 00 4A */	li r0, 0x4a
/* 800EDD08  90 1D 00 00 */	stw r0, 0(r29)
/* 800EDD0C  48 00 00 34 */	b lbl_800EDD40
lbl_800EDD10:
/* 800EDD10  38 00 00 5B */	li r0, 0x5b
/* 800EDD14  90 1D 00 00 */	stw r0, 0(r29)
/* 800EDD18  48 00 00 28 */	b lbl_800EDD40
lbl_800EDD1C:
/* 800EDD1C  28 00 FF FF */	cmplwi r0, 0xffff
/* 800EDD20  40 82 00 18 */	bne lbl_800EDD38
/* 800EDD24  2C 1E 00 01 */	cmpwi r30, 1
/* 800EDD28  40 82 00 10 */	bne lbl_800EDD38
/* 800EDD2C  80 1D FF FC */	lwz r0, -4(r29)
/* 800EDD30  90 1D 00 00 */	stw r0, 0(r29)
/* 800EDD34  48 00 00 0C */	b lbl_800EDD40
lbl_800EDD38:
/* 800EDD38  38 00 00 48 */	li r0, 0x48
/* 800EDD3C  90 1D 00 00 */	stw r0, 0(r29)
lbl_800EDD40:
/* 800EDD40  3B DE 00 01 */	addi r30, r30, 1
/* 800EDD44  2C 1E 00 03 */	cmpwi r30, 3
/* 800EDD48  3B 9C 00 02 */	addi r28, r28, 2
/* 800EDD4C  3B BD 00 04 */	addi r29, r29, 4
/* 800EDD50  41 80 FE AC */	blt lbl_800EDBFC
lbl_800EDD54:
/* 800EDD54  39 61 00 20 */	addi r11, r1, 0x20
/* 800EDD58  48 27 44 CD */	bl _restgpr_28
/* 800EDD5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EDD60  7C 08 03 A6 */	mtlr r0
/* 800EDD64  38 21 00 20 */	addi r1, r1, 0x20
/* 800EDD68  4E 80 00 20 */	blr 
