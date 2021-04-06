lbl_80954744:
/* 80954744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80954748  7C 08 02 A6 */	mflr r0
/* 8095474C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80954750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80954754  93 C1 00 08 */	stw r30, 8(r1)
/* 80954758  7C 7F 1B 78 */	mr r31, r3
/* 8095475C  7C 9E 23 78 */	mr r30, r4
/* 80954760  88 03 0F D1 */	lbz r0, 0xfd1(r3)
/* 80954764  28 00 00 00 */	cmplwi r0, 0
/* 80954768  41 82 00 EC */	beq lbl_80954854
/* 8095476C  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80954770  38 A0 00 04 */	li r5, 4
/* 80954774  38 C0 08 00 */	li r6, 0x800
/* 80954778  4B 91 BE 91 */	bl cLib_addCalcAngleS2__FPssss
/* 8095477C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80954780  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80954784  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80954788  B0 1F 0D 7A */	sth r0, 0xd7a(r31)
/* 8095478C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80954790  2C 00 00 0B */	cmpwi r0, 0xb
/* 80954794  41 82 00 30 */	beq lbl_809547C4
/* 80954798  41 82 00 E0 */	beq lbl_80954878
/* 8095479C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809547A0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809547A4  4B 7F 10 F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809547A8  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809547AC  38 00 00 0B */	li r0, 0xb
/* 809547B0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809547B4  3C 60 80 95 */	lis r3, lit_4804@ha /* 0x809577B4@ha */
/* 809547B8  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)  /* 0x809577B4@l */
/* 809547BC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 809547C0  48 00 00 B8 */	b lbl_80954878
lbl_809547C4:
/* 809547C4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809547C8  4B 7F 12 5D */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 809547CC  2C 03 00 00 */	cmpwi r3, 0
/* 809547D0  41 82 00 A8 */	beq lbl_80954878
/* 809547D4  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 809547D8  7C 00 F0 50 */	subf r0, r0, r30
/* 809547DC  7C 03 07 34 */	extsh r3, r0
/* 809547E0  4B A1 08 F1 */	bl abs
/* 809547E4  7C 60 07 34 */	extsh r0, r3
/* 809547E8  2C 00 02 D8 */	cmpwi r0, 0x2d8
/* 809547EC  41 81 00 40 */	bgt lbl_8095482C
/* 809547F0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809547F4  2C 00 00 00 */	cmpwi r0, 0
/* 809547F8  41 82 00 28 */	beq lbl_80954820
/* 809547FC  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80954800  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80954804  4B 7F 10 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80954808  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8095480C  38 00 00 00 */	li r0, 0
/* 80954810  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80954814  3C 60 80 95 */	lis r3, lit_4804@ha /* 0x809577B4@ha */
/* 80954818  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)  /* 0x809577B4@l */
/* 8095481C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80954820:
/* 80954820  38 00 00 00 */	li r0, 0
/* 80954824  98 1F 0F D1 */	stb r0, 0xfd1(r31)
/* 80954828  48 00 00 50 */	b lbl_80954878
lbl_8095482C:
/* 8095482C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80954830  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80954834  4B 7F 10 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80954838  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8095483C  38 00 00 0B */	li r0, 0xb
/* 80954840  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80954844  3C 60 80 95 */	lis r3, lit_4100@ha /* 0x80957798@ha */
/* 80954848  C0 03 77 98 */	lfs f0, lit_4100@l(r3)  /* 0x80957798@l */
/* 8095484C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80954850  48 00 00 28 */	b lbl_80954878
lbl_80954854:
/* 80954854  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80954858  7C 00 F0 50 */	subf r0, r0, r30
/* 8095485C  7C 03 07 34 */	extsh r3, r0
/* 80954860  4B A1 08 71 */	bl abs
/* 80954864  7C 60 07 34 */	extsh r0, r3
/* 80954868  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8095486C  40 81 00 0C */	ble lbl_80954878
/* 80954870  38 00 00 01 */	li r0, 1
/* 80954874  98 1F 0F D1 */	stb r0, 0xfd1(r31)
lbl_80954878:
/* 80954878  38 60 00 01 */	li r3, 1
/* 8095487C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80954880  83 C1 00 08 */	lwz r30, 8(r1)
/* 80954884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80954888  7C 08 03 A6 */	mtlr r0
/* 8095488C  38 21 00 10 */	addi r1, r1, 0x10
/* 80954890  4E 80 00 20 */	blr 
