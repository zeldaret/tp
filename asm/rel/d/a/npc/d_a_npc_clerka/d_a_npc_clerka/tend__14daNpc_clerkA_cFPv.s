lbl_80993F84:
/* 80993F84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80993F88  7C 08 02 A6 */	mflr r0
/* 80993F8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80993F90  39 61 00 30 */	addi r11, r1, 0x30
/* 80993F94  4B 9C E2 44 */	b _savegpr_28
/* 80993F98  7C 7E 1B 78 */	mr r30, r3
/* 80993F9C  3C 60 80 99 */	lis r3, m__20daNpc_clerkA_Param_c@ha
/* 80993FA0  3B E3 58 70 */	addi r31, r3, m__20daNpc_clerkA_Param_c@l
/* 80993FA4  38 7F 00 00 */	addi r3, r31, 0
/* 80993FA8  AB 83 00 8C */	lha r28, 0x8c(r3)
/* 80993FAC  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80993FB0  2C 00 00 02 */	cmpwi r0, 2
/* 80993FB4  41 82 00 CC */	beq lbl_80994080
/* 80993FB8  40 80 01 E4 */	bge lbl_8099419C
/* 80993FBC  2C 00 00 00 */	cmpwi r0, 0
/* 80993FC0  40 80 00 0C */	bge lbl_80993FCC
/* 80993FC4  48 00 01 D8 */	b lbl_8099419C
/* 80993FC8  48 00 01 D4 */	b lbl_8099419C
lbl_80993FCC:
/* 80993FCC  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80993FD0  2C 00 00 00 */	cmpwi r0, 0
/* 80993FD4  40 82 00 AC */	bne lbl_80994080
/* 80993FD8  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80993FDC  2C 00 00 04 */	cmpwi r0, 4
/* 80993FE0  41 82 00 24 */	beq lbl_80994004
/* 80993FE4  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80993FE8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80993FEC  4B 7B 18 AC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80993FF0  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80993FF4  38 00 00 04 */	li r0, 4
/* 80993FF8  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80993FFC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80994000  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80994004:
/* 80994004  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80994008  2C 00 00 00 */	cmpwi r0, 0
/* 8099400C  41 82 00 24 */	beq lbl_80994030
/* 80994010  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80994014  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80994018  4B 7B 18 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8099401C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80994020  38 00 00 00 */	li r0, 0
/* 80994024  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80994028  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8099402C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80994030:
/* 80994030  4B 8D 38 3C */	b cM_rnd__Fv
/* 80994034  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80994038  EC 41 00 28 */	fsubs f2, f1, f0
/* 8099403C  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 80994040  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80994044  90 01 00 0C */	stw r0, 0xc(r1)
/* 80994048  3C 00 43 30 */	lis r0, 0x4330
/* 8099404C  90 01 00 08 */	stw r0, 8(r1)
/* 80994050  C8 01 00 08 */	lfd f0, 8(r1)
/* 80994054  EC 00 08 28 */	fsubs f0, f0, f1
/* 80994058  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8099405C  FC 00 00 1E */	fctiwz f0, f0
/* 80994060  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80994064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80994068  7C 1C 02 14 */	add r0, r28, r0
/* 8099406C  90 1E 10 E4 */	stw r0, 0x10e4(r30)
/* 80994070  38 00 00 00 */	li r0, 0
/* 80994074  98 1E 10 EC */	stb r0, 0x10ec(r30)
/* 80994078  38 00 00 02 */	li r0, 2
/* 8099407C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80994080:
/* 80994080  88 1E 10 EF */	lbz r0, 0x10ef(r30)
/* 80994084  28 00 00 00 */	cmplwi r0, 0
/* 80994088  41 82 00 1C */	beq lbl_809940A4
/* 8099408C  80 1E 10 E0 */	lwz r0, 0x10e0(r30)
/* 80994090  2C 00 00 02 */	cmpwi r0, 2
/* 80994094  40 82 00 10 */	bne lbl_809940A4
/* 80994098  38 00 00 01 */	li r0, 1
/* 8099409C  98 1E 0E 32 */	stb r0, 0xe32(r30)
/* 809940A0  98 1E 0E 33 */	stb r0, 0xe33(r30)
lbl_809940A4:
/* 809940A4  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 809940A8  2C 00 00 00 */	cmpwi r0, 0
/* 809940AC  40 82 00 F0 */	bne lbl_8099419C
/* 809940B0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809940B4  2C 00 00 00 */	cmpwi r0, 0
/* 809940B8  41 82 00 24 */	beq lbl_809940DC
/* 809940BC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809940C0  4B 7B 16 3C */	b remove__18daNpcT_ActorMngr_cFv
/* 809940C4  38 00 00 00 */	li r0, 0
/* 809940C8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809940CC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 809940D0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809940D4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809940D8  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809940DC:
/* 809940DC  38 00 00 00 */	li r0, 0
/* 809940E0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809940E4  38 7E 10 E4 */	addi r3, r30, 0x10e4
/* 809940E8  48 00 14 5D */	bl func_80995544
/* 809940EC  2C 03 00 00 */	cmpwi r3, 0
/* 809940F0  40 82 00 AC */	bne lbl_8099419C
/* 809940F4  88 1E 10 EC */	lbz r0, 0x10ec(r30)
/* 809940F8  28 00 00 00 */	cmplwi r0, 0
/* 809940FC  41 82 00 5C */	beq lbl_80994158
/* 80994100  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80994104  4B 7B 19 20 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80994108  2C 03 00 00 */	cmpwi r3, 0
/* 8099410C  41 82 00 90 */	beq lbl_8099419C
/* 80994110  88 7E 10 EC */	lbz r3, 0x10ec(r30)
/* 80994114  38 03 FF FF */	addi r0, r3, -1
/* 80994118  98 1E 10 EC */	stb r0, 0x10ec(r30)
/* 8099411C  88 1E 10 EC */	lbz r0, 0x10ec(r30)
/* 80994120  28 00 00 00 */	cmplwi r0, 0
/* 80994124  41 82 00 28 */	beq lbl_8099414C
/* 80994128  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8099412C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80994130  4B 7B 17 68 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80994134  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80994138  38 00 00 06 */	li r0, 6
/* 8099413C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80994140  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80994144  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80994148  48 00 00 54 */	b lbl_8099419C
lbl_8099414C:
/* 8099414C  38 00 00 01 */	li r0, 1
/* 80994150  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80994154  48 00 00 48 */	b lbl_8099419C
lbl_80994158:
/* 80994158  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8099415C  2C 00 00 06 */	cmpwi r0, 6
/* 80994160  41 82 00 24 */	beq lbl_80994184
/* 80994164  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80994168  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8099416C  4B 7B 17 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80994170  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80994174  38 00 00 06 */	li r0, 6
/* 80994178  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8099417C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80994180  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80994184:
/* 80994184  38 60 00 01 */	li r3, 1
/* 80994188  98 7E 10 EC */	stb r3, 0x10ec(r30)
/* 8099418C  88 1E 10 EC */	lbz r0, 0x10ec(r30)
/* 80994190  28 00 00 00 */	cmplwi r0, 0
/* 80994194  40 82 00 08 */	bne lbl_8099419C
/* 80994198  98 7E 10 EC */	stb r3, 0x10ec(r30)
lbl_8099419C:
/* 8099419C  38 60 00 01 */	li r3, 1
/* 809941A0  39 61 00 30 */	addi r11, r1, 0x30
/* 809941A4  4B 9C E0 80 */	b _restgpr_28
/* 809941A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809941AC  7C 08 03 A6 */	mtlr r0
/* 809941B0  38 21 00 30 */	addi r1, r1, 0x30
/* 809941B4  4E 80 00 20 */	blr 
