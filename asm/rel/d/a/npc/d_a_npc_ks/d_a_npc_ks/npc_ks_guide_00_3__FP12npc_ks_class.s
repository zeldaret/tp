lbl_80A5546C:
/* 80A5546C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A55470  7C 08 02 A6 */	mflr r0
/* 80A55474  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A55478  39 61 00 30 */	addi r11, r1, 0x30
/* 80A5547C  4B 90 CD 61 */	bl _savegpr_29
/* 80A55480  7C 7D 1B 78 */	mr r29, r3
/* 80A55484  3C 80 80 A6 */	lis r4, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A55488  3B E4 DE FC */	addi r31, r4, lit_4030@l /* 0x80A5DEFC@l */
/* 80A5548C  3B C0 00 01 */	li r30, 1
/* 80A55490  80 83 05 CC */	lwz r4, 0x5cc(r3)
/* 80A55494  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80A55498  FC 00 00 1E */	fctiwz f0, f0
/* 80A5549C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A554A0  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80A554A4  A8 03 05 EA */	lha r0, 0x5ea(r3)
/* 80A554A8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A554AC  41 82 01 F0 */	beq lbl_80A5569C
/* 80A554B0  40 80 00 28 */	bge lbl_80A554D8
/* 80A554B4  2C 00 00 01 */	cmpwi r0, 1
/* 80A554B8  41 82 00 70 */	beq lbl_80A55528
/* 80A554BC  40 80 00 10 */	bge lbl_80A554CC
/* 80A554C0  2C 00 00 00 */	cmpwi r0, 0
/* 80A554C4  40 80 00 38 */	bge lbl_80A554FC
/* 80A554C8  48 00 03 D4 */	b lbl_80A5589C
lbl_80A554CC:
/* 80A554CC  2C 00 00 05 */	cmpwi r0, 5
/* 80A554D0  41 82 01 50 */	beq lbl_80A55620
/* 80A554D4  48 00 03 C8 */	b lbl_80A5589C
lbl_80A554D8:
/* 80A554D8  2C 00 00 29 */	cmpwi r0, 0x29
/* 80A554DC  41 82 02 A8 */	beq lbl_80A55784
/* 80A554E0  40 80 00 10 */	bge lbl_80A554F0
/* 80A554E4  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A554E8  40 80 02 5C */	bge lbl_80A55744
/* 80A554EC  48 00 03 B0 */	b lbl_80A5589C
lbl_80A554F0:
/* 80A554F0  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A554F4  40 80 03 A8 */	bge lbl_80A5589C
/* 80A554F8  48 00 03 40 */	b lbl_80A55838
lbl_80A554FC:
/* 80A554FC  38 80 00 1A */	li r4, 0x1a
/* 80A55500  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A55504  38 A0 00 02 */	li r5, 2
/* 80A55508  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A5550C  4B FF 3C 99 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A55510  38 00 00 01 */	li r0, 1
/* 80A55514  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A55518  38 00 00 00 */	li r0, 0
/* 80A5551C  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A55520  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A55524  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80A55528:
/* 80A55528  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A5552C  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80A55530  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A55534  41 81 00 20 */	bgt lbl_80A55554
/* 80A55538  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A5553C  1C A0 00 34 */	mulli r5, r0, 0x34
/* 80A55540  3C 60 80 A6 */	lis r3, guide_path_00_3@ha /* 0x80A5ED98@ha */
/* 80A55544  38 83 ED 98 */	addi r4, r3, guide_path_00_3@l /* 0x80A5ED98@l */
/* 80A55548  7C 04 28 2E */	lwzx r0, r4, r5
/* 80A5554C  2C 00 00 00 */	cmpwi r0, 0
/* 80A55550  40 80 00 70 */	bge lbl_80A555C0
lbl_80A55554:
/* 80A55554  3C 60 80 A6 */	lis r3, call_pt@ha /* 0x80A5FEA4@ha */
/* 80A55558  80 03 FE A4 */	lwz r0, call_pt@l(r3)  /* 0x80A5FEA4@l */
/* 80A5555C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A55560  41 82 00 20 */	beq lbl_80A55580
/* 80A55564  7F A3 EB 78 */	mr r3, r29
/* 80A55568  38 80 00 08 */	li r4, 8
/* 80A5556C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A55570  38 A0 00 02 */	li r5, 2
/* 80A55574  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A55578  4B FF 3C 2D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A5557C  48 00 00 1C */	b lbl_80A55598
lbl_80A55580:
/* 80A55580  7F A3 EB 78 */	mr r3, r29
/* 80A55584  38 80 00 07 */	li r4, 7
/* 80A55588  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A5558C  38 A0 00 02 */	li r5, 2
/* 80A55590  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A55594  4B FF 3C 11 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A55598:
/* 80A55598  3C 60 80 A6 */	lis r3, call_pt@ha /* 0x80A5FEA4@ha */
/* 80A5559C  38 83 FE A4 */	addi r4, r3, call_pt@l /* 0x80A5FEA4@l */
/* 80A555A0  80 64 00 00 */	lwz r3, 0(r4)
/* 80A555A4  38 03 00 01 */	addi r0, r3, 1
/* 80A555A8  90 04 00 00 */	stw r0, 0(r4)
/* 80A555AC  38 00 00 0A */	li r0, 0xa
/* 80A555B0  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A555B4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A555B8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A555BC  48 00 02 E0 */	b lbl_80A5589C
lbl_80A555C0:
/* 80A555C0  7C 64 2A 14 */	add r3, r4, r5
/* 80A555C4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A555C8  D0 1D 08 F0 */	stfs f0, 0x8f0(r29)
/* 80A555CC  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A555D0  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A555D4  7C 64 02 14 */	add r3, r4, r0
/* 80A555D8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A555DC  D0 1D 08 F8 */	stfs f0, 0x8f8(r29)
/* 80A555E0  38 00 00 05 */	li r0, 5
/* 80A555E4  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A555E8  3C 60 80 A6 */	lis r3, l_HIO@ha /* 0x80A5FEB8@ha */
/* 80A555EC  38 63 FE B8 */	addi r3, r3, l_HIO@l /* 0x80A5FEB8@l */
/* 80A555F0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A555F4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A555F8  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A555FC  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A55600  41 82 02 9C */	beq lbl_80A5589C
/* 80A55604  7F A3 EB 78 */	mr r3, r29
/* 80A55608  38 80 00 1A */	li r4, 0x1a
/* 80A5560C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A55610  38 A0 00 02 */	li r5, 2
/* 80A55614  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A55618  4B FF 3B 8D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A5561C  48 00 02 80 */	b lbl_80A5589C
lbl_80A55620:
/* 80A55620  C0 3D 08 F0 */	lfs f1, 0x8f0(r29)
/* 80A55624  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A55628  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A5562C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A55630  C0 5D 08 F8 */	lfs f2, 0x8f8(r29)
/* 80A55634  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A55638  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A5563C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80A55640  4B 81 20 35 */	bl cM_atan2s__Fff
/* 80A55644  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A55648  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A5564C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A55650  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A55654  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A55658  EC 41 00 2A */	fadds f2, f1, f0
/* 80A5565C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A55660  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A55664  40 81 00 0C */	ble lbl_80A55670
/* 80A55668  FC 00 10 34 */	frsqrte f0, f2
/* 80A5566C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A55670:
/* 80A55670  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A55674  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80A55678  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A5567C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A55680  40 80 02 1C */	bge lbl_80A5589C
/* 80A55684  80 7D 09 04 */	lwz r3, 0x904(r29)
/* 80A55688  38 03 00 01 */	addi r0, r3, 1
/* 80A5568C  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A55690  38 00 00 01 */	li r0, 1
/* 80A55694  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A55698  48 00 02 04 */	b lbl_80A5589C
lbl_80A5569C:
/* 80A5569C  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A556A0  2C 00 00 08 */	cmpwi r0, 8
/* 80A556A4  40 82 00 18 */	bne lbl_80A556BC
/* 80A556A8  A8 7D 05 C8 */	lha r3, 0x5c8(r29)
/* 80A556AC  3C 63 00 01 */	addis r3, r3, 1
/* 80A556B0  38 03 80 00 */	addi r0, r3, -32768
/* 80A556B4  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A556B8  48 00 00 0C */	b lbl_80A556C4
lbl_80A556BC:
/* 80A556BC  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80A556C0  B0 1D 08 FE */	sth r0, 0x8fe(r29)
lbl_80A556C4:
/* 80A556C4  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A556C8  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80A556CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A556D0  40 80 00 2C */	bge lbl_80A556FC
/* 80A556D4  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A556D8  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A556DC  3C 60 80 A6 */	lis r3, guide_path_00_3@ha /* 0x80A5ED98@ha */
/* 80A556E0  38 63 ED 98 */	addi r3, r3, guide_path_00_3@l /* 0x80A5ED98@l */
/* 80A556E4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A556E8  2C 00 00 00 */	cmpwi r0, 0
/* 80A556EC  41 80 00 10 */	blt lbl_80A556FC
/* 80A556F0  38 00 00 01 */	li r0, 1
/* 80A556F4  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A556F8  48 00 01 A4 */	b lbl_80A5589C
lbl_80A556FC:
/* 80A556FC  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80A55700  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A55704  40 80 00 28 */	bge lbl_80A5572C
/* 80A55708  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A5570C  2C 00 00 33 */	cmpwi r0, 0x33
/* 80A55710  41 82 00 1C */	beq lbl_80A5572C
/* 80A55714  7F A3 EB 78 */	mr r3, r29
/* 80A55718  38 80 00 33 */	li r4, 0x33
/* 80A5571C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A55720  38 A0 00 02 */	li r5, 2
/* 80A55724  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A55728  4B FF 3A 7D */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A5572C:
/* 80A5572C  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A55730  2C 00 00 33 */	cmpwi r0, 0x33
/* 80A55734  40 82 01 68 */	bne lbl_80A5589C
/* 80A55738  38 00 00 01 */	li r0, 1
/* 80A5573C  98 1D 05 FC */	stb r0, 0x5fc(r29)
/* 80A55740  48 00 01 5C */	b lbl_80A5589C
lbl_80A55744:
/* 80A55744  38 80 00 27 */	li r4, 0x27
/* 80A55748  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A5574C  38 A0 00 02 */	li r5, 2
/* 80A55750  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A55754  4B FF 3A 51 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A55758  38 00 00 29 */	li r0, 0x29
/* 80A5575C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A55760  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80A55764  4B 81 21 F1 */	bl cM_rndF__Ff
/* 80A55768  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A5576C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A55770  FC 00 00 1E */	fctiwz f0, f0
/* 80A55774  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A55778  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A5577C  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A55780  48 00 01 1C */	b lbl_80A5589C
lbl_80A55784:
/* 80A55784  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A55788  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A5578C  41 82 00 2C */	beq lbl_80A557B8
/* 80A55790  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A55794  40 82 00 0C */	bne lbl_80A557A0
/* 80A55798  2C 04 00 07 */	cmpwi r4, 7
/* 80A5579C  41 80 00 1C */	blt lbl_80A557B8
lbl_80A557A0:
/* 80A557A0  2C 04 00 28 */	cmpwi r4, 0x28
/* 80A557A4  40 81 00 0C */	ble lbl_80A557B0
/* 80A557A8  2C 04 00 30 */	cmpwi r4, 0x30
/* 80A557AC  41 80 00 0C */	blt lbl_80A557B8
lbl_80A557B0:
/* 80A557B0  2C 04 00 41 */	cmpwi r4, 0x41
/* 80A557B4  40 81 00 0C */	ble lbl_80A557C0
lbl_80A557B8:
/* 80A557B8  38 00 00 04 */	li r0, 4
/* 80A557BC  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
lbl_80A557C0:
/* 80A557C0  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A557C4  2C 00 00 00 */	cmpwi r0, 0
/* 80A557C8  40 82 00 28 */	bne lbl_80A557F0
/* 80A557CC  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A557D0  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A557D4  40 82 00 1C */	bne lbl_80A557F0
/* 80A557D8  7F A3 EB 78 */	mr r3, r29
/* 80A557DC  38 80 00 2B */	li r4, 0x2b
/* 80A557E0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A557E4  38 A0 00 00 */	li r5, 0
/* 80A557E8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A557EC  4B FF 39 B9 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A557F0:
/* 80A557F0  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A557F4  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A557F8  40 82 00 A4 */	bne lbl_80A5589C
/* 80A557FC  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A55800  38 80 00 01 */	li r4, 1
/* 80A55804  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A55808  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A5580C  40 82 00 18 */	bne lbl_80A55824
/* 80A55810  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A55814  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A55818  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A5581C  41 82 00 08 */	beq lbl_80A55824
/* 80A55820  38 80 00 00 */	li r4, 0
lbl_80A55824:
/* 80A55824  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A55828  41 82 00 74 */	beq lbl_80A5589C
/* 80A5582C  38 00 00 28 */	li r0, 0x28
/* 80A55830  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A55834  48 00 00 68 */	b lbl_80A5589C
lbl_80A55838:
/* 80A55838  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A5583C  2C 00 00 00 */	cmpwi r0, 0
/* 80A55840  40 82 00 5C */	bne lbl_80A5589C
/* 80A55844  3C 80 80 A6 */	lis r4, call_pt@ha /* 0x80A5FEA4@ha */
/* 80A55848  80 04 FE A4 */	lwz r0, call_pt@l(r4)  /* 0x80A5FEA4@l */
/* 80A5584C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A55850  41 82 00 1C */	beq lbl_80A5586C
/* 80A55854  38 80 00 08 */	li r4, 8
/* 80A55858  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A5585C  38 A0 00 02 */	li r5, 2
/* 80A55860  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A55864  4B FF 39 41 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A55868  48 00 00 18 */	b lbl_80A55880
lbl_80A5586C:
/* 80A5586C  38 80 00 07 */	li r4, 7
/* 80A55870  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A55874  38 A0 00 02 */	li r5, 2
/* 80A55878  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A5587C  4B FF 39 29 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A55880:
/* 80A55880  3C 60 80 A6 */	lis r3, call_pt@ha /* 0x80A5FEA4@ha */
/* 80A55884  38 83 FE A4 */	addi r4, r3, call_pt@l /* 0x80A5FEA4@l */
/* 80A55888  80 64 00 00 */	lwz r3, 0(r4)
/* 80A5588C  38 03 00 01 */	addi r0, r3, 1
/* 80A55890  90 04 00 00 */	stw r0, 0(r4)
/* 80A55894  38 00 00 0A */	li r0, 0xa
/* 80A55898  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A5589C:
/* 80A5589C  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80A558A0  38 80 00 00 */	li r4, 0
/* 80A558A4  38 A0 00 01 */	li r5, 1
/* 80A558A8  38 C0 08 00 */	li r6, 0x800
/* 80A558AC  4B 81 AD 5D */	bl cLib_addCalcAngleS2__FPssss
/* 80A558B0  4B FF 37 A5 */	bl checkDoorDemo__Fv
/* 80A558B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A558B8  41 82 00 14 */	beq lbl_80A558CC
/* 80A558BC  38 00 00 64 */	li r0, 0x64
/* 80A558C0  B0 1D 05 E8 */	sth r0, 0x5e8(r29)
/* 80A558C4  38 00 00 00 */	li r0, 0
/* 80A558C8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A558CC:
/* 80A558CC  A8 7D 08 FE */	lha r3, 0x8fe(r29)
/* 80A558D0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A558D4  7C 03 00 50 */	subf r0, r3, r0
/* 80A558D8  7C 00 07 34 */	extsh r0, r0
/* 80A558DC  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80A558E0  41 81 00 0C */	bgt lbl_80A558EC
/* 80A558E4  2C 00 F0 00 */	cmpwi r0, -4096
/* 80A558E8  40 80 00 08 */	bge lbl_80A558F0
lbl_80A558EC:
/* 80A558EC  3B C0 00 00 */	li r30, 0
lbl_80A558F0:
/* 80A558F0  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A558F4  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A558F8  41 80 00 68 */	blt lbl_80A55960
/* 80A558FC  2C 00 00 29 */	cmpwi r0, 0x29
/* 80A55900  41 81 00 60 */	bgt lbl_80A55960
/* 80A55904  7F A3 EB 78 */	mr r3, r29
/* 80A55908  C0 3F 03 FC */	lfs f1, 0x3fc(r31)
/* 80A5590C  4B FF 45 91 */	bl enemy_check__FP12npc_ks_classf
/* 80A55910  28 03 00 00 */	cmplwi r3, 0
/* 80A55914  40 82 00 18 */	bne lbl_80A5592C
/* 80A55918  38 00 00 2A */	li r0, 0x2a
/* 80A5591C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A55920  38 00 00 1E */	li r0, 0x1e
/* 80A55924  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A55928  48 00 00 5C */	b lbl_80A55984
lbl_80A5592C:
/* 80A5592C  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 80A55930  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A55934  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A55938  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A5593C  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80A55940  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A55944  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A55948  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80A5594C  4B 81 1D 29 */	bl cM_atan2s__Fff
/* 80A55950  3C 63 00 01 */	addis r3, r3, 1
/* 80A55954  38 03 80 00 */	addi r0, r3, -32768
/* 80A55958  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A5595C  48 00 00 28 */	b lbl_80A55984
lbl_80A55960:
/* 80A55960  7F A3 EB 78 */	mr r3, r29
/* 80A55964  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80A55968  4B FF 45 11 */	bl enemy_view_check__FP12npc_ks_classf
/* 80A5596C  28 03 00 00 */	cmplwi r3, 0
/* 80A55970  41 82 00 14 */	beq lbl_80A55984
/* 80A55974  38 00 00 28 */	li r0, 0x28
/* 80A55978  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A5597C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A55980  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80A55984:
/* 80A55984  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80A55988  A8 9D 08 FE */	lha r4, 0x8fe(r29)
/* 80A5598C  38 A0 00 01 */	li r5, 1
/* 80A55990  38 C0 10 00 */	li r6, 0x1000
/* 80A55994  4B 81 AC 75 */	bl cLib_addCalcAngleS2__FPssss
/* 80A55998  7F C3 F3 78 */	mr r3, r30
/* 80A5599C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A559A0  4B 90 C8 89 */	bl _restgpr_29
/* 80A559A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A559A8  7C 08 03 A6 */	mtlr r0
/* 80A559AC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A559B0  4E 80 00 20 */	blr 
