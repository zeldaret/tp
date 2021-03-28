lbl_80D48FA8:
/* 80D48FA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D48FAC  7C 08 02 A6 */	mflr r0
/* 80D48FB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D48FB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D48FB8  4B 61 92 24 */	b _savegpr_29
/* 80D48FBC  7C 7F 1B 78 */	mr r31, r3
/* 80D48FC0  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha
/* 80D48FC4  3B C3 C0 60 */	addi r30, r3, m__14daPeru_Param_c@l
/* 80D48FC8  A0 1F 0E 22 */	lhz r0, 0xe22(r31)
/* 80D48FCC  2C 00 00 02 */	cmpwi r0, 2
/* 80D48FD0  41 82 00 A8 */	beq lbl_80D49078
/* 80D48FD4  40 80 00 14 */	bge lbl_80D48FE8
/* 80D48FD8  2C 00 FF FF */	cmpwi r0, -1
/* 80D48FDC  41 82 01 14 */	beq lbl_80D490F0
/* 80D48FE0  40 80 00 14 */	bge lbl_80D48FF4
/* 80D48FE4  48 00 01 0C */	b lbl_80D490F0
lbl_80D48FE8:
/* 80D48FE8  2C 00 00 04 */	cmpwi r0, 4
/* 80D48FEC  40 80 01 04 */	bge lbl_80D490F0
/* 80D48FF0  48 00 00 E0 */	b lbl_80D490D0
lbl_80D48FF4:
/* 80D48FF4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80D48FF8  2C 00 00 02 */	cmpwi r0, 2
/* 80D48FFC  41 82 00 24 */	beq lbl_80D49020
/* 80D49000  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80D49004  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80D49008  4B 3F C8 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D4900C  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80D49010  38 00 00 02 */	li r0, 2
/* 80D49014  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80D49018  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D4901C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80D49020:
/* 80D49020  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80D49024  2C 00 00 08 */	cmpwi r0, 8
/* 80D49028  41 82 00 24 */	beq lbl_80D4904C
/* 80D4902C  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80D49030  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80D49034  4B 3F C8 64 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D49038  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80D4903C  38 00 00 08 */	li r0, 8
/* 80D49040  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80D49044  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D49048  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80D4904C:
/* 80D4904C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80D49050  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80D49054  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D49058  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80D4905C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80D49060  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80D49064  38 00 00 05 */	li r0, 5
/* 80D49068  B0 1F 0E 6C */	sth r0, 0xe6c(r31)
/* 80D4906C  38 00 00 02 */	li r0, 2
/* 80D49070  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80D49074  48 00 00 7C */	b lbl_80D490F0
lbl_80D49078:
/* 80D49078  A8 7F 0E 6C */	lha r3, 0xe6c(r31)
/* 80D4907C  38 03 FF FF */	addi r0, r3, -1
/* 80D49080  B0 1F 0E 6C */	sth r0, 0xe6c(r31)
/* 80D49084  A8 1F 0E 6C */	lha r0, 0xe6c(r31)
/* 80D49088  2C 00 00 00 */	cmpwi r0, 0
/* 80D4908C  41 81 00 64 */	bgt lbl_80D490F0
/* 80D49090  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80D49094  2C 00 00 00 */	cmpwi r0, 0
/* 80D49098  41 82 00 24 */	beq lbl_80D490BC
/* 80D4909C  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80D490A0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80D490A4  4B 3F C7 F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D490A8  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80D490AC  38 00 00 00 */	li r0, 0
/* 80D490B0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80D490B4  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D490B8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80D490BC:
/* 80D490BC  38 00 00 0A */	li r0, 0xa
/* 80D490C0  B0 1F 0E 6C */	sth r0, 0xe6c(r31)
/* 80D490C4  38 00 00 03 */	li r0, 3
/* 80D490C8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80D490CC  48 00 00 24 */	b lbl_80D490F0
lbl_80D490D0:
/* 80D490D0  A8 7F 0E 6C */	lha r3, 0xe6c(r31)
/* 80D490D4  38 03 FF FF */	addi r0, r3, -1
/* 80D490D8  B0 1F 0E 6C */	sth r0, 0xe6c(r31)
/* 80D490DC  A8 1F 0E 6C */	lha r0, 0xe6c(r31)
/* 80D490E0  2C 00 00 00 */	cmpwi r0, 0
/* 80D490E4  41 81 00 0C */	bgt lbl_80D490F0
/* 80D490E8  38 60 00 01 */	li r3, 1
/* 80D490EC  48 00 00 08 */	b lbl_80D490F4
lbl_80D490F0:
/* 80D490F0  38 60 00 00 */	li r3, 0
lbl_80D490F4:
/* 80D490F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D490F8  4B 61 91 30 */	b _restgpr_29
/* 80D490FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D49100  7C 08 03 A6 */	mtlr r0
/* 80D49104  38 21 00 20 */	addi r1, r1, 0x20
/* 80D49108  4E 80 00 20 */	blr 
