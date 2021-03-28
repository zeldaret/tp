lbl_80551084:
/* 80551084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80551088  7C 08 02 A6 */	mflr r0
/* 8055108C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80551090  39 61 00 20 */	addi r11, r1, 0x20
/* 80551094  4B E1 11 48 */	b _savegpr_29
/* 80551098  7C 7F 1B 78 */	mr r31, r3
/* 8055109C  4B C4 E9 74 */	b dKy_getdaytime_hour__Fv
/* 805510A0  7C 7D 1B 78 */	mr r29, r3
/* 805510A4  38 60 00 96 */	li r3, 0x96
/* 805510A8  38 80 00 64 */	li r4, 0x64
/* 805510AC  48 00 21 41 */	bl func_805531EC
/* 805510B0  7C 7E 1B 78 */	mr r30, r3
/* 805510B4  88 1F 0F D6 */	lbz r0, 0xfd6(r31)
/* 805510B8  28 00 00 00 */	cmplwi r0, 0
/* 805510BC  41 82 01 7C */	beq lbl_80551238
/* 805510C0  80 1F 0F CC */	lwz r0, 0xfcc(r31)
/* 805510C4  2C 00 00 00 */	cmpwi r0, 0
/* 805510C8  41 82 00 F8 */	beq lbl_805511C0
/* 805510CC  2C 1D 00 06 */	cmpwi r29, 6
/* 805510D0  41 80 00 7C */	blt lbl_8055114C
/* 805510D4  2C 1D 00 15 */	cmpwi r29, 0x15
/* 805510D8  40 80 00 74 */	bge lbl_8055114C
/* 805510DC  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 805510E0  2C 00 00 0E */	cmpwi r0, 0xe
/* 805510E4  41 82 00 28 */	beq lbl_8055110C
/* 805510E8  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 805510EC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 805510F0  4B BF 47 A8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805510F4  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 805510F8  38 00 00 0E */	li r0, 0xe
/* 805510FC  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80551100  3C 60 80 55 */	lis r3, lit_4621@ha
/* 80551104  C0 03 35 50 */	lfs f0, lit_4621@l(r3)
/* 80551108  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8055110C:
/* 8055110C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80551110  2C 00 00 00 */	cmpwi r0, 0
/* 80551114  41 82 00 28 */	beq lbl_8055113C
/* 80551118  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 8055111C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80551120  4B BF 47 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80551124  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80551128  38 00 00 00 */	li r0, 0
/* 8055112C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80551130  3C 60 80 55 */	lis r3, lit_4621@ha
/* 80551134  C0 03 35 50 */	lfs f0, lit_4621@l(r3)
/* 80551138  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8055113C:
/* 8055113C  38 00 00 00 */	li r0, 0
/* 80551140  90 1F 0F CC */	stw r0, 0xfcc(r31)
/* 80551144  98 1F 0F D6 */	stb r0, 0xfd6(r31)
/* 80551148  48 00 01 7C */	b lbl_805512C4
lbl_8055114C:
/* 8055114C  38 7F 0F CC */	addi r3, r31, 0xfcc
/* 80551150  48 00 20 81 */	bl func_805531D0
/* 80551154  2C 03 00 00 */	cmpwi r3, 0
/* 80551158  40 82 01 6C */	bne lbl_805512C4
/* 8055115C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80551160  2C 00 00 01 */	cmpwi r0, 1
/* 80551164  41 82 00 28 */	beq lbl_8055118C
/* 80551168  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 8055116C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80551170  4B BF 47 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80551174  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80551178  38 00 00 01 */	li r0, 1
/* 8055117C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80551180  3C 60 80 55 */	lis r3, lit_4621@ha
/* 80551184  C0 03 35 50 */	lfs f0, lit_4621@l(r3)
/* 80551188  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8055118C:
/* 8055118C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80551190  2C 00 00 12 */	cmpwi r0, 0x12
/* 80551194  41 82 01 30 */	beq lbl_805512C4
/* 80551198  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 8055119C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 805511A0  4B BF 46 F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805511A4  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 805511A8  38 00 00 12 */	li r0, 0x12
/* 805511AC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 805511B0  3C 60 80 55 */	lis r3, lit_4621@ha
/* 805511B4  C0 03 35 50 */	lfs f0, lit_4621@l(r3)
/* 805511B8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 805511BC  48 00 01 08 */	b lbl_805512C4
lbl_805511C0:
/* 805511C0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 805511C4  4B BF 48 60 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 805511C8  2C 03 00 00 */	cmpwi r3, 0
/* 805511CC  41 82 00 F8 */	beq lbl_805512C4
/* 805511D0  93 DF 0F CC */	stw r30, 0xfcc(r31)
/* 805511D4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 805511D8  2C 00 00 01 */	cmpwi r0, 1
/* 805511DC  41 82 00 28 */	beq lbl_80551204
/* 805511E0  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 805511E4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 805511E8  4B BF 46 B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805511EC  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 805511F0  38 00 00 01 */	li r0, 1
/* 805511F4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 805511F8  3C 60 80 55 */	lis r3, lit_4621@ha
/* 805511FC  C0 03 35 50 */	lfs f0, lit_4621@l(r3)
/* 80551200  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80551204:
/* 80551204  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80551208  2C 00 00 02 */	cmpwi r0, 2
/* 8055120C  41 82 00 B8 */	beq lbl_805512C4
/* 80551210  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80551214  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80551218  4B BF 46 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055121C  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80551220  38 00 00 02 */	li r0, 2
/* 80551224  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80551228  3C 60 80 55 */	lis r3, lit_4621@ha
/* 8055122C  C0 03 35 50 */	lfs f0, lit_4621@l(r3)
/* 80551230  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80551234  48 00 00 90 */	b lbl_805512C4
lbl_80551238:
/* 80551238  38 7F 0F CC */	addi r3, r31, 0xfcc
/* 8055123C  48 00 1F 95 */	bl func_805531D0
/* 80551240  2C 03 00 00 */	cmpwi r3, 0
/* 80551244  40 82 00 80 */	bne lbl_805512C4
/* 80551248  2C 1D 00 15 */	cmpwi r29, 0x15
/* 8055124C  40 80 00 0C */	bge lbl_80551258
/* 80551250  2C 1D 00 06 */	cmpwi r29, 6
/* 80551254  40 80 00 70 */	bge lbl_805512C4
lbl_80551258:
/* 80551258  93 DF 0F CC */	stw r30, 0xfcc(r31)
/* 8055125C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80551260  2C 00 00 01 */	cmpwi r0, 1
/* 80551264  41 82 00 28 */	beq lbl_8055128C
/* 80551268  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 8055126C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80551270  4B BF 46 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80551274  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80551278  38 00 00 01 */	li r0, 1
/* 8055127C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80551280  3C 60 80 55 */	lis r3, lit_4621@ha
/* 80551284  C0 03 35 50 */	lfs f0, lit_4621@l(r3)
/* 80551288  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8055128C:
/* 8055128C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80551290  2C 00 00 02 */	cmpwi r0, 2
/* 80551294  41 82 00 28 */	beq lbl_805512BC
/* 80551298  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 8055129C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 805512A0  4B BF 45 F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805512A4  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 805512A8  38 00 00 02 */	li r0, 2
/* 805512AC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 805512B0  3C 60 80 55 */	lis r3, lit_4621@ha
/* 805512B4  C0 03 35 50 */	lfs f0, lit_4621@l(r3)
/* 805512B8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_805512BC:
/* 805512BC  38 00 00 01 */	li r0, 1
/* 805512C0  98 1F 0F D6 */	stb r0, 0xfd6(r31)
lbl_805512C4:
/* 805512C4  88 7F 0F D6 */	lbz r3, 0xfd6(r31)
/* 805512C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805512CC  4B E1 0F 5C */	b _restgpr_29
/* 805512D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805512D4  7C 08 03 A6 */	mtlr r0
/* 805512D8  38 21 00 20 */	addi r1, r1, 0x20
/* 805512DC  4E 80 00 20 */	blr 
